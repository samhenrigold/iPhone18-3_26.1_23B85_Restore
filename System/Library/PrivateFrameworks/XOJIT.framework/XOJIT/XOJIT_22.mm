unint64_t anonymous namespace::BitcodeReader::getPtrElementTypeByID(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  v3 = *(this + 65);
  if (a2 >= ((*(this + 66) - v3) >> 3) || *(*(v3 + 8 * a2) + 8) != 15)
  {
    return 0;
  }
}

unint64_t anonymous namespace::BitcodeConstant::create(unsigned int *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v9 = 4 * a5;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 4 * a5 + 48, 3);
  *result = a2;
  *(result + 8) = 0;
  v11 = *(result + 20) & 0xC0000000;
  *(result + 16) = 255;
  *(result + 20) = v11;
  *(result + 24) = *a3;
  v12 = *(a3 + 4);
  *(result + 28) = a5;
  *(result + 32) = v12;
  *(result + 40) = *(a3 + 8);
  if (a5)
  {
    v13 = (result + 48);
    do
    {
      v14 = *a4++;
      *v13++ = v14;
      v9 -= 4;
    }

    while (v9);
  }

  return result;
}

void *llvm::SmallVectorImpl<unsigned short>::append<unsigned long long *,void>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v5 = result;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = v7 + ((a3 - a2) >> 3);
  if (result[2] < v8)
  {
    result = llvm::SmallVectorBase<unsigned long long>::grow_pod(result, result + 3, v8, 2);
    v7 = v5[1];
  }

  if (v4 != a3)
  {
    v9 = (*v5 + 2 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  v5[1] = v7 + (v6 >> 3);
  return result;
}

llvm::Value *llvm::ConstantDataArray::get<unsigned short>(uint64_t a1, llvm::Type *a2, llvm::Type *a3)
{
  v4 = (2 * a3);
  llvm::ArrayType::get((*a1 + 1968), a3);

  return llvm::ConstantDataSequential::getImpl(a2, v4, v5);
}

llvm::Value *llvm::ConstantDataArray::get<unsigned int>(uint64_t a1, llvm::Type *a2, llvm::Type *a3)
{
  v4 = (4 * a3);
  llvm::ArrayType::get((*a1 + 1992), a3);

  return llvm::ConstantDataSequential::getImpl(a2, v4, v5);
}

llvm::Value *llvm::ConstantDataArray::get<unsigned long long>(uint64_t a1, llvm::Type *a2, llvm::Type *a3)
{
  v4 = (8 * a3);
  llvm::ArrayType::get((*a1 + 2016), a3);

  return llvm::ConstantDataSequential::getImpl(a2, v4, v5);
}

void anonymous namespace::BitcodeReader::recordValue(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int a4, uint64_t a5)
{
  v43[16] = *MEMORY[0x277D85DE8];
  v41 = v43;
  v42 = xmmword_2750C1290;
  v7 = *(a3 + 2);
  if (v7 < a4)
  {
    v38[0] = "Invalid record";
    v39 = 259;
  }

  llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v41, &(*a3)[a4], &(*a3)[v7]);
  v10 = **a3;
  v11 = *(a2 + 712);
  if (((*(a2 + 720) - v11) >> 5) <= v10 || (v12 = *(v11 + 32 * v10 + 16)) == 0)
  {
    v38[0] = "Invalid record";
    v39 = 259;
  }

  v13 = v41;
  v14 = v42;
  if (v42)
  {
    v15 = memchr(v41, 0, v42);
    if (v15)
    {
      if (v15 - v13 != -1)
      {
        v38[0] = "Invalid value name";
        v39 = 259;
      }
    }
  }

  v39 = 261;
  v38[0] = v13;
  v38[1] = v14;
  llvm::Value::setName(v12, v38);
  v16 = v12[16];
  if (v16 <= 3 && v16 != 1)
  {
    v18 = *(a2 + 816);
    v19 = *(a2 + 832);
    v20 = (v18 + 8 * v19);
    if (v19)
    {
      v21 = v19 - 1;
      LODWORD(v22) = v21 & ((v12 >> 4) ^ (v12 >> 9));
      v23 = (v18 + 8 * v22);
      v24 = *v23;
      if (*v23 == v12)
      {
LABEL_24:
        if (v20 != v23)
        {
          v27 = *(a5 + 44);
          v28 = v27 > 8;
          v29 = (1 << v27) & 0x124;
          if (v28 || v29 == 0)
          {
            v31 = *(a2 + 432);
            if ((v12[23] & 0x10) != 0)
            {
              ValueName = llvm::Value::getValueName(v12);
              v33 = (ValueName + 2);
              v32 = *ValueName;
            }

            else
            {
              v32 = 0;
              v33 = &str_3_24;
            }

            inserted = llvm::Module::getOrInsertComdat(v31, v33, v32);
            llvm::GlobalObject::setComdat(v12, inserted);
          }
        }

        goto LABEL_34;
      }

      v25 = 1;
      while (v24 != -4096)
      {
        v26 = v22 + v25++;
        v22 = v26 & v21;
        v24 = *(v18 + 8 * v22);
        if (v24 == v12)
        {
          v23 = (v18 + 8 * v22);
          goto LABEL_24;
        }
      }
    }

    v23 = v20;
    goto LABEL_24;
  }

LABEL_34:
  *(a1 + 8) &= ~1u;
  *a1 = v12;
  if (v41 != v43)
  {
    free(v41);
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 16;
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
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 16 * v6);
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
      v7 = (v3 + 16 * (v13 & v5));
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

int *llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x11)
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
    if (a2 > 0x10)
    {
      v13 = a2;
      *(a1 + 8) = operator new(16 * a2, 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::moveFromOldBuckets(a1, v6, v6 + 16 * v7);

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v14;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      *(v9 + 2) = *(a1 + v8 + 16);
      v9 += 16;
    }

    v8 += 16;
  }

  while (v8 != 256);
  if (a2 > 0x10)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(16 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::moveFromOldBuckets(int *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 66;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 4;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      *(v16 + 2) = *(a2 + 8);
      *v5 += 2;
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::Value::mergeUseLists<anonymous namespace::BitcodeReader::parseUseLists(void)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v6 = &v10;
  while (a2)
  {
    v11 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(a3, a2, &v11))
    {
      v7 = *(v11 + 8);
    }

    else
    {
      v7 = 0;
    }

    v11 = 0;
    if (llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Use const*,unsigned int,16u,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>,llvm::Use const*,unsigned int,llvm::DenseMapInfo<llvm::Use const*,void>,llvm::detail::DenseMapPair<llvm::Use const*,unsigned int>>::LookupBucketFor<llvm::Use const*>(a3, a1, &v11))
    {
      v8 = *(v11 + 8);
    }

    else
    {
      v8 = 0;
    }

    if (v7 >= v8)
    {
      *v6 = a1;
      v6 = (a1 + 8);
      a1 = *(a1 + 8);
      if (!a1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = a2;
      v6 = (a2 + 8);
      a2 = *(a2 + 8);
      if (!a1)
      {
        goto LABEL_15;
      }
    }
  }

  a2 = a1;
LABEL_15:
  *v6 = a2;
  return v10;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  if (a2)
  {
    v5 = ~((37 * a4) << 32) + (37 * a4) + (((a3 >> 4) ^ (a3 >> 9)) << 32);
    v6 = (v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13);
    v7 = (9 * (v6 ^ (v6 >> 8))) ^ ((9 * (v6 ^ (v6 >> 8))) >> 15);
    v8 = a2 - 1;
    v9 = (a2 - 1) & (((v7 + ~(v7 << 27)) >> 31) ^ (v7 + ~(v7 << 27)));
    v10 = (a1 + 24 * v9);
    v11 = *v10;
    v12 = *(v10 + 2);
    if (*v10 == a3 && v12 == a4)
    {
      v14 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      while (v11 != -4096 || v12 != -1)
      {
        if (v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == -2;
        }

        if (v18 && v11 == -8192)
        {
          v16 = v10;
        }

        v20 = v9 + v17++;
        v9 = v20 & v8;
        v10 = (a1 + 24 * (v20 & v8));
        v11 = *v10;
        v12 = *(v10 + 2);
        v14 = 1;
        if (*v10 == a3 && v12 == a4)
        {
          goto LABEL_9;
        }
      }

      v14 = 0;
      if (v16)
      {
        v10 = v16;
      }
    }
  }

  else
  {
    v10 = 0;
    v14 = 0;
  }

LABEL_9:
  *a5 = v10;
  return v14;
}

double llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::FindAndConstruct(uint64_t a1, int *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v9);
  v6 = v9;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 12) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::grow(a1, v8);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), *a2, &v9);
    v6 = v9;
  }

  ++*(a1 + 8);
  if (*v6 != -1)
  {
    --*(a1 + 12);
  }

  *v6 = *a2;
  *(v6 + 8) = v6 + 24;
  *&result = 0x100000000;
  *(v6 + 16) = 0x100000000;
  return result;
}

char *llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::grow(uint64_t a1, int a2)
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
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 64;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 16) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          *(v16 + 8) = -1;
        }

        v11 += 4;
        v16 += 128;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 32 * v3;
      v20 = (v4 + 24);
      do
      {
        v21 = *(v20 - 6);
        if (v21 <= 0xFFFFFFFD)
        {
          v34 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v21, &v34);
          v22 = v34;
          *v34 = *(v20 - 6);
          *(v22 + 2) = 0x100000000;
          *(v22 + 1) = v22 + 6;
          v23 = (v22 + 2);
          if (*(v20 - 2))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=(v23, (v20 - 4));
          }

          ++*(a1 + 8);
          v24 = *(v20 - 2);
          if (v20 != v24)
          {
            free(v24);
          }
        }

        v20 += 8;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0x7FFFFFFFFFFFFFFLL;
    v28 = v27 & 0x7FFFFFFFFFFFFFFLL;
    v29 = (v27 & 0x7FFFFFFFFFFFFFFLL) - (v27 & 3) + 4;
    v30 = vdupq_n_s64(v28);
    v31 = result + 64;
    do
    {
      v32 = vdupq_n_s64(v26);
      v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_2750C1210)));
      if (vuzp1_s16(v33, *v30.i8).u8[0])
      {
        *(v31 - 16) = -1;
      }

      if (vuzp1_s16(v33, *&v30).i8[2])
      {
        *(v31 - 8) = -1;
      }

      if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_2750C1830)))).i32[1])
      {
        *v31 = -1;
        *(v31 + 8) = -1;
      }

      v26 += 4;
      v31 += 128;
    }

    while (v29 != v26);
  }

  return result;
}

char *llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &result[24 * v10];
      do
      {
        *result = -4096;
        *(result + 2) = -1;
        result += 24;
      }

      while (result != v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = (v4 + 8);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        if ((v14 != -4096 || v15 != -1) && (v14 != -8192 || v15 != -2))
        {
          v21 = 0;
          llvm::DenseMapBase<llvm::DenseMap<std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>,std::pair<llvm::Type *,unsigned int>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::Type *,unsigned int>,void>,llvm::detail::DenseMapPair<std::pair<llvm::Type *,unsigned int>,unsigned int>>::LookupBucketFor<std::pair<llvm::Type *,unsigned int>>(*a1, *(a1 + 16), v14, v15, &v21);
          v18 = v21;
          *v21 = *(v13 - 1);
          *(v18 + 2) = *v13;
          *(v18 + 4) = v13[2];
          ++*(a1 + 8);
        }

        v13 += 6;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = &result[24 * v19];
    do
    {
      *result = -4096;
      *(result + 2) = -1;
      result += 24;
    }

    while (result != v20);
  }

  return result;
}

uint64_t llvm::UnaryInstruction::UnaryInstruction(llvm::UnaryInstruction *this, llvm::Type *a2, uint64_t a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v6 = (this - 32);
  result = llvm::Instruction::Instruction(this, a2, a3, this - 32, 1, a5);
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

_WORD *llvm::FCmpInst::FCmpInst(_WORD *a1, llvm::Type *a2, llvm::CmpInst **a3, uint64_t a4, const char **a5)
{
  v8 = a2;
  llvm::CmpInst::makeCmpResultType(*a3, a2, a3);
  return llvm::CmpInst::CmpInst(a1, v10, 54, v8, a3, a4, a5, 0, 0);
}

_WORD *llvm::ICmpInst::ICmpInst(_WORD *a1, llvm::Type *a2, llvm::CmpInst **a3, uint64_t a4, const char **a5)
{
  v8 = a2;
  llvm::CmpInst::makeCmpResultType(*a3, a2, a3);
  return llvm::CmpInst::CmpInst(a1, v10, 53, v8, a3, a4, a5, 0, 0);
}

void std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void std::vector<llvm::InlineAsm::ConstraintInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::InlineAsm::ConstraintInfo>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::InlineAsm::ConstraintInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = (v3 - 32);
      std::vector<llvm::InlineAsm::SubConstraintInfo>::__destroy_vector::operator()[abi:nn200100](&v4);
      v4 = (v3 - 64);
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void std::vector<llvm::InlineAsm::SubConstraintInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v11 = 0;
      result = 0;
      goto LABEL_11;
    }

    v5 = *(a1 + 8);
  }

  HashValue = llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>::getHashValue(a2);
  v8 = v6 - 1;
  v9 = *(a2 + 8);
  v10 = HashValue & (v6 - 1);
  v11 = (v5 + 24 * v10);
  v12 = *v11;
  v13 = v11[1];
  if (*a2 == *v11 && v9 == v13)
  {
    result = 1;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    result = 1;
    while (v12 != -4096 || v13 != -4096)
    {
      if (v15)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13 == -8192;
      }

      if (v18 && v12 == -8192)
      {
        v15 = v11;
      }

      v20 = v10 + v16++;
      v10 = v20 & v8;
      v11 = (v5 + 24 * (v20 & v8));
      v12 = *v11;
      v13 = v11[1];
      if (*a2 == *v11 && v9 == v13)
      {
        goto LABEL_11;
      }
    }

    result = 0;
    if (v15)
    {
      v11 = v15;
    }
  }

LABEL_11:
  *a3 = v11;
  return result;
}

int *llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
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
      v14 = a2;
      *(a1 + 8) = operator new(24 * a2, 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::moveFromOldBuckets(a1, v6, v6 + 24 * v7);

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v15;
  do
  {
    v11 = *(a1 + v8 + 8);
    v10 = *(a1 + v8 + 16);
    if (__PAIR128__(v10, v11) != __PAIR128__(-4096, -4096) && (v11 != -8192 || v10 != -8192))
    {
      *v9 = *(a1 + v8 + 8);
      *(v9 + 4) = *(a1 + v8 + 24);
      v9 += 24;
    }

    v8 += 24;
  }

  while (v8 != 96);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = operator new(24 * a2, 8uLL);
    *(a1 + 16) = v12;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::moveFromOldBuckets(a1, v15, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::moveFromOldBuckets(int *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = (result + 2);
    v9 = (result + 26);
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(result + 1);
    v9 = (v8 + 24 * v7);
  }

  v10 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  do
  {
    *v8 = v10;
    v8 = (v8 + 24);
  }

  while (v8 != v9);
LABEL_14:
  while (a2 != a3)
  {
    v11 = *(a2 + 8);
    if ((*a2 != -4096 || v11 != -4096) && (*a2 != -8192 || v11 != -8192))
    {
      v13 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,4u,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>,std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int,llvm::DenseMapInfo<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,void>,llvm::detail::DenseMapPair<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>,unsigned int>>::LookupBucketFor<std::pair<llvm::BasicBlock *,llvm::BasicBlock *>>(v5, a2, &v13);
      v12 = v13;
      *v13 = *a2;
      v12[1] = *(a2 + 8);
      *(v12 + 4) = *(a2 + 16);
      *v5 += 2;
    }

    a2 += 24;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::try_emplace<llvm::Value *>(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  v19 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(a2, *a3, &v19);
  v9 = v19;
  v10 = *a2;
  if (result)
  {
    if (v10)
    {
      v11 = a2 + 2;
      v12 = 4;
    }

    else
    {
      v11 = *(a2 + 1);
      v12 = a2[4];
    }

    v15 = 0;
    v16 = &v11[4 * v12];
    goto LABEL_17;
  }

  v13 = v10 >> 1;
  if (v10)
  {
    v14 = 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (4 * v13 + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_19;
  }

  if (v14 + ~v13 - a2[1] <= v14 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::grow(a2, v14);
    v19 = 0;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(a2, *a3, &v19);
    v9 = v19;
  }

  *a2 += 2;
  if (*v9 != -4096)
  {
    --a2[1];
  }

  *v9 = *a3;
  v9[1] = *a4;
  v17 = a2 + 2;
  if (*a2)
  {
    v18 = 4;
  }

  else
  {
    v17 = *(a2 + 1);
    v18 = a2[4];
  }

  v16 = &v17[4 * v18];
  v15 = 1;
LABEL_17:
  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(uint64_t a1, uint64_t a2, void *a3)
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
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 16 * v6);
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
      v7 = (v3 + 16 * (v13 & v5));
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

int *llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::grow(uint64_t a1, unsigned int a2)
{
  v14[8] = *MEMORY[0x277D85DE8];
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
      *(a1 + 8) = operator new(16 * a2, 8uLL);
      *(a1 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::moveFromOldBuckets(a1, v6, &v6[2 * v7]);

    JUMPOUT(0x277C69E30);
  }

  v8 = 0;
  v9 = v14;
  do
  {
    v10 = *(a1 + v8 + 8);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v10;
      v9[1] = *(a1 + v8 + 16);
      v9 += 2;
    }

    v8 += 16;
  }

  while (v8 != 64);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = operator new(16 * a2, 8uLL);
    *(a1 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::moveFromOldBuckets(a1, v14, v9);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 2;
    v9 = result + 18;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 1);
    v9 = &v8[4 * v7];
  }

  v10 = 0;
  v11 = (v9 - v8 - 16) >> 4;
  v12 = vdupq_n_s64(v11);
  v13 = v8 + 4;
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_2750C1210)));
    if (v14.i8[0])
    {
      *(v13 - 2) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 4;
  }

  while (((v11 + 2) & 0x1FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::Value *,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>,llvm::BasicBlock *,llvm::Value *,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::Value *>>::LookupBucketFor<llvm::BasicBlock *>(v5, v15, &v17);
      v16 = v17;
      *v17 = *a2;
      v16[1] = a2[1];
      *v5 += 2;
    }

    a2 += 2;
  }

  return result;
}

__n128 std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::construct[abi:nn200100]<llvm::OperandBundleDefT<llvm::Value *>,std::string &,std::vector<llvm::Value *>>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  v5 = a3[1].n128_u64[0];
  result = *a3;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  *a1 = v7;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::OperandBundleDefT<llvm::Value *>>,llvm::OperandBundleDefT<llvm::Value *>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    do
    {
      std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](a1, v5);
      v5 += 48;
    }

    while (v5 != a3);
  }
}

void **std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::~__split_buffer(void **a1)
{
  std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<llvm::OperandBundleDefT<llvm::Value *>>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](v4, i - 48);
  }
}

void std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::resize(llvm::ValueHandleBase **result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__base_destruct_at_end[abi:nn200100](result, (*result + 32 * a2));
    }
  }

  else
  {
    std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__append(result, a2 - v2);
  }
}

llvm::ValueHandleBase **std::vector<std::pair<llvm::WeakTrackingVH,unsigned int>>::__append(llvm::ValueHandleBase **result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = (v4 + 32 * a2);
      do
      {
        *(v4 + 1) = 0;
        *(v4 + 2) = 0;
        *v4 = 6;
        *(v4 + 6) = 0;
        v4 = (v4 + 32);
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>>(result, v10);
    }

    v12 = 32 * v8;
    v13 = 32 * v8 + 32 * a2;
    v14 = v12;
    do
    {
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 6;
      *(v14 + 24) = 0;
      v14 += 32;
    }

    while (v14 != v13);
    v15 = result[1];
    v16 = (v12 + *result - v15);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<llvm::WeakTrackingVH,unsigned int>>,std::pair<llvm::WeakTrackingVH,unsigned int>*>(result, *result, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v3[1] = v13;
    v18 = v3[2];
    v3[2] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    return std::__split_buffer<std::pair<llvm::WeakTrackingVH,unsigned int>>::~__split_buffer(v19);
  }

  return result;
}

void std::vector<llvm::OperandBundleDefT<llvm::Value *>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 48;
        std::allocator<llvm::OperandBundleDefT<llvm::Value *>>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<llvm::SmallString<32u>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<llvm::SmallString<32u>>::destroy(a1, *a2);
    std::__tree<llvm::SmallString<32u>>::destroy(a1, a2[1]);
    v4 = a2[4];
    if (v4 != a2 + 7)
    {
      free(v4);
    }

    operator delete(a2);
  }
}

void anonymous namespace::BitcodeReader::parseModule(uint64_t *a1, std::string::size_type a2, unint64_t a3, int a4, uint64_t a5)
{
  v462 = *MEMORY[0x277D85DE8];
  v10 = a5 + 40;
  v11 = a2 + 1832;
  if (*(a2 + 1864) == *(a5 + 72))
  {
    if (*(a2 + 1864))
    {
      v12 = *(a2 + 1856);
      *(a2 + 1856) = 0;
      if (v12 == v11)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v14 = *(a5 + 64);
      if (v14)
      {
        if (v14 == v10)
        {
          *(a2 + 1856) = v11;
          (*(**(a5 + 64) + 24))(*(a5 + 64), v11);
        }

        else
        {
          *(a2 + 1856) = v14;
          *(a5 + 64) = 0;
        }
      }

      else
      {
        *(a2 + 1856) = 0;
      }
    }
  }

  else if (*(a2 + 1864))
  {
    std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](a2 + 1832);
    *(a2 + 1864) = 0;
  }

  else
  {
    v13 = *(a5 + 64);
    if (v13)
    {
      if (v13 == v10)
      {
        *(a2 + 1856) = v11;
        (*(**(a5 + 64) + 24))(*(a5 + 64), a2 + 1832);
      }

      else
      {
        *(a2 + 1856) = v13;
        *(a5 + 64) = 0;
      }
    }

    else
    {
      *(a2 + 1856) = 0;
    }

    *(a2 + 1864) = 1;
  }

  v15 = (a2 + 32);
  if (a3)
  {
    llvm::SimpleBitstreamCursor::JumpToBit(a1, v15, a3);
  }

  else
  {
    llvm::BitstreamCursor::EnterSubBlock(a1, v15, 0, 8);
  }

  if (!*a1)
  {
    v437 = v439;
    v438 = 0x4000000000;
    v433 = 0;
    v16 = *(a2 + 432);
    if (*(v16 + 495) < 0)
    {
      std::string::__init_copy_ctor_external(&v432, *(v16 + 472), *(v16 + 480));
    }

    else
    {
      v432 = *(v16 + 472);
    }

    v431[0] = &v433;
    v431[1] = &v432;
    v431[2] = a2;
    v431[3] = a5;
    v421 = (a2 + 520);
    v422 = (a2 + 1776);
    v430 = a4;
    while (1)
    {
      llvm::BitstreamCursor::advance(v435, (a2 + 32), 0);
      if (v436)
      {
        v17 = *v435;
        *v435 = 0;
        *a1 = v17;
        goto LABEL_29;
      }

      if (*v435 != 2)
      {
        if (*v435 != 1)
        {
          if (!*v435)
          {
            __p.__r_.__value_.__r.__words[0] = "Malformed block";
            v461 = 259;
          }

          llvm::BitstreamCursor::readRecord(&v440, (a2 + 32), *&v435[4], &v437, 0);
          if (v441)
          {
            v52 = v440;
            v440 = 0;
            *a1 = v52;
LABEL_169:
            v18 = 1;
LABEL_809:
            if (v441)
            {
              v293 = v440;
              v440 = 0;
              if (v293)
              {
                (*(*v293 + 8))(v293);
              }
            }

            goto LABEL_30;
          }

          v53 = v440;
          switch(v440)
          {
            case 1:
              if (!v438)
              {
                __p.__r_.__value_.__r.__words[0] = "Invalid version record";
                v461 = 259;
              }

              v126 = *v437;
              if (*v437 >= 3)
              {
                __p.__r_.__value_.__r.__words[0] = "Invalid value";
                v461 = 259;
              }

              *(a2 + 392) = v126 == 2;
              v232 = v126 & 3;
              v416 = v232 | v416 & 0xFFFFFFFF00000000;
              *(a2 + 1712) = v232 != 0;
              goto LABEL_808;
            case 2:
              if (v433 == 1)
              {
                v125 = "target triple too late in module";
                goto LABEL_435;
              }

              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
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

              llvm::Module::setTargetTriple(*(a2 + 432), p_p, size);
LABEL_408:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_808;
            case 3:
              if (v433 == 1)
              {
                v125 = "datalayout too late in module";
                goto LABEL_435;
              }

              std::string::append[abi:nn200100]<unsigned long long const*,0>(&v432, v437, (v437 + 8 * v438));
              goto LABEL_808;
            case 4:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v135 = &__p;
              }

              else
              {
                v135 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v136 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v136 = __p.__r_.__value_.__l.__size_;
              }

              llvm::Module::setModuleInlineAsm(*(a2 + 432), v135, v136);
              goto LABEL_408;
            case 5:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              v124 = a2 + 472;
              goto LABEL_407;
            case 6:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              goto LABEL_408;
            case 7:
              v127 = v437;
              v128 = v438;
              if (*(a2 + 392) == 1)
              {
                v129 = *(v437 + 1);
                if (v129 + *v437 > *(a2 + 384))
                {
LABEL_431:
                  __p.__r_.__value_.__r.__words[0] = "Invalid record";
                  goto LABEL_432;
                }

                v130 = (*(a2 + 376) + *v437);
                v128 = v438 - 2;
                v127 = v437 + 16;
              }

              else
              {
                v129 = 0;
                v130 = "";
              }

              if (v128 <= 5)
              {
                goto LABEL_431;
              }

              *v419 = v130;
              v426 = v128;
              LODWORD(v450) = *v127;
              v146 = v450;
              if (!TypeByID)
              {
                __p.__r_.__value_.__r.__words[0] = "Invalid record";
LABEL_432:
                v461 = 259;
              }

              v148 = *(v127 + 1);
              if ((v148 & 2) == 0)
              {
                v149 = *(TypeByID + 8);
                if (*(TypeByID + 8) == 15)
                {
                  v413 = *(v127 + 1);
                  if (v150)
                  {
                    v404 = v149 >> 8;
                    v408 = v150;
                    goto LABEL_716;
                  }

                  v264 = "Missing element type for old-style global";
                }

                else
                {
                  v264 = "Invalid type for value";
                }

                __p.__r_.__value_.__r.__words[0] = v264;
                v461 = 259;
              }

              v408 = TypeByID;
              LOBYTE(v413) = *(v127 + 1);
              v404 = (v148 >> 2);
LABEL_716:
              v255 = *(v127 + 3);
              DecodedLinkage = getDecodedLinkage(v255);
              LOWORD(v447) = 0;
              if (*a1)
              {
LABEL_940:
                a4 = v430;
                goto LABEL_807;
              }

              memset(&v458, 0, 24);
              v257 = *(v127 + 5);
              if (v257)
              {
                v258 = v257 - 1;
                v259 = *(a2 + 472);
                if (v258 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 480) - v259) >> 3))
                {
                  __p.__r_.__value_.__r.__words[0] = "Invalid ID";
                  v461 = 259;
                }

                std::string::operator=(&v458, (v259 + 24 * v258));
              }

              v392 = v255;
              if (v426 == 6)
              {
                v401 = 0;
                v399 = 0;
                v397 = 0;
                v394 = 0;
                v260 = v408;
                goto LABEL_886;
              }

              if ((DecodedLinkage - 7) >= 2)
              {
                v296 = *(v127 + 12);
                if (v296 == 2)
                {
                  v294 = 2;
                }

                else
                {
                  v294 = v296 == 1;
                }
              }

              else
              {
                v294 = 0;
              }

              v399 = v294;
              if (v426 == 7)
              {
                v401 = 0;
                v397 = 0;
              }

              else
              {
                if (*(v127 + 14) >= 5u)
                {
                  LOBYTE(v297) = 1;
                }

                else
                {
                  v297 = *(v127 + 14);
                }

                v397 = v297;
                if (v426 < 9)
                {
                  v401 = 0;
                }

                else
                {
                  v298 = *(v127 + 16);
                  if (v298 == 2)
                  {
                    v299 = 1;
                  }

                  else
                  {
                    v299 = 2 * (v298 == 1);
                  }

                  v401 = v299;
                  if (v426 != 9)
                  {
                    v394 = *(v127 + 9) != 0;
LABEL_885:
                    v260 = v408;
LABEL_886:
                    v332 = operator new(0x78uLL);
                    *(v332 + 13) = *(v332 + 13) & 0x38000000 | 1;
                    *v332 = 0;
                    *(v332 + 1) = 0;
                    *(v332 + 2) = 0;
                    *(v332 + 3) = v332 + 32;
                    v333 = *(a2 + 432);
                    v461 = 261;
                    __p.__r_.__value_.__r.__words[0] = *v419;
                    __p.__r_.__value_.__l.__size_ = v129;
                    v334 = (v332 + 32);
                    llvm::GlobalVariable::GlobalVariable((v332 + 32), v333, v260, v413 & 1, DecodedLinkage, 0, &__p.__r_.__value_.__l.__data_, 0, v397, v404 | 0x100000000, v394);
                    if (BYTE1(v447) == 1)
                    {
                      *(v332 + 16) = ((v447 << 17) + 0x20000) | *(v332 + 16) & 0xFF81FFFF;
                    }

                    if (SHIBYTE(v458.__end_) >= 0)
                    {
                      end_high = HIBYTE(v458.__end_);
                    }

                    else
                    {
                      end_high = v458.__begin_;
                    }

                    if (end_high)
                    {
                      if (SHIBYTE(v458.__end_) >= 0)
                      {
                        first = &v458;
                      }

                      else
                      {
                        first = v458.__first_;
                      }

                      llvm::GlobalObject::setSection(v334, first, end_high, v335);
                    }

                    llvm::GlobalValue::setVisibility(v334, v399);
                    v338 = *(v332 + 16) & 0xF;
                    v339 = *(v332 + 16) & 0xFFFFFF3F | ((v401 & 3) << 6);
                    *(v332 + 16) = v339;
                    v340 = v338 - 7;
                    if (v426 < 0xB)
                    {
                      if (v340 >= 2)
                      {
                        if (v392 == 5)
                        {
                          v342 = 256;
                        }

                        else
                        {
                          if (v392 != 6)
                          {
                            goto LABEL_907;
                          }

                          v342 = 512;
                        }

LABEL_906:
                        *(v332 + 16) = v342 | v339 & 0xFFFFFCFF;
                      }
                    }

                    else if (v340 >= 2)
                    {
                      v341 = *(v127 + 20);
                      if (v341 == 2)
                      {
                        v342 = 512;
                      }

                      else
                      {
                        v342 = (v341 == 1) << 8;
                      }

                      goto LABEL_906;
                    }

LABEL_907:
                    llvm::BitcodeReaderValueList::push_back((a2 + 712), v334, VirtualTypeID);
                    v344 = *(v127 + 4);
                    v345 = v426;
                    if (v344)
                    {
                      v346 = v332 + 32;
                      v347 = v344 - 1;
                      v348 = *(a2 + 1376);
                      v349 = *(a2 + 1384);
                      if (v348 >= v349)
                      {
                        v351 = *(a2 + 1368);
                        v352 = (v348 - v351) >> 4;
                        v353 = v352 + 1;
                        if ((v352 + 1) >> 60)
                        {
                          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                        }

                        v354 = v349 - v351;
                        if (v354 >> 3 > v353)
                        {
                          v353 = v354 >> 3;
                        }

                        if (v354 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v355 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v355 = v353;
                        }

                        if (v355)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v355);
                        }

                        v356 = 16 * v352;
                        *v356 = v346;
                        *(v356 + 8) = v347;
                        v350 = 16 * v352 + 16;
                        v357 = *(a2 + 1368);
                        v358 = *(a2 + 1376) - v357;
                        v359 = v356 - v358;
                        memcpy((v356 - v358), v357, v358);
                        v360 = *(a2 + 1368);
                        *(a2 + 1368) = v359;
                        *(a2 + 1376) = v350;
                        *(a2 + 1384) = 0;
                        if (v360)
                        {
                          operator delete(v360);
                        }

                        v345 = v426;
                      }

                      else
                      {
                        *v348 = v346;
                        *(v348 + 8) = v347;
                        v350 = v348 + 16;
                      }

                      *(a2 + 1376) = v350;
                      v334 = (v332 + 32);
                    }

                    if (v345 < 0xC)
                    {
                      if (v392 <= 0xB && ((1 << v392) & 0xC12) != 0)
                      {
                        v443 = v334;
                        llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__p, a2 + 816, &v443);
                      }

                      goto LABEL_937;
                    }

                    v361 = *(v127 + 11);
                    if (v361)
                    {
                      v362 = *(a2 + 792);
                      if (v361 > ((*(a2 + 800) - v362) >> 3))
                      {
                        __p.__r_.__value_.__r.__words[0] = "Invalid global variable comdat ID";
                        v461 = 259;
                      }

                      llvm::GlobalObject::setComdat(v334, *(v362 + 8 * (v361 - 1)));
                      v345 = v426;
                    }

                    if (v345 == 12)
                    {
LABEL_937:
                      inferDSOLocal(v334);
LABEL_938:
                      *a1 = 0;
                      if (SHIBYTE(v458.__end_) < 0)
                      {
                        operator delete(v458.__first_);
                      }

                      goto LABEL_940;
                    }

                    v363 = (*(v127 + 24) - 1);
                    v364 = *(a2 + 1440);
                    if (v363 >= (*(a2 + 1448) - v364) >> 3)
                    {
                      goto LABEL_935;
                    }

                    v365 = *(v364 + 8 * v363);
                    if (!v365)
                    {
                      goto LABEL_936;
                    }

                    if (*(v365 + 8))
                    {
                      v365 = *(v365 + 40);
                    }

                    else
                    {
LABEL_935:
                      v365 = 0;
                    }

LABEL_936:
                    *(v332 + 13) = v365;
                    if (v345 != 13)
                    {
                      *(v332 + 16) = *(v332 + 16) & 0xFFFFBFFF | ((*(v127 + 26) == 1) << 14);
                      inferDSOLocal(v334);
                      if (v426 >= 0x10)
                      {
                        llvm::GlobalValue::setPartition(v334, (*(a2 + 376) + *(v127 + 14)), *(v127 + 15), v366);
                        if (v426 != 16)
                        {
                          v367 = *(v127 + 16);
                          if (v367)
                          {
                            llvm::GlobalValue::setSanitizerMetadata(v334, v367 & 0xF);
                          }
                        }
                      }

                      goto LABEL_938;
                    }

                    goto LABEL_937;
                  }
                }
              }

              v394 = 0;
              goto LABEL_885;
            case 8:
              if (*a1)
              {
                v18 = 1;
                goto LABEL_809;
              }

              v131 = v437;
              v132 = v438;
              if (*(a2 + 392) == 1)
              {
                v133 = *(v437 + 1);
                if (v133 + *v437 > *(a2 + 384))
                {
                  goto LABEL_683;
                }

                v134 = (*(a2 + 376) + *v437);
                v132 = v438 - 2;
                v131 = (v437 + 16);
              }

              else
              {
                v133 = 0;
                v134 = "";
              }

              if (v132 > 7)
              {
                v396 = v132;
                v398 = v131;
                v456[0] = *v131;
                v420 = v456[0];
                if (v236)
                {
                  v237 = v236;
                  v238 = *(v236 + 8);
                  if (v238 == 15)
                  {
                    v420 = v456[0];
                    if (!v239)
                    {
                      v241 = "Missing element type for old-style function";
                      goto LABEL_684;
                    }

                    v237 = v239;
                    v238 = *(v239 + 8);
                  }

                  if (v238 == 14)
                  {
                    v240 = *(v398 + 1);
                    if ((v240 & 0xFFFFFC00) != 0)
                    {
                      v111 = "Invalid calling convention ID";
                      goto LABEL_366;
                    }

                    v414 = *(a2 + 432);
                    if (v396 < 0x11)
                    {
                      v427 = *(*(a2 + 432) + 268);
                      v295 = v398;
                    }

                    else
                    {
                      v295 = v398;
                      v427 = v398[32];
                    }

                    v461 = 261;
                    __p.__r_.__value_.__r.__words[0] = v134;
                    __p.__r_.__value_.__l.__size_ = v133;
                    v300 = operator new(0x80uLL);
                    *(v300 + 7) = *(v300 + 7) & 0x38000000 | 0x40000000;
                    *v300 = 0;
                    llvm::Function::Function((v300 + 8), v237, 0, v427, &__p.__r_.__value_.__l.__data_, v414);
                    v450 = v300 + 8;
                    *(llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>,llvm::Function *,unsigned int,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,unsigned int>>::FindAndConstruct(a2 + 592, &v450) + 8) = v420;
                    *(v300 + 13) = *(v300 + 13) & 0xC00F | (16 * v240);
                    v391 = *(v295 + 2);
                    v393 = *(v295 + 3);
                    v395 = v300;
                    v301 = getDecodedLinkage(v393);
                    v402 = (v300 + 8);
                    llvm::GlobalValue::setLinkage((v300 + 8), v301);
                    v302 = 0;
                    v303 = v295[8] - 1;
                    v304 = *(a2 + 1440);
                    if (v303 < (*(a2 + 1448) - v304) >> 3)
                    {
                      v302 = *(v304 + 8 * v303);
                    }

                    *(v300 + 15) = v302;
                    v305 = (v300 + 120);
                    a4 = v430;
                    if (*(a2 + 1864) == 1)
                    {
                      __p.__r_.__value_.__r.__words[0] = &unk_2883EFC20;
                      __p.__r_.__value_.__l.__size_ = a2;
                      v460 = &__p;
                      v458.__first_ = &unk_2883EFC68;
                      v458.__begin_ = a2;
                      v458.__end_cap_.__value_ = &v458;
                      std::function<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::operator()(*(a2 + 1856), v402, v420);
                      std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](&v458);
                      std::__function::__value_func<llvm::Type * ()>::~__value_func[abi:nn200100](&__p);
                    }

                    if (*(v395 + 13))
                    {
                      v306 = 0;
                      v415 = *v305;
                      do
                      {
                        v307 = 0;
                        v458.__first_ = 0x4A00000046;
                        LODWORD(v458.__begin_) = 72;
                        v428 = v306 + 1;
                        v409 = v306;
                        v308 = v306 + 2;
                        v309 = v415;
                        v405 = v308;
                        do
                        {
                          if (v309)
                          {
                            if (v308 < *(v309 + 2))
                            {
                              v310 = v309[v308 + 5];
                              if (v310)
                              {
                                v311 = *(&v458.__first_ + v307);
                                if ((*(v310 + v311 / 8 + 12) >> (v311 & 7)))
                                {
                                  AttributeAtIndex = llvm::AttributeList::getAttributeAtIndex(v305, v428, *(&v458.__first_ + v307));
                                  if (!AttributeAtIndex || !*(AttributeAtIndex + 16))
                                  {
                                    *v305 = llvm::AttributeList::removeAttributeAtIndex(v305, **v402, v428, v311);
                                    if (!PtrElementTypeByID)
                                    {
                                      __p.__r_.__value_.__r.__words[0] = "Missing param element type for attribute upgrade";
                                      v461 = 259;
                                    }

                                    v315 = llvm::Attribute::get(*(a2 + 424), v311, PtrElementTypeByID);
                                    LODWORD(__p.__r_.__value_.__l.__data_) = v409;
                                    v309 = llvm::AttributeList::addParamAttribute(v305, **v402, &__p, 1, v315);
                                    *v305 = v309;
                                    v415 = v309;
                                    v308 = v405;
                                  }
                                }
                              }
                            }
                          }

                          v307 += 4;
                        }

                        while (v307 != 12);
                        v306 = v428;
                      }

                      while (*(v395 + 13) != v428);
                      a4 = v430;
                      if (v428)
                      {
                        if ((*(v395 + 13) & 0x3FF0) == 0x530 && (!v415 || *(v415 + 8) < 3u || (v316 = *(v415 + 56)) == 0 || (*(v316 + 20) & 0x40) == 0))
                        {
                          if (!v318)
                          {
                            v373 = "Missing param element type for x86_intrcc upgrade";
                            goto LABEL_951;
                          }

                          v319 = llvm::Attribute::get(*(a2 + 424), 70, v318);
                          LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                          *v305 = llvm::AttributeList::addParamAttribute(v305, **v402, &__p, 1, v319);
                        }
                      }
                    }

                    LOWORD(v454) = 0;
                    if (*a1)
                    {
                      goto LABEL_807;
                    }

                    if (BYTE1(v454) == 1)
                    {
                      *(v395 + 10) = ((v454 << 17) + 0x20000) | *(v395 + 10) & 0xFF81FFFF;
                    }

                    v321 = *(v398 + 6);
                    if (!v321)
                    {
LABEL_875:
                      v328 = v402;
                      if ((*(v395 + 10) & 0xFu) - 7 >= 2)
                      {
                        v329 = v398[14];
                        if (v329 == 2)
                        {
                          v330 = 2;
                        }

                        else
                        {
                          v330 = v329 == 1;
                        }

                        llvm::GlobalValue::setVisibility(v402, v330);
                      }

                      if (v396 == 8)
                      {
                        v331 = 0;
                      }

                      else
                      {
                        v368 = *(v398 + 8);
                        if (v368)
                        {
                          v369 = v368 - 1;
                          v370 = *(a2 + 496);
                          if (v369 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 504) - v370) >> 3))
                          {
                            v374 = "Invalid ID";
LABEL_953:
                            __p.__r_.__value_.__r.__words[0] = v374;
LABEL_367:
                            v461 = 259;
                          }

                          v371 = (v370 + 24 * v369);
                          if (*(v371 + 23) < 0)
                          {
                            std::string::__init_copy_ctor_external(&v458, *v371, *(v371 + 1));
                          }

                          else
                          {
                            v372 = *v371;
                            v458.__end_ = *(v371 + 2);
                            *&v458.__first_ = v372;
                          }

                          llvm::Function::setGC(v402, &v458);
                          if (SHIBYTE(v458.__end_) < 0)
                          {
                            operator delete(v458.__first_);
                          }
                        }

                        if (v396 < 0xA)
                        {
                          v331 = 0;
                        }

                        else
                        {
                          v375 = v398[18];
                          if (v375 == 2)
                          {
                            v331 = 64;
                          }

                          else
                          {
                            v331 = (v375 == 1) << 7;
                          }
                        }

                        v328 = v402;
                      }

                      v376 = *(v395 + 10);
                      v377 = v376 & 0xFFFFFF3F | v331;
                      *(v395 + 10) = v377;
                      v443 = v328;
                      v444 = 0u;
                      if (v396 < 0xB)
                      {
                        v429 = 0;
                      }

                      else
                      {
                        v429 = v398[20];
                        DWORD2(v444) = v429;
                        if (v396 != 11)
                        {
                          if ((v376 & 0xFu) - 7 >= 2)
                          {
                            v378 = v398[22];
                            if (v378 == 2)
                            {
                              v379 = 512;
                            }

                            else
                            {
                              v379 = (v378 == 1) << 8;
                            }

                            *(v395 + 10) = v379 | v377 & 0xFFFFFCFF;
                          }

                          if (v396 >= 0xD)
                          {
                            v380 = *(v398 + 12);
                            if (v380)
                            {
                              v381 = *(a2 + 792);
                              if (v380 > ((*(a2 + 800) - v381) >> 3))
                              {
                                v374 = "Invalid function comdat ID";
                                goto LABEL_953;
                              }

                              llvm::GlobalObject::setComdat(v402, *(v381 + 8 * (v380 - 1)));
                            }

                            if (v396 == 13)
                            {
                              v383 = 0;
                            }

                            else
                            {
                              v383 = v398[26];
                              DWORD1(v444) = v383;
                              if (v396 != 14)
                              {
                                v385 = v398[28];
                                LODWORD(v444) = v385;
                                if (v396 > 0xF)
                                {
                                  *(v395 + 10) = *(v395 + 10) & 0xFFFFBFFF | ((v398[30] == 1) << 14);
                                  inferDSOLocal(v402);
                                  if (v396 >= 0x13 && (v388 = *(a2 + 376)) != 0 && (v390 = *(v398 + 17), v389 = *(v398 + 18), v389 + v390 <= *(a2 + 384)))
                                  {
                                    v384 = v402;
                                    llvm::GlobalValue::setPartition(v402, (v388 + v390), v389, v387);
                                    a4 = v430;
                                  }

                                  else
                                  {
                                    a4 = v430;
                                    v384 = v402;
                                  }

                                  goto LABEL_992;
                                }

                                goto LABEL_990;
                              }
                            }

                            v385 = 0;
LABEL_990:
                            a4 = v430;
                            v384 = v402;
                            goto LABEL_991;
                          }

                          goto LABEL_981;
                        }
                      }

                      if ((v376 & 0xFu) - 7 < 2)
                      {
                        goto LABEL_981;
                      }

                      if (v393 == 5)
                      {
                        v382 = 256;
                      }

                      else
                      {
                        if (v393 != 6)
                        {
                          goto LABEL_981;
                        }

                        v382 = 512;
                      }

                      *(v395 + 10) = v382 | v377 & 0xFFFFFCFF;
LABEL_981:
                      v383 = 0;
                      if (v393 <= 0xB && ((1 << v393) & 0xC12) != 0)
                      {
                        v384 = v402;
                        v447 = v402;
                        llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__p, a2 + 816, &v447);
                        v383 = 0;
                        v385 = 0;
                        a4 = v430;
LABEL_991:
                        inferDSOLocal(v384);
LABEL_992:
                        llvm::BitcodeReaderValueList::push_back((a2 + 712), v384, v386);
                        if (v385 || v383 || v429)
                        {
                        }

                        if (!v391)
                        {
                          *(v395 + 10) |= 0x1000000u;
                          std::vector<llvm::orc::NonOwningSymbolStringPtr>::push_back[abi:nn200100](a2 + 1512, &v450);
                          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>,llvm::jitlink::Section *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::jitlink::Section *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Section *,llvm::orc::ExecutorAddr>>::FindAndConstruct(a2 + 1568, &v450)[1] = 0;
                        }

                        *a1 = 0;
                        goto LABEL_807;
                      }

                      v385 = 0;
                      goto LABEL_990;
                    }

                    v322 = v321 - 1;
                    v323 = *(a2 + 472);
                    if (v322 < 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 480) - v323) >> 3))
                    {
                      v324 = v323 + 24 * v322;
                      v325 = *(v324 + 23);
                      if (v325 >= 0)
                      {
                        v326 = v324;
                      }

                      else
                      {
                        v326 = *v324;
                      }

                      if (v325 >= 0)
                      {
                        v327 = *(v324 + 23);
                      }

                      else
                      {
                        v327 = *(v324 + 8);
                      }

                      llvm::GlobalObject::setSection(v402, v326, v327, v320);
                      goto LABEL_875;
                    }

                    v373 = "Invalid ID";
LABEL_951:
                    __p.__r_.__value_.__r.__words[0] = v373;
                    v461 = 259;
                  }

                  v241 = "Invalid type for value";
LABEL_684:
                  __p.__r_.__value_.__r.__words[0] = v241;
                  v461 = 259;
                }
              }

LABEL_683:
              v241 = "Invalid record";
              goto LABEL_684;
            case 9:
            case 14:
            case 18:
              v54 = v437;
              v55 = v438;
              if (*(a2 + 392) == 1)
              {
                v56 = *(v437 + 1);
                if (v56 + *v437 > *(a2 + 384))
                {
LABEL_365:
                  v111 = "Invalid record";
LABEL_366:
                  __p.__r_.__value_.__r.__words[0] = v111;
                  goto LABEL_367;
                }

                v57 = (*(a2 + 376) + *v437);
                v55 = v438 - 2;
                v54 = v437 + 16;
              }

              else
              {
                v56 = 0;
                v57 = "";
              }

              v110 = 3;
              if (v440 != 9)
              {
                v110 = 4;
              }

              if (v55 < v110)
              {
                goto LABEL_365;
              }

              *v418 = v57;
              v425 = v55;
              LODWORD(v458.__first_) = *v54;
              first_low = LODWORD(v458.__first_);
              if (v114)
              {
                v115 = v114;
                if (v53 != 9)
                {
                  v151 = *(v54 + 2);
                  v117 = *(v54 + 3);
                  v412 = *(v54 + 2);
                  if (v53 != 14)
                  {
                    v400 = *(v54 + 3);
                    v242 = getDecodedLinkage(v117);
                    v461 = 261;
                    __p.__r_.__value_.__r.__words[0] = *v418;
                    __p.__r_.__value_.__l.__size_ = v56;
                    v153 = llvm::GlobalIFunc::create(v115, v151, v242, &__p.__r_.__value_.__l.__data_, 0, *(a2 + 432));
                    v154 = 4;
                    v118 = 5;
LABEL_687:
                    v243 = v425;
                    if (v425 == v154)
                    {
                      v118 = v154;
                    }

                    else if ((*(v153 + 32) & 0xFu) - 7 >= 2)
                    {
                      v244 = *&v54[8 * v154];
                      if (v244 == 2)
                      {
                        v245 = 2;
                      }

                      else
                      {
                        v245 = v244 == 1;
                      }

                      llvm::GlobalValue::setVisibility(v153, v245);
                      v243 = v425;
                    }

                    if (v53 != 14 && v53 != 9)
                    {
                      goto LABEL_790;
                    }

                    if (v243 == v118)
                    {
                      v247 = (v153 + 32);
                      v246 = *(v153 + 32);
                      if ((v246 & 0xF) - 7 < 2)
                      {
                        v248 = v118;
LABEL_778:
                        if (v243 == v248)
                        {
                          v272 = v243;
                        }

                        else
                        {
                          v272 = v248 + 1;
                          v273 = *&v54[8 * v248];
                          if (v273 >= 5)
                          {
                            v274 = 1024;
                          }

                          else
                          {
                            v274 = v273 << 10;
                          }

                          v246 = v274 | v246 & 0xFFFFE3FF;
                          *(v153 + 32) = v246;
                          v248 = v272;
                        }

                        if (v243 == v272)
                        {
                          v118 = v248;
                        }

                        else
                        {
                          v118 = v248 + 1;
                          v275 = *&v54[8 * v272];
                          if (v275 == 2)
                          {
                            v276 = 64;
                          }

                          else
                          {
                            v276 = (v275 == 1) << 7;
                          }

                          *(v153 + 32) = v276 | v246 & 0xFFFFFF3F;
                        }

LABEL_790:
                        if (v243 != v118)
                        {
                          v277 = *&v54[8 * v118++];
                          *(v153 + 32) = *(v153 + 32) & 0xFFFFBFFF | ((v277 == 1) << 14);
                        }

                        inferDSOLocal(v153);
                        if (v425 > v118 + 1)
                        {
                          llvm::GlobalValue::setPartition(v153, (*(a2 + 376) + *&v54[8 * v118]), *&v54[8 * v118 + 8], v278);
                        }

                        llvm::BitcodeReaderValueList::push_back((a2 + 712), v153, v279);
                        v280 = *(a2 + 1400);
                        v281 = *(a2 + 1408);
                        if (v280 >= v281)
                        {
                          v283 = *(a2 + 1392);
                          v284 = (v280 - v283) >> 4;
                          v285 = v284 + 1;
                          a4 = v430;
                          if ((v284 + 1) >> 60)
                          {
                            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                          }

                          v286 = v281 - v283;
                          if (v286 >> 3 > v285)
                          {
                            v285 = v286 >> 3;
                          }

                          if (v286 >= 0x7FFFFFFFFFFFFFF0)
                          {
                            v287 = 0xFFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v287 = v285;
                          }

                          if (v287)
                          {
                            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v287);
                          }

                          v288 = 16 * v284;
                          *v288 = v153;
                          *(v288 + 8) = v412;
                          v282 = 16 * v284 + 16;
                          v289 = *(a2 + 1392);
                          v290 = *(a2 + 1400) - v289;
                          v291 = 16 * v284 - v290;
                          memcpy((v288 - v290), v289, v290);
                          v292 = *(a2 + 1392);
                          *(a2 + 1392) = v291;
                          *(a2 + 1400) = v282;
                          *(a2 + 1408) = 0;
                          if (v292)
                          {
                            operator delete(v292);
                          }
                        }

                        else
                        {
                          *v280 = v153;
                          *(v280 + 8) = v412;
                          v282 = v280 + 16;
                          a4 = v430;
                        }

                        *(a2 + 1400) = v282;
                        *a1 = 0;
                        goto LABEL_807;
                      }

                      if (v400 == 5)
                      {
                        v261 = 256;
                        v248 = v118;
                      }

                      else
                      {
                        if (v400 != 6)
                        {
                          v248 = v118;
                          goto LABEL_778;
                        }

                        v261 = 512;
                        v248 = v118;
                      }
                    }

                    else
                    {
                      v248 = v118 + 1;
                      v247 = (v153 + 32);
                      v246 = *(v153 + 32);
                      if ((v246 & 0xF) - 7 < 2)
                      {
                        goto LABEL_778;
                      }

                      v262 = *&v54[8 * v118];
                      if (v262 == 2)
                      {
                        v261 = 512;
                      }

                      else
                      {
                        v261 = (v262 == 1) << 8;
                      }
                    }

                    v246 = v261 | v246 & 0xFFFFFCFF;
                    *v247 = v246;
                    goto LABEL_778;
                  }

                  v407 = 4;
                  v403 = *(v54 + 2);
                  v118 = 5;
LABEL_445:
                  LODWORD(v400) = v117;
                  v152 = getDecodedLinkage(v117);
                  v461 = 261;
                  __p.__r_.__value_.__r.__words[0] = *v418;
                  __p.__r_.__value_.__l.__size_ = v56;
                  v153 = llvm::GlobalAlias::create(v115, v403, v152, &__p.__r_.__value_.__l.__data_, *(a2 + 432));
                  v154 = v407;
                  goto LABEL_687;
                }

                if (*(v114 + 8) == 15)
                {
                  v411 = *(v114 + 8);
                  if (v116)
                  {
                    v115 = v116;
                    v403 = v411 >> 8;
                    v117 = *(v54 + 2);
                    v407 = 3;
                    v412 = *(v54 + 1);
                    v118 = 4;
                    goto LABEL_445;
                  }

                  v145 = "Missing element type for old-style indirect symbol";
                }

                else
                {
                  v145 = "Invalid type for value";
                }
              }

              else
              {
                v145 = "Invalid record";
              }

              __p.__r_.__value_.__r.__words[0] = v145;
              v461 = 259;
            case 11:
              memset(&__p, 0, sizeof(__p));
              std::string::append[abi:nn200100]<unsigned long long const*,0>(&__p, v437, (v437 + 8 * v438));
              v124 = a2 + 496;
LABEL_407:
              std::vector<std::string>::push_back[abi:nn200100](v124, &__p);
              goto LABEL_408;
            case 12:
              v119 = v437;
              v120 = v438;
              v121 = *(a2 + 392);
              if (v121 == 1)
              {
                begin = *(v437 + 1);
                if (begin + *v437 > *(a2 + 384))
                {
                  goto LABEL_420;
                }

                v123 = (*(a2 + 376) + *v437);
                v120 = v438 - 2;
                v119 = v437 + 16;
              }

              else
              {
                begin = 0;
                v123 = "";
              }

              if (v120)
              {
                if ((*v119 - 2) >= 4)
                {
                  v137 = 0;
                }

                else
                {
                  v137 = *v119 - 1;
                }

                memset(&v458, 0, 24);
                if (v121)
                {
LABEL_418:
                  inserted = llvm::Module::getOrInsertComdat(*(a2 + 432), v123, begin);
                  v139 = inserted;
                  *(inserted + 2) = v137;
                  v140 = *(a2 + 800);
                  v141 = *(a2 + 808);
                  if (v140 >= v141)
                  {
                    v249 = *(a2 + 792);
                    v250 = (v140 - v249) >> 3;
                    if ((v250 + 1) >> 61)
                    {
                      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                    }

                    v251 = v141 - v249;
                    v252 = v251 >> 2;
                    if (v251 >> 2 <= (v250 + 1))
                    {
                      v252 = v250 + 1;
                    }

                    if (v251 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v253 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v253 = v252;
                    }

                    if (v253)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v253);
                    }

                    v265 = (8 * v250);
                    *v265 = v139;
                    v142 = 8 * v250 + 8;
                    v266 = *(a2 + 792);
                    v267 = *(a2 + 800) - v266;
                    v268 = v265 - v267;
                    memcpy(v265 - v267, v266, v267);
                    v269 = *(a2 + 792);
                    *(a2 + 792) = v268;
                    *(a2 + 800) = v142;
                    *(a2 + 808) = 0;
                    if (v269)
                    {
                      operator delete(v269);
                    }
                  }

                  else
                  {
                    *v140 = inserted;
                    v142 = (v140 + 1);
                  }

                  *(a2 + 800) = v142;
                  *a1 = 0;
                  if (SHIBYTE(v458.__end_) < 0)
                  {
                    operator delete(v458.__first_);
                  }

LABEL_807:
                  if (*a1)
                  {
                    goto LABEL_169;
                  }

LABEL_808:
                  v18 = 0;
                  LODWORD(v438) = 0;
                  goto LABEL_809;
                }

                if (v120 == 1)
                {
                  v233 = "Invalid record";
                }

                else
                {
                  v254 = v119[2];
                  if (v254 <= v120 - 2)
                  {
                    std::string::reserve(&v458, v119[2]);
                    if (v254)
                    {
                      v263 = 2;
                      do
                      {
                        std::string::push_back(&v458, *&v119[2 * v263++]);
                        --v254;
                      }

                      while (v254);
                    }

                    if (SHIBYTE(v458.__end_) >= 0)
                    {
                      v123 = &v458;
                    }

                    else
                    {
                      v123 = v458.__first_;
                    }

                    if (SHIBYTE(v458.__end_) >= 0)
                    {
                      begin = SHIBYTE(v458.__end_);
                    }

                    else
                    {
                      begin = v458.__begin_;
                    }

                    a4 = v430;
                    goto LABEL_418;
                  }

                  v233 = "Comdat name size too large";
                }

                __p.__r_.__value_.__r.__words[0] = v233;
                v461 = 259;
              }

LABEL_420:
              __p.__r_.__value_.__r.__words[0] = "Invalid record";
              v461 = 259;
            case 13:
              if (!v438)
              {
                v125 = "Invalid record";
LABEL_435:
                __p.__r_.__value_.__r.__words[0] = v125;
                v461 = 259;
              }

              *(a2 + 464) = *v437 - 1;
              goto LABEL_808;
            case 16:
              __p.__r_.__value_.__r.__words[0] = &v460;
              *&__p.__r_.__value_.__r.__words[1] = xmmword_2750C1290;
              llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&__p, v437, v437 + 8 * v438);
              llvm::Module::setSourceFileName(*(a2 + 432), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
              if (__p.__r_.__value_.__l.__data_ != &v460)
              {
                free(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_808;
            default:
              goto LABEL_808;
          }
        }

        if (*a1)
        {
          goto LABEL_29;
        }

LABEL_40:
        goto LABEL_29;
      }

      if (*&v435[4] <= 14)
      {
        if (*&v435[4] > 10)
        {
          if (*&v435[4] == 11)
          {
            if (!*a1)
            {
              goto LABEL_773;
            }

            goto LABEL_29;
          }

          if (*&v435[4] == 12)
          {
            if (*a1)
            {
              goto LABEL_29;
            }

            if ((*(a2 + 1560) & 1) == 0)
            {
              v104 = *(a2 + 1512);
              v105 = *(a2 + 1520);
              if (v104 != v105)
              {
                v106 = (v105 - 8);
                if (v106 > v104)
                {
                  v107 = v104 + 8;
                  do
                  {
                    v108 = *(v107 - 8);
                    *(v107 - 8) = *v106;
                    *v106-- = v108;
                    v192 = v107 >= v106;
                    v107 += 8;
                  }

                  while (!v192);
                }
              }

              if (*a1)
              {
                goto LABEL_29;
              }

              *(a2 + 1560) = 1;
            }

            v109 = *(a2 + 464);
            if (v109)
            {
              if (*(a2 + 456))
              {
                goto LABEL_196;
              }

              if (*a1)
              {
                goto LABEL_29;
              }

              *(a2 + 456) = 1;
            }

            if (*a1)
            {
              goto LABEL_29;
            }

            if (*(a2 + 456) == 1)
            {
              *(a2 + 440) = 8 * *(a2 + 48) - *(a2 + 64);
              goto LABEL_40;
            }
          }

          else
          {
            if (*&v435[4] != 14 || (*(a2 + 456) & 1) != 0)
            {
              goto LABEL_196;
            }

            if (*a1)
            {
              goto LABEL_29;
            }

            *(a2 + 456) = 1;
          }

          v18 = 2;
          goto LABEL_30;
        }

        if (!*&v435[4])
        {
          llvm::BitstreamCursor::ReadBlockInfoBlock(&__p, (a2 + 32), 0);
          if (v461)
          {
            v59 = __p.__r_.__value_.__r.__words[0];
            __p.__r_.__value_.__r.__words[0] = 0;
            *a1 = v59;
          }

          else
          {
            if ((v460 & 1) == 0)
            {
              v458.__first_ = "Malformed block";
              LOWORD(v458.__end_cap_.__value_) = 259;
            }

            v112 = __p.__r_.__value_.__r.__words[2];
            v424 = *&__p.__r_.__value_.__l.__data_;
            memset(&__p, 0, sizeof(__p));
            LOBYTE(v458.__end_cap_.__value_) = 1;
            std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__vdeallocate((a2 + 8));
            *(a2 + 8) = v424;
            *(a2 + 24) = v112;
            memset(&v458, 0, 24);
            *a1 = 0;
            v443 = &v458;
            std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](&v443);
          }

          llvm::Expected<std::optional<llvm::BitstreamBlockInfo>>::~Expected(&__p);
          goto LABEL_773;
        }

        if (*&v435[4] != 9)
        {
          if (*&v435[4] != 10)
          {
            goto LABEL_196;
          }

          llvm::BitstreamCursor::EnterSubBlock(a1, (a2 + 32), 0, 10);
          if (*a1)
          {
            goto LABEL_29;
          }

          if (*(a2 + 1480))
          {
            goto LABEL_342;
          }

          __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
          __p.__r_.__value_.__l.__size_ = 0x4000000000;
          while (2)
          {
            llvm::BitstreamCursor::advanceSkippingSubblocks(&v450, (a2 + 32), 0);
            if (v451)
            {
              v235 = v450;
              goto LABEL_730;
            }

            switch(v450)
            {
              case 2:
                goto LABEL_711;
              case 1:
                goto LABEL_722;
              case 0:
LABEL_711:
                v458.__first_ = "Malformed block";
                LOWORD(v458.__end_cap_.__value_) = 259;
            }

            LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
            llvm::BitstreamCursor::readRecord(&v447, (a2 + 32), SHIDWORD(v450), &__p, 0);
            if (v448)
            {
              LOBYTE(v20) = 0;
              v21 = v447;
              v447 = 0;
              *a1 = v21;
              goto LABEL_157;
            }

            if (v447 != 3)
            {
              goto LABEL_156;
            }

            v423 = __p.__r_.__value_.__r.__words[1];
            v22 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 2;
            if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 2)
            {
              v458.__first_ = "Invalid grp record";
              LOWORD(v458.__end_cap_.__value_) = 259;
            }

            v23 = *__p.__r_.__value_.__l.__data_;
            *v417 = *(__p.__r_.__value_.__r.__words[0] + 8);
            v458.__first_ = *(a2 + 424);
            v458.__begin_ = &v458.__end_cap_;
            v458.__end_ = 0x800000000;
            v24 = 2;
            v406 = v23;
            v410 = 63;
LABEL_59:
            v25 = __p.__r_.__value_.__r.__words[0];
            v26 = *(__p.__r_.__value_.__r.__words[0] + 8 * v24);
            if (v26 > 4)
            {
              if ((v26 - 5) >= 2)
              {
LABEL_150:
                v443 = "Invalid attribute group entry";
                v446 = 259;
              }

              LODWORD(v440) = 0;
              v27 = v24 + 1;
              if (*a1)
              {
                v20 = 0;
                a4 = v430;
                goto LABEL_153;
              }

              v30 = v440;
              if ((v440 - 69) >= 6)
              {
                v443 = "Not a type attribute";
                v446 = 259;
              }

              if (v26 == 6)
              {
                v27 = v24 + 2;
              }

              else
              {
                v31 = 0;
              }

              v29 = v423;
              v42 = llvm::Attribute::get(v458.__first_, v30, v31);
              llvm::AttrBuilder::addAttribute(&v458, v42);
              goto LABEL_144;
            }

            if ((v26 - 3) < 2)
            {
              v443 = &v445;
              v444 = xmmword_2750C1860;
              v440 = v442;
              v441 = xmmword_2750C1860;
              v27 = v24 + 1;
              if (v24 + 1 == v423 || (v32 = *(__p.__r_.__value_.__r.__words[0] + 8 * v27)) == 0)
              {
                v33 = v24;
              }

              else
              {
                do
                {
                  llvm::SmallVectorTemplateBase<char,true>::push_back(&v443, v32);
                  v25 = __p.__r_.__value_.__r.__words[0];
                  v33 = v24 + 1;
                  if (v22 == v24)
                  {
                    break;
                  }

                  v32 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2));
                  ++v24;
                }

                while (v32);
                v27 = v33 + 1;
              }

              v193 = v26 == 4;
              v29 = v423;
              if (v193)
              {
                v27 = v33 + 2;
                if (v33 + 2 != v423)
                {
                  v34 = *(v25 + 8 * v27);
                  if (v34)
                  {
                    v35 = v33 + 3;
                    do
                    {
                      llvm::SmallVectorTemplateBase<char,true>::push_back(&v440, v34);
                      v36 = v35 + 1;
                      if (v423 == v35)
                      {
                        break;
                      }

                      v34 = *(__p.__r_.__value_.__r.__words[0] + 8 * v35++);
                    }

                    while (v34);
                    v27 = v36 - 1;
                  }
                }
              }

              v37 = v443;
              v38 = v444;
              v39 = llvm::Attribute::get(v458.__first_, v443, v444, v440, v441);
              addAttributeImpl<llvm::StringRef>(&v458.__begin_, v37, v38, v39);
              if (v440 != v442)
              {
                free(v440);
              }

              if (v443 != &v445)
              {
                free(v443);
              }

              goto LABEL_144;
            }

            if (v26)
            {
              if (v26 != 1)
              {
                goto LABEL_150;
              }

              LODWORD(v440) = 0;
              if (*a1)
              {
                v20 = 0;
                a4 = v430;
                goto LABEL_153;
              }

              if ((v440 - 75) >= 0xA)
              {
                v443 = "Not an int attribute";
                v446 = 259;
              }

              v27 = v24 + 2;
              v28 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2));
              if (v440 > 79)
              {
                v29 = v423;
                if (v440 <= 81)
                {
                  if (v440 == 80)
                  {
                    llvm::AttrBuilder::addMemoryAttr(&v458, v28);
                  }

                  else
                  {
                    llvm::AttrBuilder::addNoFPClassAttr(&v458, v28 & 0x3FF);
                  }
                }

                else if (v440 == 82)
                {
                  v46 = __clz(*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2))) ^ 0x13F;
                  if (*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2)))
                  {
                    v47 = v46;
                  }

                  else
                  {
                    v47 = 0;
                  }

                  llvm::AttrBuilder::addStackAlignmentAttr(&v458, v47);
                }

                else if (v440 == 83)
                {
                  llvm::AttrBuilder::addUWTableAttr(&v458, v28);
                }

                else
                {
                  llvm::AttrBuilder::addVScaleRangeAttrFromRawRepr(&v458, v28);
                }
              }

              else
              {
                v29 = v423;
                if (v440 <= 76)
                {
                  if (v440 == 75)
                  {
                    v44 = __clz(*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2))) ^ 0x13F;
                    if (*(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 2)))
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = 0;
                    }

                    llvm::AttrBuilder::addAlignmentAttr(&v458, v45);
                  }

                  else
                  {
                    llvm::AttrBuilder::addAllocKindAttr(&v458, v28);
                  }
                }

                else if (v440 == 77)
                {
                  llvm::AttrBuilder::addAllocSizeAttrFromRawRepr(&v458, v28);
                }

                else if (v440 == 78)
                {
                  llvm::AttrBuilder::addDereferenceableAttr(&v458, v28);
                }

                else
                {
                  llvm::AttrBuilder::addDereferenceableOrNullAttr(&v458, v28);
                }
              }

LABEL_144:
              v24 = v27 + 1;
              if (v27 + 1 == v29)
              {
                v48 = v410;
                if (v410 != 63)
                {
                  llvm::AttrBuilder::addMemoryAttr(&v458, v410);
                }

                llvm::UpgradeAttributes(&v458, v48);
                v49 = llvm::AttributeList::get(*(a2 + 424), v417[0], &v458);
                LODWORD(v440) = v406;
                v443 = &v440;
                std::__tree<std::__value_type<unsigned int,llvm::AttributeList>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::AttributeList>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::AttributeList>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((a2 + 1464), v406, &v443)[5] = v49;
                v20 = 1;
                a4 = v430;
LABEL_153:
                if (v458.__begin_ != &v458.__end_cap_)
                {
                  free(v458.__begin_);
                }

                if (v20)
                {
LABEL_156:
                  LOBYTE(v20) = 1;
                }

LABEL_157:
                if (v448)
                {
                  v50 = v447;
                  v447 = 0;
                  if (v50)
                  {
                    (*(*v50 + 8))(v50);
                  }
                }

                if (v451)
                {
                  v51 = v450;
                  v450 = 0;
                  if (v51)
                  {
                    (*(*v51 + 8))(v51);
                  }
                }

                if ((v20 & 1) == 0)
                {
LABEL_771:
                  v231 = __p.__r_.__value_.__r.__words[0];
                  if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
                  {
                    goto LABEL_772;
                  }

                  goto LABEL_773;
                }

                continue;
              }

              goto LABEL_59;
            }

            break;
          }

          LODWORD(v440) = 0;
          v27 = v24 + 1;
          v40 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v24 + 1));
          if (*v417 != 0xFFFFFFFFLL)
          {
            goto LABEL_109;
          }

          if (v40 <= 48)
          {
            if (v40 == 20)
            {
              v410 = 0;
              goto LABEL_143;
            }

            if (v40 != 21)
            {
              if (v40 == 45)
              {
                v41 = v410 & 3;
                goto LABEL_142;
              }

LABEL_109:
              if (*a1)
              {
                v20 = 0;
                a4 = v430;
                goto LABEL_153;
              }

              if (v440 > 73)
              {
                if (v440 == 74)
                {
                  llvm::AttrBuilder::addStructRetAttr(&v458, 0);
                  goto LABEL_143;
                }

                if (v440 == 83)
                {
                  llvm::AttrBuilder::addUWTableAttr(&v458, 2);
                  goto LABEL_143;
                }
              }

              else
              {
                if (v440 == 70)
                {
                  llvm::AttrBuilder::addByValAttr(&v458, 0);
                  goto LABEL_143;
                }

                if (v440 == 72)
                {
                  llvm::AttrBuilder::addInAllocaAttr(&v458, 0);
LABEL_143:
                  v29 = v423;
                  goto LABEL_144;
                }
              }

              if ((v440 - 1) > 0x43)
              {
                v443 = "Not an enum attribute";
                v446 = 259;
              }

              llvm::AttrBuilder::addAttribute(&v458, v440);
              goto LABEL_143;
            }

            v43 = 21;
LABEL_140:
            v410 &= v43;
            goto LABEL_143;
          }

          switch(v40)
          {
            case '1':
              v41 = v410 & 0xC;
              break;
            case '2':
              v41 = v410 & 0xF;
              break;
            case '4':
              v43 = 42;
              goto LABEL_140;
            default:
              goto LABEL_109;
          }

LABEL_142:
          v410 = v41;
          goto LABEL_143;
        }

        llvm::BitstreamCursor::EnterSubBlock(a1, (a2 + 32), 0, 9);
        if (*a1)
        {
          goto LABEL_29;
        }

        if (*(a2 + 1440) != *(a2 + 1448))
        {
          goto LABEL_342;
        }

        __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
        __p.__r_.__value_.__l.__size_ = 0x4000000000;
        v443 = &v444 + 8;
        *&v444 = 0x800000000;
        while (2)
        {
          llvm::BitstreamCursor::advanceSkippingSubblocks(&v440, (a2 + 32), 0);
          if (v441)
          {
            *a1 = v440;
            goto LABEL_757;
          }

          switch(v440)
          {
            case 2:
              goto LABEL_731;
            case 1:
              *a1 = 0;
LABEL_757:
              if (v443 != &v444 + 8)
              {
                free(v443);
              }

              goto LABEL_771;
            case 0:
LABEL_731:
              v458.__first_ = "Malformed block";
              LOWORD(v458.__end_cap_.__value_) = 259;
          }

          LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
          llvm::BitstreamCursor::readRecord(&v450, (a2 + 32), SHIDWORD(v440), &__p, 0);
          if (v451)
          {
            *a1 = v450;
            if (v441)
            {
              v270 = v440;
              v440 = 0;
              if (v270)
              {
                (*(*v270 + 8))(v270);
              }
            }

            goto LABEL_757;
          }

          if (v450 != 2)
          {
            if (v450 == 1)
            {
              v75 = __p.__r_.__value_.__r.__words[1];
              if (__p.__r_.__value_.__s.__data_[8])
              {
                v458.__first_ = "Invalid parameter attribute record";
                LOWORD(v458.__end_cap_.__value_) = 259;
              }

              if (LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v76 = 0;
                do
                {
                  v458.__first_ = *(a2 + 424);
                  v458.__begin_ = &v458.__end_cap_;
                  v458.__end_ = 0x800000000;
                  v77 = *(__p.__r_.__value_.__r.__words[0] + 8 * (v76 | 1));
                  v78 = *(__p.__r_.__value_.__r.__words[0] + 8 * v76);
                  if ((v77 & 0xFFFF0000) != 0)
                  {
                    llvm::AttrBuilder::addAlignmentAttr(&v458, __clz(WORD1(v77)) ^ 0x13F);
                  }

                  v79 = v77 | ((HIDWORD(v77) & 0xFFFFF) << 21);
                  if (v78 == 0xFFFFFFFFLL)
                  {
                    if ((v77 & 0x200) != 0)
                    {
                      v80 = v77 & 0xFDFF | ((HIDWORD(v77) & 0xFFFFF) << 21) & 0x1FFFFE0FDFFLL;
                    }

                    else
                    {
                      v80 = v77 | ((HIDWORD(v77) & 0xFFFFF) << 21);
                    }

                    if ((v80 & 0x400) != 0)
                    {
                      v79 = v80 & 0x1FFFFE0FBFFLL;
                      if ((v77 & 0x200) != 0)
                      {
                        v81 = 0;
                      }

                      else
                      {
                        v81 = 21;
                      }

LABEL_252:
                      v82 = llvm::Attribute::get(v458.__first_, 80, v81);
                      llvm::AttrBuilder::addAttribute(&v458, v82);
                      if (v79)
                      {
LABEL_253:
                        v83 = 0;
                        while (1)
                        {
                          v84 = 0;
                          switch(v83)
                          {
                            case 3:
                              v84 = 4096;
                              goto LABEL_310;
                            case 4:
                              v84 = 0x20000000000;
                              goto LABEL_310;
                            case 5:
                              v84 = 0x10000000000;
                              goto LABEL_310;
                            case 6:
                              v84 = 0x400000000000;
                              goto LABEL_310;
                            case 10:
                              v84 = 0x2000000000000000;
                              goto LABEL_310;
                            case 11:
                              v84 = 8;
                              goto LABEL_310;
                            case 12:
                              v84 = 0x2000000;
                              goto LABEL_310;
                            case 13:
                              v84 = 0x200000000000;
                              goto LABEL_310;
                            case 14:
                              v84 = 0x200000000;
                              goto LABEL_310;
                            case 16:
                              v84 = 0x1000000;
                              goto LABEL_310;
                            case 17:
                              v84 = 256;
                              goto LABEL_310;
                            case 18:
                              v84 = 64;
                              goto LABEL_310;
                            case 19:
                              v84 = 0x4000000000;
                              goto LABEL_310;
                            case 21:
                              v84 = 0x200000;
                              goto LABEL_310;
                            case 22:
                              v84 = 0x200000000000000;
                              goto LABEL_310;
                            case 23:
                              v84 = 0x400000000;
                              goto LABEL_310;
                            case 24:
                              v84 = 0x8000000000000000;
                              goto LABEL_310;
                            case 25:
                              v84 = 0x800000;
                              goto LABEL_310;
                            case 26:
                              v84 = 2048;
                              goto LABEL_310;
                            case 29:
                              v84 = 0x1000000000000;
                              goto LABEL_310;
                            case 30:
                              v84 = 0x400000;
                              goto LABEL_310;
                            case 31:
                              v84 = 4;
                              goto LABEL_310;
                            case 36:
                              v84 = 32;
                              goto LABEL_310;
                            case 37:
                              v84 = 0x80000000;
                              goto LABEL_310;
                            case 38:
                              v84 = 0x100000000000;
                              goto LABEL_310;
                            case 40:
                              v84 = 0x400000000000000;
                              goto LABEL_310;
                            case 41:
                              v84 = 0x2000;
                              goto LABEL_310;
                            case 42:
                              v84 = 0x40000000000;
                              goto LABEL_310;
                            case 44:
                              v84 = 512;
                              goto LABEL_310;
                            case 45:
                              v84 = 1024;
                              goto LABEL_310;
                            case 46:
                              v84 = 0x8000000000;
                              goto LABEL_310;
                            case 47:
                              v84 = 0x20000000;
                              goto LABEL_310;
                            case 48:
                              v84 = 2;
                              goto LABEL_310;
                            case 49:
                              v84 = 0x800000000000;
                              goto LABEL_310;
                            case 50:
                              v84 = 0x100000000;
                              goto LABEL_310;
                            case 51:
                              v84 = 0x100000000000000;
                              goto LABEL_310;
                            case 53:
                              v84 = 0x2000000000;
                              goto LABEL_310;
                            case 54:
                              v84 = 0x1000000000;
                              goto LABEL_310;
                            case 55:
                              v84 = 0x800000000000000;
                              goto LABEL_310;
                            case 57:
                              v84 = 0x40000000000000;
                              goto LABEL_310;
                            case 58:
                              v84 = 0x1000000000000000;
                              goto LABEL_310;
                            case 59:
                              v84 = 0x4000;
                              goto LABEL_310;
                            case 60:
                              v84 = 0x8000;
                              goto LABEL_310;
                            case 61:
                              v84 = 0x800000000;
                              goto LABEL_310;
                            case 62:
                              v84 = 0x80000000000000;
                              goto LABEL_310;
                            case 64:
                              v84 = 0x10000000000000;
                              goto LABEL_310;
                            case 65:
                              v84 = 0x8000000000000;
                              goto LABEL_310;
                            case 66:
                              v84 = 0x4000000000000000;
                              goto LABEL_310;
                            case 67:
                              v84 = 0x20000000000000;
                              goto LABEL_310;
                            case 68:
                              v84 = 1;
                              goto LABEL_310;
                            case 70:
                              v84 = 128;
                              goto LABEL_310;
                            case 72:
                              v84 = 0x80000000000;
                              goto LABEL_310;
                            case 74:
                              v84 = 16;
                              goto LABEL_310;
                            case 75:
                              v84 = 2031616;
                              goto LABEL_310;
                            case 82:
                              v84 = 469762048;
                              goto LABEL_310;
                            case 83:
                              v84 = 0x40000000;
                              goto LABEL_310;
                            case 85:
                              goto LABEL_326;
                            default:
LABEL_310:
                              v85 = v84 & v79;
                              if (v85)
                              {
                                if (v83 == 82)
                                {
                                  v89 = (v85 >> 26) - 1;
                                  v90 = __clz((1 << v89)) ^ 0x13F;
                                  if (v89 <= 0x1F)
                                  {
                                    v91 = v90;
                                  }

                                  else
                                  {
                                    v91 = 0;
                                  }

                                  llvm::AttrBuilder::addStackAlignmentAttr(&v458, v91);
                                }

                                else if (v83 == 75)
                                {
                                  v86 = (v85 >> 16) - 1;
                                  v87 = __clz((1 << v86)) ^ 0x13F;
                                  if (v86 <= 0x1F)
                                  {
                                    v88 = v87;
                                  }

                                  else
                                  {
                                    v88 = 0;
                                  }

                                  llvm::AttrBuilder::addAlignmentAttr(&v458, v88);
                                }

                                else if ((v83 - 69) > 5)
                                {
                                  v93 = llvm::Attribute::get(v458.__first_, v83, 0);
                                  addAttributeImpl<llvm::Attribute::AttrKind>(&v458.__begin_, v83, v93);
                                }

                                else
                                {
                                  v92 = llvm::Attribute::get(v458.__first_, v83, 0);
                                  llvm::AttrBuilder::addAttribute(&v458, v92);
                                }
                              }

                              ++v83;
                              break;
                          }
                        }
                      }

                      goto LABEL_326;
                    }

                    if ((v77 & 0x200) != 0)
                    {
                      v81 = 0;
                      v79 = v77 & 0xFDFF | ((HIDWORD(v77) & 0xFFFFF) << 21) & 0x1FFFFE0FDFFLL;
                      goto LABEL_252;
                    }
                  }

                  if (v79)
                  {
                    goto LABEL_253;
                  }

LABEL_326:
                  v94 = v76;
                  v95 = *(a2 + 424);
                  v96 = *(__p.__r_.__value_.__r.__words[0] + 8 * v94);
                  Sorted = llvm::AttributeSetNode::getSorted(v95, v458.__begin_, LODWORD(v458.__end_));
                  v98 = llvm::AttributeList::get(v95, v96, Sorted);
                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v98);
                  if (v458.__begin_ != &v458.__end_cap_)
                  {
                    free(v458.__begin_);
                  }

                  v76 = v94 + 2;
                }

                while (v94 + 2 != v75);
              }

              v458.__first_ = llvm::AttributeList::get(*(a2 + 424), v443, v444);
              std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](a2 + 1440, &v458);
              a4 = v430;
LABEL_334:
              LODWORD(v444) = 0;
              if (v451)
              {
                v102 = v450;
                v450 = 0;
                if (v102)
                {
                  (*(*v102 + 8))(v102);
                }
              }
            }

            if (v441)
            {
              v103 = v440;
              v440 = 0;
              if (v103)
              {
                (*(*v103 + 8))(v103);
              }
            }

            continue;
          }

          break;
        }

        if (LODWORD(__p.__r_.__value_.__r.__words[1]))
        {
          v99 = 0;
          v100 = 8 * LODWORD(__p.__r_.__value_.__r.__words[1]);
          do
          {
            LODWORD(v447) = *(__p.__r_.__value_.__r.__words[0] + v99);
            v458.__first_ = &v447;
            v101 = std::__tree<std::__value_type<unsigned int,llvm::AttributeList>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::AttributeList>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::AttributeList>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((a2 + 1464), v447, &v458);
            llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v101[5]);
            v99 += 8;
          }

          while (v100 != v99);
        }

        v458.__first_ = llvm::AttributeList::get(*(a2 + 424), v443, v444);
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](a2 + 1440, &v458);
        goto LABEL_334;
      }

      if (*&v435[4] > 20)
      {
        if (*&v435[4] != 21)
        {
          if (*&v435[4] == 22)
          {
            llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataKinds(*(a2 + 776), a1);
            goto LABEL_773;
          }

          if (*&v435[4] != 26)
          {
            goto LABEL_196;
          }

          llvm::BitstreamCursor::EnterSubBlock(a1, (a2 + 32), 0, 26);
          if (!*a1)
          {
            if (!*(a2 + 1808))
            {
              __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
              __p.__r_.__value_.__l.__size_ = 0x4000000000;
              while (1)
              {
                llvm::BitstreamCursor::advanceSkippingSubblocks(&v440, (a2 + 32), 0);
                if (v441)
                {
                  break;
                }

                switch(v440)
                {
                  case 2:
                    goto LABEL_734;
                  case 1:
                    if (*(a2 + 1808))
                    {
                      *a1 = 0;
LABEL_764:
                      if ((v441 & 1) == 0)
                      {
                        goto LABEL_771;
                      }

                      v271 = v440;
                      v440 = 0;
                      if (!v271)
                      {
                        goto LABEL_771;
                      }

LABEL_770:
                      (*(*v271 + 8))(v271);
                      goto LABEL_771;
                    }

                    v458.__first_ = "Invalid empty synchronization scope names block";
LABEL_735:
                    LOWORD(v458.__end_cap_.__value_) = 259;
                  case 0:
LABEL_734:
                    v458.__first_ = "Malformed block";
                    goto LABEL_735;
                }

                llvm::BitstreamCursor::readRecord(&v450, (a2 + 32), SHIDWORD(v440), &__p, 0);
                if (v451)
                {
                  v234 = v450;
                  goto LABEL_672;
                }

                if (v450 != 1)
                {
                  v458.__first_ = "Invalid sync scope record";
                  LOWORD(v458.__end_cap_.__value_) = 259;
                }

                v458.__first_ = &v458.__end_cap_;
                *&v458.__begin_ = xmmword_2750C3D00;
                llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v458, __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
                v155 = **(a2 + 424);
                v156 = *(v155 + 2684);
                v443 = v458.__first_;
                *&v444 = v458.__begin_;
                BYTE8(v444) = v156;
                v157 = llvm::StringMap<unsigned char,llvm::MallocAllocator>::try_emplace<unsigned char>((v155 + 2672), v458.__first_, v458.__begin_, &v444 + 8);
                llvm::SmallVectorTemplateBase<char,true>::push_back((a2 + 1800), *(*v157 + 8));
                LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
                if (v458.__first_ != &v458.__end_cap_)
                {
                  free(v458.__first_);
                }

                if (v451)
                {
                  v158 = v450;
                  v450 = 0;
                  if (v158)
                  {
                    (*(*v158 + 8))(v158);
                  }
                }

                if (v441)
                {
                  v159 = v440;
                  v440 = 0;
                  if (v159)
                  {
                    (*(*v159 + 8))(v159);
                  }
                }
              }

              v234 = v440;
              v440 = 0;
LABEL_672:
              *a1 = v234;
              goto LABEL_764;
            }

            v58 = "Invalid multiple synchronization scope names blocks";
LABEL_343:
            __p.__r_.__value_.__r.__words[0] = v58;
            v461 = 259;
          }

LABEL_29:
          v18 = 1;
          goto LABEL_30;
        }

        llvm::BitstreamCursor::EnterSubBlock(a1, (a2 + 32), 0, 21);
        if (*a1)
        {
          goto LABEL_29;
        }

        if (*(a2 + 1776) == *(a2 + 1784))
        {
          __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
          __p.__r_.__value_.__l.__size_ = 0x4000000000;
          while (1)
          {
            llvm::BitstreamCursor::advanceSkippingSubblocks(&v443, (a2 + 32), 0);
            if (v444)
            {
              v235 = v443;
LABEL_730:
              *a1 = v235;
              goto LABEL_771;
            }

            switch(v443)
            {
              case 2:
                goto LABEL_736;
              case 1:
LABEL_722:
                *a1 = 0;
                goto LABEL_771;
              case 0:
LABEL_736:
                v458.__first_ = "Malformed block";
                LOWORD(v458.__end_cap_.__value_) = 259;
            }

            llvm::BitstreamCursor::readRecord(&v440, (a2 + 32), SHIDWORD(v443), &__p, 0);
            if (v441)
            {
              break;
            }

            if (v440 != 1)
            {
              v458.__first_ = "Invalid operand bundle record";
              LOWORD(v458.__end_cap_.__value_) = 259;
            }

            v60 = *(a2 + 1784);
            v61 = *(a2 + 1792);
            if (v60 >= v61)
            {
              v63 = 0xAAAAAAAAAAAAAAABLL * ((v60 - *v422) >> 3);
              v64 = v63 + 1;
              if (v63 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v65 = 0xAAAAAAAAAAAAAAABLL * ((v61 - *v422) >> 3);
              if (2 * v65 > v64)
              {
                v64 = 2 * v65;
              }

              if (v65 >= 0x555555555555555)
              {
                v66 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v66 = v64;
              }

              v458.__end_cap_.__value_ = (a2 + 1776);
              if (v66)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v422, v66);
              }

              v67 = 24 * v63;
              *v67 = 0;
              *(v67 + 8) = 0;
              *(v67 + 16) = 0;
              v62 = 24 * v63 + 24;
              v68 = *(a2 + 1776);
              v69 = *(a2 + 1784) - v68;
              v70 = 24 * v63 - v69;
              memcpy((v67 - v69), v68, v69);
              v71 = *(a2 + 1776);
              *(a2 + 1776) = v70;
              *(a2 + 1784) = v62;
              v72 = *(a2 + 1792);
              *(a2 + 1792) = 0;
              v458.__end_ = v71;
              v458.__end_cap_.__value_ = v72;
              v458.__begin_ = v71;
              v458.__first_ = v71;
              std::__split_buffer<std::string>::~__split_buffer(&v458);
            }

            else
            {
              *v60 = 0;
              v60[1] = 0;
              v62 = (v60 + 3);
              v60[2] = 0;
            }

            *(a2 + 1784) = v62;
            std::string::append[abi:nn200100]<unsigned long long const*,0>((v62 - 24), __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
            LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
            if (v441)
            {
              v73 = v440;
              v440 = 0;
              if (v73)
              {
                (*(*v73 + 8))(v73);
              }
            }

            if (v444)
            {
              v74 = v443;
              v443 = 0;
              if (v74)
              {
                (*(*v74 + 8))(v74);
              }
            }
          }

          *a1 = v440;
          if ((v444 & 1) == 0)
          {
            goto LABEL_771;
          }

          v271 = v443;
          v443 = 0;
          if (!v271)
          {
            goto LABEL_771;
          }

          goto LABEL_770;
        }

LABEL_342:
        v58 = "Invalid multiple blocks";
        goto LABEL_343;
      }

      if (*&v435[4] == 15)
      {
        if (!a4)
        {
          llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(*(a2 + 776), 1, a1);
          goto LABEL_773;
        }

        __p.__r_.__value_.__r.__words[0] = 8 * *(a2 + 48) - *(a2 + 64);
        std::vector<unsigned long long>::push_back[abi:nn200100]((a2 + 1592), &__p);
        goto LABEL_196;
      }

      if (*&v435[4] != 17)
      {
        if (*&v435[4] == 18)
        {
          goto LABEL_773;
        }

LABEL_196:
        llvm::BitstreamCursor::SkipBlock(a1, (a2 + 32));
        goto LABEL_773;
      }

      llvm::BitstreamCursor::EnterSubBlock(a1, (a2 + 32), 0, 17);
      if (*a1)
      {
        goto LABEL_29;
      }

      if (*(a2 + 520) != *(a2 + 528))
      {
        goto LABEL_342;
      }

      v160 = 0;
      __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
      __p.__r_.__value_.__l.__size_ = 0x4000000000;
      v434 = 0;
      v458.__first_ = &v458.__end_cap_;
      *&v458.__begin_ = xmmword_2750C1860;
      do
      {
        llvm::BitstreamCursor::advanceSkippingSubblocks(v456, (a2 + 32), 0);
        if (v457)
        {
          v161 = *v456;
          *v456 = 0;
          *a1 = v161;
LABEL_472:
          v229 = 1;
          goto LABEL_473;
        }

        switch(v456[0])
        {
          case 2u:
            goto LABEL_471;
          case 1u:
            if (v160 != (*(a2 + 528) - *(a2 + 520)) >> 3)
            {
LABEL_471:
              v443 = "Malformed block";
              v446 = 259;
            }

            *a1 = 0;
            goto LABEL_472;
          case 0u:
            goto LABEL_471;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
        v440 = &v441 + 8;
        *&v441 = 0xC00000000;
        llvm::BitstreamCursor::readRecord(&v454, (a2 + 32), v456[1], &__p, 0);
        if (v455)
        {
          v162 = v454;
          v454 = 0;
          *a1 = v162;
          v229 = 1;
        }

        else
        {
          switch(v454)
          {
            case 1:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid numentry record";
                goto LABEL_656;
              }

              std::vector<llvm::BasicBlock *>::resize(v421, *__p.__r_.__value_.__l.__data_);
LABEL_529:
              v229 = 2;
              goto LABEL_658;
            case 2:
              IdentifiedStructType = **(a2 + 424) + 1608;
              goto LABEL_640;
            case 3:
              IdentifiedStructType = **(a2 + 424) + 1704;
              goto LABEL_640;
            case 4:
              IdentifiedStructType = **(a2 + 424) + 1728;
              goto LABEL_640;
            case 5:
              IdentifiedStructType = **(a2 + 424) + 1632;
              goto LABEL_640;
            case 6:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 1)
              {
                v165 = "Invalid opaque type record";
                goto LABEL_656;
              }

              v185 = *(a2 + 520);
              if (v160 >= ((*(a2 + 528) - v185) >> 3))
              {
                goto LABEL_541;
              }

              IdentifiedStructType = *(v185 + 8 * v160);
              if (IdentifiedStructType)
              {
                llvm::StructType::setName(*(v185 + 8 * v160), v458.__first_, v458.__begin_);
                *(*v421 + 8 * v160) = 0;
              }

              else
              {
              }

              v458.__begin_ = 0;
              goto LABEL_640;
            case 7:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid integer record";
                goto LABEL_656;
              }

              if ((*__p.__r_.__value_.__l.__data_ - 1) >> 23)
              {
                v165 = "Bitwidth for integer type out of range";
                goto LABEL_656;
              }

              v175 = llvm::IntegerType::get(*(a2 + 424), *__p.__r_.__value_.__l.__data_);
              break;
            case 8:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid pointer record";
                goto LABEL_656;
              }

              if (LODWORD(__p.__r_.__value_.__r.__words[1]) == 2)
              {
                v176 = __p.__r_.__value_.__r.__words[0];
                v177 = *(__p.__r_.__value_.__r.__words[0] + 8);
              }

              else
              {
                v177 = 0;
                v176 = __p.__r_.__value_.__r.__words[0];
              }

              if (!v206 || ((v207 = v206, v208 = *(v206 + 8), v208 <= 0xC) ? (v209 = ((1 << v208) & 0x1380) == 0) : (v209 = 1), v209 ? (v210 = v208 == 11) : (v210 = 1), v210))
              {
                v211 = "Invalid type";
                goto LABEL_643;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v440, *__p.__r_.__value_.__l.__data_);
              v175 = llvm::PointerType::get(v207, v177);
              break;
            case 9:
              v186 = __p.__r_.__value_.__r.__words[1];
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 2)
              {
                goto LABEL_533;
              }

              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 3)
              {
                v204 = 3;
                do
                {
                  if (!v205)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v205);
                  ++v204;
                }

                while (v186 != v204);
              }

              if (!v182 || LODWORD(__p.__r_.__value_.__r.__words[1]) - 3 > v444)
              {
                goto LABEL_581;
              }

              v183 = (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1]));
              v184 = (__p.__r_.__value_.__r.__words[0] + 16);
              goto LABEL_622;
            case 10:
              IdentifiedStructType = **(a2 + 424) + 1656;
              goto LABEL_640;
            case 11:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 1)
              {
                v165 = "Invalid array type record";
                goto LABEL_656;
              }

              if (!v199)
              {
                goto LABEL_574;
              }

              v200 = v199;
              v201 = *(v199 + 8);
              v202 = v201 > 0xE || ((1 << v201) & 0x5B80) == 0;
              if (!v202 || v201 == 19)
              {
                goto LABEL_574;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v440, *(__p.__r_.__value_.__r.__words[0] + 8));
              llvm::ArrayType::get(v200, *__p.__r_.__value_.__l.__data_);
              break;
            case 12:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 1)
              {
                v165 = "Invalid vector type record";
LABEL_656:
                v443 = v165;
                v446 = 259;
LABEL_657:
              }

              if (!*__p.__r_.__value_.__l.__data_)
              {
                v165 = "Invalid vector length";
                goto LABEL_656;
              }

              if (!v188 || ((v189 = v188, v190 = *(v188 + 8), v191 = v190, v190 != 13) ? (v192 = v190 >= 4u) : (v192 = 0), v192 ? (v193 = v190 == 5) : (v193 = 1), (v194 = v190 & 0xFD, !v193) ? (v195 = v194 == 4) : (v195 = 1), !v195 ? (v196 = v191 == 15) : (v196 = 1), !v196 ? (v197 = v191 == 20) : (v197 = 1), !v197))
              {
LABEL_574:
                v165 = "Invalid type";
                goto LABEL_656;
              }

              if (LODWORD(__p.__r_.__value_.__r.__words[1]) < 3)
              {
                v198 = 0;
              }

              else
              {
                v198 = (*(__p.__r_.__value_.__r.__words[0] + 16) != 0) << 32;
              }

              llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v440, *(__p.__r_.__value_.__r.__words[0] + 8));
              llvm::VectorType::get(v189, (*__p.__r_.__value_.__l.__data_ | v198), v224);
              break;
            case 13:
              IdentifiedStructType = **(a2 + 424) + 1800;
              goto LABEL_640;
            case 14:
              IdentifiedStructType = **(a2 + 424) + 1824;
              goto LABEL_640;
            case 15:
              IdentifiedStructType = **(a2 + 424) + 1848;
              goto LABEL_640;
            case 16:
              IdentifiedStructType = **(a2 + 424) + 1752;
              goto LABEL_640;
            case 17:
              IdentifiedStructType = **(a2 + 424) + 1872;
              goto LABEL_640;
            case 18:
              v178 = __p.__r_.__value_.__r.__words[1];
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid anon struct record";
                goto LABEL_656;
              }

              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) == 1)
              {
                v179 = 0;
                v180 = 1;
              }

              else
              {
                v212 = 1;
                do
                {
                  if (!v213)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v213);
                  ++v212;
                }

                while (v178 != v212);
                v179 = v444;
                v180 = LODWORD(__p.__r_.__value_.__r.__words[1]);
              }

              v214 = v180 - 1;
              if (v180 - 1 != v179)
              {
                v450 = "Invalid type";
                v453 = 259;
              }

              llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v440, (__p.__r_.__value_.__r.__words[0] + 8), (__p.__r_.__value_.__r.__words[0] + 8 * v180));
              IdentifiedStructType = llvm::StructType::get(*(a2 + 424), v443, v444, (*__p.__r_.__value_.__l.__data_ != 0));
              v229 = 5;
              if (v443 != &v444 + 8)
              {
                free(v443);
              }

              if (v214 == v179)
              {
                goto LABEL_640;
              }

              a4 = v430;
              goto LABEL_658;
            case 19:
              llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v458, __p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
              goto LABEL_529;
            case 20:
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid named struct record";
                goto LABEL_656;
              }

              v187 = *(a2 + 520);
              if (v160 >= ((*(a2 + 528) - v187) >> 3))
              {
LABEL_541:
                v165 = "Invalid TYPE table";
                goto LABEL_656;
              }

              IdentifiedStructType = *(v187 + 8 * v160);
              if (IdentifiedStructType)
              {
                llvm::StructType::setName(*(v187 + 8 * v160), v458.__first_, v458.__begin_);
                *(*v421 + 8 * v160) = 0;
              }

              else
              {
              }

              v219 = 0;
              v458.__begin_ = 0;
              v220 = &v444 + 8;
              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              v221 = __p.__r_.__value_.__r.__words[1];
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 1)
              {
                v222 = 1;
                do
                {
                  if (!v223)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v223);
                  ++v222;
                }

                while (v221 != v222);
                v219 = v444;
                if (LODWORD(__p.__r_.__value_.__r.__words[1]) - 1 != v444)
                {
                  v450 = "Invalid named struct record";
                  v453 = 259;
                }

                v220 = v443;
              }

              llvm::StructType::setBody(IdentifiedStructType, v220, v219, *__p.__r_.__value_.__l.__data_ != 0);
              llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v440, (__p.__r_.__value_.__r.__words[0] + 8), (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1])));
              goto LABEL_632;
            case 21:
              v181 = __p.__r_.__value_.__r.__words[1];
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) <= 1)
              {
LABEL_533:
                v165 = "Invalid function record";
                goto LABEL_656;
              }

              v443 = &v444 + 8;
              *&v444 = 0x800000000;
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 2)
              {
                v215 = 2;
                do
                {
                  if (!v216)
                  {
                    break;
                  }

                  v217 = *(v216 + 8);
                  if (v217 == 7 || v217 == 14)
                  {
                    v450 = "Invalid function argument type";
                    v453 = 259;
                  }

                  llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v216);
                  ++v215;
                }

                while (v181 != v215);
              }

              if (!v182 || LODWORD(__p.__r_.__value_.__r.__words[1]) - 2 > v444)
              {
LABEL_581:
                v450 = "Invalid type";
                v453 = 259;
              }

              v183 = (__p.__r_.__value_.__r.__words[0] + 8 * LODWORD(__p.__r_.__value_.__r.__words[1]));
              v184 = (__p.__r_.__value_.__r.__words[0] + 8);
LABEL_622:
              llvm::SmallVectorImpl<unsigned int>::append<unsigned long long *,void>(&v440, v184, v183);
              IdentifiedStructType = llvm::FunctionType::get(v182, v443, v444, (*__p.__r_.__value_.__l.__data_ != 0));
LABEL_632:
              if (v443 != &v444 + 8)
              {
                free(v443);
              }

              goto LABEL_640;
            case 22:
              IdentifiedStructType = **(a2 + 424) + 1776;
              goto LABEL_640;
            case 23:
              IdentifiedStructType = **(a2 + 424) + 1680;
              goto LABEL_640;
            case 24:
              IdentifiedStructType = **(a2 + 424) + 1896;
              goto LABEL_640;
            case 25:
              if (LODWORD(__p.__r_.__value_.__r.__words[1]) != 1)
              {
                v165 = "Invalid opaque pointer record";
                goto LABEL_656;
              }

              v173 = *(a2 + 424);
              v174 = *v173;
              if (*(*v173 + 2737) == 1)
              {
                if ((*(v174 + 2736) & 1) == 0)
                {
                  goto LABEL_655;
                }
              }

              else
              {
                v228 = byte_2815AC708;
                *(v174 + 2737) = 1;
                *(v174 + 2736) = v228;
                if ((v228 & 1) == 0)
                {
LABEL_655:
                  v165 = "Opaque pointers are only supported in -opaque-pointers mode";
                  goto LABEL_656;
                }
              }

              v175 = llvm::PointerType::get(v173, *__p.__r_.__value_.__l.__data_);
              break;
            case 26:
              v166 = LODWORD(__p.__r_.__value_.__r.__words[1]);
              if (!LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v165 = "Invalid target extension type record";
                goto LABEL_656;
              }

              if (v160 >= ((*(a2 + 528) - *(a2 + 520)) >> 3))
              {
                goto LABEL_541;
              }

              v167 = *__p.__r_.__value_.__l.__data_;
              if (*__p.__r_.__value_.__l.__data_ >= LODWORD(__p.__r_.__value_.__r.__words[1]))
              {
                v211 = "Too many type parameters";
                goto LABEL_643;
              }

              v443 = &v444 + 8;
              *&v444 = 0x400000000;
              v450 = v452;
              v451 = 0x800000000;
              if (!v167)
              {
                goto LABEL_496;
              }

              v168 = 8;
              v169 = v167;
              do
              {
                if (!v170)
                {
                  v227 = "Invalid type";
                  goto LABEL_651;
                }

                llvm::SmallVectorTemplateBase<void *,true>::push_back(&v443, v170);
                v168 += 8;
                --v169;
              }

              while (v169);
              v166 = LODWORD(__p.__r_.__value_.__r.__words[1]);
LABEL_496:
              v171 = v167 + 1;
              if (v171 < v166)
              {
                while (1)
                {
                  v172 = *(__p.__r_.__value_.__r.__words[0] + 8 * v171);
                  if (HIDWORD(v172))
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v450, v172);
                  if (v166 == ++v171)
                  {
                    goto LABEL_499;
                  }
                }

                v227 = "Integer parameter too large";
LABEL_651:
                v447 = v227;
                v449 = 259;
              }

LABEL_499:
              IdentifiedStructType = llvm::TargetExtType::get(*(a2 + 424), v458.__first_, v458.__begin_, v443, v444, v450, v451);
              v458.__begin_ = 0;
              if (v450 != v452)
              {
                free(v450);
              }

              goto LABEL_632;
            default:
              v443 = "Invalid value";
              v446 = 259;
              goto LABEL_657;
          }

          IdentifiedStructType = v175;
LABEL_640:
          v225 = *(a2 + 520);
          if (v160 >= ((*(a2 + 528) - v225) >> 3))
          {
            v443 = "Invalid TYPE table";
            v446 = 259;
          }

          a4 = v430;
          if (*(v225 + 8 * v160))
          {
            v211 = "Invalid TYPE table: Only named structs can be forward referenced";
LABEL_643:
            v443 = v211;
            v446 = 259;
          }

          *(v225 + 8 * v160) = IdentifiedStructType;
          if (v441)
          {
            llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>,unsigned int,llvm::SmallVector<unsigned int,1u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,1u>>>::FindAndConstruct(a2 + 544, &v434);
            llvm::SmallVectorImpl<unsigned int>::operator=(v226 + 8, &v440);
          }

          v229 = 0;
          v434 = ++v160;
        }

LABEL_658:
        if (v455)
        {
          v230 = v454;
          v454 = 0;
          if (v230)
          {
            (*(*v230 + 8))(v230);
          }
        }

        if (v440 != &v441 + 8)
        {
          free(v440);
        }

LABEL_473:
        if (v457)
        {
          v163 = *v456;
          *v456 = 0;
          if (v163)
          {
            (*(*v163 + 8))(v163);
          }
        }
      }

      while ((v229 | 2) == 2);
      if (v458.__first_ != &v458.__end_cap_)
      {
        free(v458.__first_);
      }

      v231 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
      {
LABEL_772:
        free(v231);
      }

LABEL_773:
      if (*a1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

LABEL_30:
      if (v436)
      {
        v19 = *v435;
        *v435 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }

      if ((v18 | 2) != 2)
      {
        if (SHIBYTE(v432.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v432.__r_.__value_.__l.__data_);
        }

        if (v437 != v439)
        {
          free(v437);
        }

        return;
      }
    }
  }
}

void anonymous namespace::BitcodeReader::parseModule(unsigned long long,BOOL,llvm::ParserCallbacks)::$_0::operator()(llvm::DataLayout *result, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (**a2 == 1)
  {
    *result = 0;
    return;
  }

  v4 = *(a2 + 16);
  **a2 = 1;
  v5 = *(a2 + 8);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = *(v4 + 432);
  v12 = *(v9 + 208);
  v10 = v9 + 208;
  v11 = v12;
  v13 = *(v10 + 23);
  if (v13 >= 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v10 + 8);
  if (v13 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  llvm::UpgradeDataLayoutString(v7, v8, v14, v16, &__str);
  v17 = *(a2 + 8);
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  v18 = *&__str.__r_.__value_.__l.__data_;
  *(v17 + 16) = *(&__str.__r_.__value_.__l + 2);
  *v17 = v18;
  v19 = *(a2 + 24);
  if (*(v19 + 32) == 1)
  {
    v20 = *(v19 + 24);
    if (!v20)
    {
      v26 = std::__throw_bad_function_call[abi:nn200100]();
      return;
    }

    (*(*v20 + 48))(&__str);
    if (v29 == 1)
    {
      std::string::operator=(*(a2 + 8), &__str);
      if ((v29 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  v21 = *(a2 + 8);
  v22 = *(v21 + 23);
  if (v22 >= 0)
  {
    v23 = *(a2 + 8);
  }

  else
  {
    v23 = *v21;
  }

  if (v22 >= 0)
  {
    v24 = *(v21 + 23);
  }

  else
  {
    v24 = *(v21 + 8);
  }

  llvm::DataLayout::parse(v23, v24, &__str);
  if (v30)
  {
    v25 = __str.__r_.__value_.__r.__words[0];
    __str.__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    llvm::DataLayout::operator=(*(v4 + 432) + 256, &__str);
    v25 = 0;
  }

  *result = v25;
  llvm::Expected<llvm::DataLayout>::~Expected(&__str);
}

void anonymous namespace::BitcodeReader::globalCleanup(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  if (*this)
  {
    return;
  }

  if (*(a2 + 1368) != *(a2 + 1376) || *(a2 + 1392) != *(a2 + 1400))
  {
    v23[0] = "Malformed global initializer set";
    v24 = 259;
  }

  v5 = *(a2 + 432);
  v6 = v5 + 24;
  v7 = *(v5 + 32);
  if (v7 != v5 + 24)
  {
    while (1)
    {
      if (v7)
      {
        v10 = (v7 - 56);
      }

      else
      {
        v10 = 0;
      }

      llvm::MetadataLoader::MetadataLoaderImpl::upgradeDeclareExpressions(*(a2 + 776), v10);
      v22 = 0;
      if (!llvm::UpgradeIntrinsicFunction(v10, &v22, v11))
      {
        goto LABEL_21;
      }

      v12 = v22;
      v23[0] = 0;
      v13 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(a2 + 1536), *(a2 + 1552), v10, v23);
      v9 = v23[0];
      if ((v13 & 1) == 0)
      {
        break;
      }

LABEL_20:
      v9[1] = v12;
LABEL_21:
      llvm::UpgradeFunctionAttributes(v10, v8);
      v7 = *(v7 + 8);
      if (v7 == v6)
      {
        v5 = *(a2 + 432);
        goto LABEL_23;
      }
    }

    v14 = *(a2 + 1544);
    v8 = *(a2 + 1552);
    if (4 * v14 + 4 >= (3 * v8))
    {
      LODWORD(v8) = 2 * v8;
    }

    else if (v8 + ~v14 - *(a2 + 1548) > v8 >> 3)
    {
      goto LABEL_17;
    }

    llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(a2 + 1536, v8);
    v23[0] = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*(a2 + 1536), *(a2 + 1552), v10, v23);
    v9 = v23[0];
LABEL_17:
    ++*(a2 + 1544);
    if (*v9 != -4096)
    {
      --*(a2 + 1548);
    }

    *v9 = v10;
    v9[1] = 0;
    goto LABEL_20;
  }

LABEL_23:
  v15 = v5 + 8;
  v16 = *(v5 + 16);
  if (v16 != v5 + 8)
  {
    do
    {
      if (v16)
      {
        v17 = (v16 - 56);
      }

      else
      {
        v17 = 0;
      }

      if (llvm::UpgradeGlobalVariable(v17, v4))
      {
        operator new();
      }

      v16 = *(v16 + 8);
    }

    while (v16 != v15);
  }

  v18 = (a2 + 1368);
  v19 = *(a2 + 1368);
  v20 = a2 + 1392;
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v21 = *v20;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *v20 = 0;
  if (v21)
  {
    operator delete(v21);
  }

  *this = 0;
}

void anonymous namespace::BitcodeReader::resolveGlobalAndIndirectSymbolInits(_anonymous_namespace_::BitcodeReader *this, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 1368);
  v4 = *(a2 + 1376);
  *(a2 + 1368) = 0u;
  *(a2 + 1384) = 0;
  v5 = *(a2 + 1392);
  v6 = *(a2 + 1400);
  *(a2 + 1392) = 0u;
  v7 = *(a2 + 1416);
  *(a2 + 1408) = 0u;
  v58 = *(a2 + 1424);
  *(a2 + 1424) = 0u;
  while (v4 != v3)
  {
    v8 = *(v4 - 2);
    v4 -= 2;
    if (v8 >= ((*(a2 + 720) - *(a2 + 712)) >> 5))
    {
      v9 = *(a2 + 1376);
      v10 = *(a2 + 1384);
      if (v9 >= v10)
      {
        v12 = *(a2 + 1368);
        v13 = (v9 - v12) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v15 = v10 - v12;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v16);
        }

        v17 = (16 * v13);
        *v17 = *v4;
        v11 = 16 * v13 + 16;
        v18 = *(a2 + 1368);
        v19 = *(a2 + 1376) - v18;
        v20 = 16 * v13 - v19;
        memcpy(v17 - v19, v18, v19);
        v21 = *(a2 + 1368);
        *(a2 + 1368) = v20;
        *(a2 + 1376) = v11;
        *(a2 + 1384) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = *v4;
        v11 = (v9 + 1);
      }

      *(a2 + 1376) = v11;
    }

    else
    {
      if (v61)
      {
        *this = v60;
        if (!v7)
        {
          goto LABEL_73;
        }

LABEL_72:
        operator delete(v7);
        goto LABEL_73;
      }

      llvm::GlobalVariable::setInitializer(*v4, v60);
    }
  }

  while (v6 != v5)
  {
    v22 = *(v6 - 2);
    v6 -= 2;
    if (v22 >= ((*(a2 + 720) - *(a2 + 712)) >> 5))
    {
      v30 = *(a2 + 1400);
      v31 = *(a2 + 1408);
      if (v30 >= v31)
      {
        v33 = *(a2 + 1392);
        v34 = (v30 - v33) >> 4;
        v35 = v34 + 1;
        if ((v34 + 1) >> 60)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v36 = v31 - v33;
        if (v36 >> 3 > v35)
        {
          v35 = v36 >> 3;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(v37);
        }

        v38 = (16 * v34);
        *v38 = *v6;
        v32 = 16 * v34 + 16;
        v39 = *(a2 + 1392);
        v40 = *(a2 + 1400) - v39;
        v41 = 16 * v34 - v40;
        memcpy(v38 - v40, v39, v40);
        v42 = *(a2 + 1392);
        *(a2 + 1392) = v41;
        *(a2 + 1400) = v32;
        *(a2 + 1408) = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v30 = *v6;
        v32 = (v30 + 1);
      }

      *(a2 + 1400) = v32;
    }

    else
    {
      FoldedCast = v60;
      if (v61)
      {
        *this = v60;
        if (!v7)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      v24 = *v6;
      v25 = *(*v6 + 16);
      if (*v6)
      {
        v26 = v25 == 1;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        if (*v60 != *v24)
        {
          v57 = "Alias and aliasee types don't match";
LABEL_80:
          v60 = v57;
          v62 = 259;
        }

        llvm::GlobalIFunc::setResolver(*v6, v60);
      }

      else
      {
        if (!v24 || v25 != 2)
        {
          v57 = "Expected an alias or an ifunc";
          goto LABEL_80;
        }

        v27 = llvm::PointerType::get(v24[3], 0);
        v28 = llvm::FunctionType::get(v27, 0, 0, 0);
        v29 = llvm::PointerType::get(v28, (*(*v24 + 2) >> 8));
        if (*FoldedCast != v29)
        {
          FoldedCast = getFoldedCast(0x31, FoldedCast, v29, 0);
        }

        llvm::GlobalIFunc::setResolver(v24, FoldedCast);
      }
    }
  }

  if (v7 == v58)
  {
LABEL_65:
    *this = 0;
    if (!v7)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v43 = v58 - 24;
  while (1)
  {
    v44 = *(v43 + 2);
    if (v44)
    {
      v45 = (v44 - 1);
      if (v45 < ((*(a2 + 720) - *(a2 + 712)) >> 5))
      {
        v47 = v60;
        if (v61)
        {
          goto LABEL_69;
        }

        v48 = *v43;
        llvm::Function::setHungoffOperand<0>(*v43, v60, v46);
        *(v48 + 9) = *(v48 + 9) & 0xFFF7 | (8 * (v47 != 0));
        *(v43 + 2) = 0;
      }
    }

    v49 = *(v43 + 3);
    if (v49)
    {
      v50 = (v49 - 1);
      if (v50 < ((*(a2 + 720) - *(a2 + 712)) >> 5))
      {
        v47 = v60;
        if (v61)
        {
          goto LABEL_69;
        }

        v52 = *v43;
        llvm::Function::setHungoffOperand<1>(*v43, v60, v51);
        v49 = 0;
        *(v52 + 9) = *(v52 + 9) & 0xFFFD | (2 * (v47 != 0));
        *(v43 + 3) = 0;
      }
    }

    v53 = *(v43 + 4);
    if (v53)
    {
      break;
    }

LABEL_61:
    if (*(v43 + 2) | v49)
    {
LABEL_62:
    }

    v26 = v43 == v7;
    v43 -= 24;
    if (v26)
    {
      goto LABEL_65;
    }
  }

  v54 = (v53 - 1);
  if (v54 >= ((*(a2 + 720) - *(a2 + 712)) >> 5))
  {
    goto LABEL_62;
  }

  v47 = v60;
  if ((v61 & 1) == 0)
  {
    v56 = *v43;
    llvm::Function::setHungoffOperand<2>(*v43, v60, v55);
    *(v56 + 9) = *(v56 + 9) & 0xFFFB | (4 * (v47 != 0));
    *(v43 + 4) = 0;
    v49 = *(v43 + 3);
    goto LABEL_61;
  }

LABEL_69:
  *this = v47;
  if (v7)
  {
    goto LABEL_72;
  }

LABEL_73:
  if (v5)
  {
    operator delete(v5);
  }

  if (v3)
  {
    operator delete(v3);
  }
}

char *llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::grow(uint64_t a1, int a2)
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
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>,llvm::jitlink::Block *,unsigned long,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Block *,unsigned long>>::LookupBucketFor<llvm::jitlink::Block *>(*a1, *(a1 + 16), v20, &v30);
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
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 32;
    }

    while (v26 != v23);
  }

  return result;
}

void std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<llvm::BitstreamBlockInfo::BlockInfo>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t llvm::Expected<std::optional<llvm::BitstreamBlockInfo>>::~Expected(uint64_t a1)
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

  else if (*(a1 + 24) == 1)
  {
    v4 = a1;
    std::vector<llvm::BitstreamBlockInfo::BlockInfo>::__destroy_vector::operator()[abi:nn200100](&v4);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,llvm::AttributeList>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::AttributeList>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::AttributeList>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
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
      v5 = *(v3 + 8);
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
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void anonymous namespace::BitcodeReader::parseAttrKind(_anonymous_namespace_::BitcodeReaderBase *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = a3;
  v4 = 75;
  switch(a3)
  {
    case 1:
      break;
    case 2:
      v4 = 3;
      break;
    case 3:
      v4 = 70;
      break;
    case 4:
      v4 = 12;
      break;
    case 5:
      v4 = 11;
      break;
    case 6:
      v4 = 14;
      break;
    case 7:
      v4 = 16;
      break;
    case 8:
      v4 = 17;
      break;
    case 9:
      v4 = 18;
      break;
    case 10:
      v4 = 19;
      break;
    case 11:
      v4 = 21;
      break;
    case 12:
      v4 = 23;
      break;
    case 13:
      v4 = 25;
      break;
    case 14:
      v4 = 26;
      break;
    case 15:
      v4 = 37;
      break;
    case 16:
      v4 = 30;
      break;
    case 17:
      v4 = 31;
      break;
    case 18:
      v4 = 36;
      break;
    case 19:
      v4 = 41;
      break;
    case 20:
      v4 = 44;
      break;
    case 21:
      v4 = 45;
      break;
    case 22:
      v4 = 46;
      break;
    case 23:
      v4 = 47;
      break;
    case 24:
      v4 = 48;
      break;
    case 25:
      v4 = 82;
      break;
    case 26:
      v4 = 59;
      break;
    case 27:
      v4 = 60;
      break;
    case 28:
      v4 = 61;
      break;
    case 29:
      v4 = 74;
      break;
    case 30:
      v4 = 50;
      break;
    case 31:
      v4 = 54;
      break;
    case 32:
      v4 = 53;
      break;
    case 33:
      v4 = 83;
      break;
    case 34:
      v4 = 68;
      break;
    case 35:
      v4 = 4;
      break;
    case 36:
      v4 = 5;
      break;
    case 37:
      v4 = 42;
      break;
    case 38:
      v4 = 72;
      break;
    case 39:
      v4 = 38;
      break;
    case 40:
      v4 = 13;
      break;
    case 41:
      v4 = 78;
      break;
    case 42:
      v4 = 79;
      break;
    case 43:
      v4 = 6;
      break;
    case 44:
      v4 = 49;
      break;
    case 46:
      v4 = 65;
      break;
    case 47:
      v4 = 64;
      break;
    case 48:
      v4 = 29;
      break;
    case 51:
      v4 = 77;
      break;
    case 52:
      v4 = 67;
      break;
    case 53:
      v4 = 57;
      break;
    case 54:
      v4 = 62;
      break;
    case 55:
      v4 = 51;
      break;
    case 56:
      v4 = 22;
      break;
    case 57:
      v4 = 40;
      break;
    case 58:
      v4 = 55;
      break;
    case 59:
      v4 = 58;
      break;
    case 60:
      v4 = 10;
      break;
    case 61:
      v4 = 66;
      break;
    case 62:
      v4 = 24;
      break;
    case 63:
      v4 = 34;
      break;
    case 64:
      v4 = 52;
      break;
    case 65:
      v4 = 73;
      break;
    case 66:
      v4 = 27;
      break;
    case 67:
      v4 = 39;
      break;
    case 68:
      v4 = 35;
      break;
    case 69:
      v4 = 69;
      break;
    case 70:
      v4 = 15;
      break;
    case 71:
      v4 = 20;
      break;
    case 72:
      v4 = 9;
      break;
    case 73:
      v4 = 28;
      break;
    case 74:
      v4 = 84;
      break;
    case 75:
      v4 = 63;
      break;
    case 76:
      v4 = 33;
      break;
    case 77:
      v4 = 71;
      break;
    case 78:
      v4 = 7;
      break;
    case 79:
      v4 = 32;
      break;
    case 80:
      v4 = 1;
      break;
    case 81:
      v4 = 2;
      break;
    case 82:
      v4 = 76;
      break;
    case 83:
      v4 = 43;
      break;
    case 84:
      v4 = 8;
      break;
    case 85:
      v4 = 56;
      break;
    case 86:
      v4 = 80;
      break;
    case 87:
      v4 = 81;
      break;
    default:
      *a4 = 0;
      v5[0] = "Unknown attribute kind (";
      v5[2] = &v9;
      v6 = 3075;
      v7[0] = v5;
      v7[2] = ")";
      v8 = 770;
  }

  *a4 = v4;
  *a1 = 0;
}

unint64_t anonymous namespace::BitcodeReader::createIdentifiedStructType(uint64_t a1, uint64_t a2, _BYTE *a3, size_t a4)
{
  v5 = llvm::StructType::create(a2, a3, a4);
  v7 = v5;
  std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](a1 + 1872, &v7);
  return v5;
}

void std::vector<anonymous namespace::BitcodeReader::FunctionOperandInfo>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
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

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::GlobalVariable *,unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t getDecodedLinkage(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_2750C8100[a1 - 1];
  }
}

uint64_t inferDSOLocal(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if ((v2 & 0xFu) - 7 < 2)
  {
    goto LABEL_5;
  }

  if ((v2 & 0x30) != 0)
  {
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);
LABEL_5:
      *(v1 + 32) = v2 | 0x4000;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>,llvm::GlobalObject *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::GlobalObject *,void>,llvm::detail::DenseSetPair<llvm::GlobalObject *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a2, *(a2 + 16), *a3, &v12);
  v7 = v12;
  v8 = *(a2 + 16);
  if (result)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v10 = *(a2 + 8);
  if (4 * v10 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_10;
  }

  if (v8 + ~v10 - *(a2 + 12) <= v8 >> 3)
  {
LABEL_10:
    llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::grow(a2, v8);
    v12 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>,llvm::orc::JITDylib::EmissionDepUnit *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::JITDylib::EmissionDepUnit *,void>,llvm::detail::DenseSetPair<llvm::orc::JITDylib::EmissionDepUnit *>>::LookupBucketFor<llvm::orc::JITDylib::EmissionDepUnit *>(*a2, *(a2 + 16), *a3, &v12);
    v7 = v12;
  }

  ++*(a2 + 8);
  if (*v7 != -4096)
  {
    --*(a2 + 12);
  }

  *v7 = *a3;
  v8 = *(a2 + 16);
  v9 = 1;
LABEL_8:
  v11 = *a2 + 8 * v8;
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v9;
  return result;
}

uint64_t std::function<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x274FAADE4);
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_0,std::allocator<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_0>,llvm::Type * ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFC20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_1,std::allocator<anonymous namespace::BitcodeReader::callValueTypeCallback(llvm::Value *,unsigned int)::$_1>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFC68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<llvm::Type * ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
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

char ***llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[4 * v3 - 3];
    v5 = -32 * v3;
    do
    {
      v7 = v4;
      std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v7);
      v4 -= 4;
      v5 += 32;
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

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_0,std::allocator<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_0>,llvm::Type * ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFCB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_1,std::allocator<anonymous namespace::BitcodeReader::parseBitcodeInto(llvm::Module *,BOOL,BOOL,llvm::ParserCallbacks)::$_1>,unsigned int ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883EFCF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<llvm::Type * ()(unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()(unsigned int)>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::BitcodeModule>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

uint64_t _GLOBAL__sub_I_BitcodeReader_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_37, 0, 0);
  byte_2815AA1E0 = 0;
  qword_2815AA1E8 = &unk_2883EAB68;
  *&word_2815AA1F0 = 0;
  _MergedGlobals_37 = &unk_2883EAB00;
  qword_2815AA1F8 = &unk_2883EA848;
  qword_2815AA200 = &unk_2883EAB88;
  qword_2815AA218 = &qword_2815AA200;
  llvm::cl::Option::setArgStr(v0, "print-summary-global-ids", 0x18uLL);
  byte_2815AA1E0 = 0;
  word_2815AA1F0 = 256;
  word_2815AA16A = word_2815AA16A & 0xFF9F | 0x20;
  qword_2815AA180 = "Print the global id for each value when reading the module summary";
  unk_2815AA188 = 66;
  llvm::cl::Option::addArgument(&_MergedGlobals_37, v1);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_37, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815AA220, 0, 0);
  byte_2815AA2A0 = 0;
  qword_2815AA2A8 = &unk_2883EAB68;
  unk_2815AA2B0 = 0;
  qword_2815AA220 = &unk_2883EAB00;
  qword_2815AA2B8 = &unk_2883EA848;
  qword_2815AA2C0 = &unk_2883EAB88;
  qword_2815AA2D8 = &qword_2815AA2C0;
  llvm::cl::Option::setArgStr(v2, "expand-constant-exprs", 0x15uLL);
  word_2815AA22A = word_2815AA22A & 0xFF9F | 0x20;
  qword_2815AA240 = "Expand constant expressions to instructions for testing purposes";
  unk_2815AA248 = 64;
  llvm::cl::Option::addArgument(&qword_2815AA220, v3);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815AA220, &dword_274E5C000);
}

void llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadModuleMetadataBlock(llvm::MetadataLoader::MetadataLoaderImpl *this, uint64_t a2)
{
  v56[64] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 200);
  v7 = (a2 + 328);
  v8 = *(v6 + 32);
  v9 = *(v6 + 16);
  *(a2 + 328) = *v6;
  *(a2 + 344) = v9;
  *(a2 + 360) = v8;
  *(a2 + 364) = *(v6 + 36);
  if (a2 + 328 != v6)
  {
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__assign_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>((a2 + 368), *(v6 + 40), *(v6 + 48), (*(v6 + 48) - *(v6 + 40)) >> 4);
  }

  llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=((a2 + 392), (v6 + 64));
  *(a2 + 664) = *(v6 + 336);
  v54 = v56;
  v55 = 0x4000000000;
  *(a2 + 720) = 0;
  v42 = *this;
  v43 = (a2 + 696);
  for (i = *(this + 8); ; i = v41)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            while (1)
            {
              v11 = *(a2 + 344);
              v12 = *(a2 + 360);
              llvm::BitstreamCursor::advanceSkippingSubblocks(&v50, v7, 1);
              if (v51)
              {
                v13 = v50;
                if (v50)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v2 = v50;
                v3 = HIDWORD(v50);
              }

              if (v2 > 2)
              {
                break;
              }

              switch(v2)
              {
                case 0:
                  goto LABEL_73;
                case 1:
                  *this = v42;
                  *(this + 8) = i & 0xFE;
                  *this = 1;
                  goto LABEL_81;
                case 2:
LABEL_73:
                  v50 = "Malformed block";
                  v53 = 259;
                  error(&v47, &v50);
              }
            }
          }

          while (v2 != 3);
          v14 = *(a2 + 344);
          v15 = *(a2 + 360);
          llvm::BitstreamCursor::skipRecord(&v50, v7, v3);
          if ((v51 & 1) == 0)
          {
            break;
          }

          v13 = v50;
          v2 = 3;
          if (v50)
          {
            goto LABEL_79;
          }
        }

        v16 = 8 * v14 - v15;
        v2 = 3;
        if (v50 > 34)
        {
          break;
        }

        if (v50 > 4)
        {
          if ((v50 - 12) < 0x17 || (v50 - 5) < 5)
          {
LABEL_72:
            *this = v42;
            *(a2 + 680) = *(a2 + 672);
            *(a2 + 704) = *(a2 + 696);
            *(this + 8) = i & 0xFE;
            *this = 0;
            goto LABEL_81;
          }
        }

        else if (v50 == 4)
        {
          llvm::SimpleBitstreamCursor::JumpToBit(&v50, v7, v16);
          v13 = v50;
          if (v50)
          {
            goto LABEL_79;
          }

          LODWORD(v55) = 0;
          llvm::BitstreamCursor::readRecord(&v50, v7, v3, &v54, 0);
          if (v51)
          {
            goto LABEL_77;
          }

          v50 = &v52;
          v51 = xmmword_2750C12B0;
          llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v50, v54, v54 + 8 * v55);
          llvm::BitstreamCursor::ReadCode(&MDNodeFwdRefOrNull, v7);
          if (v49 & 1) != 0 || (LODWORD(v55) = 0, llvm::BitstreamCursor::readRecord(&MDNodeFwdRefOrNull, v7, MDNodeFwdRefOrNull, &v54, 0), (v49))
          {
            v36 = MDNodeFwdRefOrNull;
            *(this + 8) = i | 1;
            *this = v36;
            if (v50 != &v52)
            {
              free(v50);
            }

            goto LABEL_81;
          }

          v17 = v55;
          inserted = llvm::Module::getOrInsertNamedMetadata(*(a2 + 216), v50, v51);
          if (v17)
          {
            v19 = inserted;
            v20 = 0;
            v21 = 8 * v17;
            do
            {
              llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(*(v19 + 48), &MDNodeFwdRefOrNull);
              v20 += 8;
            }

            while (v21 != v20);
          }

          if (v50 != &v52)
          {
            free(v50);
          }

          v2 = 3;
        }

        else if ((v50 - 1) < 3)
        {
          goto LABEL_72;
        }
      }

      if (v50 > 0x2F)
      {
        goto LABEL_31;
      }

      if (v50 == 38)
      {
        break;
      }

      if (((1 << v50) & 0xB32000000000) != 0)
      {
        goto LABEL_72;
      }

      if (v50 == 39)
      {
        v50 = "Corrupted Metadata block";
        v53 = 259;
        error(&v44, &v50);
      }

LABEL_31:
      if (v50 == 36)
      {
        if (!*(a2 + 720))
        {
          *(a2 + 720) = 8 * v11 - v12;
        }
      }

      else if (v50 == 35)
      {
        llvm::SimpleBitstreamCursor::JumpToBit(&v50, v7, v16);
        v13 = v50;
        if (v50)
        {
          goto LABEL_79;
        }

        v50 = 0;
        *&v51 = 0;
        LODWORD(v55) = 0;
        llvm::BitstreamCursor::readRecord(&MDNodeFwdRefOrNull, v7, v3, &v54, &v50);
        if (v49)
        {
          v13 = MDNodeFwdRefOrNull;
          goto LABEL_79;
        }

        std::vector<llvm::StringRef>::reserve((a2 + 672), *v54);
        MDNodeFwdRefOrNull = a2;
        llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataStrings(&v46, v54, v55, v50, v51, llvm::function_ref<void ()(llvm::StringRef)>::callback_fn<llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadModuleMetadataBlock(void)::$_0>, &MDNodeFwdRefOrNull);
        v13 = v46;
        if (v46)
        {
          goto LABEL_79;
        }
      }
    }

    llvm::SimpleBitstreamCursor::JumpToBit(&v50, v7, v16);
    v13 = v50;
    if (v50)
    {
      goto LABEL_79;
    }

    LODWORD(v55) = 0;
    llvm::BitstreamCursor::readRecord(&v50, v7, v3, &v54, 0);
    if (v51)
    {
LABEL_77:
      v13 = v50;
LABEL_79:
      v37 = i | 1;
      goto LABEL_80;
    }

    if (v55 != 2)
    {
      v50 = "Invalid record";
      v53 = 259;
      error(&v45, &v50);
    }

    v41 = i;
    v22 = 8 * *(a2 + 344) - *(a2 + 360);
    llvm::SimpleBitstreamCursor::JumpToBit(&v50, v7, *v54 + (*(v54 + 1) << 32) + v22);
    v13 = v50;
    if (v50)
    {
      goto LABEL_86;
    }

    llvm::BitstreamCursor::advanceSkippingSubblocks(&v50, v7, 1);
    if (v51)
    {
      v13 = v50;
LABEL_86:
      v37 = v41 | 1;
LABEL_80:
      *(this + 8) = v37;
      *this = v13;
      goto LABEL_81;
    }

    v2 = v50;
    v3 = HIDWORD(v50);
    LODWORD(v55) = 0;
    llvm::BitstreamCursor::readRecord(&MDNodeFwdRefOrNull, v7, SHIDWORD(v50), &v54, 0);
    if (v49)
    {
      break;
    }

    v40 = this;
    std::vector<llvm::orc::ExecutorAddr>::reserve(v43, v55);
    if (v55)
    {
      v23 = v54;
      v24 = *(a2 + 704);
      v25 = 8 * v55;
      do
      {
        v22 += *v23;
        v26 = *(a2 + 712);
        if (v24 >= v26)
        {
          v27 = *v43;
          v28 = v24 - *v43;
          v29 = (v28 >> 3) + 1;
          if (v29 >> 61)
          {
            *(v40 + 8) = v41;
            *v40 = v42;
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v30 = v26 - v27;
          if (v30 >> 2 > v29)
          {
            v29 = v30 >> 2;
          }

          v31 = v30 >= 0x7FFFFFFFFFFFFFF8;
          v32 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v31)
          {
            v32 = v29;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::orc::ExecutorAddr>>(v43, v32);
          }

          v33 = (8 * (v28 >> 3));
          *v33 = v22;
          v24 = v33 + 1;
          memcpy(0, v27, v28);
          v34 = *(a2 + 696);
          *(a2 + 696) = 0;
          *(a2 + 704) = v24;
          *(a2 + 712) = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v24++ = v22;
        }

        *(a2 + 704) = v24;
        ++v23;
        v25 -= 8;
      }

      while (v25);
    }

    if (v51)
    {
      v35 = v50;
      v50 = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }
    }

    this = v40;
  }

  v38 = MDNodeFwdRefOrNull;
  *(this + 8) = v41 | 1;
  *this = v38;
  if (v51)
  {
    v39 = v50;
    v50 = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }
  }

LABEL_81:
  if (v54 != v56)
  {
    free(v54);
  }
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataStrings(llvm::Twine *a1, int *a2, uint64_t a3, const char *a4, unint64_t a5, void (*a6)(uint64_t, const char *, unint64_t), uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3 != 2)
  {
    v11 = "Invalid record: metadata strings layout";
    goto LABEL_7;
  }

  v8 = *a2;
  if (!*a2)
  {
    v11 = "Invalid record: metadata strings with no strings";
    goto LABEL_7;
  }

  v9 = a2[2];
  v10 = a5 - v9;
  if (a5 < v9)
  {
    v11 = "Invalid record: metadata strings corrupt offset";
LABEL_7:
    v20 = v11;
    LOWORD(v24) = 259;
    v12 = &v20;
    goto LABEL_8;
  }

  v20 = a4;
  v21 = v9;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v15 = &a4[v9];
  for (i = *a1; ; i = 0)
  {
    if (!v24 && v21 <= v22)
    {
      *a1 = i;
      v19 = "Invalid record: metadata strings bad length";
LABEL_22:
      v25 = v19;
      v27 = 259;
      v12 = &v25;
LABEL_8:
      error(a1, v12);
    }

    llvm::SimpleBitstreamCursor::ReadVBR(&v25, &v20, 6u);
    if (v26)
    {
      break;
    }

    v17 = v25;
LABEL_16:
    v18 = v10 >= v17;
    v10 -= v17;
    if (!v18)
    {
      *a1 = 0;
      v19 = "Invalid record: metadata strings truncated chars";
      goto LABEL_22;
    }

    a6(a7, v15, v17);
    v15 += v17;
    if (!--v8)
    {
      *a1 = 0;
      return;
    }
  }

  if (!v25)
  {
    v17 = 0;
    goto LABEL_16;
  }

  *a1 = v25;
}

llvm::MDNode *anonymous namespace::BitcodeReaderMetadataList::getMDNodeFwdRefOrNull(_anonymous_namespace_::BitcodeReaderMetadataList *this, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (llvm::MDNode::classof(result))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void llvm::MetadataLoader::MetadataLoaderImpl::loadGlobalDeclAttachments(llvm::MetadataLoader::MetadataLoaderImpl *this, uint64_t a2)
{
  v36[33] = *MEMORY[0x277D85DE8];
  if (*(a2 + 720))
  {
    v5 = *(a2 + 200);
    v7 = *v5;
    v6 = v5[1];
    v33 = *(v5 + 4);
    v31 = v7;
    v32 = v6;
    HIDWORD(v33) = *(v5 + 9);
    memset(v34, 0, sizeof(v34));
    std::vector<std::shared_ptr<llvm::BitCodeAbbrev>>::__init_with_size[abi:nn200100]<std::shared_ptr<llvm::BitCodeAbbrev>*,std::shared_ptr<llvm::BitCodeAbbrev>*>(v34, *(v5 + 5), *(v5 + 6), (*(v5 + 6) - *(v5 + 5)) >> 4);
    v35[0] = v36;
    v35[1] = 0x800000000;
    if (*(v5 + 18))
    {
      llvm::SmallVectorImpl<llvm::BitstreamCursor::Block>::operator=(v35, v5 + 8);
    }

    v36[32] = *(v5 + 42);
    v28 = v30;
    v29 = 0x4000000000;
    llvm::SimpleBitstreamCursor::JumpToBit(&v25, &v31, *(a2 + 720));
    v8 = v25;
    if (v25)
    {
LABEL_5:
      *(this + 8) |= 1u;
      *this = v8;
    }

    else
    {
      while (1)
      {
        llvm::BitstreamCursor::advanceSkippingSubblocks(&v25, &v31, 1);
        if (v26)
        {
          v8 = v25;
          if (v25)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v2 = v25;
          LODWORD(v5) = HIDWORD(v25);
        }

        switch(v2)
        {
          case 2:
LABEL_33:
            v25 = "Malformed block";
            v27 = 259;
            error(&v22, &v25);
          case 1:
            *(this + 8) &= ~1u;
            *this = 1;
            goto LABEL_6;
          case 0:
            goto LABEL_33;
        }

        v9 = v32;
        v10 = v33;
        llvm::BitstreamCursor::skipRecord(&v23, &v31, v5);
        if (v24)
        {
          v11 = v23;
          v23 = 0;
          goto LABEL_38;
        }

        if (v23 != 36)
        {
          *(this + 8) &= ~1u;
          *this = 1;
          goto LABEL_39;
        }

        llvm::SimpleBitstreamCursor::JumpToBit(&v25, &v31, 8 * v9 - v10);
        v11 = v25;
        if (v25)
        {
          goto LABEL_38;
        }

        LODWORD(v29) = 0;
        llvm::BitstreamCursor::readRecord(&v25, &v31, v5, &v28, 0);
        if (v26)
        {
          break;
        }

        if ((v29 & 1) == 0)
        {
          v25 = "Invalid record";
          v27 = 259;
          error(&v21, &v25);
        }

        v12 = **(a2 + 192);
        if (((*(*(a2 + 192) + 8) - v12) >> 5) <= *v28)
        {
          v25 = "Invalid record";
          v27 = 259;
          error(&v20, &v25);
        }

        v13 = *(v12 + 32 * *v28 + 16);
        v14 = *(v13 + 16);
        if (v14 <= 3 && v14 != 1)
        {
          v16 = v32;
          v17 = v33;
          llvm::MetadataLoader::MetadataLoaderImpl::parseGlobalObjectAttachment(&v25, a2, v13, v28 + 8, v29 - 1);
          v11 = v25;
          if (v25)
          {
            goto LABEL_38;
          }

          llvm::SimpleBitstreamCursor::JumpToBit(&v25, &v31, 8 * v16 - v17);
          v11 = v25;
          if (v25)
          {
            goto LABEL_38;
          }
        }

        if (v24)
        {
          v18 = v23;
          v23 = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }
      }

      v11 = v25;
LABEL_38:
      *(this + 8) |= 1u;
      *this = v11;
LABEL_39:
      if (v24)
      {
        v19 = v23;
        v23 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }
      }
    }

LABEL_6:
    if (v28 != v30)
    {
      free(v28);
    }

    llvm::SmallVector<llvm::BitstreamCursor::Block,8u>::~SmallVector(v35);
    v28 = v34;
    std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v28);
  }

  else
  {
    *(this + 8) &= ~1u;
    *this = 1;
  }
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseGlobalObjectAttachment(const llvm::Twine *a1, uint64_t a2, uint64_t ***a3, uint64_t a4, int a5)
{
  if (a5)
  {
    v10 = 0;
    while (1)
    {
      v17 = *(a4 + 8 * v10);
      v15[0] = 0;
      if (!llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>((a2 + 1016), &v17, v15))
      {
        break;
      }

      v11 = v15[0];
      if (v15[0] == *(a2 + 1016) + 8 * *(a2 + 1032))
      {
        break;
      }

      MetadataFwdRefOrLoad = llvm::MetadataLoader::MetadataLoaderImpl::getMetadataFwdRefOrLoad(a2, *(a4 + 8 * (v10 + 1)));
      if (!MetadataFwdRefOrLoad || (v13 = MetadataFwdRefOrLoad, (llvm::MDNode::classof(MetadataFwdRefOrLoad) & 1) == 0))
      {
        v14 = "Invalid metadata attachment: expect fwd ref to MDNode";
        goto LABEL_11;
      }

      llvm::Value::addMetadata(a3, *(v11 + 4), v13);
      v10 += 2;
      if (a5 == v10)
      {
        goto LABEL_8;
      }
    }

    v14 = "Invalid ID";
LABEL_11:
    v15[0] = v14;
    v16 = 259;
    error(a1, v15);
  }

LABEL_8:
  *a1 = 0;
}

void llvm::MetadataLoader::MetadataLoaderImpl::callMDTypeCallback(uint64_t result, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(result + 320) == 1)
  {
    std::__function::__value_func<llvm::Type * ()>::__value_func[abi:nn200100](v13, result + 224);
    std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::__value_func[abi:nn200100](v12, result + 256);
    v6 = *(result + 312);
    v11 = a2;
    v10 = a3;
    if (v6)
    {
      (*(*v6 + 48))(v6, &v11, &v10, v13, v12);
      std::__function::__value_func<unsigned int ()(unsigned int,unsigned int)>::~__value_func[abi:nn200100](v12);
      std::__function::__value_func<llvm::Type * ()>::~__value_func[abi:nn200100](v13);
    }

    else
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(v7, v8, v9);
    }
  }
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseMetadata(llvm::MetadataLoader::MetadataLoaderImpl *this@<X0>, int a2@<W1>, const llvm::Twine *a3@<X8>)
{
  v3 = a2;
  v32 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0 && *(this + 6) >= 2u)
  {
    v29 = "Invalid metadata: fwd refs into function blocks";
    v31[8] = 259;
    error(a3, &v29);
  }

  v6 = *(this + 25);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  llvm::BitstreamCursor::EnterSubBlock(a3, v6, 0, 15);
  if (!*a3)
  {
    v29 = v31;
    v30 = 0x4000000000;
    memset(v23, 0, sizeof(v23));
    if (!v3 || *(this + 1044) != 1 || *(this + 2) || (byte_2815AA420 & 1) != 0)
    {
LABEL_9:
      v21 = *(this + 2);
      while (1)
      {
        llvm::BitstreamCursor::advanceSkippingSubblocks(&v24, *(this + 25), 0);
        if (v25)
        {
          v9 = v24;
          *a3 = v24;
          if (v9)
          {
            goto LABEL_26;
          }
        }

        else
        {
          LODWORD(v8) = v24;
          v3 = HIDWORD(v24);
          *a3 = 0;
        }

        switch(v8)
        {
          case 2:
LABEL_23:
            v24 = "Malformed block";
            v26 = 259;
            error(a3, &v24);
          case 1:
            llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(this, v23);
            llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUSubprograms(this, v12, v13, v14);
            llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUVariables(this);
            *a3 = 0;
            goto LABEL_26;
          case 0:
            goto LABEL_23;
        }

        LODWORD(v30) = 0;
        v24 = 0;
        v25 = 0;
        llvm::BitstreamCursor::readRecord(&v27, *(this + 25), v3, &v29, &v24);
        if (v28)
        {
          break;
        }

        llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(a3, this, &v29, v27, v23, v24, v25, &v21);
        v10 = *a3;
        if (v28)
        {
          v11 = v27;
          v27 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }
        }

        if (v10)
        {
          goto LABEL_26;
        }
      }

      *a3 = v27;
      goto LABEL_26;
    }

    llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadModuleMetadataBlock(&v24, this);
    if (v25)
    {
      goto LABEL_30;
    }

    if (v24 != 1)
    {
      goto LABEL_9;
    }

    llvm::SmallVectorImpl<llvm::TrackingMDRef>::resizeImpl<false>(this, ((*(this + 88) - *(this + 87)) >> 3) + ((*(this + 85) - *(this + 84)) >> 4));
    llvm::MetadataLoader::MetadataLoaderImpl::loadGlobalDeclAttachments(&v27, this);
    llvm::Expected<BOOL>::moveAssign<BOOL>(&v24, &v27);
    if (v28)
    {
      v17 = v27;
      v27 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    if (v25)
    {
LABEL_30:
      v15 = v24;
      v24 = 0;
      *a3 = v15;
    }

    else
    {
      llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(this, v23);
      llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUSubprograms(this, v18, v19, v20);
      llvm::MetadataLoader::MetadataLoaderImpl::upgradeCUVariables(this);
      llvm::BitstreamCursor::ReadBlockEnd(*(this + 25));
      llvm::SimpleBitstreamCursor::JumpToBit(a3, this + 41, 8 * v7 - v8);
      if (!*a3)
      {
        llvm::BitstreamCursor::SkipBlock(&v27, *(this + 25));
        if (v27)
        {
          v22 = v27;
          v27 = 0;
          llvm::consumeError(&v22);
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          *a3 = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }
        }

        else
        {
          *a3 = 0;
        }
      }
    }

    if (v25)
    {
      v16 = v24;
      v24 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

LABEL_26:
    std::deque<llvm::DistinctMDOperandPlaceholder>::~deque[abi:nn200100](v23);
    if (v29 != v31)
    {
      free(v29);
    }
  }
}

uint64_t llvm::MetadataLoader::MetadataLoaderImpl::resolveForwardRefsAndPlaceholders(uint64_t a1, uint64_t a2)
{
  v129 = 0;
  v130 = 0;
  v131 = 0;
  while (1)
  {
    v4 = *(a2 + 8);
    if (*(a2 + 16) != v4)
    {
      v5 = *(a2 + 32);
      v6 = (v4 + 8 * (v5 >> 8));
      v7 = *v6 + 16 * v5;
      v8 = *(v4 + (((*(a2 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a2 + 40) + v5);
      while (v7 != v8)
      {
        v9 = *(v7 + 4);
        v132 = v9;
        if (*(a1 + 8) <= v9 || (v10 = *(*a1 + 8 * v9)) == 0 || llvm::MDNode::classof(*(*a1 + 8 * v9)) && (*(v10 + 1) & 0x7F) == 2)
        {
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v129, &v132, v133);
        }

        v7 += 16;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }
    }

    if (!v130)
    {
      break;
    }

    if (v131)
    {
      v12 = 4 * v131;
      v13 = v129;
      while (*v13 >= 0xFFFFFFFE)
      {
        ++v13;
        v12 -= 4;
        if (!v12)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v13 = v129;
    }

    v15 = &v129[v131];
LABEL_24:
    if (v13 != v15)
    {
      v16 = *v13++;
      llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(a1, v16, a2);
      while (v13 != v15)
      {
        if (*v13 < 0xFFFFFFFE)
        {
          goto LABEL_24;
        }

        ++v13;
      }
    }

LABEL_19:
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::clear(&v129);
    if (*(a1 + 24) >= 2u)
    {
      do
      {
        v14 = llvm::detail::DenseSetImpl<unsigned int,llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,llvm::DenseMapInfo<unsigned int,void>>::begin((a1 + 24));
        llvm::MetadataLoader::MetadataLoaderImpl::lazyLoadOneMetadata(a1, *v14, a2);
      }

      while (*(a1 + 24) > 1u);
    }
  }

  if (*(a1 + 24) > 1u)
  {
    goto LABEL_19;
  }

  v17 = *(a1 + 120);
  if (v17 > 1)
  {
    if (v17)
    {
      v21 = (a1 + 128);
      v23 = (a1 + 144);
    }

    else
    {
      v21 = *(a1 + 128);
      v22 = *(a1 + 136);
      v23 = &v21[2 * v22];
      if (!v22)
      {
        v24 = 0;
        v19 = *(a1 + 128);
LABEL_45:
        v25 = &v21[2 * v24];
        goto LABEL_46;
      }
    }

    v19 = v21;
    while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v19 += 2;
      if (v19 == v23)
      {
        v19 = v23;
        break;
      }
    }

    if (v17)
    {
      goto LABEL_41;
    }

LABEL_44:
    v21 = *(a1 + 128);
    v24 = *(a1 + 136);
    goto LABEL_45;
  }

  if (v17)
  {
    v18 = a1 + 128;
    v19 = (a1 + 144);
    v20 = 1;
  }

  else
  {
    v18 = *(a1 + 128);
    v20 = *(a1 + 136);
    v19 = (v18 + 16 * v20);
  }

  v23 = (v18 + 16 * v20);
  if (!v17)
  {
    goto LABEL_44;
  }

LABEL_41:
  v25 = (a1 + 144);
LABEL_46:
  if (v19 != v25)
  {
    do
    {
      v133[0] = 0;
      if ((llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1 + 96, *v19, v133) & 1) == 0)
      {
        v26 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::InsertIntoBucketImpl<llvm::MDString *>((a1 + 96), v19, v133[0]);
        *v26 = *v19;
        v26[1] = v19[1];
      }

      do
      {
        v19 += 2;
      }

      while (v19 != v23 && (*v19 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v19 != v25);
    v17 = *(a1 + 120);
  }

  if (v17 <= 1 && !*(a1 + 124))
  {
    goto LABEL_82;
  }

  if (v17)
  {
    v37 = a1 + 128;
    v38 = a1 + 144;
    goto LABEL_74;
  }

  v27 = *(a1 + 136);
  if (v27 <= 2 * v17 || v27 < 0x41)
  {
    if (!v27)
    {
      v44 = 0;
LABEL_81:
      *(a1 + 120) = v44;
      *(a1 + 124) = 0;
      goto LABEL_82;
    }

    v37 = *(a1 + 128);
    v38 = v37 + 16 * v27;
LABEL_74:
    v39 = 0;
    v40 = (v38 - v37 - 16) >> 4;
    v41 = vdupq_n_s64(v40);
    v42 = (v37 + 16);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_2750C1210)));
      if (v43.i8[0])
      {
        *(v42 - 2) = -4096;
      }

      if (v43.i8[4])
      {
        *v42 = -4096;
      }

      v39 += 2;
      v42 += 4;
    }

    while (((v40 + 2) & 0x1FFFFFFFFFFFFFFELL) != v39);
    v44 = *(a1 + 120) & 1;
    goto LABEL_81;
  }

  v28 = 1 << (33 - __clz((v17 >> 1) - 1));
  if (v17 < 0x22)
  {
    v28 = 64;
  }

  if (v17 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 == v27)
  {
    v30 = 0;
    *(a1 + 120) = 0;
    v31 = v27 + 0xFFFFFFFFFFFFFFFLL;
    v32 = v31 & 0xFFFFFFFFFFFFFFFLL;
    v33 = (v31 & 0xFFFFFFFFFFFFFFFLL) - (v31 & 1) + 2;
    v34 = vdupq_n_s64(v32);
    v35 = (*(a1 + 128) + 16);
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(vdupq_n_s64(v30), xmmword_2750C1210)));
      if (v36.i8[0])
      {
        *(v35 - 2) = -4096;
      }

      if (v36.i8[4])
      {
        *v35 = -4096;
      }

      v30 += 2;
      v35 += 4;
    }

    while (v33 != v30);
    goto LABEL_82;
  }

  v86 = (a1 + 128);
  MEMORY[0x277C69E30](*(a1 + 128), 8);
  if (v29 <= 1)
  {
    *(a1 + 120) = 1;
    goto LABEL_191;
  }

  *(a1 + 120) &= ~1u;
  v87 = operator new(16 * v29, 8uLL);
  *(a1 + 128) = v87;
  *(a1 + 136) = v29;
  v88 = *(a1 + 120);
  *(a1 + 120) = v88 & 1;
  if (v88)
  {
LABEL_191:
    v89 = (a1 + 144);
    goto LABEL_192;
  }

  v89 = &v87[16 * v29];
  v86 = v87;
LABEL_192:
  v103 = 0;
  v104 = (v89 - v86 - 16) >> 4;
  v105 = (v104 + 2) & 0x1FFFFFFFFFFFFFFELL;
  v106 = vdupq_n_s64(v104);
  v107 = v86 + 16;
  do
  {
    v108 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(vdupq_n_s64(v103), xmmword_2750C1210)));
    if (v108.i8[0])
    {
      *(v107 - 2) = -4096;
    }

    if (v108.i8[4])
    {
      *v107 = -4096;
    }

    v103 += 2;
    v107 += 4;
  }

  while (v105 != v103);
LABEL_82:
  v45 = *(a1 + 144);
  v46 = *(a1 + 152);
  if (v46)
  {
    v47 = 16 * v46;
    v48 = (v45 + 8);
    do
    {
      v49 = *v48;
      v51 = *(v49 + 8);
      if ((v51 & 4) != 0)
      {
        llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v51 & 0xFFFFFFFFFFFFFFF8, v50);
      }

      v48 += 2;
      v47 -= 16;
    }

    while (v47);
    v45 = *(a1 + 144);
    v52 = *(a1 + 152);
  }

  else
  {
    v52 = 0;
  }

  llvm::SmallVectorTemplateBase<std::pair<llvm::TrackingMDRef,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>,false>::destroy_range(v45, (v45 + 16 * v52));
  *(a1 + 152) = 0;
  v54 = *(a1 + 72);
  if (v54 > 1)
  {
    if (v54)
    {
      v58 = (a1 + 80);
      v60 = (a1 + 96);
    }

    else
    {
      v58 = *(a1 + 80);
      v59 = *(a1 + 88);
      v60 = &v58[2 * v59];
      if (!v59)
      {
        v61 = 0;
        v56 = *(a1 + 80);
LABEL_105:
        v62 = &v58[2 * v61];
        goto LABEL_106;
      }
    }

    v56 = v58;
    while ((*v56 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v56 += 2;
      if (v56 == v60)
      {
        v56 = v60;
        break;
      }
    }

    if (v54)
    {
      goto LABEL_101;
    }

LABEL_104:
    v58 = *(a1 + 80);
    v61 = *(a1 + 88);
    goto LABEL_105;
  }

  if (v54)
  {
    v55 = a1 + 80;
    v56 = (a1 + 96);
    v57 = 1;
  }

  else
  {
    v55 = *(a1 + 80);
    v57 = *(a1 + 88);
    v56 = (v55 + 16 * v57);
  }

  v60 = (v55 + 16 * v57);
  if (!v54)
  {
    goto LABEL_104;
  }

LABEL_101:
  v62 = (a1 + 96);
LABEL_106:
  if (v56 != v62)
  {
    while (2)
    {
      v63 = *v56;
      v133[0] = 0;
      if ((llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,llvm::DICompositeType *,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>,llvm::MDString *,llvm::DICompositeType *,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,llvm::DICompositeType *>>::LookupBucketFor<llvm::MDString *>(a1 + 96, v63, v133) & 1) != 0 && (v53 = v133[0][1]) != 0)
      {
        v64 = *(v56[1] + 8);
        if ((v64 & 4) != 0)
        {
LABEL_113:
          llvm::ReplaceableMetadataImpl::replaceAllUsesWith(v64 & 0xFFFFFFFFFFFFFFF8, v53);
        }
      }

      else
      {
        v64 = *(v56[1] + 8);
        if ((v64 & 4) != 0)
        {
          v53 = *v56;
          goto LABEL_113;
        }
      }

      do
      {
        v56 += 2;
      }

      while (v56 != v60 && (*v56 | 0x1000) == 0xFFFFFFFFFFFFF000);
      if (v56 == v62)
      {
        v54 = *(a1 + 72);
        break;
      }

      continue;
    }
  }

  if (v54 <= 1 && !*(a1 + 76))
  {
    goto LABEL_136;
  }

  if (v54)
  {
    v67 = (a1 + 80);
    v68 = (a1 + 96);
    goto LABEL_128;
  }

  v65 = *(a1 + 88);
  if (v65 > 2 * v54 && v65 >= 0x41)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,1u,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>,llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>,llvm::DenseMapInfo<llvm::MDString *,void>,llvm::detail::DenseMapPair<llvm::MDString *,std::unique_ptr<llvm::MDTuple,llvm::TempMDNodeDeleter>>>::destroyAll(a1 + 72, v53);
    if (v54 >= 2)
    {
      v90 = 1 << (33 - __clz((v54 >> 1) - 1));
      if (v54 >= 0x22)
      {
        v66 = v90;
      }

      else
      {
        v66 = 64;
      }
    }

    else
    {
      v66 = 0;
    }

    v91 = *(a1 + 72);
    if ((v91 & 1) != 0 && v66 < 2)
    {
      *(a1 + 72) = 1;
      v92 = a1 + 80;
      v93 = a1 + 96;
LABEL_174:
      v94 = 0;
      v95 = (v93 - v92 - 16) >> 4;
      v96 = vdupq_n_s64(v95);
      v97 = (v92 + 16);
      do
      {
        v98 = vmovn_s64(vcgeq_u64(v96, vorrq_s8(vdupq_n_s64(v94), xmmword_2750C1210)));
        if (v98.i8[0])
        {
          *(v97 - 2) = -4096;
        }

        if (v98.i8[4])
        {
          *v97 = -4096;
        }

        v94 += 2;
        v97 += 4;
      }

      while (((v95 + 2) & 0x1FFFFFFFFFFFFFFELL) != v94);
      goto LABEL_136;
    }

    if ((v91 & 1) == 0)
    {
      if (v66 == *(a1 + 88))
      {
        *(a1 + 72) = 0;
        if (!v66)
        {
          goto LABEL_136;
        }

        v92 = *(a1 + 80);
        v93 = v92 + 16 * v66;
        goto LABEL_174;
      }

      MEMORY[0x277C69E30](*(a1 + 80), 8);
    }

    if (v66 <= 1)
    {
      *(a1 + 72) = 1;
    }

    else
    {
      *(a1 + 72) &= ~1u;
      v120 = operator new(16 * v66, 8uLL);
      *(a1 + 80) = v120;
      *(a1 + 88) = v66;
      v121 = *(a1 + 72);
      *(a1 + 72) = v121 & 1;
      if ((v121 & 1) == 0)
      {
        v122 = &v120[16 * v66];
        goto LABEL_224;
      }
    }

    v120 = (a1 + 80);
    v122 = (a1 + 96);
LABEL_224:
    v123 = 0;
    v124 = (v122 - v120 - 16) >> 4;
    v125 = (v124 + 2) & 0x1FFFFFFFFFFFFFFELL;
    v126 = vdupq_n_s64(v124);
    v127 = v120 + 16;
    do
    {
      v128 = vmovn_s64(vcgeq_u64(v126, vorrq_s8(vdupq_n_s64(v123), xmmword_2750C1210)));
      if (v128.i8[0])
      {
        *(v127 - 2) = -4096;
      }

      if (v128.i8[4])
      {
        *v127 = -4096;
      }

      v123 += 2;
      v127 += 4;
    }

    while (v125 != v123);
    goto LABEL_136;
  }

  if (!v65)
  {
    goto LABEL_135;
  }

  v67 = *(a1 + 80);
  v68 = &v67[2 * v65];
LABEL_128:
  while (2)
  {
    if (*v67 == -8192)
    {
LABEL_132:
      *v67 = -4096;
    }

    else if (*v67 != -4096)
    {
      v69 = v67[1];
      v67[1] = 0;
      if (v69)
      {
        llvm::MDNode::deleteTemporary(v69, v53);
      }

      goto LABEL_132;
    }

    v67 += 2;
    if (v67 != v68)
    {
      continue;
    }

    break;
  }

  LODWORD(v65) = *(a1 + 72) & 1;
LABEL_135:
  *(a1 + 72) = v65;
  *(a1 + 76) = 0;
LABEL_136:
  v70 = (a1 + 48);
  v71 = *(a1 + 48);
  if (v71 >= 2)
  {
    v72 = llvm::detail::DenseSetImpl<unsigned int,llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,1u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,llvm::DenseMapInfo<unsigned int,void>>::begin((a1 + 48));
    v73 = v72;
    v75 = v74;
    if (v71)
    {
      v76 = a1 + 60;
    }

    else
    {
      v76 = *(a1 + 56) + 4 * *(a1 + 64);
    }

    if (v76 == v72)
    {
      goto LABEL_151;
    }

    do
    {
      v77 = *v73;
      v78 = *(*a1 + 8 * v77);
      if (v78 && llvm::MDNode::classof(*(*a1 + 8 * v77)))
      {
        llvm::MDNode::resolveCycles(v78);
      }

      do
      {
        ++v73;
      }

      while (v73 != v75 && *v73 >= 0xFFFFFFFE);
    }

    while (v73 != v76);
    v71 = *v70;
    if (*v70 > 1)
    {
LABEL_151:
      v79 = 0;
      if ((v71 & 1) == 0)
      {
        goto LABEL_152;
      }

LABEL_150:
      v80 = (a1 + 56);
      v81 = 1;
LABEL_163:
      memset(v80, 255, 4 * v81);
      LODWORD(v81) = *v70 & 1;
    }

    else
    {
      if (!*(a1 + 52))
      {
        goto LABEL_202;
      }

      v79 = 1;
      if (v71)
      {
        goto LABEL_150;
      }

LABEL_152:
      v81 = *(a1 + 64);
      if (v81 > 2 * v71 && v81 >= 0x41)
      {
        v82 = 1 << (33 - __clz((v71 >> 1) - 1));
        if (v71 < 0x22)
        {
          v82 = 64;
        }

        if (v79)
        {
          v83 = 0;
        }

        else
        {
          v83 = v82;
        }

        if (v83 == v81)
        {
          *(a1 + 48) = 0;
          v84 = 4 * v81;
          v85 = *(a1 + 56);
        }

        else
        {
          v99 = (a1 + 56);
          v100 = 4;
          MEMORY[0x277C69E30](*(a1 + 56), 4);
          if (v83 < 2)
          {
            v102 = 1;
          }

          else
          {
            *(a1 + 48) &= ~1u;
            v100 = 4 * v83;
            v101 = operator new(v100, 4uLL);
            *(a1 + 56) = v101;
            *(a1 + 64) = v83;
            v102 = *(a1 + 48) & 1;
            if (v102)
            {
              v100 = 4;
            }

            else
            {
              v99 = v101;
            }
          }

          *(a1 + 48) = v102;
          *(a1 + 52) = 0;
          v85 = v99;
          v84 = v100;
        }

        memset(v85, 255, v84);
        goto LABEL_202;
      }

      if (v81)
      {
        v80 = *(a1 + 56);
        goto LABEL_163;
      }
    }

    *(a1 + 48) = v81;
    *(a1 + 52) = 0;
  }

LABEL_202:
  if (*(a2 + 40))
  {
    v109 = *(a2 + 32);
    do
    {
      v110 = *(*(a2 + 8) + ((v109 >> 5) & 0x7FFFFFFFFFFFFF8));
      v111 = v110 + 16 * v109;
      v112 = *(v111 + 4);
      if (*(a1 + 8) <= v112)
      {
        v113 = 0;
      }

      else
      {
        v113 = *(*a1 + 8 * v112);
      }

      v114 = *(v111 + 8);
      if (v114)
      {
        *v114 = v113;
        v115 = *(v111 + 8);
        if (*v115)
        {
          llvm::MetadataTracking::track(v115, *v115, 2);
        }

        v133[0] = v111;
        llvm::MetadataTracking::untrack(v133, v111);
        v109 = *(a2 + 32);
        v116 = v109;
        v110 = *(*(a2 + 8) + ((v109 >> 5) & 0x7FFFFFFFFFFFFF8));
      }

      else
      {
        v116 = v109;
      }

      v117 = *(v110 + 16 * v116 + 8);
      if (v117)
      {
        *v117 = 0;
      }

      v118 = *(a2 + 40) - 1;
      *(a2 + 32) = ++v109;
      *(a2 + 40) = v118;
      if (v109 >= 0x200)
      {
        operator delete(**(a2 + 8));
        *(a2 + 8) += 8;
        v118 = *(a2 + 40);
        v109 = *(a2 + 32) - 256;
        *(a2 + 32) = v109;
      }
    }

    while (v118);
  }

  return MEMORY[0x277C69E30](v129, 4);
}

void llvm::MetadataLoader::MetadataLoaderImpl::parseOneMetadata(llvm::Twine *a1, uint64_t a2, unsigned int **a3, int a4, uint64_t a5, const char *a6, unint64_t a7, _DWORD *a8)
{
  v8 = a1;
  v952 = *MEMORY[0x277D85DE8];
  v942 = 0;
  v941[0] = a2;
  v941[1] = &v942;
  v941[2] = a8;
  v941[3] = a5;
  switch(a4)
  {
    case 1:
      std::string::__init_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(&v947, *a3, &(*a3)[2 * *(a3 + 2)], *(a3 + 2));
      if (v948[0] >= 0)
      {
        v12 = &v947;
      }

      else
      {
        v12 = v947.n128_u64[0];
      }

      if (v948[0] >= 0)
      {
        v13 = SHIBYTE(v948[0]);
      }

      else
      {
        v13 = v947.n128_u64[1];
      }

      v14 = v13 >= 0x10 && v12->n128_u64[0] == 0x6365762E6D766C6CLL && v12->n128_u64[1] == 0x2E72657A69726F74;
      *(a2 + 1041) |= v14;
      v222 = *llvm::StringMap<llvm::MDString,llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::try_emplace<>((**(a2 + 208) + 312), v12, v13);
      if (v223)
      {
        *(v222 + 16) = v222;
      }

      ++*a8;
      if (SHIBYTE(v948[0]) < 0)
      {
        operator delete(v947.n128_u64[0]);
      }

      goto LABEL_1065;
    case 2:
      if (*(a3 + 2) != 2)
      {
        goto LABEL_272;
      }

      v141 = **a3;
      v142 = std::function<llvm::Type * ()>::operator()(*(a2 + 248), v141);
      v143 = v142[8];
      if (v143 == 9 || v143 == 7)
      {
        goto LABEL_272;
      }

      ValueFwdRef = llvm::BitcodeReaderValueList::getValueFwdRef(*(a2 + 192), (*a3)[2], v142, v141, 0);
      if (ValueFwdRef)
      {
        llvm::ValueAsMetadata::get(ValueFwdRef, v146);
        v947.n128_u64[0] = v147;
        llvm::MetadataLoader::MetadataLoaderImpl::callMDTypeCallback(a2, &v947, v141);
        v148 = v947.n128_u64[0];
LABEL_1063:
        v748 = *a8;
        v749 = a2;
LABEL_1064:
        ++*a8;
        goto LABEL_1065;
      }

      v93 = "Invalid value reference from metadata";
      goto LABEL_273;
    case 3:
      goto LABEL_124;
    case 4:
      v173 = *a3;
      v174 = &(*a3)[2 * *(a3 + 2)];
      v15 = &v945;
      v943 = &v945;
      v944 = xmmword_2750C12B0;
      llvm::SmallVectorImpl<char>::append<unsigned long long const*,void>(&v943, v173, v174);
      *(a3 + 2) = 0;
      llvm::BitstreamCursor::ReadCode(&v947, *(a2 + 200));
      if (v947.n128_u8[8])
      {
        v175 = v947.n128_u64[0];
        *v8 = v947.n128_u64[0];
        if (v175)
        {
          goto LABEL_229;
        }

        v176 = 4;
      }

      else
      {
        v176 = v947.n128_u32[0];
        *v8 = 0;
      }

      llvm::BitstreamCursor::readRecord(&v950, *(a2 + 200), v176, a3, 0);
      if ((v951 & 1) == 0)
      {
        if (v950 != 10)
        {
          v947.n128_u64[0] = "METADATA_NAME not followed by METADATA_NAMED_NODE";
          v949 = 259;
          error(v8, &v947);
        }

        v231 = *(a3 + 2);
        inserted = llvm::Module::getOrInsertNamedMetadata(*(a2 + 216), v943, v944);
        if (v231)
        {
          v233 = inserted;
          v234 = 0;
          v235 = 8 * v231;
          do
          {
            if (!MDNodeFwdRefOrNull)
            {
              v947.n128_u64[0] = "Invalid named metadata: expect fwd ref to MDNode";
              v949 = 259;
              error(v8, &v947);
            }

            v947.n128_u64[0] = MDNodeFwdRefOrNull;
            llvm::SmallVectorImpl<llvm::TrackingMDRef>::emplace_back<llvm::MDNode *&>(*(v233 + 48), &v947);
            v234 += 8;
          }

          while (v235 != v234);
        }

        v131 = v943;
        goto LABEL_134;
      }

      *v8 = v950;
LABEL_229:
      v32 = v943;
      if (v943 == &v945)
      {
        return;
      }

      goto LABEL_425;
    case 5:
      v942 = 1;
LABEL_124:
      v15 = v948;
      v947.n128_u64[0] = v948;
      v947.n128_u64[1] = 0x800000000;
      v127 = *(a3 + 2);
      if (v127 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v947, v948, v127, 8);
        LODWORD(v127) = *(a3 + 2);
      }

      if (v127)
      {
        v128 = *a3;
        v129 = 8 * v127;
        do
        {
          if (*v128)
          {
          }

          else
          {
            v130 = 0;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v947, v130);
          v128 += 2;
          v129 -= 8;
        }

        while (v129);
      }

      Impl = llvm::MDTuple::getImpl(*(a2 + 208), v947.n128_u64[0], v947.n128_u32[2], v942, 1);
      goto LABEL_133;
    case 6:
      llvm::MetadataLoader::MetadataLoaderImpl::parseMetadataKindRecord(a1, a2, *a3, *(a3 + 2));
      goto LABEL_102;
    case 7:
      if (*(a3 + 2) - 5 >= 2)
      {
        goto LABEL_272;
      }

      v103 = *a3;
      v942 = **a3 != 0;
      v104 = v103[2];
      v105 = v103[4];
      v107 = (*a3)[8];
      if (v107)
      {
      }

      else
      {
        v108 = 0;
      }

      v272 = *(a3 + 2) == 6 && *(*a3 + 5) != 0;
      v96 = llvm::DILocation::getImpl(*(a2 + 208), v104, v105, v106, v108, v272, v942, 1);
      goto LABEL_1062;
    case 8:
      v81 = *(a3 + 2);
      if (v81)
      {
        goto LABEL_272;
      }

      v947.n128_u64[0] = v948;
      v947.n128_u64[1] = 0x800000000;
      if (v81)
      {
        v82 = 0;
        while (1)
        {
          v83 = *&(*a3)[2 * v82];
          v84 = std::function<llvm::Type * ()>::operator()(*(a2 + 248), v83);
          if (!v84)
          {
            break;
          }

          v85 = v84[8];
          if (v85 == 7)
          {
            v86 = 0;
          }

          else if (v85 == 9)
          {
          }

          else
          {
            v87 = llvm::BitcodeReaderValueList::getValueFwdRef(*(a2 + 192), *&(*a3)[2 * (v82 + 1)], v84, v83, 0);
            if (!v87)
            {
              v343 = "Invalid value reference from old metadata";
LABEL_958:
              v943 = v343;
              v946 = 259;
              error(v8, &v943);
            }

            llvm::ValueAsMetadata::get(v87, v88);
            v943 = v89;
            llvm::MetadataLoader::MetadataLoaderImpl::callMDTypeCallback(a2, &v943, v83);
            v86 = v943;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v947, v86);
          v82 += 2;
          if (v81 == v82)
          {
            v90 = v947.n128_u64[0];
            v91 = v947.n128_u32[2];
            goto LABEL_308;
          }
        }

        v343 = "Invalid record";
        goto LABEL_958;
      }

      v91 = 0;
      v90 = v948;
LABEL_308:
      v271 = llvm::MDTuple::getImpl(*(a2 + 208), v90, v91, 0, 1);
      ++*a8;
      v131 = v947.n128_u64[0];
      if (v947.n128_u64[0] == v948)
      {
        goto LABEL_1065;
      }

      goto LABEL_135;
    case 9:
      v98 = *(a3 + 2);
      if (v98)
      {
        goto LABEL_272;
      }

      v943 = a2;
      *&v944 = a8;
      if (v98 != 2 || ((v99 = **a3, v100 = std::function<llvm::Type * ()>::operator()(*(a2 + 248), v99), v101 = v100[8], v101 != 7) ? (v102 = v101 == 9) : (v102 = 1), v102))
      {
        goto LABEL_1065;
      }

      v515 = llvm::BitcodeReaderValueList::getValueFwdRef(*(a2 + 192), (*a3)[2], v100, v99, 0);
      if (v515)
      {
        llvm::ValueAsMetadata::get(v515, v516);
        goto LABEL_1062;
      }

      v93 = "Invalid value reference from old fn metadata";
      goto LABEL_273;
    case 12:
      v39 = *(a3 + 2);
      if (v39 <= 3)
      {
        goto LABEL_272;
      }

      v40 = *a3;
      v942 = **a3 != 0;
      v41 = v40[2];
      if (HIWORD(v41) || v40[4] != 0)
      {
        goto LABEL_272;
      }

      v43 = v40[6];
      if (v43)
      {
        v39 = *(a3 + 2);
      }

      else
      {
        v44 = 0;
      }

      v947.n128_u64[0] = v948;
      v947.n128_u64[1] = 0x800000000;
      if (v39 == 4)
      {
        v461 = 0;
        v462 = v948;
      }

      else
      {
        for (i = 4; i != v39; ++i)
        {
          v464 = *&(*a3)[2 * i];
          if (v464)
          {
          }

          else
          {
            v465 = 0;
          }

          llvm::SmallVectorTemplateBase<void *,true>::push_back(&v947, v465);
        }

        v462 = v947.n128_u64[0];
        v461 = v947.n128_u32[2];
      }

      v466 = llvm::GenericDINode::getImpl(*(a2 + 208), v41, v44, v462, v461, v942, 1);
      ++*a8;
      v131 = v947.n128_u64[0];
      if (v947.n128_u64[0] == v948)
      {
        goto LABEL_1065;
      }

      goto LABEL_135;
    case 13:
      v94 = *a3;
      v95 = **a3 >> 1;
      switch(v95)
      {
        case 2:
          v256 = *(a2 + 208);
          v257 = *(v94 + 8);
          if (v257)
          {
            v94 = *a3;
          }

          else
          {
            v258 = 0;
          }

          v467 = *(v94 + 16);
          if (v467)
          {
            v94 = *a3;
          }

          else
          {
            v468 = 0;
          }

          v469 = *(v94 + 24);
          if (v469)
          {
            v94 = *a3;
          }

          else
          {
            v470 = 0;
          }

          v471 = *(v94 + 32);
          if (v471)
          {
          }

          else
          {
            v472 = 0;
          }

          v96 = llvm::DISubrange::getImpl(v256, v258, v468, v470, v472, 0, 1);
          goto LABEL_1062;
        case 1:
          v253 = *(a2 + 208);
          v254 = *(v94 + 8);
          if (v254)
          {
            v94 = *a3;
          }

          else
          {
            v255 = 0;
          }

          v96 = llvm::DISubrange::getImpl(v253, v255, -(*(v94 + 16) & 1) ^ (*(v94 + 16) >> 1), 0, 1);
          goto LABEL_1062;
        case 0:
          v96 = llvm::DISubrange::getImpl(*(a2 + 208), *(v94 + 8), -(*(v94 + 16) & 1) ^ (*(v94 + 16) >> 1), 0, 1);
LABEL_1062:
          v148 = v96;
          goto LABEL_1063;
      }

      v93 = "Invalid record: Unsupported version of DISubrange";
      goto LABEL_273;
    case 14:
      v149 = *(a3 + 2);
      if (v149 <= 2)
      {
        goto LABEL_272;
      }

      v150 = *a3;
      v152 = **a3;
      v151 = *(*a3 + 1);
      v942 = **a3 & 1;
      if ((v152 & 4) != 0)
      {
        llvm::readWideAPInt((v150 + 24), v149 - 3, v151, &v947);
        v153 = v947.n128_u64[0];
        v154 = *(a2 + 208);
        if (v942)
        {
          v940 = v947.n128_u32[2];
          if (v947.n128_u32[2] > 0x40)
          {
            operator new[]();
          }

LABEL_291:
          v939 = v153;
          v614 = (*a3)[4];
          if (v614)
          {
          }

          else
          {
            v615 = 0;
          }

          v616 = llvm::DIEnumerator::getImpl(v154, &v939, (v152 >> 1) & 1, v615, 1, 1);
          if (v940 < 0x41 || (v617 = v939) == 0)
          {
LABEL_828:
            ++*a8;
            goto LABEL_1065;
          }

LABEL_827:
          MEMORY[0x277C69E10](v617, 0x1000C8000313F17);
          goto LABEL_828;
        }

        v938 = v947.n128_u32[2];
        if (v947.n128_u32[2] > 0x40)
        {
          operator new[]();
        }
      }

      else
      {
        v153 = -(v151 & 1) ^ (v151 >> 1);
        v154 = *(a2 + 208);
        if (v152)
        {
          v940 = 64;
          goto LABEL_291;
        }

        v938 = 64;
      }

      v937 = v153;
      v618 = (*a3)[4];
      if (v618)
      {
      }

      else
      {
        v619 = 0;
      }

      v620 = llvm::DIEnumerator::getImpl(v154, &v937, (v152 >> 1) & 1, v619, 0, 1);
      if (v938 < 0x41)
      {
        goto LABEL_828;
      }

      v617 = v937;
      if (!v937)
      {
        goto LABEL_828;
      }

      goto LABEL_827;
    case 15:
      v132 = *(a3 + 2);
      if (v132 - 8 <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v133 = *a3;
      v134 = **a3;
      v942 = v134 != 0;
      if (v132 < 7)
      {
        v135 = 0;
      }

      else
      {
        v135 = *(v133 + 48);
      }

      v259 = *(a2 + 208);
      v260 = *(v133 + 8);
      v261 = *(v133 + 16);
      if (v134)
      {
        if (v261)
        {
          v133 = *a3;
        }

        else
        {
          v262 = 0;
        }

        v96 = llvm::DIBasicType::getImpl(v259, v260, v262, *(v133 + 24), *(v133 + 32), *(v133 + 40), v135, 1, 1);
      }

      else
      {
        if (v261)
        {
          v133 = *a3;
        }

        else
        {
          v277 = 0;
        }

        v96 = llvm::DIBasicType::getImpl(v259, v260, v277, *(v133 + 24), *(v133 + 32), *(v133 + 40), v135, 0, 1);
      }

      goto LABEL_1062;
    case 16:
      v55 = *(a3 + 2);
      if ((v55 - 5) < 2)
      {
        v56 = *a3;
        v57 = **a3;
        v942 = v57 != 0;
        v58 = *(v56 + 24);
        if (v58)
        {
          v59 = *(v56 + 32);
          if (v59)
          {
            if (v59)
            {
              v60 = v58 & 0xFFFFFF00;
              LODWORD(v58) = v58;
              v56 = *a3;
              v61 = 1;
              if ((v942 & 1) == 0)
              {
LABEL_59:
                v62 = *(a2 + 208);
                v63 = *(v56 + 8);
                if (v63)
                {
                  v56 = *a3;
                }

                else
                {
                  v64 = 0;
                }

                v429 = *(v56 + 16);
                if (v429)
                {
                }

                else
                {
                  v430 = 0;
                }

                v431 = v58 | v60;
                if (*(a3 + 2) >= 6u && (v432 = (*a3)[10]) != 0)
                {
                }

                else
                {
                  v334 = 0;
                }

                v947.n128_u32[0] = v431;
                v947.n128_u64[1] = v925;
                LOBYTE(v948[0]) = v61;
                v335 = v62;
                v336 = v64;
                v337 = v430;
                v338 = 0;
LABEL_533:
                v96 = llvm::DIFile::getImpl(v335, v336, v337, &v947, v334, v338, 1);
                goto LABEL_1062;
              }
            }

            else
            {
              v925 = 0;
              v60 = v58 & 0xFFFFFF00;
              LODWORD(v58) = *(v56 + 24);
              v61 = 1;
              if (!v57)
              {
                goto LABEL_59;
              }
            }

LABEL_256:
            v241 = *(a2 + 208);
            v242 = *(v56 + 8);
            if (v242)
            {
              v56 = *a3;
            }

            else
            {
              v243 = 0;
            }

            v330 = *(v56 + 16);
            if (v330)
            {
            }

            else
            {
              v331 = 0;
            }

            v332 = v58 | v60;
            if (*(a3 + 2) >= 6u && (v333 = (*a3)[10]) != 0)
            {
            }

            else
            {
              v334 = 0;
            }

            v947.n128_u32[0] = v332;
            v947.n128_u64[1] = v925;
            LOBYTE(v948[0]) = v61;
            v335 = v241;
            v336 = v243;
            v337 = v331;
            v338 = 1;
            goto LABEL_533;
          }
        }

        v60 = 0;
        LODWORD(v58) = 0;
        v61 = 0;
LABEL_255:
        if (!v57)
        {
          goto LABEL_59;
        }

        goto LABEL_256;
      }

      if (v55 == 3)
      {
        v60 = 0;
        LODWORD(v58) = 0;
        v61 = 0;
        v56 = *a3;
        v57 = **a3;
        v942 = v57 != 0;
        goto LABEL_255;
      }

      goto LABEL_272;
    case 17:
      v177 = *(a3 + 2);
      if (v177 - 16 <= 0xFFFFFFFB)
      {
        goto LABEL_272;
      }

      v178 = *a3;
      if (v177 < 0xD)
      {
        v182 = 0;
        v180 = 0;
        v181 = 0;
        v873 = 0;
        v915 = *(a3 + 2);
        v929 = 0;
        v903 = v915;
      }

      else
      {
        v179 = v178[12];
        v180 = v179 != 0;
        v903 = (v179 - 1) >> 8;
        if (v179)
        {
          v181 = v179 - 1;
        }

        else
        {
          v181 = 0;
        }

        if (v177 == 13)
        {
          v182 = 0;
          v873 = 0;
          v915 = 13;
          v929 = 0;
        }

        else
        {
          v354 = v178[13];
          v182 = v354 != 0;
          v915 = v354 >> 8;
          v929 = v354;
          if (v177 >= 0xF && (v355 = v178[14]) != 0 && v355)
          {
            v178 = *a3;
          }

          else
          {
            v873 = 0;
          }
        }
      }

      v433 = *v178;
      v942 = *v178 != 0;
      v881 = *(v178 + 20);
      v434 = *(v178 + 4);
      v894 = *(a2 + 208);
      v887 = *(v178 + 2);
      if (v433)
      {
        if (v434)
        {
          v178 = *a3;
        }

        else
        {
          v868 = 0;
        }

        v435 = *(v178 + 6);
        if (v435)
        {
          v178 = *a3;
        }

        else
        {
          v863 = 0;
        }

        v856 = *(v178 + 8);
        v436 = *(v178 + 10);
        v437 = v182;
        if (v436)
        {
        }

        else
        {
          v438 = 0;
        }

        v440 = (*a3)[12];
        v850 = v439;
        if (v440)
        {
        }

        else
        {
          v441 = 0;
        }

        v443 = *a3;
        v444 = *(*a3 + 7);
        v445 = *(v443 + 64);
        v446 = *(v443 + 72);
        v447 = 0x100000000;
        if (v180)
        {
          v448 = 0x100000000;
        }

        else
        {
          v448 = 0;
        }

        v449 = v181 | ((v903 & 0xFFFFFF) << 8) | v448;
        if (!v437)
        {
          v447 = 0;
        }

        v450 = v447 | v929 | ((*&v915 & 0xFFFFFFLL) << 8);
        v451 = *(v443 + 88);
        if (v451)
        {
        }

        else
        {
          v452 = 0;
        }

        v96 = llvm::DIDerivedType::getImpl(v894, v887, v868, v863, v856, v850, v442, v444, v445, v446, v449, v450, v881, v820, v873, 1u, 1);
      }

      else
      {
        if (v434)
        {
          v178 = *a3;
        }

        else
        {
          v869 = 0;
        }

        v584 = *(v178 + 6);
        if (v584)
        {
          v178 = *a3;
        }

        else
        {
          v864 = 0;
        }

        v858 = *(v178 + 8);
        v585 = *(v178 + 10);
        if (v585)
        {
        }

        else
        {
          v586 = 0;
        }

        v587 = (*a3)[12];
        v588 = v180;
        if (v587)
        {
        }

        else
        {
          v589 = 0;
        }

        v591 = *a3;
        v592 = *(*a3 + 7);
        v593 = *(v591 + 64);
        v594 = *(v591 + 72);
        v595 = 0x100000000;
        if (v588)
        {
          v596 = 0x100000000;
        }

        else
        {
          v596 = 0;
        }

        v597 = v181 | ((v903 & 0xFFFFFF) << 8) | v596;
        if (!v182)
        {
          v595 = 0;
        }

        v598 = v595 | v929 | ((*&v915 & 0xFFFFFFLL) << 8);
        v599 = *(v591 + 88);
        if (v599)
        {
        }

        else
        {
          v600 = 0;
        }

        v96 = llvm::DIDerivedType::getImpl(v894, v887, v869, v864, v858, v852, v590, v592, v593, v594, v597, v598, v881, v601, v873, 0, 1);
      }

      goto LABEL_1062;
    case 18:
      if ((*(a3 + 2) - 23) <= 0xFFFFFFF8)
      {
        goto LABEL_272;
      }

      v183 = *a3;
      v184 = **a3;
      v942 = v184 & 1;
      v185 = v183[2];
      v186 = v183[4];
      if (v186)
      {
        v183 = *a3;
      }

      else
      {
        v187 = 0;
      }

      v297 = v183[6];
      if (v297)
      {
        v183 = *a3;
      }

      else
      {
        v298 = 0;
      }

      v299 = v183[8];
      v300 = v183[10];
      if (v300)
      {
      }

      else
      {
        v301 = 0;
      }

      v303 = *a3;
      if (HIDWORD(*(*a3 + 8)))
      {
        goto LABEL_361;
      }

      v304 = v302;
      v861 = v185;
      v878 = *(*a3 + 8);
      v884 = *(v303 + 56);
      v918 = *(v303 + 80);
      v874 = *(v303 + 96);
      v305 = *(v303 + 120);
      if (v305)
      {
      }

      else
      {
        v931 = 0;
      }

      v857 = v184;
      v851 = v299;
      v844 = v304;
      v848 = v8;
      v840 = v298;
      if (*(a2 + 1044) == 1 && (byte_2815AA360 & 1) == 0 && v931 && v185 <= 0x17 && ((1 << v185) & 0x880014) != 0)
      {
        v473 = v918 | 4;
        if (!v187)
        {
          v482 = 0;
          v483 = 0;
          v870 = 0;
          v484 = 0;
          v481 = 0;
          v529 = 0;
          v532 = 0;
          v530 = 0;
          v531 = 0;
          v533 = 0;
          v534 = 0;
          v535 = v884;
          goto LABEL_1148;
        }

        v918 |= 4u;
        v474 = *(v187 + 1);
        v477 = *v474;
        v475 = v474 + 3;
        v476 = v477;
        if ((!v477 || (v478 = memchr(v475, 60, v476)) == 0 || v478 - v475 == -1 || v476 >= 5 && (*v475 == 1314149215 ? (v479 = v475[4] == 124) : (v479 = 0), v479)) && (v480 = (*a3)[28]) != 0)
        {
          v482 = 0;
          v483 = 0;
          v870 = 0;
          v484 = 0;
        }

        else
        {
          v482 = 0;
          v483 = 0;
          v870 = 0;
          v484 = 0;
          v481 = 0;
        }

        v529 = 0;
        v532 = 0;
        v530 = 0;
        v531 = 0;
        v533 = 0;
        v534 = 0;
        v535 = v884;
LABEL_1147:
        v473 = v918;
LABEL_1148:
        v924 = v473;
        v824 = v531;
        v828 = v534;
        v838 = v529;
        v900 = v484;
        v912 = v483;
        v817 = v535;
        v800 = v481;
        v801 = v532;
        v802 = llvm::DICompositeType::buildODRType(*(a2 + 208), v931, v861, v187, v840, v851, v844, v482, v817, v878, v483, v473, v870, v874, v484, v481, v529, v532, v530, v531, v533, v534);
        v803 = v851;
        v804 = v870;
        v805 = v840;
        v806 = v187;
        v807 = v874;
        v809 = v878;
        v808 = v884;
        v531 = v824;
        v534 = v828;
        v810 = v844;
        v811 = v924;
        v532 = v801;
        v529 = v838;
        v481 = v800;
        v812 = v802;
        v813 = v861;
        v484 = v900;
        v483 = v912;
        v814 = 1;
        if (v802)
        {
          goto LABEL_1152;
        }

LABEL_1151:
        v812 = llvm::DICompositeType::getImpl(*(a2 + 208), v813, v806, v805, v803, v810, v482, v808, v809, v483, v811, v804, v807, v484, v481, v931, v529, v532, v530, v531, v533, v534, v942, 1);
LABEL_1152:
        v8 = v848;
        if (v857 <= 1 && v814)
        {
        }

        v748 = *a8;
        v749 = a2;
        v148 = v812;
        goto LABEL_1064;
      }

      v485 = (*a3)[12];
      if (v485)
      {
      }

      else
      {
        v486 = 0;
      }

      v521 = *a3;
      v908 = *(*a3 + 9);
      v522 = (*a3)[22];
      if (v522)
      {
        v521 = *a3;
      }

      else
      {
        v523 = 0;
      }

      v870 = v523;
      v524 = *(v521 + 104);
      if (v524)
      {
      }

      else
      {
        v525 = 0;
      }

      v526 = (*a3)[28];
      if (v526)
      {
      }

      else
      {
        v481 = 0;
      }

      v527 = *(a3 + 2);
      if (v527 < 0x11)
      {
        v530 = 0;
        v531 = 0;
        v529 = 0;
        v532 = 0;
        v533 = 0;
        v534 = 0;
        v535 = v884;
        goto LABEL_1146;
      }

      v829 = v481;
      v528 = (*a3)[32];
      if (v528)
      {
        v527 = *(a3 + 2);
      }

      else
      {
        v529 = 0;
      }

      if (v527 < 0x12)
      {
        v532 = 0;
        v531 = 0;
        v530 = 0;
        v535 = v884;
        v481 = v829;
      }

      else
      {
        v837 = v529;
        v685 = (*a3)[34];
        if (v685)
        {
          v527 = *(a3 + 2);
        }

        else
        {
          v532 = 0;
        }

        v481 = v829;
        if (v527 < 0x14)
        {
          v531 = 0;
          v530 = 0;
          v535 = v884;
        }

        else
        {
          v827 = v532;
          v750 = *a3;
          v751 = (*a3)[36];
          if (v751)
          {
            v750 = *a3;
          }

          else
          {
            v530 = 0;
          }

          v787 = *(v750 + 152);
          if (v787)
          {
          }

          else
          {
            v531 = 0;
          }

          v535 = v884;
          v532 = v827;
          v481 = v829;
        }

        v529 = v837;
      }

      v788 = *(a3 + 2);
      if (v788 < 0x15)
      {
        v533 = 0;
      }

      else
      {
        v789 = (*a3)[40];
        if (v789)
        {
          v790 = v529;
          v791 = v530;
          v792 = v532;
          v793 = v531;
          v531 = v793;
          v532 = v792;
          v530 = v791;
          v529 = v790;
          v481 = v829;
          v533 = v794;
          v788 = *(a3 + 2);
        }

        else
        {
          v533 = 0;
        }

        if (v788 >= 0x16)
        {
          v795 = (*a3)[42];
          if (v795)
          {
            v796 = v529;
            v797 = v532;
            v798 = v531;
            v531 = v798;
            v532 = v797;
            v529 = v796;
            v481 = v829;
            v534 = v799;
            goto LABEL_1146;
          }
        }
      }

      v534 = 0;
LABEL_1146:
      v484 = v895;
      v483 = v908;
      v482 = v832;
      if (!v931)
      {
        v813 = v861;
        v814 = 0;
        v806 = v187;
        v805 = v840;
        v810 = v844;
        v808 = v535;
        v803 = v851;
        v809 = v878;
        v807 = v874;
        v811 = v918;
        v804 = v870;
        goto LABEL_1151;
      }

      goto LABEL_1147;
    case 19:
      v199 = *(a3 + 2);
      if (v199 - 5 <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v200 = *a3;
      v201 = **a3;
      if (v199 < 4)
      {
        v202 = 0;
      }

      else
      {
        v202 = *(v200 + 24);
      }

      v942 = v201 & 1;
      v263 = *(v200 + 8);
      v264 = *(v200 + 16);
      if (v264)
      {
      }

      else
      {
        v265 = 0;
      }

      if (v201 <= 1)
      {
      }

      v96 = llvm::DISubroutineType::getImpl(*(a2 + 208), v263, v202, v265, v942, 1);
      goto LABEL_1062;
    case 20:
      if ((*(a3 + 2) - 23) <= 0xFFFFFFF6)
      {
        goto LABEL_272;
      }

      v942 = 1;
      v194 = *(a2 + 208);
      v195 = *a3;
      v196 = (*a3)[2];
      v197 = (*a3)[4];
      if (v197)
      {
        v195 = *a3;
      }

      else
      {
        v198 = 0;
      }

      v306 = *(v195 + 24);
      if (v306)
      {
        v195 = *a3;
      }

      else
      {
        v307 = 0;
      }

      v308 = *(v195 + 40);
      v879 = *(v195 + 32);
      if (v308)
      {
        v195 = *a3;
      }

      else
      {
        v892 = 0;
      }

      v309 = *(v195 + 48);
      v310 = *(v195 + 56);
      if (v310)
      {
        v195 = *a3;
      }

      else
      {
        v875 = 0;
      }

      v311 = *(v195 + 64);
      v312 = *(v195 + 72);
      if (v312)
      {
        v195 = *a3;
      }

      else
      {
        v862 = 0;
      }

      v313 = *(v195 + 80);
      if (v313)
      {
        v195 = *a3;
      }

      else
      {
        v855 = 0;
      }

      v314 = *(v195 + 96);
      if (v314)
      {
        v195 = *a3;
      }

      else
      {
        v849 = 0;
      }

      v315 = *(v195 + 104);
      if (v315)
      {
      }

      else
      {
        v316 = 0;
      }

      v317 = *(a3 + 2);
      v932 = v196;
      v904 = v307;
      v919 = v198;
      v885 = v309;
      v867 = v311;
      if (v317 >= 0x10)
      {
        v319 = *a3;
        v320 = (*a3)[30];
        if (!v320)
        {
          v318 = 0;
          goto LABEL_621;
        }

        v321 = v194;
        v322 = v316;
        v316 = v322;
        v194 = v321;
        v318 = v323;
        v317 = *(a3 + 2);
      }

      else
      {
        v318 = 0;
      }

      if (v317 < 0xF)
      {
        v324 = v194;
        v325 = 0;
        v326 = 0;
        v327 = 0;
LABEL_623:
        v490 = 0;
        v491 = 0;
        v492 = 0;
        v493 = 1;
        goto LABEL_968;
      }

      v319 = *a3;
LABEL_621:
      v327 = *(v319 + 112);
      if (v317 < 0x11)
      {
        v324 = v194;
        v325 = 0;
        v326 = 0;
        goto LABEL_623;
      }

      v493 = *(v319 + 128) != 0;
      if (v317 == 17)
      {
        v324 = v194;
        v325 = 0;
        v326 = 0;
        v490 = 0;
      }

      else
      {
        v490 = *(v319 + 136) != 0;
        if (v317 >= 0x13)
        {
          v326 = *(v319 + 144);
          if (v317 != 19)
          {
            v491 = *(v319 + 152) != 0;
            if (v317 >= 0x15)
            {
              v839 = *(v319 + 112);
              v843 = v318;
              v847 = v316;
              v324 = v194;
              v815 = *(v319 + 160);
              if (v815)
              {
                v317 = *(a3 + 2);
              }

              else
              {
                v325 = 0;
              }

              if (v317 >= 0x16 && (v816 = (*a3)[42]) != 0)
              {
              }

              else
              {
                v492 = 0;
              }

              v318 = v843;
              v316 = v847;
              v327 = v839;
LABEL_968:
              *&v819 = v849;
              *(&v819 + 1) = v316;
              *&v818 = v862;
              *(&v818 + 1) = v855;
              v686 = llvm::DICompileUnit::getImpl(v324, v932, v919, v904, v879 != 0, v892, v885, v875, v867, v818, v819, v318, v327, v493, v490, v326, v491, v325, v492, 1u);
              ++*a8;
              v687 = (*a3)[22];
              if (v687)
              {
                if (MetadataFwdRef)
                {
                  v947.n128_u64[0] = v686;
                  v947.n128_u64[1] = MetadataFwdRef;
                  std::vector<std::pair<llvm::DICompileUnit *,llvm::Metadata *>>::emplace_back<std::pair<llvm::DICompileUnit *,llvm::Metadata *>>(a2 + 728, &v947);
                }
              }

              goto LABEL_1065;
            }

            v324 = v194;
            v325 = 0;
LABEL_967:
            v492 = 0;
            goto LABEL_968;
          }

          v324 = v194;
          v325 = 0;
        }

        else
        {
          v324 = v194;
          v325 = 0;
          v326 = 0;
        }
      }

      v491 = 0;
      goto LABEL_967;
    case 21:
      v33 = *(a3 + 2);
      if (v33 - 22 <= 0xFFFFFFFB)
      {
        goto LABEL_272;
      }

      v34 = *a3;
      v35 = **a3;
      if ((v35 & 4) != 0)
      {
        v251 = *(v34 + 88);
        v38 = (v251 & 0x200000) != 0 ? *(v34 + 72) | 0x100 : *(v34 + 72);
        v37 = (v251 & 0x200000) != 0 ? v251 & 0x3FDFFFFF : *(v34 + 88);
      }

      else
      {
        v36 = *(v34 + 104);
        v37 = (v36 & 0x200000) != 0 ? v36 & 0x3FDFFFFF : *(v34 + 104);
        v38 = ((v36 & 0x200000u) >> 13) | (4 * (*(v34 + 56) != 0)) | (8 * (*(v34 + 64) != 0)) | (16 * (*(v34 + 112) != 0)) | *(v34 + 88) & 3;
      }

      v942 = v35 & 1 | ((v38 & 8) != 0);
      if ((v35 & 6) == 4)
      {
        goto LABEL_272;
      }

      if ((v35 & 6) == 2)
      {
        if (v33 <= 0x12)
        {
          goto LABEL_272;
        }
      }

      else if ((v35 & 4) != 0)
      {
        v920 = v37;
        v340 = 0;
        v341 = 0;
        v886 = v33 > 0x12;
        v893 = v33 > 0x13;
        v342 = 1;
        v880 = 1;
        v905 = 1;
        goto LABEL_650;
      }

      v920 = v37;
      v893 = 0;
      v886 = 0;
      v339 = (v35 >> 1) & 1;
      v340 = 2;
      if (v33 < 0x13)
      {
        v341 = 2;
      }

      else
      {
        v341 = 3;
      }

      if (v33 < 0x13)
      {
        LOBYTE(v339) = 1;
      }

      v905 = v339;
      v880 = v33 > 0x13;
      v342 = v33 > 0x14;
LABEL_650:
      v510 = *(v34 + 8 * (v341 | 0xC));
      if (v510)
      {
        v34 = *a3;
        if (v942)
        {
LABEL_652:
          v876 = *(a2 + 208);
          v511 = *(v34 + 8);
          if (v511)
          {
          }

          else
          {
            v512 = 0;
          }

          v632 = *a3;
          v633 = (*a3)[4];
          if (v633)
          {
            v632 = *a3;
          }

          else
          {
            v865 = 0;
          }

          v636 = v632[6];
          if (v636)
          {
            v632 = *a3;
          }

          else
          {
            v859 = 0;
          }

          v638 = v632[8];
          if (v638)
          {
            v632 = *a3;
          }

          else
          {
            v853 = 0;
          }

          v845 = v632[10];
          v640 = v632[12];
          if (v640)
          {
            v632 = *a3;
          }

          else
          {
            v841 = 0;
          }

          v835 = v632[2 * v340 + 14];
          v642 = *&v632[2 * (v340 | 8)];
          if (v642)
          {
          }

          else
          {
            v643 = 0;
          }

          v646 = *a3;
          if (v880)
          {
            v882 = *(v646 + 8 * (v341 | 0x10));
          }

          else
          {
            LODWORD(v882) = 0;
          }

          v647 = v342;
          v830 = (*a3)[2 * v340 + 20];
          v648 = v935;
          if ((v35 & 2) == 0)
          {
            v648 = 0;
          }

          v825 = v648;
          v649 = v341;
          v650 = *(v646 + 8 * v341 + 104);
          if (v650)
          {
            v646 = *a3;
          }

          else
          {
            v822 = 0;
          }

          v656 = *(v646 + 8 * v341 + 112);
          if (v656)
          {
            v646 = *a3;
          }

          else
          {
            v657 = 0;
          }

          v660 = *(v646 + 8 * v341 + 120);
          if (v660)
          {
          }

          else
          {
            v661 = 0;
          }

          if (v647 && (v664 = (*a3)[2 * v649 + 34]) != 0)
          {
          }

          else
          {
            v665 = 0;
          }

          if (v886 && (v666 = (*a3)[2 * v649 + 36]) != 0)
          {
          }

          else
          {
            v667 = 0;
          }

          if (v893 && (v668 = (*a3)[2 * v649 + 38]) != 0)
          {
          }

          else
          {
            v669 = 0;
          }

          v670 = v905;
          v671 = llvm::DISubprogram::getImpl(v876, v871, v865, v859, v853, v845, v841, v835, v833, v830, v882, v920, v38, v825, v822, v657, v661, v665, v667, v669, 1u, 1);
LABEL_933:
          v678 = v671;
          ++*a8;
          if (v935)
          {
            v679 = v670;
          }

          else
          {
            v679 = 1;
          }

          if ((v679 & 1) == 0 && *v935 == 1)
          {
            v680 = *(*(v935 + 16) + 16) ? 0 : *(v935 + 16);
            v947.n128_u64[0] = v680;
            if (v680)
            {
              if (*(v680 + 35))
              {
                llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Function *,llvm::DISubprogram *,16u,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>,llvm::Function *,llvm::DISubprogram *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::DISubprogram *>>::FindAndConstruct((a2 + 752), &v947)[1] = v678;
              }

              else if (*(v680 + 72) != v680 + 72)
              {
                llvm::Value::setMetadata(v680, 0, v678);
              }
            }
          }

          goto LABEL_1065;
        }
      }

      else
      {
        v935 = 0;
        if ((v35 | ((v38 & 8) >> 3)))
        {
          goto LABEL_652;
        }
      }

      v877 = *(a2 + 208);
      v513 = *(v34 + 8);
      if (v513)
      {
      }

      else
      {
        v514 = 0;
      }

      v634 = *a3;
      v635 = (*a3)[4];
      if (v635)
      {
        v634 = *a3;
      }

      else
      {
        v866 = 0;
      }

      v637 = v634[6];
      if (v637)
      {
        v634 = *a3;
      }

      else
      {
        v860 = 0;
      }

      v639 = v634[8];
      if (v639)
      {
        v634 = *a3;
      }

      else
      {
        v854 = 0;
      }

      v846 = v634[10];
      v641 = v634[12];
      if (v641)
      {
        v634 = *a3;
      }

      else
      {
        v842 = 0;
      }

      v836 = v634[2 * v340 + 14];
      v644 = *&v634[2 * (v340 | 8)];
      if (v644)
      {
      }

      else
      {
        v645 = 0;
      }

      v651 = *a3;
      if (v880)
      {
        v883 = *(v651 + 8 * (v341 | 0x10));
      }

      else
      {
        LODWORD(v883) = 0;
      }

      v652 = v342;
      v831 = (*a3)[2 * v340 + 20];
      v653 = v935;
      if ((v35 & 2) == 0)
      {
        v653 = 0;
      }

      v826 = v653;
      v654 = v341;
      v655 = *(v651 + 8 * v341 + 104);
      if (v655)
      {
        v651 = *a3;
      }

      else
      {
        v823 = 0;
      }

      v658 = *(v651 + 8 * v341 + 112);
      if (v658)
      {
        v651 = *a3;
      }

      else
      {
        v659 = 0;
      }

      v662 = *(v651 + 8 * v341 + 120);
      if (v662)
      {
      }

      else
      {
        v663 = 0;
      }

      if (v652 && (v672 = (*a3)[2 * v654 + 34]) != 0)
      {
      }

      else
      {
        v673 = 0;
      }

      if (v886 && (v674 = (*a3)[2 * v654 + 36]) != 0)
      {
      }

      else
      {
        v675 = 0;
      }

      if (v893 && (v676 = (*a3)[2 * v654 + 38]) != 0)
      {
      }

      else
      {
        v677 = 0;
      }

      v670 = v905;
      v671 = llvm::DISubprogram::getImpl(v877, v872, v866, v860, v854, v846, v842, v836, v834, v831, v883, v920, v38, v826, v823, v659, v663, v673, v675, v677, 0, 1);
      goto LABEL_933;
    case 22:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v136 = *a3;
      v137 = **a3;
      v942 = v137 != 0;
      v138 = *(a2 + 208);
      v139 = v136[2];
      if (v137)
      {
        if (v139)
        {
          v136 = *a3;
        }

        else
        {
          v140 = 0;
        }

        v398 = v136[4];
        if (v398)
        {
          v136 = *a3;
        }

        else
        {
          v399 = 0;
        }

        v400 = v136[6];
        v401 = v136[8];
        v402 = v138;
        v403 = v140;
        v404 = 1;
      }

      else
      {
        if (v139)
        {
          v136 = *a3;
        }

        else
        {
          v278 = 0;
        }

        v582 = v136[4];
        if (v582)
        {
          v136 = *a3;
        }

        else
        {
          v399 = 0;
        }

        v400 = v136[6];
        v401 = v136[8];
        v402 = v138;
        v403 = v278;
        v404 = 0;
      }

      v96 = llvm::DILexicalBlock::getImpl(v402, v403, v399, v400, v401, v404, 1);
      goto LABEL_1062;
    case 23:
      if (*(a3 + 2) != 4)
      {
        goto LABEL_272;
      }

      v203 = *a3;
      v204 = **a3;
      v942 = v204 != 0;
      v205 = *(a2 + 208);
      v206 = v203[2];
      if (v204)
      {
        if (v206)
        {
          v203 = *a3;
        }

        else
        {
          v207 = 0;
        }

        v412 = v203[4];
        if (v412)
        {
          v203 = *a3;
        }

        else
        {
          v413 = 0;
        }

        v414 = v203[6];
        v415 = v205;
        v416 = v207;
        v417 = 1;
      }

      else
      {
        if (v206)
        {
          v203 = *a3;
        }

        else
        {
          v328 = 0;
        }

        v602 = v203[4];
        if (v602)
        {
          v203 = *a3;
        }

        else
        {
          v413 = 0;
        }

        v414 = v203[6];
        v415 = v205;
        v416 = v328;
        v417 = 0;
      }

      v96 = llvm::DILexicalBlockFile::getImpl(v415, v416, v413, v414, v417, 1);
      goto LABEL_1062;
    case 24:
      v51 = *(a3 + 2);
      if (v51 == 5)
      {
        v52 = *a3;
        v53 = (*a3)[6];
        if (v53)
        {
LABEL_53:
          v52 = *a3;
LABEL_249:
          v237 = *v52;
          v942 = *v52 & 1;
          v238 = *(a2 + 208);
          v239 = *(v52 + 2);
          if (v237)
          {
            if (v239)
            {
            }

            else
            {
              v240 = 0;
            }

            v346 = (v237 >> 1) & 1;
            v347 = v238;
            v348 = v54;
            v349 = 1;
          }

          else
          {
            if (v239)
            {
            }

            else
            {
              v240 = 0;
            }

            v346 = (v237 >> 1) & 1;
            v347 = v238;
            v348 = v54;
            v349 = 0;
          }

          v96 = llvm::DINamespace::getImpl(v347, v240, v348, v346, v349, 1);
          goto LABEL_1062;
        }
      }

      else
      {
        if (v51 != 3)
        {
LABEL_272:
          v93 = "Invalid record";
          goto LABEL_273;
        }

        v52 = *a3;
        v53 = (*a3)[4];
        if (v53)
        {
          goto LABEL_53;
        }
      }

      v54 = 0;
      goto LABEL_249;
    case 25:
      if ((*(a3 + 2) - 5) <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v122 = *a3;
      v123 = **a3;
      v942 = v123 != 0;
      v124 = *(a2 + 208);
      v125 = *(v122 + 8);
      if (v123)
      {
        if (v125)
        {
          v122 = *a3;
        }

        else
        {
          v126 = 0;
        }

        v389 = *(v122 + 16);
        if (v389)
        {
        }

        else
        {
          v390 = 0;
        }

        v394 = v124;
        v395 = v126;
        v396 = v391;
        v397 = 1;
      }

      else
      {
        if (v125)
        {
          v122 = *a3;
        }

        else
        {
          v276 = 0;
        }

        v578 = *(v122 + 16);
        if (v578)
        {
        }

        else
        {
          v579 = 0;
        }

        v394 = v124;
        v395 = v276;
        v396 = v580;
        v397 = 0;
      }

      v96 = llvm::DITemplateTypeParameter::getImpl(v394, v395, v396, v393, v397, 1);
      goto LABEL_1062;
    case 26:
      if ((*(a3 + 2) - 7) <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v75 = *a3;
      v76 = **a3;
      v942 = v76 != 0;
      v77 = *(a2 + 208);
      v78 = v75[2];
      v79 = v75[4];
      if (v76)
      {
        if (v79)
        {
          v75 = *a3;
        }

        else
        {
          v80 = 0;
        }

        v356 = v75[6];
        if (v356)
        {
        }

        else
        {
          v357 = 0;
        }

        if (*(a3 + 2) == 6)
        {
          v359 = *a3;
          v360 = (*a3)[8];
          if (!v360)
          {
            v361 = 0;
LABEL_833:
            v362 = *(v359 + 40);
            if (!v362)
            {
              goto LABEL_834;
            }

            goto LABEL_453;
          }

          if (*(a3 + 2) == 6)
          {
            v359 = *a3;
            goto LABEL_833;
          }
        }

        else
        {
          v361 = 0;
        }

        v362 = (*a3)[8];
        if (!v362)
        {
LABEL_834:
          v363 = 0;
          goto LABEL_835;
        }

LABEL_453:
LABEL_835:
        v621 = v77;
        v622 = v78;
        v623 = v80;
        v624 = v358;
        v625 = v361;
        v626 = 1;
        goto LABEL_975;
      }

      if (v79)
      {
        v75 = *a3;
      }

      else
      {
        v270 = 0;
      }

      v552 = v75[6];
      if (v552)
      {
      }

      else
      {
        v553 = 0;
      }

      if (*(a3 + 2) == 6)
      {
        v555 = *a3;
        v556 = (*a3)[8];
        if (!v556)
        {
          v557 = 0;
LABEL_972:
          v558 = *(v555 + 40);
          if (!v558)
          {
            goto LABEL_973;
          }

          goto LABEL_719;
        }

        if (*(a3 + 2) == 6)
        {
          v555 = *a3;
          goto LABEL_972;
        }
      }

      else
      {
        v557 = 0;
      }

      v558 = (*a3)[8];
      if (!v558)
      {
LABEL_973:
        v363 = 0;
LABEL_974:
        v621 = v77;
        v622 = v78;
        v623 = v270;
        v624 = v554;
        v625 = v557;
        v626 = 0;
LABEL_975:
        v96 = llvm::DITemplateValueParameter::getImpl(v621, v622, v623, v624, v625, v363, v626, 1);
        goto LABEL_1062;
      }

LABEL_719:
      goto LABEL_974;
    case 27:
      v155 = *(a3 + 2);
      if (v155 - 14 <= 0xFFFFFFFC)
      {
        goto LABEL_272;
      }

      v156 = *a3;
      v157 = **a3;
      v942 = v157 & 1;
      v158 = v157 >> 1;
      if ((v157 >> 1))
      {
        if (v158 == 1)
        {
          v350 = *(a2 + 208);
          v351 = v156[2];
          if (v157)
          {
            if (v351)
            {
              v156 = *a3;
            }

            else
            {
              v933 = 0;
            }

            v693 = v156[4];
            if (v693)
            {
              v156 = *a3;
            }

            else
            {
              v922 = 0;
            }

            v695 = v156[6];
            if (v695)
            {
              v156 = *a3;
            }

            else
            {
              v909 = 0;
            }

            v697 = v156[8];
            if (v697)
            {
              v156 = *a3;
            }

            else
            {
              v698 = 0;
            }

            v700 = v156[10];
            v701 = v156[12];
            if (v701)
            {
            }

            else
            {
              v702 = 0;
            }

            v706 = *a3;
            v707 = *(*a3 + 7);
            v708 = *(*a3 + 8);
            v709 = (*a3)[20];
            if (v709)
            {
              v706 = *a3;
            }

            else
            {
              v710 = 0;
            }

            v715 = v708 != 0;
            v716 = v707 != 0;
            v717 = *(v706 + 88);
            v821[4] = 1;
            *v821 = 1;
          }

          else
          {
            if (v351)
            {
              v156 = *a3;
            }

            else
            {
              v933 = 0;
            }

            v694 = v156[4];
            if (v694)
            {
              v156 = *a3;
            }

            else
            {
              v922 = 0;
            }

            v696 = v156[6];
            if (v696)
            {
              v156 = *a3;
            }

            else
            {
              v909 = 0;
            }

            v699 = v156[8];
            if (v699)
            {
              v156 = *a3;
            }

            else
            {
              v698 = 0;
            }

            v700 = v156[10];
            v703 = v156[12];
            if (v703)
            {
            }

            else
            {
              v704 = 0;
            }

            v711 = *a3;
            v712 = *(*a3 + 7);
            v713 = *(*a3 + 8);
            v714 = (*a3)[20];
            if (v714)
            {
              v711 = *a3;
            }

            else
            {
              v710 = 0;
            }

            v715 = v713 != 0;
            v716 = v712 != 0;
            v717 = *(v711 + 88);
            v821[4] = 1;
            *v821 = 0;
          }

          v96 = llvm::DIGlobalVariable::getImpl(v350, v933, v922, v909, v698, v700, v705, v716, v715, v710, 0, v717, 0, *v821, v821[4]);
          goto LABEL_1062;
        }

        if (v158 != 2)
        {
          goto LABEL_272;
        }

        if (v155 >= 0xD && (v159 = v156[24]) != 0)
        {
          v156 = *a3;
          if ((v942 & 1) == 0)
          {
LABEL_161:
            v914 = *(a2 + 208);
            v928 = v160;
            v161 = v156[2];
            if (v161)
            {
              v156 = *a3;
            }

            else
            {
              v902 = 0;
            }

            v718 = v156[4];
            if (v718)
            {
              v156 = *a3;
            }

            else
            {
              v896 = 0;
            }

            v720 = v156[6];
            if (v720)
            {
              v156 = *a3;
            }

            else
            {
              v888 = 0;
            }

            v722 = v156[8];
            if (v722)
            {
              v156 = *a3;
            }

            else
            {
              v723 = 0;
            }

            v726 = v156[10];
            v727 = v156[12];
            if (v727)
            {
            }

            else
            {
              v728 = 0;
            }

            v733 = *a3;
            v734 = *(*a3 + 7);
            v735 = *(*a3 + 8);
            v736 = (*a3)[18];
            if (v736)
            {
              v733 = *a3;
            }

            else
            {
              v737 = 0;
            }

            v744 = *(v733 + 80);
            if (v744)
            {
              v733 = *a3;
            }

            else
            {
              v745 = 0;
            }

            v96 = llvm::DIGlobalVariable::getImpl(v914, v902, v896, v888, v723, v726, v732, v734 != 0, v735 != 0, v737, v745, *(v733 + 88), v928, 0, 1);
            goto LABEL_1062;
          }
        }

        else
        {
          v160 = 0;
          if ((v157 & 1) == 0)
          {
            goto LABEL_161;
          }
        }

        v921 = *(a2 + 208);
        v934 = v160;
        v509 = v156[2];
        if (v509)
        {
          v156 = *a3;
        }

        else
        {
          v907 = 0;
        }

        v719 = v156[4];
        if (v719)
        {
          v156 = *a3;
        }

        else
        {
          v897 = 0;
        }

        v721 = v156[6];
        if (v721)
        {
          v156 = *a3;
        }

        else
        {
          v889 = 0;
        }

        v724 = v156[8];
        if (v724)
        {
          v156 = *a3;
        }

        else
        {
          v725 = 0;
        }

        v729 = v156[10];
        v730 = v156[12];
        if (v730)
        {
        }

        else
        {
          v731 = 0;
        }

        v739 = *a3;
        v740 = *(*a3 + 7);
        v741 = *(*a3 + 8);
        v742 = (*a3)[18];
        if (v742)
        {
          v739 = *a3;
        }

        else
        {
          v743 = 0;
        }

        v746 = *(v739 + 80);
        if (v746)
        {
          v739 = *a3;
        }

        else
        {
          v747 = 0;
        }

        v96 = llvm::DIGlobalVariable::getImpl(v921, v907, v897, v889, v725, v729, v738, v740 != 0, v741 != 0, v743, v747, *(v739 + 88), v934, 1, 1);
        goto LABEL_1062;
      }

      *(a2 + 1042) = 1;
      v352 = v156[18];
      if (v352)
      {
        v155 = *(a3 + 2);
      }

      else
      {
        v353 = 0;
      }

      if (v155 < 0xC)
      {
        LODWORD(v681) = 0;
LABEL_952:
        if (v353 && *v353 == 1)
        {
          v682 = *(v353 + 16);
          v683 = *(v682 + 16);
          if (v682 && v683 == 3)
          {
            v353 = 0;
            v684 = v682;
            goto LABEL_1084;
          }

          v353 = 0;
          v684 = 0;
          if (!v682 || v683 != 16)
          {
LABEL_1084:
            v754 = *a3;
            v755 = (*a3)[2];
            v923 = *(a2 + 208);
            v936 = v684;
            if (v942 == 1)
            {
              if (v755)
              {
                v754 = *a3;
              }

              else
              {
                v910 = 0;
              }

              v756 = v754[4];
              if (v756)
              {
                v754 = *a3;
              }

              else
              {
                v898 = 0;
              }

              v758 = v754[6];
              if (v758)
              {
                v754 = *a3;
              }

              else
              {
                v890 = 0;
              }

              v760 = v754[8];
              if (v760)
              {
                v754 = *a3;
              }

              else
              {
                v761 = 0;
              }

              v764 = v754[10];
              v765 = v754[12];
              if (v765)
              {
              }

              else
              {
                v766 = 0;
              }

              v771 = *a3;
              v772 = *(*a3 + 7);
              v773 = *(v771 + 64);
              v774 = *(v771 + 80);
              if (v774)
              {
              }

              else
              {
                v775 = 0;
              }

              v782 = llvm::DIGlobalVariable::getImpl(v923, v910, v898, v890, v761, v764, v770, v772 != 0, v773 != 0, v775, 0, v681, 0, 1, 1);
            }

            else
            {
              if (v755)
              {
                v754 = *a3;
              }

              else
              {
                v911 = 0;
              }

              v757 = v754[4];
              if (v757)
              {
                v754 = *a3;
              }

              else
              {
                v899 = 0;
              }

              v759 = v754[6];
              if (v759)
              {
                v754 = *a3;
              }

              else
              {
                v891 = 0;
              }

              v762 = v754[8];
              if (v762)
              {
                v754 = *a3;
              }

              else
              {
                v763 = 0;
              }

              v767 = v754[10];
              v768 = v754[12];
              if (v768)
              {
              }

              else
              {
                v769 = 0;
              }

              v777 = *a3;
              v778 = *(*a3 + 7);
              v779 = *(v777 + 64);
              v780 = *(v777 + 80);
              if (v780)
              {
              }

              else
              {
                v781 = 0;
              }

              v782 = llvm::DIGlobalVariable::getImpl(v923, v911, v899, v891, v763, v767, v776, v778 != 0, v779 != 0, v781, 0, v681, 0, 0, 1);
            }

            v783 = v782;
            if (!(v936 | v353))
            {
              goto LABEL_1129;
            }

            v784 = *(a2 + 208);
            v785 = v353;
            if (!v353)
            {
              v785 = llvm::DIExpression::getImpl(*(a2 + 208), 0, 0, 0, 1);
            }

            v786 = llvm::DIGlobalVariableExpression::getImpl(v784, v783, v785, 1, 1);
            if (v936)
            {
              llvm::Value::addMetadata(v936, 0, v786);
            }

            if (!v353)
            {
LABEL_1129:
              v786 = v783;
            }

            v748 = *a8;
            v749 = a2;
            v148 = v786;
            goto LABEL_1064;
          }

          v752 = *(a2 + 208);
          v947.n128_u64[0] = 16;
          v753 = (v682 + 24);
          if (*(v682 + 32) >= 0x41u)
          {
            v753 = *v753;
          }

          v947.n128_u64[1] = *v753;
          v948[0] = 159;
          v353 = llvm::DIExpression::getImpl(v752, &v947, 3, 0, 1);
        }

        v684 = 0;
        goto LABEL_1084;
      }

      v681 = *(*a3 + 11);
      if (!HIDWORD(v681))
      {
        goto LABEL_952;
      }

      goto LABEL_361;
    case 28:
      v65 = *(a3 + 2);
      if (v65 - 11 <= 0xFFFFFFFC)
      {
        goto LABEL_272;
      }

      v66 = *a3;
      v67 = **a3;
      v942 = **a3 & 1;
      if ((v67 & 2) == 0)
      {
        LODWORD(v68) = 0;
        v69 = v65 > 8;
        v70 = v65 > 8;
        v71 = 56;
        if (v69)
        {
          v71 = 64;
        }

        v913 = 0;
        LODWORD(v926) = *(v66 + v71);
        if (v67)
        {
          goto LABEL_66;
        }

LABEL_644:
        v906 = *(a2 + 208);
        v506 = v70;
        v507 = *(v66 + 8 * v70 + 8);
        if (v507)
        {
          v66 = *a3;
        }

        else
        {
          v508 = 0;
        }

        v538 = *(v66 + 8 * (v506 | 2));
        if (v538)
        {
          v66 = *a3;
        }

        else
        {
          v539 = 0;
        }

        v542 = *(v66 + 8 * v506 + 24);
        if (v542)
        {
          v66 = *a3;
        }

        else
        {
          v543 = 0;
        }

        v547 = *(v66 + 8 * (v506 | 4));
        v548 = *(v66 + 8 * v506 + 40);
        if (v548)
        {
        }

        else
        {
          v549 = 0;
        }

        v96 = llvm::DILocalVariable::getImpl(v906, v508, v539, v543, v547, v551, *&(*a3)[2 * (v506 | 6)], v926, v68, v913, 0, 1);
        goto LABEL_1062;
      }

      v68 = *(v66 + 64);
      if (HIDWORD(v68))
      {
LABEL_361:
        v93 = "Alignment value is too large";
LABEL_273:
        v947.n128_u64[0] = v93;
        v949 = 259;
        error(v8, &v947);
      }

      v926 = *(v66 + 56);
      if (v65 >= 0xA && (v252 = *(v66 + 72)) != 0)
      {
        v70 = 0;
        v66 = *a3;
        if ((v942 & 1) == 0)
        {
          goto LABEL_644;
        }
      }

      else
      {
        v913 = 0;
        v70 = 0;
        if ((v67 & 1) == 0)
        {
          goto LABEL_644;
        }
      }

LABEL_66:
      v901 = *(a2 + 208);
      v72 = v70;
      v73 = *(v66 + 8 * v70 + 8);
      if (v73)
      {
        v66 = *a3;
      }

      else
      {
        v74 = 0;
      }

      v536 = *(v66 + 8 * (v72 | 2));
      if (v536)
      {
        v66 = *a3;
      }

      else
      {
        v537 = 0;
      }

      v540 = *(v66 + 8 * v72 + 24);
      if (v540)
      {
        v66 = *a3;
      }

      else
      {
        v541 = 0;
      }

      v544 = *(v66 + 8 * (v72 | 4));
      v545 = *(v66 + 8 * v72 + 40);
      if (v545)
      {
      }

      else
      {
        v546 = 0;
      }

      v96 = llvm::DILocalVariable::getImpl(v901, v74, v537, v541, v544, v550, *&(*a3)[2 * (v72 | 6)], v926, v68, v913, 1, 1);
      goto LABEL_1062;
    case 29:
      v29 = *(a3 + 2);
      if (!v29)
      {
        goto LABEL_272;
      }

      v30 = *a3 + 2;
      v31 = **a3;
      v942 = **a3 & 1;
      v943 = v30;
      *&v944 = v29 - 1;
      v947.n128_u64[0] = v948;
      v947.n128_u64[1] = 0x600000000;
      llvm::MetadataLoader::MetadataLoaderImpl::upgradeDIExpression(a1, a2, v31 >> 1, &v943, &v947);
      if (*v8)
      {
        v32 = v947.n128_u64[0];
        if (v947.n128_u64[0] != v948)
        {
LABEL_425:
          free(v32);
        }

        return;
      }

      v267 = llvm::DIExpression::getImpl(*(a2 + 208), v943, v944, v942, 1);
      ++*a8;
      v131 = v947.n128_u64[0];
      if (v947.n128_u64[0] != v948)
      {
        goto LABEL_135;
      }

      goto LABEL_1065;
    case 30:
      if (*(a3 + 2) != 8)
      {
        goto LABEL_272;
      }

      v208 = *a3;
      v209 = **a3;
      v942 = v209 != 0;
      v210 = *(a2 + 208);
      v211 = v208[2];
      if (v209)
      {
        if (v211)
        {
          v208 = *a3;
        }

        else
        {
          v212 = 0;
        }

        v418 = v208[4];
        if (v418)
        {
          v208 = *a3;
        }

        else
        {
          v419 = 0;
        }

        v420 = v208[6];
        v421 = v208[8];
        if (v421)
        {
          v208 = *a3;
        }

        else
        {
          v422 = 0;
        }

        v423 = v208[10];
        if (v423)
        {
          v208 = *a3;
        }

        else
        {
          v424 = 0;
        }

        v425 = v208[12];
        v426 = v208[14];
        if (v426)
        {
        }

        else
        {
          v427 = 0;
        }

        v96 = llvm::DIObjCProperty::getImpl(v210, v212, v419, v420, v422, v424, v425, v428, 1, 1);
      }

      else
      {
        if (v211)
        {
          v208 = *a3;
        }

        else
        {
          v329 = 0;
        }

        v603 = v208[4];
        if (v603)
        {
          v208 = *a3;
        }

        else
        {
          v604 = 0;
        }

        v605 = v208[6];
        v606 = v208[8];
        if (v606)
        {
          v208 = *a3;
        }

        else
        {
          v607 = 0;
        }

        v608 = v208[10];
        if (v608)
        {
          v208 = *a3;
        }

        else
        {
          v609 = 0;
        }

        v610 = v208[12];
        v611 = v208[14];
        if (v611)
        {
        }

        else
        {
          v612 = 0;
        }

        v96 = llvm::DIObjCProperty::getImpl(v210, v329, v604, v605, v607, v609, v610, v613, 0, 1);
      }

      goto LABEL_1062;
    case 31:
      v97 = *(a3 + 2);
      if (v97 - 9 > 0xFFFFFFFC)
      {
        v217 = *a3;
        v218 = **a3;
        v942 = v218 != 0;
        v219 = *(a2 + 208);
        v930 = v217[2];
        v220 = v217[4];
        if (v218)
        {
          if (v220)
          {
            v217 = *a3;
          }

          else
          {
            v916 = 0;
          }

          v364 = v217[6];
          if (v364)
          {
          }

          else
          {
            v365 = 0;
          }

          v367 = *a3;
          if (v97 < 7)
          {
            v369 = 0;
            v370 = 0;
          }

          else
          {
            v368 = v367[12];
            if (v368)
            {
              v367 = *a3;
            }

            else
            {
              v369 = 0;
            }

            v370 = v367[8];
          }

          v627 = v219;
          v628 = v367[10];
          if (v628)
          {
          }

          else
          {
            v629 = 0;
          }

          if (v97 >= 8 && (v630 = (*a3)[14]) != 0)
          {
          }

          else
          {
            v631 = 0;
          }

          v96 = llvm::DIImportedEntity::getImpl(v627, v930, v916, v366, v369, v370, v629, v631, 1, 1);
        }

        else
        {
          if (v220)
          {
            v217 = *a3;
          }

          else
          {
            v917 = 0;
          }

          v559 = v217[6];
          if (v559)
          {
          }

          else
          {
            v560 = 0;
          }

          v562 = *a3;
          if (v97 < 7)
          {
            v564 = 0;
            v565 = 0;
          }

          else
          {
            v563 = v562[12];
            if (v563)
            {
              v562 = *a3;
            }

            else
            {
              v564 = 0;
            }

            v565 = v562[8];
          }

          v689 = v562[10];
          if (v689)
          {
          }

          else
          {
            v690 = 0;
          }

          if (v97 >= 8 && (v691 = (*a3)[14]) != 0)
          {
          }

          else
          {
            v692 = 0;
          }

          v96 = llvm::DIImportedEntity::getImpl(v219, v930, v917, v561, v564, v565, v690, v692, 0, 1);
        }

        goto LABEL_1062;
      }

      v93 = "Invalid DIImportedEntity record";
      goto LABEL_273;
    case 32:
      v109 = *(a3 + 2);
      if (v109 - 10 <= 0xFFFFFFFA)
      {
        goto LABEL_272;
      }

      if (v109 <= 7)
      {
        v110 = 1;
      }

      else
      {
        v110 = 2;
      }

      v111 = *a3;
      v112 = **a3;
      v942 = v112 != 0;
      v927 = *(a2 + 208);
      if (v112)
      {
        if (v109 >= 8 && (v113 = *(v111 + 8)) != 0)
        {
          v111 = *a3;
        }

        else
        {
          v114 = 0;
        }

        v268 = *(v111 + 8 * v110);
        if (v268)
        {
          v111 = *a3;
        }

        else
        {
          v269 = 0;
        }

        v371 = *(v111 + 8 * v110 + 8);
        if (v371)
        {
          v111 = *a3;
        }

        else
        {
          v372 = 0;
        }

        v373 = *(v111 + 8 * v110 + 16);
        if (v373)
        {
          v111 = *a3;
        }

        else
        {
          v374 = 0;
        }

        v375 = *(v111 + 8 * v110 + 24);
        if (v375)
        {
          v111 = *a3;
        }

        else
        {
          v376 = 0;
        }

        v377 = *(v111 + 8 * (v110 | 4));
        if (v377)
        {
        }

        else
        {
          v378 = 0;
        }

        v379 = *(a3 + 2);
        if (v379 >= 8)
        {
          v380 = (*a3)[14];
          if (v379 != 8)
          {
            v381 = *(*a3 + 8) != 0;
            goto LABEL_660;
          }
        }

        else
        {
          v380 = 0;
        }

        v381 = 0;
LABEL_660:
        v96 = llvm::DIModule::getImpl(v927, v114, v269, v372, v374, v376, v378, v380, v381, 1, 1);
        goto LABEL_1062;
      }

      if (v109 >= 8 && (v273 = *(v111 + 8)) != 0)
      {
        v111 = *a3;
      }

      else
      {
        v274 = 0;
      }

      v344 = *(v111 + 8 * v110);
      if (v344)
      {
        v111 = *a3;
      }

      else
      {
        v345 = 0;
      }

      v566 = *(v111 + 8 * v110 + 8);
      if (v566)
      {
        v111 = *a3;
      }

      else
      {
        v567 = 0;
      }

      v568 = *(v111 + 8 * v110 + 16);
      if (v568)
      {
        v111 = *a3;
      }

      else
      {
        v569 = 0;
      }

      v570 = *(v111 + 8 * v110 + 24);
      if (v570)
      {
        v111 = *a3;
      }

      else
      {
        v571 = 0;
      }

      v572 = *(v111 + 8 * (v110 | 4));
      if (v572)
      {
      }

      else
      {
        v573 = 0;
      }

      v574 = *(a3 + 2);
      if (v574 >= 8)
      {
        v575 = (*a3)[14];
        if (v574 != 8)
        {
          v576 = *(*a3 + 8) != 0;
          goto LABEL_946;
        }
      }

      else
      {
        v575 = 0;
      }

      v576 = 0;
LABEL_946:
      v96 = llvm::DIModule::getImpl(v927, v274, v345, v567, v569, v571, v573, v575, v576, 0, 1);
      goto LABEL_1062;
    case 33:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v166 = *a3;
      v167 = **a3;
      v942 = v167 != 0;
      v168 = *(a2 + 208);
      v169 = v166[2];
      v170 = v166[4];
      v171 = v166[6];
      if (v167)
      {
        if (v171)
        {
          v166 = *a3;
        }

        else
        {
          v172 = 0;
        }

        v405 = v166[8];
        if (v405)
        {
        }

        else
        {
          v406 = 0;
        }

        v407 = v168;
        v408 = v169;
        v409 = v170;
        v410 = v172;
        v411 = 1;
      }

      else
      {
        if (v171)
        {
          v166 = *a3;
        }

        else
        {
          v296 = 0;
        }

        v583 = v166[8];
        if (v583)
        {
        }

        else
        {
          v406 = 0;
        }

        v407 = v168;
        v408 = v169;
        v409 = v170;
        v410 = v296;
        v411 = 0;
      }

      v96 = llvm::DIMacro::getImpl(v407, v408, v409, v410, v406, v411, 1);
      goto LABEL_1062;
    case 34:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v115 = *a3;
      v116 = **a3;
      v942 = v116 != 0;
      v117 = *(a2 + 208);
      v118 = v115[2];
      v119 = v115[4];
      v120 = v115[6];
      if (v116)
      {
        if (v120)
        {
          v115 = *a3;
        }

        else
        {
          v121 = 0;
        }

        v382 = v115[8];
        if (v382)
        {
        }

        else
        {
          v383 = 0;
        }

        v384 = v117;
        v385 = v118;
        v386 = v119;
        v387 = v121;
        v388 = 1;
      }

      else
      {
        if (v120)
        {
          v115 = *a3;
        }

        else
        {
          v275 = 0;
        }

        v577 = v115[8];
        if (v577)
        {
        }

        else
        {
          v383 = 0;
        }

        v384 = v117;
        v385 = v118;
        v386 = v119;
        v387 = v275;
        v388 = 0;
      }

      v96 = llvm::DIMacroFile::getImpl(v384, v385, v386, v387, v383, v388, 1);
      goto LABEL_1062;
    case 35:
      v947.n128_u64[0] = a2;
      v947.n128_u64[1] = a8;
      goto LABEL_102;
    case 36:
      v45 = *(a3 + 2);
      if ((v45 & 1) == 0)
      {
        goto LABEL_272;
      }

      v46 = **a3;
      v47 = **(a2 + 192);
      if (((*(*(a2 + 192) + 8) - v47) >> 5) <= v46)
      {
        goto LABEL_272;
      }

      v48 = *(v47 + 32 * v46 + 16);
      v49 = v48[16];
      if (v49 > 3 || v49 == 1)
      {
        goto LABEL_1065;
      }

      llvm::MetadataLoader::MetadataLoaderImpl::parseGlobalObjectAttachment(a1, a2, v48, (*a3 + 2), v45 - 1);
LABEL_102:
      if (!*v8)
      {
        goto LABEL_1065;
      }

      return;
    case 37:
      if (*(a3 + 2) != 3)
      {
        goto LABEL_272;
      }

      v188 = *a3;
      v942 = **a3 != 0;
      v189 = *(v188 + 16);
      {
        v190 = llvm::DIExpression::getImpl(*(a2 + 208), 0, 0, 0, 1);
      }

      v191 = *(a2 + 208);
      v192 = (*a3)[2];
      if (v942 == 1)
      {
        if (v192)
        {
        }

        else
        {
          v193 = 0;
        }

        v487 = v191;
        v488 = v190;
        v489 = 1;
      }

      else
      {
        if (v192)
        {
        }

        else
        {
          v193 = 0;
        }

        v487 = v191;
        v488 = v190;
        v489 = 0;
      }

      v96 = llvm::DIGlobalVariableExpression::getImpl(v487, v193, v488, v489, 1);
      goto LABEL_1062;
    case 40:
      if (*(a3 + 2) != 5)
      {
        goto LABEL_272;
      }

      v213 = *a3;
      v942 = **a3 & 1;
      v214 = *(a2 + 208);
      v215 = v213[2];
      if (v942)
      {
        if (v215)
        {
          v213 = *a3;
        }

        else
        {
          v266 = 0;
        }

        v496 = v213[4];
        if (v496)
        {
          v213 = *a3;
        }

        else
        {
          v497 = 0;
        }

        v500 = v213[6];
        if (v500)
        {
          v213 = *a3;
        }

        else
        {
          v499 = 0;
        }

        v501 = v213[8];
        v502 = v214;
        v503 = v266;
        v504 = v497;
        v505 = 1;
      }

      else
      {
        if (v215)
        {
          v213 = *a3;
        }

        else
        {
          v216 = 0;
        }

        v494 = v213[4];
        if (v494)
        {
          v213 = *a3;
        }

        else
        {
          v495 = 0;
        }

        v498 = v213[6];
        if (v498)
        {
          v213 = *a3;
        }

        else
        {
          v499 = 0;
        }

        v501 = v213[8];
        v502 = v214;
        v503 = v216;
        v504 = v495;
        v505 = 0;
      }

      v96 = llvm::DILabel::getImpl(v502, v503, v504, v499, v501, v505, 1);
      goto LABEL_1062;
    case 41:
      v25 = *(a3 + 2);
      if ((v25 - 10) <= 0xFFFFFFFD)
      {
        goto LABEL_272;
      }

      v26 = *a3;
      v27 = **a3;
      v942 = v27 != 0;
      if (v25 == 8)
      {
        v28 = 5;
      }

      else
      {
        v245 = v26[10];
        if (v245)
        {
          v26 = *a3;
          v28 = 6;
          if (v942)
          {
LABEL_561:
            v453 = *(a2 + 208);
            v454 = v26[2];
            v455 = v26[4];
            if (v455)
            {
              v26 = *a3;
            }

            else
            {
              v456 = 0;
            }

            v457 = v26[6];
            if (v457)
            {
              v26 = *a3;
            }

            else
            {
              v458 = 0;
            }

            v459 = v26[8];
            if (v459)
            {
              v26 = *a3;
            }

            else
            {
              v460 = 0;
            }

            v96 = llvm::DIStringType::getImpl(v453, v454, v456, v458, v460, v246, *&v26[2 * v28], v26[2 * v28 + 2], *&v26[2 * v28 + 4], 1, 1);
            goto LABEL_1062;
          }

LABEL_261:
          v247 = *(a2 + 208);
          v248 = v26[2];
          v249 = v26[4];
          if (v249)
          {
            v26 = *a3;
          }

          else
          {
            v250 = 0;
          }

          v517 = v26[6];
          if (v517)
          {
            v26 = *a3;
          }

          else
          {
            v518 = 0;
          }

          v519 = v26[8];
          if (v519)
          {
            v26 = *a3;
          }

          else
          {
            v520 = 0;
          }

          v96 = llvm::DIStringType::getImpl(v247, v248, v250, v518, v520, v246, *&v26[2 * v28], v26[2 * v28 + 2], *&v26[2 * v28 + 4], 0, 1);
          goto LABEL_1062;
        }

        v28 = 6;
      }

      v246 = 0;
      if (v27)
      {
        goto LABEL_561;
      }

      goto LABEL_261;
    case 44:
      v162 = *a3;
      v942 = **a3 & 1;
      v163 = *(a2 + 208);
      v164 = v162[2];
      if (v942)
      {
        if (v164)
        {
          v162 = *a3;
        }

        else
        {
          v224 = 0;
        }

        v281 = v162[4];
        if (v281)
        {
          v162 = *a3;
        }

        else
        {
          v282 = 0;
        }

        v285 = v162[6];
        if (v285)
        {
          v162 = *a3;
        }

        else
        {
          v286 = 0;
        }

        v289 = v162[8];
        if (v289)
        {
          v162 = *a3;
        }

        else
        {
          v288 = 0;
        }

        v290 = v162[10];
        v291 = v163;
        v292 = v224;
        v293 = v282;
        v294 = v286;
        v295 = 1;
      }

      else
      {
        if (v164)
        {
          v162 = *a3;
        }

        else
        {
          v165 = 0;
        }

        v279 = v162[4];
        if (v279)
        {
          v162 = *a3;
        }

        else
        {
          v280 = 0;
        }

        v283 = v162[6];
        if (v283)
        {
          v162 = *a3;
        }

        else
        {
          v284 = 0;
        }

        v287 = v162[8];
        if (v287)
        {
          v162 = *a3;
        }

        else
        {
          v288 = 0;
        }

        v290 = v162[10];
        v291 = v163;
        v292 = v165;
        v293 = v280;
        v294 = v284;
        v295 = 0;
      }

      v96 = llvm::DICommonBlock::getImpl(v291, v292, v293, v294, v288, v290, v295, 1);
      goto LABEL_1062;
    case 45:
      v21 = *(a2 + 208);
      v22 = *a3;
      v23 = (*a3)[2];
      if (v23)
      {
        v22 = *a3;
      }

      else
      {
        v24 = 0;
      }

      v225 = v22[4];
      if (v225)
      {
        v22 = *a3;
      }

      else
      {
        v226 = 0;
      }

      v227 = v22[6];
      if (v227)
      {
        v22 = *a3;
      }

      else
      {
        v228 = 0;
      }

      v229 = v22[8];
      if (v229)
      {
      }

      else
      {
        v230 = 0;
      }

      v96 = llvm::DIGenericSubrange::getImpl(v21, v24, v226, v228, v230, 0, 1);
      goto LABEL_1062;
    case 46:
      v15 = v948;
      v947.n128_u64[0] = v948;
      v947.n128_u64[1] = 0x400000000;
      v16 = *(a3 + 2);
      if (v16 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v947, v948, v16, 8);
        LODWORD(v16) = *(a3 + 2);
      }

      if (!v16)
      {
        goto LABEL_19;
      }

      v17 = *a3;
      v18 = 8 * v16;
      break;
    case 47:
      if (*(a3 + 2) == 1)
      {
        v92 = **a3;
        v942 = **a3 & 1;
        if (v92)
        {
          v96 = llvm::DIAssignID::getImpl(*(a2 + 208), 1);
          goto LABEL_1062;
        }

        v93 = "Invalid DIAssignID record. Must be distinct";
      }

      else
      {
        v93 = "Invalid DIAssignID record.";
      }

      goto LABEL_273;
    default:
      goto LABEL_1065;
  }

  do
  {
    if (llvm::MDNode::classof(v19) && (*(v19 + 1) & 0x7F) == 2)
    {
      v244 = "Invalid record: DIArgList should not contain forward refs";
LABEL_423:
      v943 = v244;
      v946 = 259;
      error(v8, &v943);
    }

    if (*v19 - 1 >= 2)
    {
      v244 = "Invalid record";
      goto LABEL_423;
    }

    llvm::SmallVectorTemplateBase<void *,true>::push_back(&v947, v19);
    v17 += 2;
    v18 -= 8;
  }

  while (v18);
LABEL_19:
  Impl = llvm::DIArgList::getImpl(*(a2 + 208), v947.n128_u64[0], v947.n128_u32[2], 0, 1);
LABEL_133:
  ++*a8;
  v131 = v947.n128_u64[0];
LABEL_134:
  if (v131 != v15)
  {
LABEL_135:
    free(v131);
  }

LABEL_1065:
  *v8 = 0;
}