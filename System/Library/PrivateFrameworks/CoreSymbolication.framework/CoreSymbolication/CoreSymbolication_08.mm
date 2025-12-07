uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v9 = *a1;
  v10 = *a5;
  v11 = *(*a2 + 12);
  v12 = *(*a1 + 12);
  v13 = strcmp((*a5 + v11), (*a5 + v12));
  v14 = a3;
  v15 = *a3;
  v16 = strcmp((v10 + *(v15 + 12)), (v10 + v11));
  if (v13 < 0)
  {
    if (v16 < 0)
    {
      *a1 = v15;
      v17 = a1;
LABEL_9:
      *v14 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    v17 = a1;
    *a1 = v8;
    *a2 = v9;
    v8 = *v14;
    if (strcmp((v10 + *(*v14 + 12)), (v10 + v12)) < 0)
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v16 < 0)
  {
    *a2 = v15;
    *v14 = v8;
    v18 = *a2;
    v17 = a1;
    v19 = *a1;
    if (strcmp((v10 + *(*a2 + 12)), (v10 + *(*a1 + 12))) < 0)
    {
      *a1 = v18;
      *a2 = v19;
      v8 = *v14;
    }
  }

  else
  {
    v8 = v15;
    v17 = a1;
  }

LABEL_11:
  v20 = *a4;
  result = strcmp((v10 + *(*a4 + 12)), (v10 + *(v8 + 12)));
  if ((result & 0x80000000) != 0)
  {
    *v14 = v20;
    *a4 = v8;
    v22 = *v14;
    v23 = *a2;
    result = strcmp((v10 + *(*v14 + 12)), (v10 + *(*a2 + 12)));
    if ((result & 0x80000000) != 0)
    {
      *a2 = v22;
      *v14 = v23;
      v24 = *a2;
      v25 = *v17;
      result = strcmp((v10 + *(*a2 + 12)), (v10 + *(*v17 + 12)));
      if ((result & 0x80000000) != 0)
      {
        *v17 = v24;
        *a2 = v25;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = *a4;
  v14 = *a6;
  result = strcmp((v14 + *(*a5 + 12)), (v14 + *(*a4 + 12)));
  if ((result & 0x80000000) != 0)
  {
    *a4 = v12;
    *a5 = v13;
    v16 = *a4;
    v17 = *a3;
    result = strcmp((v14 + *(*a4 + 12)), (v14 + *(*a3 + 12)));
    if ((result & 0x80000000) != 0)
    {
      *a3 = v16;
      *a4 = v17;
      v18 = *a3;
      v19 = *a2;
      result = strcmp((v14 + *(*a3 + 12)), (v14 + *(*a2 + 12)));
      if ((result & 0x80000000) != 0)
      {
        *a2 = v18;
        *a3 = v19;
        v20 = *a2;
        v21 = *a1;
        result = strcmp((v14 + *(*a2 + 12)), (v14 + *(*a1 + 12)));
        if ((result & 0x80000000) != 0)
        {
          *a1 = v20;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v6 = 0;
      v7 = *a3;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v11 = *(v9 + 12);
        result = strcmp((v7 + v11), (v7 + *(v10 + 12)));
        if ((result & 0x80000000) != 0)
        {
          v12 = v6;
          while (1)
          {
            *(v4 + v12 + 8) = v10;
            if (!v12)
            {
              break;
            }

            v10 = *(v4 + v12 - 8);
            result = strcmp((v7 + v11), (v7 + *(v10 + 12)));
            v12 -= 8;
            if ((result & 0x80000000) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v9;
        }

        v5 = v8 + 1;
        v6 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(void *result, void *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v6 = *a3;
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 = v5;
        v9 = *(v7 + 12);
        result = strcmp((v6 + v9), (v6 + *(v8 + 12)));
        if ((result & 0x80000000) != 0)
        {
          v10 = v4;
          do
          {
            *v10 = v8;
            v8 = *(v10 - 2);
            result = strcmp((v6 + v9), (v6 + *(v8 + 12)));
            --v10;
          }

          while ((result & 0x80000000) != 0);
          *v10 = v7;
        }

        v5 = v4 + 1;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppMMapSymbol const**,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a1;
  v6 = *a3;
  v7 = *(*a1 + 12);
  if (strcmp((*a3 + v7), (*a3 + *(*(a2 - 1) + 12))) < 0)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
    }

    while ((strcmp((v6 + v7), (v6 + *(v9 + 12))) & 0x80000000) == 0);
  }

  else
  {
    v10 = a1 + 1;
    do
    {
      v8 = v10;
      if (v10 >= v3)
      {
        break;
      }

      ++v10;
    }

    while ((strcmp((v6 + v7), (v6 + *(*v8 + 12))) & 0x80000000) == 0);
  }

  if (v8 < v3)
  {
    do
    {
      v11 = *--v3;
    }

    while (strcmp((v6 + v7), (v6 + *(v11 + 12))) < 0);
  }

  if (v8 < v3)
  {
    v12 = *v8;
    v13 = *v3;
    do
    {
      *v8 = v13;
      *v3 = v12;
      do
      {
        v14 = v8[1];
        ++v8;
        v12 = v14;
      }

      while ((strcmp((v6 + v7), (v6 + *(v14 + 12))) & 0x80000000) == 0);
      do
      {
        v15 = *--v3;
        v13 = v15;
      }

      while (strcmp((v6 + v7), (v6 + *(v15 + 12))) < 0);
    }

    while (v8 < v3);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v5;
  return v8;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppMMapSymbol const**,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &>(void *a1, void *a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *a1;
  v7 = *a3;
  v8 = *(*a1 + 12);
  do
  {
    v9 = a1[++v5];
  }

  while (strcmp((v7 + *(v9 + 12)), (v7 + v8)) < 0);
  v10 = &a1[v5];
  v11 = &a1[v5 - 1];
  if (v5 == 1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *--a2;
    }

    while ((strcmp((v7 + *(v13 + 12)), (v7 + v8)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v12 = *--a2;
    }

    while ((strcmp((v7 + *(v12 + 12)), (v7 + v8)) & 0x80000000) == 0);
  }

  if (v10 < a2)
  {
    v14 = *a2;
    v15 = &a1[v5];
    v16 = a2;
    do
    {
      *v15 = v14;
      *v16 = v9;
      do
      {
        v17 = v15[1];
        ++v15;
        v9 = v17;
      }

      while (strcmp((v7 + *(v17 + 12)), (v7 + v8)) < 0);
      do
      {
        v18 = *--v16;
        v14 = v18;
      }

      while ((strcmp((v7 + *(v18 + 12)), (v7 + v8)) & 0x80000000) == 0);
    }

    while (v15 < v16);
    v11 = v15 - 1;
  }

  if (v11 != a1)
  {
    *a1 = *v11;
  }

  *v11 = v6;
  return v11;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v8 = *a1;
        v9 = a1[1];
        v10 = *a3;
        v11 = *(v9 + 12);
        v12 = *(*a1 + 12);
        v13 = strcmp((*a3 + v11), (*a3 + v12));
        v14 = *(a2 - 1);
        v15 = strcmp((v10 + *(v14 + 12)), (v10 + v11));
        if ((v13 & 0x80000000) == 0)
        {
          if (v15 < 0)
          {
            a1[1] = v14;
            *(a2 - 1) = v9;
            v29 = *a1;
            v28 = a1[1];
            if (strcmp((v10 + *(v28 + 12)), (v10 + *(*a1 + 12))) < 0)
            {
              *a1 = v28;
              a1[1] = v29;
            }
          }

          return 1;
        }

        if (v15 < 0)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v9;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if ((strcmp((v10 + *(v41 + 12)), (v10 + v12)) & 0x80000000) == 0)
          {
            return 1;
          }

          a1[1] = v41;
        }

        *(a2 - 1) = v8;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *a1;
    if (strcmp((*a3 + *(v6 + 12)), (*a3 + *(*a1 + 12))) < 0)
    {
      *a1 = v6;
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_13:
  v16 = a1 + 1;
  v17 = a1[1];
  v18 = *a3;
  v19 = *(v17 + 12);
  v44 = *a1;
  v20 = *(*a1 + 12);
  v21 = strcmp((*a3 + v19), (*a3 + v20));
  v22 = a1 + 2;
  v43 = a1[2];
  v23 = *(v43 + 12);
  v24 = strcmp((v18 + v23), (v18 + v19));
  if (v21 < 0)
  {
    v25 = a1;
    v26 = a1 + 2;
    if ((v24 & 0x80000000) == 0)
    {
      *a1 = v17;
      a1[1] = v44;
      v27 = strcmp((v18 + v23), (v18 + v20));
      v25 = a1 + 1;
      v26 = a1 + 2;
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_23:
    *v25 = v43;
    *v26 = v44;
    goto LABEL_24;
  }

  if (v24 < 0)
  {
    *v16 = v43;
    *v22 = v17;
    v30 = strcmp((v18 + v23), (v18 + v20));
    v25 = a1;
    v26 = a1 + 1;
    if (v30 < 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  for (i = 24; ; i += 8)
  {
    v34 = *v31;
    v35 = *v22;
    v36 = *(*v31 + 12);
    if (strcmp((v18 + v36), (v18 + *(v35 + 12))) < 0)
    {
      v37 = i;
      while (1)
      {
        *(a1 + v37) = v35;
        v38 = v37 - 8;
        if (v37 == 8)
        {
          break;
        }

        v35 = *(a1 + v37 - 16);
        v39 = strcmp((v18 + v36), (v18 + *(v35 + 12)));
        v37 = v38;
        if ((v39 & 0x80000000) == 0)
        {
          v40 = (a1 + v38);
          goto LABEL_32;
        }
      }

      v40 = a1;
LABEL_32:
      *v40 = v34;
      if (++v32 == 8)
      {
        break;
      }
    }

    v22 = v31++;
    if (v31 == a2)
    {
      return 1;
    }
  }

  return v31 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,CSCppMMapSymbol const**>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (strcmp((*a4 + *(*v12 + 12)), (*a4 + *(*a1 + 12))) < 0)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t result, uint64_t *a2, uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v8 = a3;
      v9 = (a4 - result) >> 2;
      v10 = v9 + 1;
      v11 = (result + 8 * (v9 + 1));
      v12 = v9 + 2;
      v13 = *v11;
      if (v9 + 2 >= a3)
      {
        v15 = *a2;
      }

      else
      {
        v26 = v4 >> 1;
        v14 = v11[1];
        v15 = *a2;
        v16 = strcmp((*a2 + *(v13 + 12)), (*a2 + *(v14 + 12)));
        if (v16 < 0)
        {
          v13 = v14;
          ++v11;
        }

        v7 = v26;
        if (v16 < 0)
        {
          v10 = v12;
        }
      }

      v17 = *v5;
      v27 = *(*v5 + 12);
      result = strcmp((v15 + *(v13 + 12)), (v15 + v27));
      if ((result & 0x80000000) == 0)
      {
        v24 = v17;
        v25 = v8;
        do
        {
          v18 = v11;
          *v5 = v13;
          if (v7 < v10)
          {
            break;
          }

          v19 = (2 * v10) | 1;
          v11 = (v6 + 8 * v19);
          v13 = *v11;
          if (2 * v10 + 2 < v8)
          {
            v20 = v7;
            v21 = v6;
            v22 = v11[1];
            v23 = strcmp((v15 + *(v13 + 12)), (v15 + *(v22 + 12)));
            if (v23 < 0)
            {
              v13 = v22;
            }

            v6 = v21;
            v7 = v20;
            v8 = v25;
            if (v23 < 0)
            {
              ++v11;
              v19 = 2 * v10 + 2;
            }
          }

          result = strcmp((v15 + *(v13 + 12)), (v15 + v27));
          v5 = v18;
          v10 = v19;
        }

        while ((result & 0x80000000) == 0);
        *v18 = v24;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  v7 = *a2;
  do
  {
    v8 = &a1[v5];
    v9 = v8 + 1;
    v10 = v8[1];
    v11 = (2 * v5) | 1;
    v12 = 2 * v5 + 2;
    if (v12 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v15 = v8[2];
      v13 = v8 + 2;
      v14 = v15;
      if (strcmp((v7 + *(v10 + 12)), (v7 + *(v15 + 12))) >= 0)
      {
        v5 = v11;
      }

      else
      {
        v10 = v14;
        v9 = v13;
        v5 = v12;
      }
    }

    *a1 = v10;
    a1 = v9;
  }

  while (v5 <= v6);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#1}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 8 * (v4 >> 1));
    v8 = *v7;
    v9 = (a2 - 8);
    v10 = *(a2 - 8);
    v11 = *a3;
    v12 = *(v10 + 12);
    result = strcmp((*a3 + *(*v7 + 12)), (*a3 + v12));
    if ((result & 0x80000000) != 0)
    {
      do
      {
        v13 = v7;
        *v9 = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 8 * v6);
        v8 = *v7;
        result = strcmp((v11 + *(*v7 + 12)), (v11 + v12));
        v9 = v13;
      }

      while ((result & 0x80000000) != 0);
      *v13 = v10;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = result;
LABEL_2:
  v8 = v7;
  v91 = a2;
LABEL_3:
  v9 = 1 - a4;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = a2 - v8;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v82 = *(a2 - 1);
        v83 = *v8;
        result = strcmp((*v5 + *(v82 + 16)), (*v5 + *(*v8 + 16)));
        if ((result & 0x80000000) != 0)
        {
          *v8 = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(v8, v8 + 1, v8 + 2, a2 - 1, v5);
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1, v5);
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(v8, a2, v5);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(v8, a2, v5);
      }
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,CSCppMMapSymbol const**>(v8, a2, a2, v5);
      }

      return result;
    }

    v90 = v10;
    v12 = &v8[v11 >> 1];
    v13 = *v5;
    v14 = *(a2 - 1);
    v15 = *(v14 + 16);
    v92 = &v7[v11 >> 1];
    if (v11 >= 0x81)
    {
      v16 = *v12;
      v17 = *v7;
      v18 = *(*v12 + 16);
      v19 = *(*v7 + 16);
      v20 = strcmp((v13 + v18), (v13 + v19));
      v21 = strcmp((v13 + v15), (v13 + v18));
      if (v20 < 0)
      {
        if (v21 < 0)
        {
          *v7 = v14;
          v22 = v91;
          goto LABEL_28;
        }

        *v7 = v16;
        v22 = v91;
        *v92 = v17;
        v33 = *(v91 - 1);
        if (strcmp((v13 + *(v33 + 16)), (v13 + v19)) < 0)
        {
          *v92 = v33;
LABEL_28:
          *(v22 - 1) = v17;
        }
      }

      else
      {
        v22 = v91;
        if (v21 < 0)
        {
          *v92 = v14;
          *(v91 - 1) = v16;
          v29 = *v92;
          v30 = *v7;
          if (strcmp((v13 + *(*v92 + 16)), (v13 + *(*v7 + 16))) < 0)
          {
            *v7 = v29;
            *v92 = v30;
          }
        }
      }

      v34 = *(v12 - 1);
      v89 = v12 - 1;
      v35 = v7[1];
      v36 = *(v34 + 16);
      v37 = *(v35 + 16);
      v38 = strcmp((v13 + v36), (v13 + v37));
      v39 = *(v22 - 2);
      v40 = strcmp((v13 + *(v39 + 16)), (v13 + v36));
      if (v38 < 0)
      {
        if (v40 < 0)
        {
          v7[1] = v39;
          v41 = v91;
          goto LABEL_40;
        }

        v7[1] = v34;
        *v89 = v35;
        v41 = v91;
        v46 = *(v91 - 2);
        if (strcmp((v13 + *(v46 + 16)), (v13 + v37)) < 0)
        {
          *v89 = v46;
LABEL_40:
          *(v41 - 2) = v35;
        }
      }

      else
      {
        v41 = v91;
        if (v40 < 0)
        {
          *v89 = v39;
          *(v91 - 2) = v34;
          v42 = *v89;
          v43 = v7[1];
          if (strcmp((v13 + *(*v89 + 16)), (v13 + *(v43 + 16))) < 0)
          {
            v7[1] = v42;
            *v89 = v43;
          }
        }
      }

      v49 = v12[1];
      v48 = v12 + 1;
      v47 = v49;
      v50 = v7[2];
      v51 = *(v49 + 16);
      v52 = *(v50 + 16);
      v53 = strcmp((v13 + v51), (v13 + v52));
      v54 = *(v41 - 3);
      v55 = strcmp((v13 + *(v54 + 16)), (v13 + v51));
      if (v53 < 0)
      {
        if (v55 < 0)
        {
          v7[2] = v54;
          v56 = v91;
          v57 = v92;
          goto LABEL_49;
        }

        v7[2] = v47;
        *v48 = v50;
        v60 = *(v91 - 3);
        v57 = v92;
        if (strcmp((v13 + *(v60 + 16)), (v13 + v52)) < 0)
        {
          *v48 = v60;
          v56 = v91;
LABEL_49:
          *(v56 - 3) = v50;
        }
      }

      else
      {
        v57 = v92;
        if (v55 < 0)
        {
          *v48 = v54;
          *(v91 - 3) = v47;
          v58 = *v48;
          v59 = v7[2];
          if (strcmp((v13 + *(*v48 + 16)), (v13 + *(v59 + 16))) < 0)
          {
            v7[2] = v58;
            *v48 = v59;
          }
        }
      }

      v61 = *v57;
      v62 = *v89;
      v63 = *(*v57 + 16);
      v64 = *(*v89 + 16);
      v65 = strcmp((v13 + v63), (v13 + v64));
      v66 = *v48;
      v67 = *(*v48 + 16);
      v68 = strcmp((v13 + v67), (v13 + v63));
      if (v65 < 0)
      {
        if (v68 < 0)
        {
          v69 = v92;
          goto LABEL_57;
        }

        *v89 = v61;
        v69 = v92;
        *v92 = v62;
        v89 = v92;
        v61 = v66;
        if (strcmp((v13 + v67), (v13 + v64)) < 0)
        {
LABEL_57:
          *v89 = v66;
          *v48 = v62;
        }

        else
        {
          v61 = v62;
        }
      }

      else if (v68 < 0)
      {
        v69 = v92;
        *v92 = v66;
        *v48 = v61;
        v48 = v92;
        v61 = v62;
        if (strcmp((v13 + v67), (v13 + v64)) < 0)
        {
          goto LABEL_57;
        }

        v61 = v66;
      }

      else
      {
        v69 = v92;
      }

      v70 = *v7;
      *v7 = v61;
      *v69 = v70;
      a2 = v91;
      goto LABEL_61;
    }

    v23 = *v7;
    v24 = *v12;
    v25 = *(*v7 + 16);
    v26 = *(*v12 + 16);
    v27 = strcmp((v13 + v25), (v13 + v26));
    v28 = strcmp((v13 + v15), (v13 + v25));
    if (v27 < 0)
    {
      if (v28 < 0)
      {
        a2 = v91;
        *v92 = v14;
LABEL_37:
        *(a2 - 1) = v24;
        goto LABEL_61;
      }

      *v92 = v23;
      *v7 = v24;
      v44 = *(v91 - 1);
      v45 = (v13 + v26);
      a2 = v91;
      if (strcmp((v13 + *(v44 + 16)), v45) < 0)
      {
        *v7 = v44;
        goto LABEL_37;
      }
    }

    else
    {
      a2 = v91;
      if (v28 < 0)
      {
        *v7 = v14;
        *(v91 - 1) = v23;
        v31 = *v7;
        v32 = *v92;
        if (strcmp((v13 + *(*v7 + 16)), (v13 + *(*v92 + 16))) < 0)
        {
          *v92 = v31;
          *v7 = v32;
        }
      }
    }

LABEL_61:
    if ((a5 & 1) == 0 && (strcmp((v13 + *(*(v7 - 1) + 16)), (v13 + *(*v7 + 16))) & 0x80000000) == 0)
    {
      v5 = a3;
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppMMapSymbol const**,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &>(v7, a2, a3);
      v8 = result;
      v72 = v90;
      goto LABEL_68;
    }

    v5 = a3;
    v71 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppMMapSymbol const**,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &>(v7, a2, a3);
    v72 = v90;
    if ((v73 & 1) == 0)
    {
      goto LABEL_66;
    }

    v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(v7, v71, a3);
    v8 = v71 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(v71 + 1, a2, a3);
    if (result)
    {
      a4 = -v90;
      a2 = v71;
      if (v74)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v90 + 1;
    if (!v74)
    {
LABEL_66:
      result = std::__introsort<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,false>(v7, v71, a3, -v90, a5 & 1);
      v8 = v71 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v72;
      goto LABEL_3;
    }
  }

  v75 = *v8;
  v76 = v8[1];
  v77 = *v5;
  v78 = *(v76 + 16);
  v79 = *(*v7 + 16);
  v80 = strcmp((v77 + v78), (v77 + v79));
  v81 = *(a2 - 1);
  result = strcmp((v77 + *(v81 + 16)), (v77 + v78));
  if (v80 < 0)
  {
    if ((result & 0x80000000) != 0)
    {
      *v7 = v81;
    }

    else
    {
      *v7 = v76;
      v7[1] = v75;
      v86 = *(a2 - 1);
      result = strcmp((v77 + *(v86 + 16)), (v77 + v79));
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v7[1] = v86;
    }

    *(a2 - 1) = v75;
  }

  else if ((result & 0x80000000) != 0)
  {
    v7[1] = v81;
    *(a2 - 1) = v76;
    v85 = *v7;
    v84 = v7[1];
    result = strcmp((v77 + *(v84 + 16)), (v77 + *(*v7 + 16)));
    if ((result & 0x80000000) != 0)
    {
      *v7 = v84;
      v7[1] = v85;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v9 = *a1;
  v10 = *a5;
  v11 = *(*a2 + 16);
  v12 = *(*a1 + 16);
  v13 = strcmp((*a5 + v11), (*a5 + v12));
  v14 = a3;
  v15 = *a3;
  v16 = strcmp((v10 + *(v15 + 16)), (v10 + v11));
  if (v13 < 0)
  {
    if (v16 < 0)
    {
      *a1 = v15;
      v17 = a1;
LABEL_9:
      *v14 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    v17 = a1;
    *a1 = v8;
    *a2 = v9;
    v8 = *v14;
    if (strcmp((v10 + *(*v14 + 16)), (v10 + v12)) < 0)
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v16 < 0)
  {
    *a2 = v15;
    *v14 = v8;
    v18 = *a2;
    v17 = a1;
    v19 = *a1;
    if (strcmp((v10 + *(*a2 + 16)), (v10 + *(*a1 + 16))) < 0)
    {
      *a1 = v18;
      *a2 = v19;
      v8 = *v14;
    }
  }

  else
  {
    v8 = v15;
    v17 = a1;
  }

LABEL_11:
  v20 = *a4;
  result = strcmp((v10 + *(*a4 + 16)), (v10 + *(v8 + 16)));
  if ((result & 0x80000000) != 0)
  {
    *v14 = v20;
    *a4 = v8;
    v22 = *v14;
    v23 = *a2;
    result = strcmp((v10 + *(*v14 + 16)), (v10 + *(*a2 + 16)));
    if ((result & 0x80000000) != 0)
    {
      *a2 = v22;
      *v14 = v23;
      v24 = *a2;
      v25 = *v17;
      result = strcmp((v10 + *(*a2 + 16)), (v10 + *(*v17 + 16)));
      if ((result & 0x80000000) != 0)
      {
        *v17 = v24;
        *a2 = v25;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = *a4;
  v14 = *a6;
  result = strcmp((v14 + *(*a5 + 16)), (v14 + *(*a4 + 16)));
  if ((result & 0x80000000) != 0)
  {
    *a4 = v12;
    *a5 = v13;
    v16 = *a4;
    v17 = *a3;
    result = strcmp((v14 + *(*a4 + 16)), (v14 + *(*a3 + 16)));
    if ((result & 0x80000000) != 0)
    {
      *a3 = v16;
      *a4 = v17;
      v18 = *a3;
      v19 = *a2;
      result = strcmp((v14 + *(*a3 + 16)), (v14 + *(*a2 + 16)));
      if ((result & 0x80000000) != 0)
      {
        *a2 = v18;
        *a3 = v19;
        v20 = *a2;
        v21 = *a1;
        result = strcmp((v14 + *(*a2 + 16)), (v14 + *(*a1 + 16)));
        if ((result & 0x80000000) != 0)
        {
          *a1 = v20;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v6 = 0;
      v7 = *a3;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v11 = *(v9 + 16);
        result = strcmp((v7 + v11), (v7 + *(v10 + 16)));
        if ((result & 0x80000000) != 0)
        {
          v12 = v6;
          while (1)
          {
            *(v4 + v12 + 8) = v10;
            if (!v12)
            {
              break;
            }

            v10 = *(v4 + v12 - 8);
            result = strcmp((v7 + v11), (v7 + *(v10 + 16)));
            v12 -= 8;
            if ((result & 0x80000000) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v9;
        }

        v5 = v8 + 1;
        v6 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(void *result, void *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v6 = *a3;
      do
      {
        v8 = *v4;
        v7 = v4[1];
        v4 = v5;
        v9 = *(v7 + 16);
        result = strcmp((v6 + v9), (v6 + *(v8 + 16)));
        if ((result & 0x80000000) != 0)
        {
          v10 = v4;
          do
          {
            *v10 = v8;
            v8 = *(v10 - 2);
            result = strcmp((v6 + v9), (v6 + *(v8 + 16)));
            --v10;
          }

          while ((result & 0x80000000) != 0);
          *v10 = v7;
        }

        v5 = v4 + 1;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppMMapSymbol const**,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a1;
  v6 = *a3;
  v7 = *(*a1 + 16);
  if (strcmp((*a3 + v7), (*a3 + *(*(a2 - 1) + 16))) < 0)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
    }

    while ((strcmp((v6 + v7), (v6 + *(v9 + 16))) & 0x80000000) == 0);
  }

  else
  {
    v10 = a1 + 1;
    do
    {
      v8 = v10;
      if (v10 >= v3)
      {
        break;
      }

      ++v10;
    }

    while ((strcmp((v6 + v7), (v6 + *(*v8 + 16))) & 0x80000000) == 0);
  }

  if (v8 < v3)
  {
    do
    {
      v11 = *--v3;
    }

    while (strcmp((v6 + v7), (v6 + *(v11 + 16))) < 0);
  }

  if (v8 < v3)
  {
    v12 = *v8;
    v13 = *v3;
    do
    {
      *v8 = v13;
      *v3 = v12;
      do
      {
        v14 = v8[1];
        ++v8;
        v12 = v14;
      }

      while ((strcmp((v6 + v7), (v6 + *(v14 + 16))) & 0x80000000) == 0);
      do
      {
        v15 = *--v3;
        v13 = v15;
      }

      while (strcmp((v6 + v7), (v6 + *(v15 + 16))) < 0);
    }

    while (v8 < v3);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v5;
  return v8;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppMMapSymbol const**,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &>(void *a1, void *a2, uint64_t *a3)
{
  v5 = 0;
  v6 = *a1;
  v7 = *a3;
  v8 = *(*a1 + 16);
  do
  {
    v9 = a1[++v5];
  }

  while (strcmp((v7 + *(v9 + 16)), (v7 + v8)) < 0);
  v10 = &a1[v5];
  v11 = &a1[v5 - 1];
  if (v5 == 1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *--a2;
    }

    while ((strcmp((v7 + *(v13 + 16)), (v7 + v8)) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      v12 = *--a2;
    }

    while ((strcmp((v7 + *(v12 + 16)), (v7 + v8)) & 0x80000000) == 0);
  }

  if (v10 < a2)
  {
    v14 = *a2;
    v15 = &a1[v5];
    v16 = a2;
    do
    {
      *v15 = v14;
      *v16 = v9;
      do
      {
        v17 = v15[1];
        ++v15;
        v9 = v17;
      }

      while (strcmp((v7 + *(v17 + 16)), (v7 + v8)) < 0);
      do
      {
        v18 = *--v16;
        v14 = v18;
      }

      while ((strcmp((v7 + *(v18 + 16)), (v7 + v8)) & 0x80000000) == 0);
    }

    while (v15 < v16);
    v11 = v15 - 1;
  }

  if (v11 != a1)
  {
    *a1 = *v11;
  }

  *v11 = v6;
  return v11;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v8 = *a1;
        v9 = a1[1];
        v10 = *a3;
        v11 = *(v9 + 16);
        v12 = *(*a1 + 16);
        v13 = strcmp((*a3 + v11), (*a3 + v12));
        v14 = *(a2 - 1);
        v15 = strcmp((v10 + *(v14 + 16)), (v10 + v11));
        if ((v13 & 0x80000000) == 0)
        {
          if (v15 < 0)
          {
            a1[1] = v14;
            *(a2 - 1) = v9;
            v29 = *a1;
            v28 = a1[1];
            if (strcmp((v10 + *(v28 + 16)), (v10 + *(*a1 + 16))) < 0)
            {
              *a1 = v28;
              a1[1] = v29;
            }
          }

          return 1;
        }

        if (v15 < 0)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v9;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if ((strcmp((v10 + *(v41 + 16)), (v10 + v12)) & 0x80000000) == 0)
          {
            return 1;
          }

          a1[1] = v41;
        }

        *(a2 - 1) = v8;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *a1;
    if (strcmp((*a3 + *(v6 + 16)), (*a3 + *(*a1 + 16))) < 0)
    {
      *a1 = v6;
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_13:
  v16 = a1 + 1;
  v17 = a1[1];
  v18 = *a3;
  v19 = *(v17 + 16);
  v44 = *a1;
  v20 = *(*a1 + 16);
  v21 = strcmp((*a3 + v19), (*a3 + v20));
  v22 = a1 + 2;
  v43 = a1[2];
  v23 = *(v43 + 16);
  v24 = strcmp((v18 + v23), (v18 + v19));
  if (v21 < 0)
  {
    v25 = a1;
    v26 = a1 + 2;
    if ((v24 & 0x80000000) == 0)
    {
      *a1 = v17;
      a1[1] = v44;
      v27 = strcmp((v18 + v23), (v18 + v20));
      v25 = a1 + 1;
      v26 = a1 + 2;
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_23:
    *v25 = v43;
    *v26 = v44;
    goto LABEL_24;
  }

  if (v24 < 0)
  {
    *v16 = v43;
    *v22 = v17;
    v30 = strcmp((v18 + v23), (v18 + v20));
    v25 = a1;
    v26 = a1 + 1;
    if (v30 < 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  for (i = 24; ; i += 8)
  {
    v34 = *v31;
    v35 = *v22;
    v36 = *(*v31 + 16);
    if (strcmp((v18 + v36), (v18 + *(v35 + 16))) < 0)
    {
      v37 = i;
      while (1)
      {
        *(a1 + v37) = v35;
        v38 = v37 - 8;
        if (v37 == 8)
        {
          break;
        }

        v35 = *(a1 + v37 - 16);
        v39 = strcmp((v18 + v36), (v18 + *(v35 + 16)));
        v37 = v38;
        if ((v39 & 0x80000000) == 0)
        {
          v40 = (a1 + v38);
          goto LABEL_32;
        }
      }

      v40 = a1;
LABEL_32:
      *v40 = v34;
      if (++v32 == 8)
      {
        break;
      }
    }

    v22 = v31++;
    if (v31 == a2)
    {
      return 1;
    }
  }

  return v31 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**,CSCppMMapSymbol const**>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (strcmp((*a4 + *(*v12 + 16)), (*a4 + *(*a1 + 16))) < 0)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t result, uint64_t *a2, uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v8 = a3;
      v9 = (a4 - result) >> 2;
      v10 = v9 + 1;
      v11 = (result + 8 * (v9 + 1));
      v12 = v9 + 2;
      v13 = *v11;
      if (v9 + 2 >= a3)
      {
        v15 = *a2;
      }

      else
      {
        v26 = v4 >> 1;
        v14 = v11[1];
        v15 = *a2;
        v16 = strcmp((*a2 + *(v13 + 16)), (*a2 + *(v14 + 16)));
        if (v16 < 0)
        {
          v13 = v14;
          ++v11;
        }

        v7 = v26;
        if (v16 < 0)
        {
          v10 = v12;
        }
      }

      v17 = *v5;
      v27 = *(*v5 + 16);
      result = strcmp((v15 + *(v13 + 16)), (v15 + v27));
      if ((result & 0x80000000) == 0)
      {
        v24 = v17;
        v25 = v8;
        do
        {
          v18 = v11;
          *v5 = v13;
          if (v7 < v10)
          {
            break;
          }

          v19 = (2 * v10) | 1;
          v11 = (v6 + 8 * v19);
          v13 = *v11;
          if (2 * v10 + 2 < v8)
          {
            v20 = v7;
            v21 = v6;
            v22 = v11[1];
            v23 = strcmp((v15 + *(v13 + 16)), (v15 + *(v22 + 16)));
            if (v23 < 0)
            {
              v13 = v22;
            }

            v6 = v21;
            v7 = v20;
            v8 = v25;
            if (v23 < 0)
            {
              ++v11;
              v19 = 2 * v10 + 2;
            }
          }

          result = strcmp((v15 + *(v13 + 16)), (v15 + v27));
          v5 = v18;
          v10 = v19;
        }

        while ((result & 0x80000000) == 0);
        *v18 = v24;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  v7 = *a2;
  do
  {
    v8 = &a1[v5];
    v9 = v8 + 1;
    v10 = v8[1];
    v11 = (2 * v5) | 1;
    v12 = 2 * v5 + 2;
    if (v12 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v15 = v8[2];
      v13 = v8 + 2;
      v14 = v15;
      if (strcmp((v7 + *(v10 + 16)), (v7 + *(v15 + 16))) >= 0)
      {
        v5 = v11;
      }

      else
      {
        v10 = v14;
        v9 = v13;
        v5 = v12;
      }
    }

    *a1 = v10;
    a1 = v9;
  }

  while (v5 <= v6);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::{lambda(unsigned long)#2}::operator() const(unsigned long)::{lambda(CSCppMMapSymbol const*,CSCppMMapSymbol const*)#1} &,CSCppMMapSymbol const**>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 8 * (v4 >> 1));
    v8 = *v7;
    v9 = (a2 - 8);
    v10 = *(a2 - 8);
    v11 = *a3;
    v12 = *(v10 + 16);
    result = strcmp((*a3 + *(*v7 + 16)), (*a3 + v12));
    if ((result & 0x80000000) != 0)
    {
      do
      {
        v13 = v7;
        *v9 = v8;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 8 * v6);
        v8 = *v7;
        result = strcmp((v11 + *(*v7 + 16)), (v11 + v12));
        v9 = v13;
      }

      while ((result & 0x80000000) != 0);
      *v13 = v10;
    }
  }

  return result;
}

uint64_t CSCppTRawSymbolNameGuard<Pointer32>::~CSCppTRawSymbolNameGuard(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *v2;
      v4 = v2[1];
      while (v3 != v4)
      {
        TRawSymbol<Pointer32>::rollback_mmap_archive_naming(v3);
        v3 += 96;
      }
    }
  }

  return a1;
}

uint64_t TRawSymbol<Pointer32>::rollback_mmap_archive_naming(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  v3 = *(result + 64);
  while (v2 != v3)
  {
    result = TRawSymbol<Pointer32>::rollback_mmap_archive_naming(v2);
    v2 += 96;
  }

  v4 = (v1 + 20);
  explicit = atomic_load_explicit((v1 + 20), memory_order_acquire);
  if ((atomic_load_explicit((v1 + 20), memory_order_acquire) & 0x40000) == 0)
  {
    explicit &= ~0x20000u;
    *(v1 + 24) = *(v1 + 32);
  }

  if ((atomic_load_explicit(v4, memory_order_acquire) & 0x800000) == 0)
  {
    explicit &= 0xFEBFFFFB;
  }

  atomic_store(explicit, v4);
  return result;
}

void create_traw_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, CSCppDsymData *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  operator new();
}

void sub_1D9766404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, CSCppDsymData *a24)
{
  std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](&a24, 0);
  v27 = *(v25 - 160);
  *(v25 - 160) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  (*(*v24 + 8))(v24);
  _Unwind_Resume(a1);
}

mach_vm_address_t CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer64>(uint64_t a1, void *a2, CSCppAddressSet *a3, int a4)
{
  v7 = *MEMORY[0x1E69E9840];
  atomic_load((*(a1 + 8) + 40));
  if (!_do_traw_segments_overlap((a2 + 48)))
  {
    if (a3)
    {
      CSCppAddressSet::sort(a3);
    }

    MMapArchiveNameBuffer::MMapArchiveNameBuffer(v6);
  }

  return 0;
}

void sub_1D9767DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, mach_vm_address_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  v63 = *(v61 - 144);
  if (v63)
  {
    *(v61 - 136) = v63;
    operator delete(v63);
  }

  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(&a29);
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  CSCppTRawSymbolNameGuard<Pointer64>::~CSCppTRawSymbolNameGuard(&a39);
  DemanglingUtilities::CSCppReusableDemanglingBuffer::~CSCppReusableDemanglingBuffer(&a41);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a43);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a49);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a55);
  if (a60)
  {
    a61 = a60;
    operator delete(a60);
  }

  a55 = a26;
  std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:ne200100](&a55);
  _Unwind_Resume(a1);
}

_DWORD *record_sod_header_version<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>(uint64_t *a1, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::version_from_source_version_load_command(*a1, v6);
  if (v7 == 1)
  {
    CSCppStringCache::intern((a2 + 24), v6);
  }

  result = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::id_dylib(*(*a1 + 24));
  if (result)
  {
    a2[66] = result[4];
    a2[67] = result[5];
    if ((v7 & 1) == 0)
    {
      TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::version_from_id_dylib_load_command(*a1, v5);
      if (v5[32])
      {
        CSCppStringCache::intern((a2 + 24), v5);
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  return result;
}

uint64_t *dsym_header_for_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>,Pointer64>@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *result@<X0>, void ***a4@<X2>, void ***a5@<X3>)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = atomic_load((result[1] + 40));
  if ((v6 & 0x80000) == 0 && (v7 = result, (*(result + 109) & 0x40) == 0) && ((v9 = *a5) != 0 || (v11 = dsym_data_for_symbol_owner(result, 0, 0, 0, 0), result = std::unique_ptr<CSCppDsymData>::reset[abi:ne200100](a4, v11), v9 = *a4, *a5 = *a4, v9)) && (result = new_file_memory_for_uuid_and_arch((v9 + 9), (v7 + 2), v7[14], 2)) != 0)
  {
    v12 = result;
    v13 = result;
    if (TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v13, 0, 1))
    {
      operator new();
    }

    *a1 = 0;
    return (*(*v12 + 8))(v12);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void sub_1D97682E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    CSCppTextSectionDataDescriptor::_perform_partial_mapping_for_file<Pointer64>();
  }

  (*(*v9 + 8))(v9, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void extract_dwarf_data_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(void *a1, uint64_t *a2, char a3, void *a4, uint64_t (***a5)(void, const char *))
{
  v147 = *MEMORY[0x1E69E9840];
  v7 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(a1[3], "__DWARF");
  v83 = a2;
  v84 = a1;
  if (v7 || (v7 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(a1[3], "__DWARFA")) != 0 || (v7 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(a1[3], "")) != 0)
  {
    v8 = *(v7 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v85 = 0;
      v16 = 0;
      v17 = (v7 + 72);
      do
      {
        if (!v9 && !strcmp(v17, "__debug_info"))
        {
          v9 = v17;
        }

        else if (!v10 && !strcmp(v17, "__debug_abbrev"))
        {
          v10 = v17;
        }

        else if (!v11 && !strcmp(v17, "__debug_line"))
        {
          v11 = v17;
        }

        else if (!v12 && !strcmp(v17, "__debug_str"))
        {
          v12 = v17;
        }

        else if (!v13 && !strncmp(v17, "__debug_line_str", 0x10uLL))
        {
          v13 = v17;
        }

        else if (!v14 && !strcmp(v17, "__debug_ranges"))
        {
          v14 = v17;
        }

        else if (!v15 && !strncmp(v17, "__debug_rnglists", 0x10uLL))
        {
          v15 = v17;
        }

        else if (!strcmp(v17, "__debug_addr"))
        {
          v85 = v17;
        }

        else if (!strncmp(v17, "__debug_str_offs", 0x10uLL))
        {
          v16 = v17;
        }

        v17 += 80;
        --v8;
      }

      while (v8);
      if (v9 && v10 && *(v9 + 5) && *(v10 + 5))
      {
        v18 = v84[1];
        if ((*(*v18 + 16))(v18))
        {
          v19 = v84[4];
          if (v11)
          {
            v20 = *(v11 + 4) + v19;
          }

          else
          {
            v20 = 0;
          }

          v22 = v85;
          if (v12)
          {
            v79 = *(v12 + 4) + v19;
            if (v13)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v79 = 0;
            if (v13)
            {
LABEL_45:
              v23 = *(v13 + 4) + v19;
              if (v14)
              {
LABEL_46:
                v24 = *(v14 + 4) + v19;
LABEL_54:
                if (v15)
                {
                  v25 = *(v15 + 4) + v19;
                }

                else
                {
                  v25 = 0;
                }

                v26 = v19 + *(v9 + 4);
                v86 = *(v10 + 4) + v19;
                if (v22)
                {
                  v70 = *(v22 + 4) + v19;
                  if (!v16)
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                  v70 = 0;
                  if (!v16)
                  {
                    goto LABEL_82;
                  }
                }

                v27 = *(v16 + 4) + v19;
                goto LABEL_74;
              }

LABEL_53:
              v24 = 0;
              goto LABEL_54;
            }
          }

          v23 = 0;
          if (v14)
          {
            goto LABEL_46;
          }

          goto LABEL_53;
        }

        v21 = v84[2];
        if (v11)
        {
          v20 = v21 + *(v11 + 12);
        }

        else
        {
          v20 = 0;
        }

        v22 = v85;
        if (v12)
        {
          v79 = v21 + *(v12 + 12);
          if (v13)
          {
LABEL_50:
            v23 = v21 + *(v13 + 12);
            goto LABEL_58;
          }
        }

        else
        {
          v79 = 0;
          if (v13)
          {
            goto LABEL_50;
          }
        }

        v23 = 0;
LABEL_58:
        if (v14)
        {
          v24 = v21 + *(v14 + 12);
          if (v15)
          {
LABEL_60:
            v25 = v21 + *(v15 + 12);
LABEL_67:
            v26 = v21 + *(v9 + 12);
            v86 = v21 + *(v10 + 12);
            if (v22)
            {
              v70 = v21 + *(v22 + 12);
              if (!v16)
              {
LABEL_82:
                v78 = 0;
                if (!v11)
                {
LABEL_83:
                  v28 = 0;
                  if (!v12)
                  {
LABEL_77:
                    if (v13)
                    {
                      v77 = *(v13 + 5);
                      if (v14)
                      {
                        goto LABEL_79;
                      }
                    }

                    else
                    {
                      v77 = 0;
                      if (v14)
                      {
LABEL_79:
                        v71 = *(v14 + 5);
                        if (v15)
                        {
                          goto LABEL_80;
                        }

                        goto LABEL_87;
                      }
                    }

                    v71 = 0;
                    if (v15)
                    {
LABEL_80:
                      v69 = *(v15 + 5);
                      if (v22)
                      {
LABEL_81:
                        v68 = *(v22 + 5);
                        goto LABEL_89;
                      }

LABEL_88:
                      v68 = 0;
LABEL_89:
                      v72 = v28;
                      v73 = v23;
                      v74 = v24;
                      v75 = v25;
                      v76 = v20;
                      v29 = *(v9 + 5);
                      if (v16)
                      {
                        v30 = *(v16 + 5);
                      }

                      else
                      {
                        v30 = 0;
                      }

                      v31 = *(v10 + 5);
                      v32 = v26;
                      v33 = (*(*v18 + 32))(v18);
                      if (v33)
                      {
                        v139 = v33;
                        v140 = 0;
                        v141 = v32;
                        v142 = v29;
                        madvise(v33, v29, 2);
                        v34 = (*(*v18 + 32))(v18, v86, v31);
                        if (v34)
                        {
                          v131 = v34;
                          v132 = 0;
                          v133 = v86;
                          v134 = v31;
                          v135 = 0;
                          v136 = 0;
                          v137 = 0u;
                          v138 = 0u;
                          madvise(v34, v31, 2);
                          if (!v12 || (v35 = (*(*v18 + 32))(v18, v79, v12)) == 0)
                          {
                            v35 = 0;
                            v12 = 0;
                          }

                          v127 = v35;
                          v128 = 0;
                          v129 = v79;
                          v130 = v12;
                          v36 = v77;
                          if (!v30 || (v37 = (*(*v18 + 32))(v18, v78, v30)) == 0)
                          {
                            v37 = 0;
                            v30 = 0;
                          }

                          v123 = v37;
                          v124 = 0;
                          v125 = v78;
                          v126 = v30;
                          v38 = v72;
                          if (!v77 || (v39 = (*(*v18 + 32))(v18, v73, v77)) == 0)
                          {
                            v39 = 0;
                            v36 = 0;
                          }

                          v119 = v39;
                          v120 = 0;
                          v121 = v73;
                          v122 = v36;
                          v40 = v71;
                          if (!v72 || (v41 = (*(*v18 + 32))(v18, v76, v72)) == 0)
                          {
                            v41 = 0;
                            v38 = 0;
                          }

                          v114 = v41;
                          v115 = 0;
                          v116 = v76;
                          v117 = v38;
                          v118 = &v119;
                          if (!v71 || (v42 = (*(*v18 + 32))(v18, v74, v71)) == 0)
                          {
                            v42 = 0;
                            v40 = 0;
                          }

                          v110 = v42;
                          v111 = 0;
                          v112 = v74;
                          v113 = v40;
                          v43 = v69;
                          if (!v69 || (v44 = (*(*v18 + 32))(v18, v75, v69)) == 0)
                          {
                            v44 = 0;
                            v43 = 0;
                          }

                          v106 = v44;
                          v107 = 0;
                          v108 = v75;
                          v109 = v43;
                          v45 = v68;
                          if (!v68 || (v46 = (*(*v18 + 32))(v18, v70, v68)) == 0)
                          {
                            v46 = 0;
                            v45 = 0;
                          }

                          v102 = v46;
                          v103 = 0;
                          v104 = v70;
                          v105 = v45;
                          memset(v100, 0, sizeof(v100));
                          v101 = 1065353216;
                          v97 = 0;
                          v98 = 0;
                          v99 = 0;
                          v96 = 0u;
                          v94 = 0u;
                          v95 = 0u;
                          v92 = 0u;
                          v93 = 0u;
                          v90 = 0u;
                          v91 = 0u;
                          v88 = 0u;
                          v89 = 0u;
                          if (v140 != v142)
                          {
                            v47 = MEMORY[0x1E69E9C10];
                            do
                            {
                              v48 = TDwarfInfoStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf32_compile_unit(&v139);
                              if (!v48)
                              {
                                break;
                              }

                              v49 = 8;
                              if (*(v48 + 2) < 5u)
                              {
                                v49 = 6;
                              }

                              v87 = *(v48 + v49);
                              *&buf = &v87;
                              v50 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v100, &v87, &std::piecewise_construct, &buf);
                              v52 = v50[3];
                              v51 = v50[4];
                              if (v51)
                              {
                                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                              }

                              if (v52)
                              {
                                operator new();
                              }

                              if (v134 >= v87)
                              {
                                TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(&v131, v87);
                                TDwarfAbbrevStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::abbrev_table();
                              }

                              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                              {
                                LOWORD(buf) = 0;
                                _os_log_impl(&dword_1D96E9000, v47, OS_LOG_TYPE_DEFAULT, "Bad abbrev table offset in compile unit\n", &buf, 2u);
                              }

                              if (v51)
                              {
                                std::__shared_weak_count::__release_shared[abi:ne200100](v51);
                              }
                            }

                            while (v140 != v142);
                            v54 = v97;
                            for (i = v98; v54 != i; ++v54)
                            {
                              TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(*v54, *(*v54 + 32));
                              v146 = 0;
                              v144 = 0u;
                              v145 = 0u;
                              buf = 0u;
                              *&buf = *v54;
                              *(&buf + 1) = &v131;
                              *&v144 = &v114;
                              *(&v144 + 1) = &v127;
                              *&v145 = &v119;
                              *(&v145 + 1) = &v110;
                              v146 = &v106;
                              parse_dies<Dwarf<Dwarf32,Pointer64,LittleEndian>,TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>(v84[4], *v54, &v97, &buf, v83, a3, a4, a5, &v91, &v94, &v88);
                            }
                          }

                          TRawSymbolOwnerData<Pointer64>::presize_symbols_container_by(v83, *(&v93 + 1));
                          std::vector<TRawSourceInfo<Pointer64>>::reserve(v83 + 26, *(&v96 + 1));
                          if (v92 != *(&v91 + 1))
                          {
                            v56 = (*(&v91 + 1) + 8 * (v93 / 0x27));
                            v57 = (*v56 + 104 * (v93 % 0x27));
                            v58 = ((*(&v93 + 1) + v93) * 0xA41A41A41A41A41BLL) >> 64;
                            v59 = (v58 + ((*(&v93 + 1) + v93 - v58) >> 1)) >> 5;
                            v60 = *(*(&v91 + 1) + 8 * v59) + 104 * (*(&v93 + 1) + v93 - 39 * v59);
                            while (v57 != v60)
                            {
                              TRawSymbolOwnerData<Pointer64>::add_symbol(v83, v57);
                              v57 = (v57 + 104);
                              if ((v57 - *v56) == 4056)
                              {
                                v61 = v56[1];
                                ++v56;
                                v57 = v61;
                              }
                            }
                          }

                          if (v95 == *(&v94 + 1))
                          {
                            v62 = 0;
                            v64 = 0;
                            v63 = (*(&v94 + 1) + 8 * ((*(&v96 + 1) + v96) / 0x66uLL));
                          }

                          else
                          {
                            v62 = (*(*(&v94 + 1) + 8 * (v96 / 0x66)) + 40 * (v96 % 0x66));
                            v63 = (*(&v94 + 1) + 8 * ((*(&v96 + 1) + v96) / 0x66uLL));
                            v64 = (*v63 + 40 * ((*(&v96 + 1) + v96) % 0x66uLL));
                          }

                          *&buf = v83 + 26;
                          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRawSourceInfo<Pointer64>,TRawSourceInfo<Pointer64>*,TRawSourceInfo<Pointer64>&,TRawSourceInfo<Pointer64>**,long,102l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRawSourceInfo<Pointer64>,TRawSourceInfo<Pointer64>*,TRawSourceInfo<Pointer64>&,TRawSourceInfo<Pointer64>**,long,102l>,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer64>>>>>((*(&v94 + 1) + 8 * (v96 / 0x66)), v62, v63, v64, &buf);
                          if (*(&v90 + 1))
                          {
                            if (v89 == *(&v88 + 1))
                            {
                              v65 = 0;
                              v67 = 0;
                              v66 = (*(&v88 + 1) + 8 * ((v90 + *(&v90 + 1)) / 0xAAuLL));
                            }

                            else
                            {
                              v65 = (*(*(&v88 + 1) + 8 * (v90 / 0xAA)) + 24 * (v90 % 0xAA));
                              v66 = (*(&v88 + 1) + 8 * ((v90 + *(&v90 + 1)) / 0xAAuLL));
                              v67 = (*v66 + 24 * ((v90 + *(&v90 + 1)) % 0xAAuLL));
                            }

                            *&buf = v83 + 67;
                            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRangeValue<Pointer64,char const*>,TRangeValue<Pointer64,char const*>*,TRangeValue<Pointer64,char const*>&,TRangeValue<Pointer64,char const*>**,long,170l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRangeValue<Pointer64,char const*>,TRangeValue<Pointer64,char const*>*,TRangeValue<Pointer64,char const*>&,TRangeValue<Pointer64,char const*>**,long,170l>,std::back_insert_iterator<std::vector<TRangeValue<Pointer64,char const*>>>>>((*(&v88 + 1) + 8 * (v90 / 0xAA)), v65, v66, v67, &buf);
                          }

                          std::deque<TRangeValue<Pointer64,char const*>>::~deque[abi:ne200100](&v88);
                          std::deque<TRawSymbol<Pointer64>>::~deque[abi:ne200100](&v91);
                          std::deque<TRawSourceInfo<Pointer64>>::~deque[abi:ne200100](&v94);
                          *&buf = &v97;
                          std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>::__destroy_vector::operator()[abi:ne200100](&buf);
                          std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>>::~__hash_table(v100);
                          if (v137)
                          {
                            *(&v137 + 1) = v137;
                            operator delete(v137);
                          }
                        }
                      }

                      return;
                    }

LABEL_87:
                    v69 = 0;
                    if (v22)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_88;
                  }

LABEL_76:
                  v12 = *(v12 + 5);
                  goto LABEL_77;
                }

LABEL_75:
                v28 = *(v11 + 5);
                if (!v12)
                {
                  goto LABEL_77;
                }

                goto LABEL_76;
              }
            }

            else
            {
              v70 = 0;
              if (!v16)
              {
                goto LABEL_82;
              }
            }

            v27 = v21 + *(v16 + 12);
LABEL_74:
            v78 = v27;
            if (!v11)
            {
              goto LABEL_83;
            }

            goto LABEL_75;
          }
        }

        else
        {
          v24 = 0;
          if (v15)
          {
            goto LABEL_60;
          }
        }

        v25 = 0;
        goto LABEL_67;
      }
    }
  }
}

uint64_t extract_stabs_data_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(char a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v14 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(*(a5 + 24), "__LINKEDIT");
  v15 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symtab(*(a5 + 24));
  v16 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::dysymtab(*(a5 + 24));
  if (!v15)
  {
    return 0;
  }

  v17 = v16;
  v39 = a7;
  v40 = a6;
  v18 = *(a5 + 8);
  v19 = v15[3];
  if ((*(*v18 + 16))(v18))
  {
    v20 = v15[2];
    v21 = *(a5 + 32) + *(v14 + 24) - *(v14 + 40);
LABEL_6:
    v22 = v21 + v20;
    goto LABEL_10;
  }

  if ((*(a5 + 58) & 8) == 0)
  {
    v21 = *(a5 + 16);
    v20 = v15[2];
    goto LABEL_6;
  }

  v23 = *(a5 + 64);
  if ((*(a5 + 80) & 1) == 0)
  {
    v23 = 0;
  }

  v21 = *(a5 + 16) - v23;
  v22 = v21 + v15[2];
LABEL_10:
  if (!(v21 + v15[4]))
  {
    return 0;
  }

  if (!v19 || !v15[5])
  {
    return 1;
  }

  v38 = v21 + v15[4];
  result = (*(*v18 + 32))(v18, v22, 16 * v19);
  v37 = result;
  if (result)
  {
    v36 = v15[5];
    if (a1)
    {
      if (a2 && a4)
      {
        extract_direct_stabs_from_header_filtering_redacted<SizeAndEndianness<Pointer64,LittleEndian>>(a5, v40, result, v19, v38, v36);
        extract_stripped_locals_from_dyld_shared_cache<SizeAndEndianness<Pointer64,LittleEndian>>(a2, a3, a4, a5, v40);
      }

      else
      {
        extract_direct_stabs_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(a5, v40, result, v19, v38, v36, v39);
      }
    }

    result = 1;
    if (v14)
    {
      if (v17 && v17[14] && (a1 & 2) != 0 && v17[15])
      {
        if ((*(*v18 + 16))(v18))
        {
          v25 = *(v14 + 24) - *(v14 + 40) + v17[14] + *(a5 + 32);
          v26 = v36;
        }

        else
        {
          v26 = v36;
          if ((*(a5 + 58) & 8) != 0)
          {
            v27 = *(a5 + 64);
            if ((*(a5 + 80) & 1) == 0)
            {
              v27 = 0;
            }

            v25 = *(a5 + 16) - v27 + v17[14];
          }

          else
          {
            v25 = *(a5 + 16) + v17[14];
          }
        }

        v28 = v17[15];
        v29 = (*(*v18 + 32))(v18, v25, 4 * v28);
        v30 = v29;
        if (v28 && !v29)
        {
          return 0;
        }

        v31 = *(a5 + 24);
        v32 = *(v31 + 20);
        v41 = *(v31 + 16);
        v42 = v31;
        v43 = v31 + 32 + v32;
        v45 = 0;
        v46 = 0;
        v44 = v31 + 32;
        v33 = TSectionIterator<SizeAndEndianness<Pointer64,LittleEndian>>::section(&v41);
        if (v33)
        {
          v35 = v33;
          do
          {
            if (*(v35 + 64) == 8)
            {
              extract_indirect_stabs_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(a5, v40, v35, v30, v28, v37, v19, v34, v38, v26, v39);
            }

            v35 = TSectionIterator<SizeAndEndianness<Pointer64,LittleEndian>>::section(&v41);
          }

          while (v35);
        }

        return 1;
      }
    }
  }

  return result;
}

void extract_function_starts_data_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::function_starts(*(a1 + 24));
  if (v6)
  {
    v7 = v6;
    if (v6[3])
    {
      v8 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(*(a1 + 24), "__LINKEDIT");
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 8);
        if ((*(*v10 + 16))(v10))
        {
          v11 = *(v9 + 24) - *(v9 + 40) + v7[2] + *(a1 + 32);
        }

        else if ((*(a1 + 58) & 8) != 0)
        {
          v12 = *(a1 + 64);
          if ((*(a1 + 80) & 1) == 0)
          {
            v12 = 0;
          }

          v11 = *(a1 + 16) - v12 + v7[2];
        }

        else
        {
          v11 = *(a1 + 16) + v7[2];
        }

        v13 = v7[3];
        v14 = (*(*v10 + 32))(v10, v11, v13);
        if (v14)
        {
          v15 = v14;
          v23 = v14;
          v24 = 0;
          v25 = v11;
          v26 = v13;
          v16 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(*(a1 + 24), "__TEXT");
          if (v16)
          {
            v17 = *(a1 + 32) + *(v16 + 24);
            v22 = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
            if (CSCppArchitecture::matches(&v22, 0xCuLL))
            {
              v18 = 0;
              goto LABEL_16;
            }

            v21 = *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32);
            v19 = CSCppArchitecture::matches(&v21, 0x100000CuLL);
            v15 = v23;
            v18 = v24;
            if (v19)
            {
LABEL_16:
              if (*(v15 + v18))
              {
                do
                {
                  v17 += TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(&v23);
                  if (v17)
                  {
                    v20 = 272629824;
                  }

                  else
                  {
                    v20 = 272629760;
                  }

                  TRawSymbolOwnerData<Pointer64>::emplace_symbol(a2, v17 & 0xFFFFFFFFFFFFFFFELL, 0, "$$$function-starts-fake-name$$$", "$$$function-starts-fake-mangled-name$$$", v20, 0, a3);
                }

                while (*(v23 + v24));
              }

              return;
            }

            while (*(v23 + v24))
            {
              v17 += TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(&v23);
              TRawSymbolOwnerData<Pointer64>::emplace_symbol(a2, v17, 0, "$$$function-starts-fake-name$$$", "$$$function-starts-fake-mangled-name$$$", 0x10400000u, 0, a3);
            }
          }
        }
      }
    }
  }
}

const char *extract_debug_map_data_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v4 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(*(a1 + 24), "__LINKEDIT");
  result = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symtab(*(a1 + 24));
  if (!result || *(*(a1 + 24) + 12) == 9)
  {
    return result;
  }

  v6 = result;
  v7 = *(a1 + 8);
  v8 = *(result + 3);
  result = (*(*v7 + 16))(v7);
  if (result)
  {
    v9 = v6[2];
    v10 = *(a1 + 32) + *(v4 + 24) - *(v4 + 40);
    goto LABEL_7;
  }

  if ((*(a1 + 58) & 8) == 0)
  {
    v10 = *(a1 + 16);
    v9 = v6[2];
LABEL_7:
    v11 = v10 + v9;
    if (!v8)
    {
      return result;
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 64);
  if ((*(a1 + 80) & 1) == 0)
  {
    v12 = 0;
  }

  v10 = *(a1 + 16) - v12;
  v11 = v10 + v6[2];
  if (v8)
  {
LABEL_12:
    if (v6[5])
    {
      v13 = v6[4];
      result = (*(*v7 + 32))(v7, v11, 16 * v8);
      if (result)
      {
        v14 = result;
        v15 = v6[5];
        extract_debug_maps_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2, result, v8, v10 + v13, v15);

        return extract_relinked_subdylibs_in_debug_maps_from_header<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2, v14, v8, v10 + v13, v15);
      }
    }
  }

  return result;
}

unint64_t TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::gc_support_flags(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 20);
  v11 = *(v2 + 16);
  v12 = v2;
  v13 = v2 + 32 + v3;
  v14 = v2 + 32;
  result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
  if (result)
  {
    v5 = result;
    while (1)
    {
      if (*v5 == 25 && (!strcmp("__OBJC", (v5 + 8)) || !strcmp("__DATA", (v5 + 8))))
      {
        v6 = *(v5 + 64);
        if (v6)
        {
          break;
        }
      }

LABEL_11:
      result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v7 = v5 + 72;
    while (strncmp(v7, "__image_info", 0x10uLL) && strncmp(v7, "__objc_imageinfo", 0x10uLL))
    {
      v7 += 80;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    if (*(v7 + 40) >= 8uLL && *(v7 + 48))
    {
      if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
      {
        v8 = *(v7 + 32);
        v9 = *(a1 + 32);
      }

      else
      {
        v8 = *(a1 + 16);
        v9 = *(v7 + 48);
      }

      v10 = (*(**(a1 + 8) + 32))(*(a1 + 8), v9 + v8, 8);
      if (v10)
      {
        return *(v10 + 4) | 1u;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sort_and_filter_extracted_data<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = TRawSymbolOwnerData<Pointer64>::mutable_sorted_symbols(a2);
  v140 = 0;
  v141 = 0;
  __src = 0;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = v6[3];
  if (v8 == 9 || v8 == 10 && (*(a1 + 56) & 0x38000000) != 0x10000000)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v125 = v2;
    v9 = v6[5];
    LODWORD(v142) = v6[4];
    *(&v142 + 1) = v6;
    *&v143 = v6 + v9 + 32;
    v144 = 0;
    v145 = 0;
    *(&v143 + 1) = v6 + 8;
    while (1)
    {
      v10 = TSectionIterator<SizeAndEndianness<Pointer64,LittleEndian>>::section(&v142);
      v11 = v10;
      if (!v10)
      {
        break;
      }

      v12 = *(v10 + 40);
      if (v12)
      {
        v13 = *(v10 + 64);
        v14 = v13 == 11 || v13 == 0;
        v15 = !v14 || (*(v10 + 64) & 0x80000400) == 0;
        v16 = !v15;
        if (!strstr((v10 + 16), "__LINKINFO"))
        {
          v17 = *(v11 + 32) + v7;
          v18 = v140;
          if (v140 >= v141)
          {
            v20 = __src;
            v21 = v140 - __src;
            v22 = 0xAAAAAAAAAAAAAAABLL * ((v140 - __src) >> 3);
            v23 = v22 + 1;
            if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v141 - __src) >> 3) > v23)
            {
              v23 = 0x5555555555555556 * ((v141 - __src) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v141 - __src) >> 3) >= 0x555555555555555)
            {
              v24 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              std::allocator<TRangeValue<Pointer64,unsigned int>>::allocate_at_least[abi:ne200100](&__src, v24);
            }

            v25 = 8 * ((v140 - __src) >> 3);
            *v25 = v17;
            *(v25 + 8) = v12;
            *(v25 + 16) = v16;
            v19 = 24 * v22 + 24;
            v26 = (24 * v22 - v21);
            memcpy(v26, v20, v21);
            v27 = __src;
            __src = v26;
            v140 = v19;
            v141 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v140 = v17;
            *(v18 + 1) = v12;
            v19 = (v18 + 24);
            *(v18 + 4) = v16;
          }

          v140 = v19;
        }
      }
    }

    v29 = __src;
    v28 = v140;
    v2 = v125;
    if (v140 != __src)
    {
      goto LABEL_47;
    }
  }

  v30 = *(v2 + 160);
  v31 = *(v2 + 168);
  if (v30 != v31)
  {
    do
    {
      v33 = *v30;
      v32 = v30[1];
      if (v28 >= v141)
      {
        v34 = __src;
        v35 = v28 - __src;
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v28 - __src) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v141 - __src) >> 3) > v37)
        {
          v37 = 0x5555555555555556 * ((v141 - __src) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v141 - __src) >> 3) >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          std::allocator<TRangeValue<Pointer64,unsigned int>>::allocate_at_least[abi:ne200100](&__src, v38);
        }

        v39 = 24 * v36;
        *v39 = v33;
        *(v39 + 8) = v32;
        *(v39 + 16) = 0;
        v28 = 24 * v36 + 24;
        v40 = (v39 - v35);
        memcpy((v39 - v35), v34, v35);
        v41 = __src;
        __src = v40;
        v140 = v28;
        v141 = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v28 = v33;
        *(v28 + 8) = v32;
        *(v28 + 16) = 0;
        v28 += 24;
      }

      v140 = v28;
      v30 += 3;
    }

    while (v30 != v31);
    v29 = __src;
  }

LABEL_47:
  if (v29 == v28)
  {
    goto LABEL_174;
  }

  v42 = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned int> *,false>(v29, v28, &v142, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 3)), 1, v5);
  v43 = *v4;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v134 = 0;
  v135 = 0;
  v133 = 0;
  if (v43 < v4[1])
  {
    v44 = 0;
    v45 = 0;
    v124 = 0;
    v126 = 0;
    v46 = &v128;
    while (2)
    {
      v47 = v43;
      while (2)
      {
        v43 = (v47 + 104);
        while ((atomic_load_explicit((v47 + 28), memory_order_acquire) & 2) != 0)
        {
          v47 += 104;
          v48 = v4[1];
          v43 += 13;
          if (v47 >= v48)
          {
            goto LABEL_94;
          }
        }

        v49 = *v47;
        if (*v47 - v126 >= v124)
        {
          v50 = v140;
          if (v140 != __src)
          {
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v140 - __src) >> 3);
            v50 = __src;
            do
            {
              v52 = v51 >> 1;
              v53 = &v50[3 * (v51 >> 1)];
              v55 = *v53;
              v54 = v53 + 3;
              v51 += ~(v51 >> 1);
              if (v49 < v55)
              {
                v51 = v52;
              }

              else
              {
                v50 = v54;
              }
            }

            while (v51);
          }

          if (v50 == __src || v49 - *(v50 - 3) >= *(v50 - 2))
          {
            atomic_fetch_or_explicit((v47 + 28), 0x1000u, memory_order_relaxed);
            v47 += 104;
            v48 = v4[1];
            v44 = 1;
            if (v47 < v48)
            {
              continue;
            }

            goto LABEL_95;
          }

          v45 = *(v50 - 2);
          v124 = *(v50 - 2);
          v126 = *(v50 - 3);
        }

        break;
      }

      sort_inlined_functions<Pointer64>(v47, v42);
      for (i = v4[1]; v43 != i; v43 += 13)
      {
        if (*v43 != *v47)
        {
          break;
        }
      }

      if ((atomic_load_explicit((v47 + 28), memory_order_acquire) & 0x100) == 0)
      {
        v57 = v124 + v126 - *v47;
        if (v43 == v4[1])
        {
          v58 = v124 + v126 - *v47;
        }

        else
        {
          v58 = *v43 - *v47;
        }

        if (v58 < v57)
        {
          v57 = v58;
        }

        v59 = *(v47 + 8);
        if (v59 >= v57)
        {
          v60 = v57;
        }

        else
        {
          v60 = *(v47 + 8);
        }

        if (v59)
        {
          v57 = v60;
        }

        *(v47 + 8) = v57;
      }

      v123 = v46;
      if (atomic_load_explicit((v47 + 28), memory_order_acquire) == 2048)
      {
        v61 = (v45 & 1) == 0;
      }

      else
      {
        v61 = 0;
        atomic_store(atomic_load_explicit((v47 + 28), memory_order_acquire) | v45, (v47 + 28));
      }

      TRawSymbolOwnerData<Pointer64>::aliases_for_symbol(v2, v47, &v131);
      std::vector<TRawSymbol<Pointer64>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>>(&v136, v137, v131, v132, 0x4EC4EC4EC4EC4EC5 * ((v132 - v131) >> 3));
      if (v61)
      {
        TRawSymbolOwnerData<Pointer64>::aliases_from_deduplicated_variants_for_symbol(v2, v47, &v129);
        v46 = v123;
        if (v130 != v129)
        {
          TRawSymbol<Pointer64>::TRawSymbol(v127, v130 - 104);
          v148 = 0;
          v142 = 0u;
          v143 = 0u;
          v146 = 0u;
          memset(v147, 0, 25);
          TRawSymbol<Pointer64>::operator=(&v142, v127);
          TRawSymbol<Pointer64>::operator=(v127, v47);
          TRawSymbol<Pointer64>::operator=(v47, &v142);
          v149 = v147;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v149);
          atomic_store(atomic_load_explicit((v47 + 28), memory_order_acquire) & 0xFFFFFDFF, (v47 + 28));
          v62 = v130;
          *&v142 = v130 - 40;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v142);
          v130 = v62 - 104;
          std::vector<TRawSymbol<Pointer64>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>>(&v136, v137, v129, v62 - 104, 0x4EC4EC4EC4EC4EC5 * ((v62 - 104 - v129) >> 3));
          v46 = v123;
          *&v142 = v123;
          std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v142);
        }

        *&v142 = &v129;
        v63 = &v142;
      }

      else
      {
        TRawSymbolOwnerData<Pointer64>::deduplicated_variants_for_symbol(v2, v47, &v142);
        v65 = *(&v142 + 1);
        v64 = v142;
        if (v142 != *(&v142 + 1))
        {
          do
          {
            atomic_store(atomic_load_explicit((v64 + 28), memory_order_acquire) | v45, (v64 + 28));
            v64 += 104;
          }

          while (v64 != v65);
          v65 = *(&v142 + 1);
          v64 = v142;
        }

        v46 = v123;
        std::vector<TRawSymbol<Pointer64>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64>*>>>(&v133, v134, v64, v65, 0x4EC4EC4EC4EC4EC5 * ((v65 - v64) >> 3));
        v127[0] = &v142;
        v63 = v127;
      }

      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v63);
      *&v142 = &v131;
      std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v142);
      v48 = v4[1];
      if (v43 < v48)
      {
        continue;
      }

      break;
    }

LABEL_94:
    if ((v44 & 1) == 0)
    {
      goto LABEL_96;
    }

LABEL_95:
    v66 = std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSymbol<Pointer64> *>,std::__mem_fn<BOOL const (TRawSymbol<Pointer64>::*)(void)const>>(*v4, v48, TRawSymbol<Pointer64>::is_marked_for_deletion, 0);
    std::vector<TRawSymbol<Pointer64>>::erase(v4, v66, v4[1]);
  }

LABEL_96:
  if (v136 != v137)
  {
    *&v143 = 0;
    v142 = 0uLL;
    std::vector<TRawSymbol<Pointer64>>::reserve(&v142, 0x4EC4EC4EC4EC4EC5 * (v137 - v136) + 0x4EC4EC4EC4EC4EC5 * ((v4[1] - *v4) >> 3));
    std::__merge[abi:ne200100]<std::__less<void,void> &,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::back_insert_iterator<std::vector<TRawSymbol<Pointer64>>>>(*v4, v4[1], v136, v137, &v142);
    std::vector<TRawSymbol<Pointer64>>::__vdeallocate(v4);
    *v4 = v142;
    v4[2] = v143;
    v142 = 0uLL;
    *&v143 = 0;
    v127[0] = &v142;
    std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v127);
  }

  if (v133 != v134)
  {
    *&v143 = 0;
    v142 = 0uLL;
    std::vector<TRawSymbol<Pointer64>>::reserve(&v142, 0x4EC4EC4EC4EC4EC5 * (v134 - v133) + 0x4EC4EC4EC4EC4EC5 * ((v4[1] - *v4) >> 3));
    std::__merge[abi:ne200100]<std::__less<void,void> &,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer64> *>>,std::back_insert_iterator<std::vector<TRawSymbol<Pointer64>>>>(*v4, v4[1], v133, v134, &v142);
    std::vector<TRawSymbol<Pointer64>>::__vdeallocate(v4);
    *v4 = v142;
    v4[2] = v143;
    v142 = 0uLL;
    *&v143 = 0;
    v127[0] = &v142;
    std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v127);
  }

  std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__less<void,void>>(*(v2 + 208), *(v2 + 216), v127);
  v68 = *(v2 + 208);
  v67 = *(v2 + 216);
  if (v68 != v67)
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    do
    {
      v72 = v68;
      while (1)
      {
        v73 = *v72;
        if (*v72 - v71 < v70)
        {
          break;
        }

        v74 = v4[1];
        if (v74 != *v4)
        {
          v75 = 0x4EC4EC4EC4EC4EC5 * ((v74 - *v4) >> 3);
          v74 = *v4;
          do
          {
            v76 = v75 >> 1;
            v77 = (v74 + 104 * (v75 >> 1));
            v79 = *v77;
            v78 = v77 + 13;
            v75 += ~(v75 >> 1);
            if (v73 < v79)
            {
              v75 = v76;
            }

            else
            {
              v74 = v78;
            }
          }

          while (v75);
        }

        if (*v4 != v74 && v73 - *(v74 - 104) < *(v74 - 96))
        {
          if ((atomic_load_explicit((v74 - 76), memory_order_acquire) & 0x800) == 0)
          {
            v71 = *(v74 - 104);
            v70 = *(v74 - 96);
            v73 = *v72;
            v67 = *(v2 + 216);
            break;
          }

          v67 = *(v2 + 216);
        }

        *(v72 + 7) |= 0x80000000;
        v72 = (v72 + 40);
        v69 = 1;
        if (v72 == v67)
        {
          goto LABEL_128;
        }
      }

      v80 = v70 + v71 - v73;
      *(v72 + 1) = v80;
      v68 = (v72 + 40);
      if (v67 != (v72 + 40))
      {
        v81 = *v68;
        if (*v68 == v73)
        {
          v82 = (v72 + 40);
          v68 = v72 + 5;
          while (1)
          {
            *(v72 + 7) |= 0x80000000;
            *(v68 - 4) = v80;
            if (v68 == v67)
            {
              break;
            }

            v72 = v82;
            v82 = (v82 + 40);
            v83 = *v68;
            v68 = (v68 + 40);
            v81 = v83;
            if (v83 != v73)
            {
              v72 = v68 - 5;
              v68 = (v68 - 40);
              v69 = 1;
              goto LABEL_123;
            }
          }

          v69 = 1;
        }

        else
        {
LABEL_123:
          v84 = v81 - v73;
          if (v84 < v80)
          {
            *(v72 + 1) = v84;
          }
        }
      }
    }

    while (v68 != v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_130;
    }

LABEL_128:
    v85 = std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSourceInfo<Pointer64> *>,std::__mem_fn<BOOL const (TRawSourceInfo<Pointer64>::*)(void)const>>(*(v2 + 208), v67, TRawSourceInfo<Pointer64>::is_marked_for_deletion, 0);
    if (v85 != *(v2 + 216))
    {
      *(v2 + 216) = v85;
    }
  }

LABEL_130:
  v86 = (v2 + 536);
  v87 = *(v2 + 544);
  v88 = *(v2 + 536);
  if (v88 != v87)
  {
    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(v88, v87, v127, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v87 - v88) >> 3)), 1, *(v2 + 536));
    v142 = 0uLL;
    *&v143 = 0;
    std::vector<CSCppSectionRange>::reserve(&v142, 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 544) - *(v2 + 536)) >> 3));
    v89 = *(v2 + 536);
    v90 = *(v2 + 544);
    if (v89 == v90)
    {
      v90 = *(v2 + 536);
    }

    else
    {
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 1;
      do
      {
        v95 = v89[2];
        if (v94)
        {
          v94 = 0;
          v93 = *v89;
          v96 = v89[1];
          v89 += 3;
          v91 = v96 + v93;
          v92 = v95;
        }

        else
        {
          v97 = strlen(v92);
          if (!strncmp(v92, v95, v97))
          {
            v94 = 0;
            v101 = *v89;
            v102 = v89[1];
            v89 += 3;
            v91 = v102 + v101;
          }

          else
          {
            v98 = v91 - v93;
            v99 = *(&v142 + 1);
            if (*(&v142 + 1) >= v143)
            {
              v103 = v142;
              v104 = *(&v142 + 1) - v142;
              v105 = 0xAAAAAAAAAAAAAAABLL * ((*(&v142 + 1) - v142) >> 3);
              v106 = v105 + 1;
              if (v105 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v143 - v142) >> 3) > v106)
              {
                v106 = 0x5555555555555556 * ((v143 - v142) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v143 - v142) >> 3) >= 0x555555555555555)
              {
                v107 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v107 = v106;
              }

              if (v107)
              {
                std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](&v142, v107);
              }

              v108 = (8 * ((*(&v142 + 1) - v142) >> 3));
              *v108 = v93;
              v108[1] = v98;
              v108[2] = v92;
              v100 = 24 * v105 + 24;
              v109 = (24 * v105 - v104);
              memcpy(v109, v103, v104);
              v110 = v142;
              *&v142 = v109;
              *(&v142 + 1) = v100;
              *&v143 = 0;
              if (v110)
              {
                operator delete(v110);
              }
            }

            else
            {
              **(&v142 + 1) = v93;
              *(v99 + 8) = v98;
              v100 = v99 + 24;
              *(v99 + 16) = v92;
            }

            v93 = 0;
            v92 = 0;
            v91 = 0;
            *(&v142 + 1) = v100;
            v90 = *(v2 + 544);
            v94 = 1;
          }
        }
      }

      while (v89 != v90);
      v86 = (v2 + 536);
      if (v92 && v93 && v91)
      {
        v111 = v91 - v93;
        v112 = *(&v142 + 1);
        if (*(&v142 + 1) >= v143)
        {
          v114 = v142;
          v115 = *(&v142 + 1) - v142;
          v116 = 0xAAAAAAAAAAAAAAABLL * ((*(&v142 + 1) - v142) >> 3);
          v117 = v116 + 1;
          if (v116 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v143 - v142) >> 3) > v117)
          {
            v117 = 0x5555555555555556 * ((v143 - v142) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v143 - v142) >> 3) >= 0x555555555555555)
          {
            v118 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v118 = v117;
          }

          if (v118)
          {
            std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](&v142, v118);
          }

          v119 = (8 * ((*(&v142 + 1) - v142) >> 3));
          *v119 = v93;
          v119[1] = v111;
          v119[2] = v92;
          v113 = (24 * v116 + 24);
          v120 = (24 * v116 - v115);
          memcpy(v120, v114, v115);
          v121 = v142;
          *&v142 = v120;
          *(&v142 + 1) = v113;
          *&v143 = 0;
          if (v121)
          {
            operator delete(v121);
          }
        }

        else
        {
          **(&v142 + 1) = v93;
          *(v112 + 8) = v111;
          v113 = (v112 + 24);
          *(v112 + 16) = v92;
        }

        *(&v142 + 1) = v113;
        v90 = *(v2 + 544);
        goto LABEL_169;
      }
    }

    v113 = *(&v142 + 1);
LABEL_169:
    v122 = v142;
    if (v113 - v142 < v90 - *v86)
    {
      *(v2 + 544) = *v86;
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer64,char const*> *,TRangeValue<Pointer64,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer64,char const*>>>>(v127, v122, v113, v86);
      v122 = v142;
    }

    if (v122)
    {
      *(&v142 + 1) = v122;
      operator delete(v122);
    }
  }

  *&v142 = &v133;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v142);
  *&v142 = &v136;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v142);
  v29 = __src;
LABEL_174:
  if (v29)
  {
    v140 = v29;
    operator delete(v29);
  }
}

void sub_1D976A9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  *(v39 - 208) = a9;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v39 - 208));
  *(v39 - 208) = &a26;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v39 - 208));
  *(v39 - 208) = &a29;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v39 - 208));
  *(v39 - 208) = &a32;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v39 - 208));
  *(v39 - 208) = &a35;
  std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100]((v39 - 208));
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TRawSymbolOwnerData<Pointer64>::slide_to_segment_addresses(void *a1, char **a2, __int128 **a3, char a4)
{
  create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppSegmentRange>(a2, a3, 0, &__p);
  if (a1 + 48 != a2 && a1[48] == a1[49])
  {
    std::vector<CSCppSegmentRange>::__assign_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(a1 + 48, *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  v7 = __p;
  if (__p == v28)
  {
    goto LABEL_22;
  }

  adjustVectorToMatchSegmentDeltas<CSCppSegmentRange,Pointer64>(a1 + 48, &__p);
  if ((a4 & 1) == 0)
  {
    adjustVectorToMatchSegmentDeltas<CSCppSectionRange,Pointer64>(a1 + 20, &__p);
    v9 = a1[20];
    v10 = a1[21];
    v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(v9, v10, &v29, v12, 1, v8);
  }

  adjustSymbolsToMatchSegmentDeltas<Pointer64>(a1 + 23, &__p);
  v14 = a1[23];
  v15 = a1[24];
  v16 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v15 - v14) >> 3));
  v17 = v15 == v14 ? 0 : v16;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer64> *,false>(v14, v15, &v29, v17, 1, v13);
  adjustVectorToMatchSegmentDeltas<TRawSourceInfo<Pointer64>,Pointer64>(a1 + 26, &__p);
  v19 = a1[26];
  v20 = a1[27];
  v21 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v20[-v19] >> 3));
  v22 = v20 == v19 ? 0 : v21;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer64> *,false>(v19, v20, &v29, v22, 1, v18);
  v23 = a1[30];
  v7 = __p;
  if (!v23 || __p >= v28)
  {
LABEL_22:
    if (!v7)
    {
      return;
    }

    goto LABEL_23;
  }

  v24 = a1[29];
  v25 = v24 + v23;
  v26 = __p;
  while (v24 < *v26 || v25 > v26[1] + *v26)
  {
    v26 += 3;
    if (v26 >= v28)
    {
      goto LABEL_22;
    }
  }

  a1[29] = v26[2] + v24;
  if (v7)
  {
LABEL_23:
    v28 = v7;
    operator delete(v7);
  }
}

void sub_1D976ACB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppSegmentRange>(char **a1@<X0>, __int128 **a2@<X1>, char a3@<W2>, __n128 **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v8 != *a1 && a2[1] != *a2)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&v45, v7, v8, v9 >> 5);
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;
    v43 = 0;
    v44 = 0;
    __p = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 32 && a2[1] - *a2 != 32)
    {
      v15 = 126 - 2 * __clz((v46 - v45) >> 5);
      if (v46 == v45)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(v45, v46, &v48, v16, 1);
      v17 = 126 - 2 * __clz((v43 - __p) >> 5);
      if (v43 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(__p, v43, &v48, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v45;
    v20 = __p;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(a4, v14 >> 5);
    if (v19 != v46)
    {
      while (1)
      {
        if (v20 == v43)
        {
          goto LABEL_38;
        }

        v22 = v20[1].n128_u64[1];
        if (!v22)
        {
          v22 = v20[1].n128_u64[0];
        }

        v23 = *(v19 + 3);
        if (!v23)
        {
          v23 = *(v19 + 2);
        }

        if (!strncmp(v22, v23, 0x10uLL))
        {
          goto LABEL_24;
        }

        if (!CSCppSegmentRange::is_skippable(v19))
        {
          break;
        }

        v19 = (v19 + 32);
LABEL_21:
        if (v19 == v46)
        {
          goto LABEL_38;
        }
      }

      if (!CSCppSegmentRange::is_skippable(v20))
      {
LABEL_24:
        v24 = v20->n128_u64[0];
        v26 = *v19;
        v25 = *(v19 + 1);
        v27 = v20->n128_u64[0] - *v19;
        v29 = a4[1];
        v28 = a4[2];
        if (v29 >= v28)
        {
          v31 = *a4;
          v32 = v29 - *a4;
          v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 3) + 1;
          if (v33 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          v34 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v31) >> 3);
          if (2 * v34 > v33)
          {
            v33 = 2 * v34;
          }

          if (v34 >= 0x555555555555555)
          {
            v35 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a4, v35);
          }

          v36 = (8 * (v32 >> 3));
          *v36 = v26;
          v36[1] = v25;
          v36[2] = v27;
          v30 = (v36 + 3);
          v37 = (v36 - v32);
          memcpy(v36 - v32, v31, v32);
          v38 = *a4;
          *a4 = v37;
          a4[1] = v30;
          a4[2] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          v29->n128_u64[0] = v26;
          v29->n128_u64[1] = v25;
          v30 = (v29 + 24);
          v29[1].n128_u64[0] = v27;
        }

        a4[1] = v30;
        a3 |= v24 != v26;
        v19 = (v19 + 32);
      }

      v20 += 2;
      goto LABEL_21;
    }

LABEL_38:
    if (a3)
    {
      v39 = a4[1];
      v40 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v39 - *a4) >> 3));
      if (v39 == *a4)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a4, v39, &v48, v41, 1, v21);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }
  }
}

void sub_1D976AFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *TDwarfInfoStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf32_compile_unit(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (v2 < (v1 + 6))
  {
    goto LABEL_29;
  }

  result = (*a1 + v1);
  v8 = result[1];
  if (v8 - 6 < 0xFFFFFFFC)
  {
    return 0;
  }

  v9 = *result;
  if (v9 == -1)
  {
    return 0;
  }

  v10 = 11;
  if (v8 >= 5u)
  {
    v10 = 12;
  }

  if (v9 + 4 < v10)
  {
    return 0;
  }

  v11 = (v1 + v9 + 4);
  if (v11 > v1 && v2 >= v11)
  {
    v13 = 7;
    if (v8 < 5u)
    {
      v13 = 10;
    }

    if (*(result + v13) != 8)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v16 = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "Compile unit with bad address_size\n";
      v5 = &v16;
      goto LABEL_4;
    }

    if (v8 < 5u || (v8 & 0xFF0000) == 0x10000)
    {
      *(a1 + 8) = v11;
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "Unsupported compile unit type\n";
      v5 = &v15;
      goto LABEL_4;
    }
  }

  else
  {
LABEL_29:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "Out of bounds compile unit\n";
      v5 = &v14;
LABEL_4:
      _os_log_impl(&dword_1D96E9000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    }
  }

  return 0;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(uint64_t result, unsigned int a2)
{
  if (*(result + 24) < a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Attempt to set cursor outside bounds", 36);
    std::ostringstream::str[abi:ne200100](v5, &v4);
    Exception::Exception(v3, &v4);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v3);
  }

  *(result + 8) = a2;
  return result;
}

void sub_1D976B250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void parse_dies<Dwarf<Dwarf32,Pointer64,LittleEndian>,TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t (***a8)(void, const char *), unint64_t *a9, unint64_t *a10, unint64_t *a11)
{
  v12 = a6;
  v13 = a4;
  v65 = *(a2 + 56);
  v66 = *(a2 + 48);
  v16 = *(a2 + 80);
  v17 = *(a2 + 88);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v16[7];
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  if (*(a2 + 8) != *(a2 + 24))
  {
    v63 = v16;
    while (1)
    {
      v19 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a2);
      if (!v19)
      {
        v24 = v85;
        if (v84 != v85)
        {
          v85 -= 8;
          if (v84 != v24 - 8)
          {
            v25 = *(v24 - 2);
            if (v25)
            {
              v26 = v24 - 24;
              do
              {
                if (*(v25 + 88) != 1)
                {
                  break;
                }

                v85 = v26 + 8;
                if (v26 + 8 == v84)
                {
                  break;
                }

                v27 = *v26;
                v26 -= 8;
                v25 = v27;
              }

              while (v27);
            }
          }
        }

        goto LABEL_93;
      }

      v20 = v16[1];
      if (v19 >= ((v16[2] - v20) >> 3) || (v21 = *(v20 + 8 * v19)) == 0)
      {
LABEL_94:
        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        break;
      }

      v22 = *(v21 + 12);
      if ((*(*v21 + 24))(v21) == 1)
      {
        *(v18 + 76) = 0;
        *(v18 + 128) = *(v18 + 120);
        *(v18 + 16) = -1;
        (*(*v21 + 16))(v21, v13, *(a2 + 36));
        LODWORD(v73) = 0;
          ;
        }

        if ((*(v18 + 76) & 0xC) == 0 || (*(v18 + 76) & 1) == 0)
        {
          if (v22)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v82 = 0;
          v83 = 0;
          v34 = resolve_parsed_data_names<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v18, &v83, &v82);
          v81 = v34;
          if ((*(v18 + 76) & 2) != 0)
          {
            if ((*(v18 + 76) & 0x8000) != 0)
            {
              v35 = *v18;
              v36 = *v18 + *(v18 + 80);
            }

            else
            {
              v35 = *v18;
              v36 = *(v18 + 8);
            }

            v37 = v36 - v35;
            if (v37)
            {
              v60 = v37;
              v81 = v34 | 0x100;
LABEL_49:
              v38 = *v18 + a1;
              if (a7)
              {
                v38 = TAddressRelocator<Pointer64>::relocate(a7, v38);
              }

              v80 = 0uLL;
              if (*(v21 + 8) == 29)
              {
                v39 = v38;
                has_inlined_info = TDwarfAbbrevData<Dwarf<Dwarf32,Pointer64,LittleEndian>>::has_inlined_info(v18, *(a2 + 36));
                v41 = 0;
                v38 = v39;
                if (has_inlined_info && (v12 & 1) == 0)
                {
                  v42 = *(a2 + 36);
                  v43 = *(v18 + 76);
                  if (v42 < 5)
                  {
                    if ((v43 & 0x400) != 0 && *(v18 + 64))
                    {
                      goto LABEL_67;
                    }

LABEL_68:
                    v48 = 0;
                  }

                  else
                  {
                    if ((v43 & 0x400) == 0)
                    {
                      goto LABEL_68;
                    }

LABEL_67:
                    v48 = path_from_file_index<Pointer64>(&v87, *(v18 + 64), *(a2 + 8), a5, v42);
                    v43 = *(v18 + 76);
                    v38 = v39;
                  }

                  *&v80 = v48;
                  *(&v80 + 1) = vbic_s8(*(v18 + 68), vceqz_s32(vand_s8(vdup_n_s32(v43), 0x100000000800)));
                  v41 = 1;
                }
              }

              else
              {
                v41 = 0;
              }

              v49 = *(v18 + 120);
              v50 = *(v18 + 128);
              if (v49 == v50)
              {
                v59 = v81;
                *&v73 = v38;
                *(&v73 + 1) = v60;
                v74 = 0uLL;
                v75 = v83;
                v76 = v82;
                v79 = 0;
                v77 = 0u;
                memset(v78, 0, 25);
                if (v41)
                {
                  v77 = v80;
                  v59 = v81 | 0x80000000;
                }

                HIDWORD(v74) = v59;
                record_symbols_with_ancestor<Pointer64,std::vector<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>,std::deque<TRawSymbol<Pointer64>>>(&v73, 1, v21, a9, &v84);
                v12 = a6;
                v16 = v63;
                v90[0] = v78;
                std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v90);
                v13 = a4;
              }

              else
              {
                v61 = v17;
                v73 = 0uLL;
                *&v74 = 0;
                if (v41)
                {
                  v51 = &v80;
                }

                else
                {
                  v51 = 0;
                }

                do
                {
                  v52 = (*v49 + a1);
                  if (a7)
                  {
                    v52 = TAddressRelocator<Pointer64>::relocate(a7, v52);
                  }

                  v90[0] = v52;
                  v53 = v49[1] - *v49;
                  v72 = v53;
                  if (v53)
                  {
                    v70 = v51;
                    v54 = *(&v73 + 1);
                    if (*(&v73 + 1) >= v74)
                    {
                      v58 = std::vector<TRawSymbol<Pointer64>>::__emplace_back_slow_path<TRawSymbol<Pointer64>::dwarf_ranges_tag,unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo *>(&v73, &v71, v90, &v72, &v83, &v82, &v81, &v70);
                    }

                    else
                    {
                      v56 = v82;
                      v55 = v83;
                      v57 = v81;
                      **(&v73 + 1) = v52;
                      *(v54 + 8) = v53;
                      *(v54 + 16) = 0;
                      *(v54 + 24) = 0;
                      *(v54 + 32) = v55;
                      *(v54 + 40) = v56;
                      *(v54 + 48) = 0u;
                      *(v54 + 96) = 0;
                      *(v54 + 64) = 0u;
                      *(v54 + 73) = 0u;
                      if (v41)
                      {
                        *(v54 + 48) = v80;
                        v57 |= 0x80000000;
                      }

                      *(v54 + 28) = v57;
                      *(v54 + 88) = 1;
                      v58 = v54 + 104;
                    }

                    *(&v73 + 1) = v58;
                  }

                  v49 += 2;
                }

                while (v49 != v50);
                record_symbols_with_ancestor<Pointer64,std::vector<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>,std::deque<TRawSymbol<Pointer64>>>(v73, 0x4EC4EC4EC4EC4EC5 * ((*(&v73 + 1) - v73) >> 3), v21, a9, &v84);
                v17 = v61;
                v12 = a6;
                v13 = a4;
                v16 = v63;
                if (v22)
                {
                  v90[0] = 0;
                  std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v84, v90);
                }

                v90[0] = &v73;
                std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](v90);
              }

              goto LABEL_93;
            }
          }

          else if (*(v18 + 120) != *(v18 + 128))
          {
            v60 = 0;
            goto LABEL_49;
          }

          if (v22)
          {
LABEL_58:
            *&v73 = 0;
            std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v84, &v73);
          }
        }
      }

      else
      {
        if ((*(*v21 + 24))(v21) == 2)
        {
          *(v18 + 76) = 0;
          *(v18 + 128) = *(v18 + 120);
          *(v18 + 16) = -1;
          *(v18 + 104) = 0;
          (*(*v21 + 16))(v21, v13, *(a2 + 36));
          TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_compilation_unit_pc_ranges(v21);
          if (v22)
          {
            *&v73 = 0;
            std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](&v84, &v73);
          }

          if ((v12 & 1) == 0)
          {
            v88 = v87;
            v28 = v66[1];
            v73 = *v66;
            v74 = v28;
            v29 = "";
            if ((*(v18 + 76) & 0x20) != 0)
            {
              v29 = *(v18 + 40);
            }

            parse_line_numbers<Dwarf<Dwarf32,Pointer64,LittleEndian>>(&v73, v65, *(v18 + 52), v18 + 108, v29, a1, a5, a7, a8, &v87, a10);
            if (*(v18 + 144))
            {
              *&v73 = *(v18 + 144);
              v30 = *(v18 + 120);
              v31 = *(v18 + 128);
              if (v30 == v31)
              {
                v44 = *(v18 + 76);
                if ((~v44 & 3) == 0)
                {
                  v45 = *v18 + a1;
                  if (a7)
                  {
                    v45 = TAddressRelocator<Pointer64>::relocate(a7, v45);
                    LOWORD(v44) = *(v18 + 76);
                  }

                  *&v80 = v45;
                  if ((v44 & 0x8000) != 0)
                  {
                    v46 = *v18;
                    v47 = *v18 + *(v18 + 80);
                  }

                  else
                  {
                    v46 = *v18;
                    v47 = *(v18 + 8);
                  }

                  v90[0] = (v47 - v46);
                  std::deque<TRangeValue<Pointer64,char const*>>::emplace_back<unsigned long long &,unsigned long long &,char const*&>(a11, &v80, v90, &v73);
                }
              }

              else
              {
                do
                {
                  v32 = *v30 + a1;
                  if (a7)
                  {
                    v32 = TAddressRelocator<Pointer64>::relocate(a7, v32);
                  }

                  *&v80 = v32;
                  v90[0] = (v30[1] - *v30);
                  std::deque<TRangeValue<Pointer64,char const*>>::emplace_back<unsigned long long &,unsigned long long &,char const*&>(a11, &v80, v90, &v73);
                  v30 += 2;
                }

                while (v30 != v31);
              }

              v12 = a6;
              v16 = v63;
            }
          }

          goto LABEL_93;
        }

        (*(*v21 + 16))(v21, v13, *(a2 + 36));
        if (v22)
        {
          goto LABEL_58;
        }
      }

LABEL_93:
      if (*(a2 + 8) == *(a2 + 24))
      {
        goto LABEL_94;
      }
    }
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1D976BB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = *(v30 - 168);
  if (v32)
  {
    *(v30 - 160) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 144);
  if (v33)
  {
    *(v30 - 136) = v33;
    operator delete(v33);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TRawSourceInfo<Pointer64>>::reserve(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::allocator<TRawSourceInfo<Pointer64>>::allocate_at_least[abi:ne200100](a1, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = a1[3];
  if (v2 <= v1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Cursor overflow, attempt to read ULEB", 37);
    std::ostringstream::str[abi:ne200100](v15, &v14);
    Exception::Exception(v13, &v14);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v13);
  }

  v3 = *a1;
  v4 = (*a1 + v1);
  v6 = *v4;
  v5 = v4 + 1;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = v3 + v2;
    v7 &= 0x7Fu;
    v9 = 7;
    do
    {
      if (v5 >= v8)
      {
        break;
      }

      v10 = *v5++;
      v7 |= (v10 & 0x7F) << v9;
      v9 += 7;
    }

    while (v10 < 0);
  }

  *(a1 + 2) = v5 - v3;
  return v7;
}

void sub_1D976BFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TDwarfAbbrevStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::abbrev(uint64_t *a1)
{
  v2 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
  __src = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    v3 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
    v4 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    if (!v6)
    {
      v8 = v20;
      if (v20 >= v21)
      {
        v10 = __src;
        v11 = v20 - __src;
        v12 = (v20 - __src) >> 2;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v21 - __src;
        if ((v21 - __src) >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          std::allocator<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>>::allocate_at_least[abi:ne200100](&__src, v13);
        }

        v15 = (v20 - __src) >> 2;
        v16 = (4 * v12);
        *v16 = v3;
        v16[1] = v4;
        v9 = 4 * v12 + 4;
        v17 = &v16[-2 * v15];
        memcpy(v17, v10, v11);
        v18 = __src;
        __src = v17;
        v20 = v9;
        v21 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v20 = v3;
        *(v8 + 1) = v4;
        v9 = (v8 + 4);
      }

      v20 = v9;
    }

    if (v5 == 33)
    {
      TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
    }
  }

  while ((v7 & 1) != 0);
  if (v2 > 28)
  {
    if (v2 != 46 && v2 != 29)
    {
      goto LABEL_32;
    }
  }

  else if (v2 != 3)
  {
    if (v2 == 17 && has_minimum_source_info_attributes(&__src))
    {
      operator new();
    }

LABEL_32:
    operator new();
  }

  operator new();
}

void sub_1D976C264(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1DA736760](v11, 0x10A1C400922EF30, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5506758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA736760);
}

void TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer64,LittleEndian>>::~TDwarfAbbrevTable(CSCppDwarfAbbrevTable *a1)
{
  CSCppDwarfAbbrevTable::~CSCppDwarfAbbrevTable(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (a1[3] <= v1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint8", 38);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *a1;
  *(a1 + 2) = v1 + 1;
  return *(v2 + v1);
}

void sub_1D976C458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfSymbolAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::TDwarfSymbolAbbrev(uint64_t a1, int a2, char a3, void *a4, uint64_t a5)
{
  v5 = a1;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = *a4;
  *a4 = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = a4[1];
  a4[1] = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = a4[2];
  a4[2] = v7;
  *a1 = &unk_1F55067E0;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  v8 = *(a1 + 16);
  if (v8 != *(a1 + 24))
  {
    v9 = *v8;
    if (v9 <= 0x56)
    {
      if (*v8 > 0x30u)
      {
        switch(v9)
        {
          case '1':
            *(a1 + 72) |= 0x200u;
            read_action_for_ref_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 512, 0x4000, *(a1 + 64) + 60);
          case 'G':
            *(a1 + 72) |= 0x10u;
            read_action_for_ref_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 16, 0x2000, *(a1 + 64) + 48);
          case 'U':
            operator new();
        }
      }

      else
      {
        switch(v9)
        {
          case 3u:
            *(a1 + 72) |= 8u;
            read_action_for_string_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 8, *(a1 + 64) + 32, *(a1 + 64) + 108);
          case 0x11u:
            *(a1 + 72) |= 1u;
            v13 = v8[1];
            if ((v13 - 41) >= 4 && v13 != 27)
            {
              if (v13 == 1)
              {
                operator new();
              }

              skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v13);
            }

            operator new();
          case 0x12u:
            v11 = *(a1 + 72);
            *(a1 + 72) = v11 | 2;
            v12 = v8[1];
            if ((v12 - 41) >= 4 && v12 != 27)
            {
              if (v12 == 1)
              {
                operator new();
              }

              *(v5 + 72) = v11 | 0x8002;
              read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v12, *(v5 + 64) + 76, 32770, *(v5 + 64) + 80);
            }

            operator new();
        }
      }
    }

    else if (*v8 <= 0x6Du)
    {
      switch(v9)
      {
        case 'W':
          *(a1 + 72) |= 0x1000u;
          read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 4096, *(a1 + 64) + 72);
        case 'X':
          *(a1 + 72) |= 0x400u;
          read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 1024, *(a1 + 64) + 64);
        case 'Y':
          *(a1 + 72) |= 0x800u;
          read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 2048, *(a1 + 64) + 68);
      }
    }

    else if (*v8 > 0x3FE2u)
    {
      if (v9 == 16355)
      {
        *(a1 + 72) |= 0x80u;
        operator new();
      }

      if (v9 == 16359)
      {
        read_action_for_flag_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 256, *(a1 + 64) + 57);
      }
    }

    else if (v9 == 110 || v9 == 8199)
    {
      *(a1 + 72) |= 4u;
      read_action_for_string_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1], *(a1 + 64) + 76, 4, *(a1 + 64) + 24, *(a1 + 64) + 108);
    }

    skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8[1]);
  }

  return a1;
}

void skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1)
{
  switch(a1)
  {
    case 1:
    case 7:
    case 20:
    case 32:
    case 36:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
    case 18:
    case 38:
    case 42:
      operator new();
    case 6:
    case 14:
    case 19:
    case 23:
    case 28:
    case 29:
    case 31:
    case 40:
    case 44:
      operator new();
    case 8:
      operator new();
    case 9:
    case 24:
      operator new();
    case 10:
      operator new();
    case 11:
    case 12:
    case 17:
    case 37:
    case 41:
      operator new();
    case 13:
    case 15:
    case 21:
    case 26:
    case 27:
    case 34:
    case 35:
      operator new();
    case 16:
      operator new();
    case 22:
      std::ostringstream::basic_ostringstream[abi:ne200100](v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "DW_FORM_indirect not handled yet... ", 36);
      std::ostringstream::str[abi:ne200100](v7, &v6);
      Exception::Exception(v5, &v6);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v5);
    case 25:
    case 33:
      operator new();
    case 30:
      operator new();
    case 39:
    case 43:
      operator new();
    default:
      std::ostringstream::basic_ostringstream[abi:ne200100](v7);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Unhandled dwarf attribute ", 26);
      MEMORY[0x1DA7365E0](v3, a1);
      std::ostringstream::str[abi:ne200100](v7, &v6);
      Exception::Exception(v5, &v6);
      v4 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v4, v5);
  }
}

void sub_1D976CED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (a1 <= 10)
  {
    switch(a1)
    {
      case 5:
        operator new();
      case 6:
        operator new();
      case 7:
        operator new();
    }
  }

  else if (a1 > 14)
  {
    if (a1 == 15)
    {
      operator new();
    }

    if (a1 == 23)
    {
      operator new();
    }
  }

  else
  {
    if (a1 == 11)
    {
      operator new();
    }

    if (a1 == 13)
    {
      operator new();
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unhandled form in read data binding ", 36);
  MEMORY[0x1DA7365E0](v5, a1);
  std::ostringstream::str[abi:ne200100](v9, &v8);
  Exception::Exception(v7, &v8);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v7);
}

void sub_1D976D1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_string_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 36)
  {
    switch(a1)
    {
      case 8:
        operator new();
      case 0xE:
        operator new();
      case 0x1A:
LABEL_3:
        operator new();
    }
  }

  else if ((a1 - 37) < 4)
  {
    goto LABEL_3;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v10);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Unhandled form in read string binding ", 38);
  MEMORY[0x1DA7365E0](v6, a1);
  std::ostringstream::str[abi:ne200100](v10, &v9);
  Exception::Exception(v8, &v9);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v8);
}

void sub_1D976D390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_ref_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5)
{
  if (a1 > 18)
  {
    switch(a1)
    {
      case 0x13:
        operator new();
      case 0x14:
        operator new();
      case 0x15:
        operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 0x10:
        operator new();
      case 0x11:
        operator new();
      case 0x12:
        operator new();
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v10);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Unhandled form in read ref binding ", 35);
  MEMORY[0x1DA7365E0](v6, a1);
  std::ostringstream::str[abi:ne200100](v10, &v9);
  Exception::Exception(v8, &v9);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v8);
}

void sub_1D976D618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_flag_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (a1 != 25)
  {
    if (a1 == 12)
    {
      operator new();
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unhandled form in read flag binding ", 36);
    MEMORY[0x1DA7365E0](v5, a1);
    std::ostringstream::str[abi:ne200100](v9, &v8);
    Exception::Exception(v7, &v8);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v7);
  }

  operator new();
}

void sub_1D976D798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TDwarfSymbolAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::~TDwarfSymbolAbbrev(CSCppDwarfAbbrev *a1)
{
  CSCppDwarfAbbrev::~CSCppDwarfAbbrev(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t TDwarfReadDW_FORM_AddrAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 8;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 + 8) > *(a1 + 24))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read dwarf_address", 46);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 8;
  return v2;
}

void sub_1D976D960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_AddrxAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a1 + 16);
  v7 = *v6;
  v8 = *(a1 + 24);
  if ((v8 & v7) == 0)
  {
    if (!*(*(a1 + 32) + 104))
    {
      result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v5);
      *(a1 + 40) = result;
      return result;
    }

    v10 = 0;
    *v6 = v8 | v7;
    v11 = v5[9];
    v12 = v11[1];
    v15[0] = *v11;
    v15[1] = v12;
    v13 = *(a1 + 48);
    if (v13 <= 41)
    {
      if (v13 == 27)
      {
        v10 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v5);
        goto LABEL_18;
      }

      if (v13 == 41)
      {
        v14 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(v5);
        goto LABEL_17;
      }
    }

    else
    {
      switch(v13)
      {
        case '*':
          v14 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(v5);
          goto LABEL_17;
        case '+':
          v14 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::threeBytes(v5);
          goto LABEL_17;
        case ',':
          v14 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(v5);
LABEL_17:
          v10 = v14;
          break;
      }
    }

LABEL_18:
    result = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::address_at_base_and_index(v15, *(*(a1 + 32) + 104), v10);
    **(a1 + 8) = result;
    return result;
  }

  return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(v5);
}

uint64_t TDwarfReadDW_FORM_AddrxAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action_stage2(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = *v4;
  v6 = *(result + 24);
  if ((v6 & v5) == 0)
  {
    v12 = v2;
    v13 = v3;
    v7 = result;
    v8 = *a2;
    *v4 = v6 | v5;
    v9 = *(v8 + 72);
    v10 = v9[1];
    v11[0] = *v9;
    v11[1] = v10;
    result = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::address_at_base_and_index(v11, *(*(result + 32) + 104), *(result + 40));
    **(v7 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(uint64_t result)
{
  v1 = *(result + 8);
  do
  {
    if (*(result + 24) <= v1)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Cursor overflow, attempt to skip ULEB", 37);
      std::ostringstream::str[abi:ne200100](v6, &v5);
      Exception::Exception(v4, &v5);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v4);
    }

    v2 = v1++;
  }

  while (*(*result + v2) < 0);
  *(result + 8) = v1;
  return result;
}

void sub_1D976DC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::address_at_base_and_index(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::length_from_header(a1, a2);
  if (a3 >> 29)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Base relative index overflow in TDwarfAddressTableStream", 56);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v12);
  }

  if (8 * a3 > v6)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Base relative index not in bounds of current address table in TDwarfAddressTableStream", 86);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    v10 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v10, v12);
  }

  v7 = 8 * a3 + a2;
  if (*(a1 + 24) < v7)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Offset not in bounds of TDwarfAddressTableStream", 48);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    v11 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v11, v12);
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(a1, v7);

  return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(a1);
}

void sub_1D976DE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 + 2) > *(a1 + 24))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint16", 39);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 2;
  return v2;
}

void sub_1D976DF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::threeBytes(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 + 3) > *(a1 + 24))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read three bytes", 44);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 3;
  return v2 & 0xFFFFFF;
}

void sub_1D976E060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 + 4) > *(a1 + 24))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint32", 39);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 4;
  return v2;
}

void sub_1D976E170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::length_from_header(uint64_t a1, unsigned int a2)
{
  if (a2 <= 7)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Overflow calculating start of header in TDwarfAddressTableStream", 64);
    std::ostringstream::str[abi:ne200100](v9, &v8);
    Exception::Exception(v7, &v8);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v7);
  }

  v3 = a2 - 8;
  if (*(a1 + 24) < v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Invalid offset to address table header in TDwarfAddressTableStream", 66);
    std::ostringstream::str[abi:ne200100](v9, &v8);
    Exception::Exception(v7, &v8);
    v6 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v6, v7);
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(a1, v3);

  return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(a1);
}

void sub_1D976E2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TDwarfSkipDW_FORM_RefAddrAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 8;
  }

  *(*a2 + 8) += v3;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_FORM_block1(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 8);
  if ((v1 - v2) < 0x100)
  {
    if (v1 == v2 || v1 - v2 < (*(*result + v2) + 1))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block1", 44);
      std::ostringstream::str[abi:ne200100](v7, &v6);
      Exception::Exception(v5, &v6);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v5);
    }

    v3 = (*(*result + v2) + 1);
  }

  else
  {
    v3 = *(*result + v2) + 1;
  }

  *(result + 8) = v3 + v2;
  return result;
}

void sub_1D976E4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_FORM_block2(uint64_t a1)
{
  result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(a1);
  v3 = (*(a1 + 8) + result);
  if (*(a1 + 24) < v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block2", 44);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  *(a1 + 8) = v3;
  return result;
}

void sub_1D976E600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_FORM_block4(uint64_t a1)
{
  result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(a1);
  v3 = (*(a1 + 8) + result);
  if (*(a1 + 24) < v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block4", 44);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  *(a1 + 8) = v3;
  return result;
}

void sub_1D976E728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

size_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_FORM_string(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24) - v2;
  result = strlen((*a1 + v2));
  if (result + 1 > v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Cursor overflow, attempt to skip FORM_string", 44);
    std::ostringstream::str[abi:ne200100](v8, &v7);
    Exception::Exception(v6, &v7);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v6);
  }

  *(a1 + 8) = result + 1 + v2;
  return result;
}

void sub_1D976E860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_FORM_block(uint64_t a1)
{
  result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
  v3 = (*(a1 + 8) + result);
  if (*(a1 + 24) < v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to skip FORM_block", 43);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  *(a1 + 8) = v3;
  return result;
}

void sub_1D976E988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_Data1ToOffsetAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data2AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 2;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data4AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data8AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 8;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint64(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 + 8) > *(a1 + 24))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read uint64", 39);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 8;
  return v2;
}

void sub_1D976EC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_Sec_OffsetAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 + 4) > *(a1 + 24))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Cursor overflow, attempt to read dwarf_offset", 45);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *(*a1 + v1);
  *(a1 + 8) = v1 + 4;
  return v2;
}

void sub_1D976EE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_UdataAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_SdataAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::LEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::LEB(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 8);
  do
  {
    if (*(a1 + 24) == v3)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Cursor overflow, attempt to read LEB", 36);
      std::ostringstream::str[abi:ne200100](v12, &v11);
      Exception::Exception(v10, &v11);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v10);
    }

    v4 = *(*a1 + v3);
    v5 = v3 + 1;
    v2 |= (v4 & 0x7F) << v1;
    v1 += 7;
    ++v3;
  }

  while ((v4 & 0x80) != 0);
  v6 = v4 < 0x40 || v1 > 0x3F;
  v7 = -1 << v1;
  if (v6)
  {
    v7 = 0;
  }

  *(a1 + 8) = v5;
  return v2 | v7;
}

void sub_1D976F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3 == 5)
  {

    TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::extract_dwarf5_ranges(a1, a2, 5);
  }

  else
  {
    v3 = a3;
    if (a3 > 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v4[0] = 67109120;
        v4[1] = v3;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Unexpected DWARF version parsing DW_AT_ranges: %d\n", v4, 8u);
      }
    }

    else
    {

      TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::extract_dwarf4_ranges(a1, a2, a3);
    }
  }
}

void TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::extract_dwarf5_ranges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  if (!v3)
  {
    return;
  }

  v4 = a3;
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(*(a2 + 48), 0);
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(v3);
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(v3);
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(v3);
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(v3);
  v7 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(v3);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v7)
  {
    v8 = v7;
    do
    {
      LODWORD(v42[0]) = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(v3);
      std::vector<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>>::push_back[abi:ne200100](&v44, v42);
      --v8;
    }

    while (v8);
  }

  v9 = *a2;
  if (!v9)
  {
    goto LABEL_39;
  }

  if (*(a1 + 16) == 35)
  {
    v10 = *(a1 + 8);
    v11 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v9);
    if (v11 >= v45 - v44)
    {
      std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *(v10 + 112) + v44[v11];
  }

  else
  {
    v12 = TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::offset_into_ranges(a1, v9, v4);
  }

  if (v12 == -1)
  {
    goto LABEL_39;
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(v3, 0);
  *(v3 + 8) += v12;
  v13 = v9[9];
  v14 = v13[1];
  v43[0] = *v13;
  v43[1] = v14;
  if (!*v3)
  {
    **(a1 + 8) = xmmword_1D97E09C0;
    goto LABEL_39;
  }

  v15 = 0;
  v16 = 0;
  v17 = -1;
  v39 = a1;
  while (1)
  {
    v18 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(v3);
    v19 = v18;
    if (v18 != 1)
    {
      break;
    }

    v26 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v3);
    v15 = TDwarfAddressTableStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::address_at_base_and_index(v43, *(*(a1 + 8) + 104), v26);
LABEL_32:
    if (!*v3)
    {
      goto LABEL_36;
    }
  }

  if (v18 == 4)
  {
    v20 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v3) + v15;
    v21 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v3) + v15;
    v22 = *(a1 + 8);
    v24 = v22[16];
    v23 = v22[17];
    if (v24 >= v23)
    {
      v27 = v22[15];
      v28 = v24 - v27;
      v29 = (v24 - v27) >> 4;
      v30 = v29 + 1;
      if ((v29 + 1) >> 60)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v31 = v23 - v27;
      if (v31 >> 3 > v30)
      {
        v30 = v31 >> 3;
      }

      v32 = v31 >= 0x7FFFFFFFFFFFFFF0;
      v33 = 0xFFFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v33 = v30;
      }

      if (v33)
      {
        std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100]((v22 + 15), v33);
      }

      v34 = (16 * v29);
      *v34 = v20;
      v34[1] = v21;
      v25 = 16 * v29 + 16;
      memcpy(0, v27, v28);
      v35 = v22[15];
      v22[15] = 0;
      v22[16] = v25;
      v22[17] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      a1 = v39;
    }

    else
    {
      *v24 = v20;
      *(v24 + 1) = v21;
      v25 = (v24 + 16);
    }

    v22[16] = v25;
    if (v20 < v17)
    {
      v17 = v20;
    }

    if (v16 <= v21)
    {
      v16 = v21;
    }

    goto LABEL_32;
  }

  if (v18)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v42);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Unimplemented range list entry kind", 35);
    LOBYTE(v40[0]) = v19;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v40, 1);
    std::ostringstream::str[abi:ne200100](v42, &v41);
    Exception::Exception(v40, &v41);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v40);
  }

LABEL_36:
  v36 = *(a1 + 8);
  *v36 = v17;
  *(v36 + 8) = v16;
  if (v17 != -1 && v16)
  {
    *(v36 + 76) |= 3u;
  }

LABEL_39:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_1D976F538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::exception a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  Exception::~Exception(&a11);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a21);
  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::extract_dwarf4_ranges(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = result;
    result = TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::offset_into_ranges(result, v4, a3);
    if (result != -1)
    {
      v6 = a2[5];
      if (v6)
      {
        *(v6 + 8) += result;
        v7 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(v6);
        v8 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(v6);
        v9 = 0;
        if (v7 | v8)
        {
          v10 = *(*(v5 + 8) + 88);
          v11 = -1;
          v28 = v5;
          do
          {
            if (v7 == -1)
            {
              v10 = v8;
            }

            else
            {
              v12 = v7 + v10;
              v13 = v10 + v8;
              v14 = *(v5 + 8);
              v16 = v14[16];
              v15 = v14[17];
              if (v16 >= v15)
              {
                v18 = v14[15];
                v19 = v16 - v18;
                v20 = (v16 - v18) >> 4;
                v21 = v20 + 1;
                if ((v20 + 1) >> 60)
                {
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                }

                v22 = v15 - v18;
                if (v22 >> 3 > v21)
                {
                  v21 = v22 >> 3;
                }

                v23 = v22 >= 0x7FFFFFFFFFFFFFF0;
                v24 = 0xFFFFFFFFFFFFFFFLL;
                if (!v23)
                {
                  v24 = v21;
                }

                if (v24)
                {
                  std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100]((v14 + 15), v24);
                }

                v25 = (16 * v20);
                *v25 = v12;
                v25[1] = v13;
                v17 = 16 * v20 + 16;
                memcpy(0, v18, v19);
                v26 = v14[15];
                v14[15] = 0;
                v14[16] = v17;
                v14[17] = 0;
                if (v26)
                {
                  operator delete(v26);
                }

                v5 = v28;
              }

              else
              {
                *v16 = v12;
                *(v16 + 1) = v13;
                v17 = (v16 + 16);
              }

              v14[16] = v17;
              if (v12 < v11)
              {
                v11 = v12;
              }

              if (v9 <= v13)
              {
                v9 = v13;
              }
            }

            v7 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(v6);
            v8 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(v6);
          }

          while (v7 | v8);
        }

        else
        {
          v11 = -1;
        }

        result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(v6, 0);
        v27 = *(v5 + 8);
        *v27 = v11;
        *(v27 + 8) = v9;
        if (v11 != -1)
        {
          if (v9)
          {
            *(v27 + 76) |= 3u;
          }
        }
      }
    }
  }

  return result;
}

uint64_t TDwarfReadDW_AT_ranges<Dwarf<Dwarf32,Pointer64,LittleEndian>>::offset_into_ranges(uint64_t a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  switch(v3)
  {
    case 6:

      return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(a2);
    case 7:
      return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint64(a2);
    case 23:

      return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(a2);
    default:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v8 = a3;
        v9 = 1024;
        v10 = v3;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "DWARF %d form %u is unrecognized for reading non-indexed ranges.\n", buf, 0xEu);
        v3 = *(a1 + 16);
      }

      fprintf(*MEMORY[0x1E69E9848], "DWARF %d form %u is unrecognized for reading non-indexed ranges.\n", a3, v3);
      return 0xFFFFFFFFLL;
  }
}

uint64_t TDwarfReadDW_FORM_StrpAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if ((*(a1 + 24) & **(a1 + 16)) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    v4 = *(result + 40);
    v5 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(result);
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(v4, v5);
    v6 = *(a1 + 8);
    **(a1 + 16) |= *(a1 + 24);
    *v6 = *v4 + *(v4 + 8);
  }

  return result;
}

size_t TDwarfReadDW_FORM_StringAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_FORM_string(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::FORM_string(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::FORM_string(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 6) - v2;
  v4 = *a1;
  v5 = strlen((*a1 + v2)) + 1;
  if (v5 > v3)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Cursor overflow, attempt to read FORM_string", 44);
    std::ostringstream::str[abi:ne200100](v10, &v9);
    Exception::Exception(v8, &v9);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v8);
  }

  *(a1 + 2) = v5 + v2;
  return v4 + v2;
}

void sub_1D976FB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_StrxAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if ((*(result + 24) & **(result + 16)) != 0)
  {
    *(v2 + 2) += 4;
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = v2[8];
  v6 = *(v3 + 40);
  if (v6 <= 37)
  {
    if (v6 == 26)
    {
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(*a2);
    }

    else
    {
      if (v6 != 37)
      {
        goto LABEL_14;
      }

      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(*a2);
    }

LABEL_13:
    if ((v4 & 0xC0000000) != 0)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "FORM_strx index overflow", 24);
      std::ostringstream::str[abi:ne200100](v14, &v13);
      Exception::Exception(v12, &v13);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v12);
    }

    goto LABEL_14;
  }

  switch(v6)
  {
    case '&':
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(*a2);
      goto LABEL_13;
    case '\'':
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::threeBytes(*a2);
      goto LABEL_13;
    case '(':
      v4 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(*a2);
      goto LABEL_13;
  }

LABEL_14:
  v7 = **(v3 + 32);
  if (__CFADD__(v7, 4 * v4))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "FORM_strx offset overflow", 25);
    std::ostringstream::str[abi:ne200100](v14, &v13);
    Exception::Exception(v12, &v13);
    v10 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v10, v12);
  }

  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(v5, v7 + 4 * v4);
  v8 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(v5);
  v9 = v2[5];
  result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(v9, v8);
  **(v3 + 16) |= *(v3 + 24);
  **(v3 + 8) = *v9 + *(v9 + 8);
  return result;
}

void sub_1D976FD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_RefAddrAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  result = *a2;
  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = *(a1 + 24);
  if ((v7 & v6) != 0)
  {
    if (a3 >= 3)
    {
      v8 = 4;
    }

    else
    {
      v8 = 8;
    }

    *(result + 8) += v8;
  }

  else
  {
    *v5 = v7 | v6;
    if (a3 > 2)
    {
      result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(result);
    }

    else
    {
      result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(result);
    }

    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref1AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref2AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 2;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref4AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref8AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 8;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint64(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Ref_UdataAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_Data1AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_FlagAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadDW_FORM_FlagPresentAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t result)
{
  v1 = *(result + 8);
  **(result + 16) |= *(result + 24);
  *v1 = 1;
  return result;
}

uint64_t TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::TDwarfSourceInfoAbbrev(uint64_t a1, int a2, char a3, void *a4, uint64_t a5)
{
  v5 = a1;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = *a4;
  *a4 = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = a4[1];
  a4[1] = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = a4[2];
  a4[2] = v7;
  *a1 = &unk_1F5507188;
  *(a1 + 64) = a5;
  v8 = *(a1 + 16);
  if (v8 != *(a1 + 24))
  {
    v9 = *v8;
    v10 = v8[1];
    if (v9 <= 0x51)
    {
      if (*v8 > 0x11u)
      {
        if (v9 == 18)
        {
          if ((v10 - 41) >= 4 && v10 != 27)
          {
            if (v10 == 1)
            {
              operator new();
            }

            read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10, *(v5 + 64) + 76, 32770, *(v5 + 64) + 80);
          }

          operator new();
        }

        if (v9 == 27)
        {
          read_action_for_string_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10, *(v5 + 64) + 76, 32, *(v5 + 64) + 40, *(v5 + 64) + 108);
        }
      }

      else
      {
        if (v9 == 16)
        {
          read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10, *(v5 + 64) + 76, 64, *(v5 + 64) + 52);
        }

        if (v9 == 17)
        {
          if ((v10 - 41) >= 4 && v10 != 27)
          {
            if (v10 == 1)
            {
              operator new();
            }

            skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10);
          }

          operator new();
        }
      }
    }

    else if (*v8 <= 0x72u)
    {
      if (v9 == 82)
      {
        if ((v10 - 41) >= 4 && v10 != 27)
        {
          if (v10 == 1)
          {
            operator new();
          }

          skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10);
        }

        operator new();
      }

      if (v9 == 114)
      {
        read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10, *(v5 + 64) + 76, 0, *(v5 + 64) + 108);
      }
    }

    else
    {
      switch(v9)
      {
        case 0x73u:
          read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10, *(v5 + 64) + 76, 0, *(v5 + 64) + 104);
        case 0x74u:
          read_action_for_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10, *(v5 + 64) + 76, 0, *(v5 + 64) + 112);
        case 0x3FF0u:
          read_action_for_string_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10, *(v5 + 64) + 76, 0, *(v5 + 64) + 144, *(v5 + 64) + 108);
      }
    }

    skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v10);
  }

  return a1;
}

void TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::~TDwarfSourceInfoAbbrev(CSCppDwarfAbbrev *a1)
{
  CSCppDwarfAbbrev::~CSCppDwarfAbbrev(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t TDwarfSkipAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::TDwarfSkipAbbrev(uint64_t a1, int a2, char a3, void *a4)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = *a4;
  *a4 = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = a4[1];
  a4[1] = v4;
  v5 = *(a1 + 32);
  *(a1 + 32) = a4[2];
  a4[2] = v5;
  *a1 = &unk_1F55071D0;
  v6 = *(a1 + 16);
  if (v6 != *(a1 + 24))
  {
    skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(*(v6 + 2));
  }

  return a1;
}

void TDwarfSkipAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::~TDwarfSkipAbbrev(CSCppDwarfAbbrev *a1)
{
  CSCppDwarfAbbrev::~CSCppDwarfAbbrev(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t std::__split_buffer<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      std::default_delete<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::default_delete<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 88);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x1DA736760);
  }
}

uint64_t parse_die_stream_for_specification<Dwarf<Dwarf32,Pointer64,LittleEndian>,TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>,std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>>(uint64_t a1, uint64_t a2, uint64_t **a3, _DWORD *a4)
{
  v4 = a2;
  v6 = *(a1 + 76);
  if ((v6 & 0x10) != 0)
  {
    v7 = *(a1 + 48) & (v6 << 18 >> 31);
    if ((v6 & 0x2000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 48);
    }

    v9 = -8209;
  }

  else
  {
    if ((v6 & 0x200) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 60) & (v6 << 17 >> 31);
    if ((v6 & 0x4000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 60);
    }

    v9 = -16913;
  }

  *(a1 + 76) = v6 & v9;
  v10 = (*a4)++;
  if (v10 < 10)
  {
    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7 == 0;
    }

    if (v14)
    {
      v15 = *(a2 + 24);
    }

    else
    {
      v16 = *a3;
      v17 = a3[1];
      if (v17 == *a3)
      {
        goto LABEL_40;
      }

      v18 = v17 - *a3;
      do
      {
        v19 = v18 >> 1;
        v20 = &v16[v18 >> 1];
        v22 = *v20;
        v21 = v20 + 1;
        v18 += ~(v18 >> 1);
        if (*(v22 + 24) + *(v22 + 16) > v7)
        {
          v18 = v19;
        }

        else
        {
          v16 = v21;
        }
      }

      while (v18);
      if (v16 == v17 || (v4 = *v16, v23 = *(*v16 + 16), v15 = *(*v16 + 24), v7 - v23 >= v15))
      {
LABEL_40:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = MEMORY[0x1E69E9C10];
          v12 = "Ref addr is not within the bounds of any compile unit";
          v13 = buf;
          goto LABEL_34;
        }

        return 0;
      }

      v8 = v7 - v23;
    }

    if (v15 >= v8)
    {
      read_specification_abbrev_at<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v8, v4);
      return v4;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Out-of-bounds abstract origin or specification offset";
      v13 = &v25;
      goto LABEL_34;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 0;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Possible reference cycle in DIE";
    v13 = &v27;
LABEL_34:
    _os_log_impl(&dword_1D96E9000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
  }

  return 0;
}

uint64_t resolve_parsed_data_names<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 76);
  v4 = (a1 + 32);
  if ((v3 & 0xC) == 8)
  {
    v5 = (a1 + 32);
  }

  else
  {
    v5 = (a1 + 24);
  }

  v6 = *v5;
  if ((v3 & 0xC) == 8)
  {
    v7 = 67141633;
  }

  else
  {
    v7 = 67174401;
  }

  *a2 = v6;
  if ((v3 & 4) != 0)
  {
    v8 = 0x200000;
  }

  else
  {
    v8 = 0x100000;
  }

  v9 = v7 | v8;
  if ((v3 & 4) != 0)
  {
    v4 = (a1 + 24);
  }

  *a3 = *v4;
  if (*(a1 + 56) == 1 && (v3 & 0x80u) != 0)
  {
    v11 = v9 | 0x40;
  }

  else
  {
    v11 = v9;
  }

  if (*(a1 + 57) == 1)
  {
    v12 = v11 | 0x80;
  }

  else
  {
    v12 = v11;
  }

  if ((v3 & 0x100) != 0)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

unint64_t TAddressRelocator<Pointer64>::relocate(void *a1, unint64_t a2)
{
  v2 = a2;
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (a2 - *v3 < v3[1])
  {
    return v3[2] + a2;
  }

  v4 = a1[1];
  if (v4 != *a1)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v4 = *a1;
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[3 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 3;
      v5 += ~(v5 >> 1);
      if (v9 > a2)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  if (v4 != *a1)
  {
    v10 = *(v4 - 3);
    v11 = *(v4 - 2);
    v3 = v4 - 3;
    if (a2 - v10 < v11)
    {
      a1[3] = v3;
      return v3[2] + a2;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v2;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Attempt to relocate address [0x%llx], which is outside segment deltas\n", &v13, 0xCu);
  }

  return v2;
}

uint64_t TDwarfAbbrevData<Dwarf<Dwarf32,Pointer64,LittleEndian>>::has_inlined_info(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 76);
  if (a2 >= 5)
  {
    v3 = (v2 >> 10) & 1;
LABEL_8:
    result = 1;
    if ((v3 & 1) == 0 && (v2 & 0x800) == 0)
    {
      return (v2 >> 12) & 1;
    }

    return result;
  }

  if ((v2 & 0x400) != 0)
  {
    LOBYTE(v3) = *(a1 + 64) != 0;
    goto LABEL_8;
  }

  if ((v2 & 0x800) == 0)
  {
    return (v2 >> 12) & 1;
  }

  return 1;
}

const char *path_from_file_index<Pointer64>(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = (__PAIR64__(a2, a5) - 5) >> 32;
  if (v5 < (a1[1] - *a1) >> 3)
  {
    return *(*a1 + 8 * v5);
  }

  if ((path_from_file_index<Pointer64>(std::vector<char const*> const&,unsigned int,unsigned long long,TRawSymbolOwnerData<Pointer64> &,unsigned int)::suppress_error & 1) == 0)
  {
    path_from_file_index<Pointer64>(std::vector<char const*> const&,unsigned int,unsigned long long,TRawSymbolOwnerData<Pointer64> &,unsigned int)::suppress_error = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      (*(*a4 + 240))(__p, a4);
      v9 = v13 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = v9;
      v15 = 2048;
      v16 = a3;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CoreSymbolication] In DWARF data from %s:\n  .debug_line[%llx] file = %d is not a valid index\n", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v10 = *MEMORY[0x1E69E9848];
    (*(*a4 + 240))(buf, a4);
    if (v17 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    fprintf(v10, "[CoreSymbolication] In DWARF data from %s:\n  .debug_line[%llx] file = %d is not a valid index\n", v11, a3, v5);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(*buf);
    }
  }

  return "<Bad file name in .debug_info>";
}

void record_symbols_with_ancestor<Pointer64,std::vector<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>,std::deque<TRawSymbol<Pointer64>>>(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  if (*(a3 + 8) == 29)
  {
    record_inlined_symbols_with_ancestor<Pointer64,std::vector<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>>(a1, a2, a3, a5);
  }

  else
  {
    record_concrete_symbols_with_ancestor<Pointer64,std::vector<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>,std::deque<TRawSymbol<Pointer64>>>(a1, a2, a3, a4, a5);
  }
}

uint64_t TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_compilation_unit_pc_ranges(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(v1 + 38);
  if (v2)
  {
    v3 = *v1;
LABEL_6:
    v1[11] = v3;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v3 = v1[2];
  if (v3 != -1)
  {
    goto LABEL_6;
  }

  if ((*(v1 + 38) & 2) == 0)
  {
    return result;
  }

LABEL_7:
  if (v2 < 0)
  {
    v4 = *v1 + *(v1 + 20);
  }

  else
  {
    v4 = v1[1];
  }

  v1[12] = v4;
  return result;
}

void parse_line_numbers<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (***a9)(void, const char *), void *a10, unint64_t *a11)
{
  v53 = *MEMORY[0x1E69E9840];
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(a1, a3);
  v17 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(a1);
  v18 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(a1);
  if (v18 - 6 >= 0xFFFFFFFC)
  {
    v19 = v18;
    if (v18 == 5)
    {
      TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
      TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
    }

    v41 = v17;
    TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(a1);
    v37 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
    if (v19 >= 4)
    {
      TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
    }

    TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
    v39 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
    v20 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
    v21 = *(a1 + 8);
    v22 = (*a1 + v21);
    v23 = *v22;
    *(a1 + 8) = v21 + v23;
    __p = 0;
    v50 = 0;
    v51 = 0;
    if (v19 == 5)
    {
      parse_dwarf5_path_list<Dwarf<Dwarf32,Pointer64,LittleEndian>>(a1, a2, 5u, a9, (a7 + 96), a4, &__p, &__p);
      parse_dwarf5_path_list<Dwarf<Dwarf32,Pointer64,LittleEndian>>(a1, a2, 5u, a9, (a7 + 96), a4, &__p, a10);
    }

    else
    {
      parse_dwarf2_path_list<Dwarf<Dwarf32,Pointer64,LittleEndian>>(a1, a5, a9, (a7 + 96), &__p, a10);
    }

    v47 = 0;
    v48 = 1;
    v24 = a3 + v41 + 4;
    if (*(a1 + 8) < v24)
    {
      v25 = 0;
      v40 = v37;
      v42 = 1;
      v38 = (v23 ^ 0xFF) / v20 * v37;
      while (1)
      {
        v26 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
        v27 = v26;
        if (v26 >= v23)
        {
          break;
        }

        if (v26 <= 5)
        {
          if (v26 > 2)
          {
            if (v26 == 3)
            {
              v33 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::LEB(a1);
              v48 += v33;
            }

            else if (v26 == 4)
            {
              v42 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
            }

            else
            {
              v47 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
            }

            goto LABEL_21;
          }

          if (v26)
          {
            if (v26 == 1)
            {
              v28 = v25 + a6;
              if (a8)
              {
                v28 = TAddressRelocator<Pointer64>::relocate(a8, v28);
              }

LABEL_20:
              *__s1 = v28;
              v46 = path_from_file_index<Pointer64>(a10, v42, *(a1 + 8), a7, v19);
              v45 = 0;
              std::deque<TRawSourceInfo<Pointer64>>::emplace_back<unsigned long long &,int,char const*&,int &,unsigned int &>(a11, __s1, &v45, &v46, &v48, &v47);
              goto LABEL_21;
            }

            if (v26 != 2)
            {
              goto LABEL_46;
            }

            v25 += TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1) * v40;
          }

          else
          {
            v29 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
            if (!v29)
            {
              goto LABEL_57;
            }

            v30 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
            switch(v30)
            {
              case 1:
                v25 = 0;
                v42 = 1;
                v47 = 0;
                v48 = 1;
                break;
              case 2:
                v25 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_address(a1);
                break;
              case 3:
                v31 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::FORM_string(a1);
                v32 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
                TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(a1);
                TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(a1);
                if (*v31 != 47)
                {
                  if (v32 >= ((v50 - __p) >> 3))
                  {
                    std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
                  }

                  v35 = *(__p + v32);
                  if (v35)
                  {
                    stringByAppendingPathComponents(__s1, 0x400uLL, v35, v31);
                    v36 = (**a9)(a9, __s1);
                    CSCppStringCache::intern((a7 + 96), v36);
                  }
                }

                *__s1 = (**a9)(a9, v31);
                std::vector<char const*>::push_back[abi:ne200100](a10, __s1);
                break;
              default:
                *(a1 + 8) = v29 + *(a1 + 8) - 1;
                break;
            }
          }
        }

        else if (v26 <= 8)
        {
          if ((v26 - 6) >= 2)
          {
            if (v26 != 8)
            {
LABEL_46:
              if (v22[v26])
              {
                v34 = 0;
                do
                {
                  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(a1);
                  ++v34;
                }

                while (v34 < v22[v27]);
              }

              goto LABEL_21;
            }

            v25 += v38;
          }
        }

        else if ((v26 - 10) >= 2)
        {
          if (v26 == 9)
          {
            v25 += TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(a1);
          }

          else
          {
            if (v26 != 12)
            {
              goto LABEL_46;
            }

            TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(a1);
          }
        }

LABEL_21:
        if (*(a1 + 8) >= v24)
        {
          goto LABEL_57;
        }
      }

      v25 += v40 * ((v26 - v23) / v20);
      v48 += v39 + ((v26 - v23) % v20);
      v28 = v25 + a6;
      if (a8)
      {
        v28 = TAddressRelocator<Pointer64>::relocate(a8, v28);
      }

      goto LABEL_20;
    }

LABEL_57:
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }
  }
}

void sub_1D977156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<TRangeValue<Pointer64,char const*>>::emplace_back<unsigned long long &,unsigned long long &,char const*&>(unint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a1[2];
  v9 = a1[1];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 170 * ((v8 - v9) >> 3) - 1;
  }

  v11 = a1[4];
  v12 = a1[5];
  v13 = v12 + v11;
  if (v10 == v12 + v11)
  {
    std::deque<TRangeValue<Pointer64,char const*>>::__add_back_capacity(a1);
    v11 = a1[4];
    v12 = a1[5];
    v9 = a1[1];
    v13 = v11 + v12;
  }

  v14 = (*(v9 + 8 * (v13 / 0xAA)) + 24 * (v13 % 0xAA));
  v15 = *a3;
  v16 = *a4;
  *v14 = *a2;
  v14[1] = v15;
  v14[2] = v16;
  v17 = v12 + 1;
  a1[5] = v17;
  v18 = v11 + v17;
  v19 = (v9 + 8 * (v18 / 0xAA));
  v20 = v18 % 0xAA;
  if (v20)
  {
    v21 = *v19 + 24 * v20;
  }

  else
  {
    v21 = *(v19 - 1) + 4080;
  }

  return v21 - 24;
}

void read_specification_abbrev_at<Dwarf<Dwarf32,Pointer64,LittleEndian>>(unsigned int a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(a2, a1);
  v4 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a2);
  v5 = v4;
  v7 = *(a2 + 80);
  v6 = *(a2 + 88);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || v4 >= ((*(v7 + 2) - *(v7 + 1)) >> 3))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Invalid specification abbrev index in DWARF: ", 45);
    MEMORY[0x1DA7365E0](v12, v5);
    std::ostringstream::str[abi:ne200100](&__p, &v20);
    Exception::Exception(v19, &v20);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v19);
  }

  v8 = CSCppDwarfAbbrevTable::specification_abbrev_at(v7, v4);
  if (!v8)
  {
    v9 = *(*(v7 + 1) + 8 * v5);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10 <= 0x2E && ((1 << v10) & 0x400020000008) != 0)
      {
        v22 = 0uLL;
        __p = 0;
        std::vector<CSCppDwarfAttribute>::__init_with_size[abi:ne200100]<CSCppDwarfAttribute*,CSCppDwarfAttribute*>(&__p, *(v9 + 16), *(v9 + 24), (*(v9 + 24) - *(v9 + 16)) >> 2);
        operator new();
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Invalid abbrev tag ", 19);
      v17 = MEMORY[0x1DA7365E0](v16, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " for symbol entry.", 18);
      std::ostringstream::str[abi:ne200100](&__p, &v20);
      Exception::Exception(v19, &v20);
      v18 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v18, v19);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Null abbrev discovered in DWARF at index ", 41);
    MEMORY[0x1DA7365E0](v14, v5);
    std::ostringstream::str[abi:ne200100](&__p, &v20);
    Exception::Exception(v19, &v20);
    v15 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v15, v19);
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  __p = a2;
  (*(*v8 + 16))(v8, &__p, *(a2 + 36));
  TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(a2, v3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1D97719D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void record_concrete_symbols_with_ancestor<Pointer64,std::vector<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>,std::deque<TRawSymbol<Pointer64>>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    v9 = *(a3 + 12);
    do
    {
      std::deque<TRawSymbol<Pointer64>>::push_back(a4, a1);
      if (v9)
      {
        v10 = a4[5] + a4[4] - 1;
        v11 = (v10 * 0xA41A41A41A41A41BLL) >> 64;
        v12 = *(a4[1] + 8 * ((v11 + ((v10 - v11) >> 1)) >> 5)) + 104 * (v10 - 39 * ((v11 + ((v10 - v11) >> 1)) >> 5));
        std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](a5, &v12);
      }

      a1 += 104;
      --v7;
    }

    while (v7);
  }
}

void record_inlined_symbols_with_ancestor<Pointer64,std::vector<TRawSymbol<Pointer64> *,std::allocator<TRawSymbol<Pointer64> *>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1;
  v6 = *(a3 + 12);
  __src = 0;
  v41 = 0;
  v42 = 0;
  v7 = &a1[13 * a2];
  v9 = *a4;
  v8 = a4[1];
  v10 = v8;
  do
  {
    if (v10 == v9)
    {
      v12 = *a4;
      if (a2)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }

    v11 = *(v10 - 8);
    v10 -= 8;
    v8 -= 8;
  }

  while (!v11);
  v12 = v10 + 8;
  while (v8 != v9)
  {
    v13 = v8;
    v15 = *(v8 - 8);
    v8 -= 8;
    v14 = v15;
    if (!v15 || (*(v14 + 88) & 1) == 0)
    {
      v9 = v13;
      break;
    }
  }

  if (!a2)
  {
LABEL_40:
    v36 = 0;
    if (!v6)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_10:
  if (v6)
  {
    v16 = a2 == 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 0x4EC4EC4EC4EC4EC5;
  v38 = v17;
  do
  {
    v19 = v12;
    while (v19 != v9)
    {
      v21 = *(v19 - 8);
      v19 -= 8;
      v20 = v21;
      if (*v5 - *v21 < v21[1])
      {
        std::vector<TRawSymbol<Pointer64>>::push_back[abi:ne200100](v20 + 8, v5);
        if (v17)
        {
          if (v6)
          {
            v22 = ((v20[9] - v20[8]) >> 3) * v18 - 1;
            v23 = v41;
            if (v41 >= v42)
            {
              v25 = v6;
              v26 = v18;
              v27 = __src;
              v28 = v41 - __src;
              v29 = (v41 - __src) >> 4;
              v30 = v29 + 1;
              if ((v29 + 1) >> 60)
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
              }

              v31 = v42 - __src;
              if ((v42 - __src) >> 3 > v30)
              {
                v30 = v31 >> 3;
              }

              v32 = v31 >= 0x7FFFFFFFFFFFFFF0;
              v33 = 0xFFFFFFFFFFFFFFFLL;
              if (!v32)
              {
                v33 = v30;
              }

              if (v33)
              {
                std::allocator<std::pair<TRawSymbol<Pointer32> *,unsigned long>>::allocate_at_least[abi:ne200100](&__src, v33);
              }

              v34 = (16 * v29);
              *v34 = v20;
              v34[1] = v22;
              v24 = 16 * v29 + 16;
              memcpy(0, v27, v28);
              v35 = __src;
              __src = 0;
              v41 = v24;
              v42 = 0;
              if (v35)
              {
                operator delete(v35);
              }

              v18 = v26;
              v6 = v25;
              v17 = v38;
            }

            else
            {
              *v41 = v20;
              *(v23 + 1) = v22;
              v24 = (v23 + 16);
            }

            v41 = v24;
          }
        }

        else
        {
          v39 = v20[9] - 104;
          std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](a4, &v39);
        }

        break;
      }
    }

    v5 += 13;
  }

  while (v5 != v7);
  v36 = __src;
  if (v6)
  {
LABEL_41:
    v37 = v41;
    if (v36 != v41)
    {
      do
      {
        v39 = *(*v36 + 64) + 104 * *(v36 + 1);
        std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](a4, &v39);
        v36 += 16;
      }

      while (v36 != v37);
      v36 = __src;
    }
  }

LABEL_44:
  if (v36)
  {
    v41 = v36;
    operator delete(v36);
  }
}

void sub_1D9771DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<TRawSymbol<Pointer64>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 39 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<TRawSymbol<Pointer64>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x27)) + 104 * (v7 % 0x27);
  *(v8 + 96) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 73) = 0u;
  result = TRawSymbol<Pointer64>::operator=(v8, a2);
  ++a1[5];
  return result;
}

void std::deque<TRawSymbol<Pointer64>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x27;
  v3 = v1 - 39;
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
    std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_back<TRawSymbol<Pointer32> *&>(a1, &v9);
}

void sub_1D9772068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<TRawSymbol<Pointer64>>::__emplace_back_slow_path<TRawSymbol<Pointer64>::dwarf_ranges_tag,unsigned long long &,unsigned long long &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo *>(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int *a7, _OWORD **a8)
{
  v8 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x276276276276276)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v9)
  {
    v9 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v11 = 0x276276276276276;
  }

  else
  {
    v11 = v9;
  }

  v27 = a1;
  if (v11)
  {
    std::allocator<TRawSymbol<Pointer64>>::allocate_at_least[abi:ne200100](a1, v11);
  }

  v12 = 104 * v8;
  v24 = 0;
  v25 = v12;
  *(&v26 + 1) = 0;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  *v12 = *a3;
  *(v12 + 8) = v13;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v14;
  *(v12 + 40) = v15;
  *(104 * v8 + 0x30) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 73) = 0u;
  *(v12 + 64) = 0u;
  if (v17)
  {
    *(104 * v8 + 0x30) = *v17;
    v16 |= 0x80000000;
  }

  *(104 * v8 + 0x1C) = v16;
  *(104 * v8 + 0x58) = 1;
  *&v26 = v12 + 104;
  v18 = a1[1];
  v19 = v12 + *a1 - v18;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer64>>,TRawSymbol<Pointer64>*>(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(&v24);
  return v23;
}

void sub_1D9772254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<TRawSymbol<Pointer64>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void parse_dwarf5_path_list<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t *a1, unint64_t a2, unsigned __int16 a3, uint64_t (***a4)(void, std::vector<std::string>::pointer), CSCppStringCache *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = *(a7 + 8) - *a7;
  v13 = v12 == *(a8 + 8) - *a8 && memcmp(*a7, *a8, v12) == 0;
  v38 = 0;
  v37 = 0;
  __s = 0;
  v14 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(a1);
  std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::vector[abi:ne200100](&v34, v14);
  if (v34 != v35)
  {
    v15 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
    v16 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
    if (v15 <= 2)
    {
      if (v15 == 1)
      {
        read_action_for_line_string_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v16, &v38, 1, &__s);
      }

      if (v15 == 2)
      {
        read_action_for_line_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v16, &v38, 2, &v37);
      }
    }

    else if ((v15 - 3) < 3 || v15 == 8193)
    {
      skip_action_for_line_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v16);
    }

    skip_action_for_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(v16);
  }

  v17 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
  std::vector<char const*>::reserve(a8, v17);
  v32[0] = 0u;
  v32[1] = a1;
  v33 = 0;
  v32[2] = a2;
  if (v17)
  {
    v18 = MEMORY[0x1E69E9C10];
    memset(&v31, 0, sizeof(v31));
    v20 = v34;
    v19 = v35;
    if (v34 == v35)
    {
      v24 = 0;
      end = 0;
LABEL_36:
      if (end - v24 == 24)
      {
        if (SHIBYTE(v24->__r_.__value_.__r.__words[2]) < 0)
        {
          v24 = v24->__r_.__value_.__r.__words[0];
        }

        v25 = (**a4)(a4, v24);
        CSCppStringCache::intern(a5, v25);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((end - v24) >> 3) >= 2)
      {
        __p[0].__r_.__value_.__s.__data_[0] = 0;
        while (v24 != end)
        {
          v26 = v24;
          if (SHIBYTE(v24->__r_.__value_.__r.__words[2]) < 0)
          {
            v26 = v24->__r_.__value_.__r.__words[0];
          }

          stringByAppendingPathComponents(__p, 0x400uLL, __p, v26);
          ++v24;
        }

        v27 = (**a4)(a4, __p);
        CSCppStringCache::intern(a5, v27);
      }

      CSCppStringCache::intern(a5, "");
    }

    while (1)
    {
      v38 = 0;
      (*(**v20 + 16))(*v20, v32, a3);
      if (!(*(**v20 + 32))())
      {
        if (!__s)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_1D96E9000, v18, OS_LOG_TYPE_DEFAULT, "No string extracted from DWARF5 path list", __p, 2u);
          }

          goto LABEL_17;
        }

        if (v38 == 2)
        {
          if (v37 <= ((*(a7 + 8) - *a7) >> 3) && !isAbsolutePath(__s))
          {
            begin = v31.__begin_;
            std::string::basic_string[abi:ne200100]<0>(__p, *(*a7 + 8 * v37));
            v22.__i_ = begin;
            std::vector<std::string>::insert(&v31, v22, __p);
LABEL_28:
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }
        }

        else if (v38 == 1)
        {
          if (v13 && *(a7 + 8) != *a7 && !isAbsolutePath(__s))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, **a7);
            std::vector<std::string>::push_back[abi:ne200100](&v31, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }

          std::string::basic_string[abi:ne200100]<0>(__p, __s);
          std::vector<std::string>::push_back[abi:ne200100](&v31, __p);
          goto LABEL_28;
        }
      }

LABEL_17:
      if (++v20 == v19)
      {
        v24 = v31.__begin_;
        end = v31.__end_;
        goto LABEL_36;
      }
    }
  }

  __p[0].__r_.__value_.__r.__words[0] = &v34;
  std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::__destroy_vector::operator()[abi:ne200100](__p);
}

char *parse_dwarf2_path_list<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t *a1, const char *a2, uint64_t (***a3)(void, char *), CSCppStringCache *a4, void *a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v11 = &v21;
  for (i = a5; ; i = a5)
  {
    std::vector<char const*>::push_back[abi:ne200100](i, v11);
    v13 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::FORM_string(a1);
    v20 = v13;
    if (!*v13)
    {
      break;
    }

    if (!isAbsolutePath(v13))
    {
      stringByAppendingPathComponents(__s1, 0x400uLL, v21, v20);
      v14 = (**a3)(a3, __s1);
      CSCppStringCache::intern(a4, v14);
    }

    v11 = &v20;
  }

  result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::FORM_string(a1);
  if (*result)
  {
    v16 = result;
    do
    {
      v17 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(a1);
      TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(a1);
      TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(a1);
      if (*v16 != 47 && v17 < ((a5[1] - *a5) >> 3))
      {
        stringByAppendingPathComponents(__s1, 0x400uLL, *(*a5 + 8 * v17), v16);
        v18 = (**a3)(a3, __s1);
        CSCppStringCache::intern(a4, v18);
      }

      v19 = (**a3)(a3, v16);
      std::vector<char const*>::push_back[abi:ne200100](a6, &v19);
      result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::FORM_string(a1);
      v16 = result;
    }

    while (*result);
  }

  return result;
}

uint64_t std::deque<TRawSourceInfo<Pointer64>>::emplace_back<unsigned long long &,int,char const*&,int &,unsigned int &>(unint64_t *a1, void *a2, int *a3, uint64_t *a4, int *a5, unsigned int *a6)
{
  v12 = a1[2];
  v13 = a1[1];
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 102 * ((v12 - v13) >> 3) - 1;
  }

  v15 = a1[4];
  v16 = a1[5];
  v17 = v16 + v15;
  if (v14 == v16 + v15)
  {
    std::deque<TRawSourceInfo<Pointer64>>::__add_back_capacity(a1);
    v15 = a1[4];
    v16 = a1[5];
    v13 = a1[1];
    v17 = v15 + v16;
  }

  v18 = *(v13 + 8 * (v17 / 0x66)) + 40 * (v17 % 0x66);
  v19 = *a3;
  v20 = *a4;
  v21 = *a5;
  v22 = *a6;
  *v18 = *a2;
  *(v18 + 8) = v19;
  *(v18 + 16) = v20;
  *(v18 + 24) = v21;
  *(v18 + 28) = v22;
  v23 = v16 + 1;
  a1[5] = v23;
  v24 = v15 + v23;
  v25 = (v13 + 8 * (v24 / 0x66));
  v26 = v24 % 0x66;
  if (v26)
  {
    v27 = *v25 + 40 * v26;
  }

  else
  {
    v27 = *(v25 - 1) + 4080;
  }

  return v27 - 40;
}

void read_action_for_line_string_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (a1 != 8)
  {
    if (a1 != 31 && a1 != 14)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v9);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unhandled form in read string binding ", 38);
      MEMORY[0x1DA7365E0](v5, a1);
      std::ostringstream::str[abi:ne200100](v9, &v8);
      Exception::Exception(v7, &v8);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v7);
    }

    operator new();
  }

  operator new();
}

void sub_1D9772C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_line_data_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      operator new();
    }

    if (a1 == 6)
    {
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        operator new();
      case 0xF:
        operator new();
      case 0xB:
        operator new();
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Unhandled form in read data binding ", 36);
  MEMORY[0x1DA7365E0](v5, a1);
  std::ostringstream::str[abi:ne200100](v9, &v8);
  Exception::Exception(v7, &v8);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v7);
}

void sub_1D9772E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void skip_action_for_line_form<Dwarf<Dwarf32,Pointer64,LittleEndian>>(uint64_t a1)
{
  if (a1 <= 13)
  {
    if (a1 <= 7)
    {
      switch(a1)
      {
        case 5:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
      }

      goto LABEL_27;
    }

    if (a1 == 8)
    {
      operator new();
    }

    if (a1 == 9)
    {
      operator new();
    }

    if (a1 != 11)
    {
LABEL_27:
      std::ostringstream::basic_ostringstream[abi:ne200100](v6);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled dwarf attribute in Debug Line Table ", 46);
      MEMORY[0x1DA7365E0](v2, a1);
      std::ostringstream::str[abi:ne200100](v6, &v5);
      Exception::Exception(v4, &v5);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v4);
    }

LABEL_20:
    operator new();
  }

  if (a1 > 29)
  {
    if (a1 == 30)
    {
      operator new();
    }

    if (a1 == 37)
    {
      goto LABEL_20;
    }

    if (a1 != 31)
    {
      goto LABEL_27;
    }
  }

  else if (a1 != 14)
  {
    if (a1 == 15)
    {
      operator new();
    }

    if (a1 != 23)
    {
      goto LABEL_27;
    }
  }

  operator new();
}

void sub_1D97731E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t TDwarfReadDW_FORM_LineStrpAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  if ((*(a1 + 24) & **(a1 + 16)) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    v4 = *(a2 + 32);
    v5 = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::dwarf_offset(result);
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::set_cursor(v4, v5);
    v6 = *(a1 + 8);
    **(a1 + 16) |= *(a1 + 24);
    *v6 = *v4 + *(v4 + 8);
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data1AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data2AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 2;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint16(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data4AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint32(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data8AttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::uint64(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_UdataAttributeAction<Dwarf<Dwarf32,Pointer64,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>::ULEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

void std::deque<TRawSourceInfo<Pointer64>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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
    std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_back<TRawSymbol<Pointer32> *&>(a1, &v9);
}

void sub_1D977377C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<TRangeValue<Pointer64,char const*>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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
    std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_back<TRawSymbol<Pointer32> *&>(a1, &v9);
}

void sub_1D9773950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::allocator<TRawSourceInfo<Pointer64>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__int128 *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRawSourceInfo<Pointer64>,TRawSourceInfo<Pointer64>*,TRawSourceInfo<Pointer64>&,TRawSourceInfo<Pointer64>**,long,102l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRawSourceInfo<Pointer64>,TRawSourceInfo<Pointer64>*,TRawSourceInfo<Pointer64>&,TRawSourceInfo<Pointer64>**,long,102l>,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer64>>>>>(uint64_t *a1, __int128 *a2, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = &v18;
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v12 = &v19;
    for (i = (v10 + 4080); ; i = v15 + 255)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer64>>>>(v12, a2, i, v7);
      v7 = v14;
      *a5 = v14;
      if (v11 == a3)
      {
        break;
      }

      v15 = *v11++;
      a2 = v15;
      v12 = &v20;
    }

    a2 = *v11;
    v8 = &v21;
  }

  result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer64>>>>(v8, a2, a4, v7);
  *a5 = v17;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRawSourceInfo<Pointer64> *,TRawSourceInfo<Pointer64> *,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer64>>>>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a4) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0x666666666666666)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - *a4) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x333333333333333)
        {
          v14 = 0x666666666666666;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::allocator<TRawSourceInfo<Pointer64>>::allocate_at_least[abi:ne200100](a4, v14);
        }

        v15 = 8 * ((v7 - *a4) >> 3);
        v16 = *v5;
        v17 = v5[1];
        *(v15 + 32) = *(v5 + 4);
        *v15 = v16;
        *(v15 + 16) = v17;
        v7 = 40 * v11 + 40;
        v18 = *(a4 + 8) - *a4;
        v19 = 40 * v11 - v18;
        memcpy((v15 - v18), *a4, v18);
        v20 = *a4;
        *a4 = v19;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        v9 = *v5;
        v10 = v5[1];
        *(v7 + 32) = *(v5 + 4);
        *v7 = v9;
        *(v7 + 16) = v10;
        v7 += 40;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 40);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__int128 *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRangeValue<Pointer64,char const*>,TRangeValue<Pointer64,char const*>*,TRangeValue<Pointer64,char const*>&,TRangeValue<Pointer64,char const*>**,long,170l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRangeValue<Pointer64,char const*>,TRangeValue<Pointer64,char const*>*,TRangeValue<Pointer64,char const*>&,TRangeValue<Pointer64,char const*>**,long,170l>,std::back_insert_iterator<std::vector<TRangeValue<Pointer64,char const*>>>>>(__int128 **a1, __int128 *a2, __int128 **a3, __int128 *a4, uint64_t *a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = &v18;
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v12 = &v19;
    for (i = v10 + 255; ; i = v15 + 255)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer64,char const*> *,TRangeValue<Pointer64,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer64,char const*>>>>(v12, a2, i, v7);
      v7 = v14;
      *a5 = v14;
      if (v11 == a3)
      {
        break;
      }

      v15 = *v11++;
      a2 = v15;
      v12 = &v20;
    }

    a2 = *v11;
    v8 = &v21;
  }

  result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer64,char const*> *,TRangeValue<Pointer64,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer64,char const*>>>>(v8, a2, a4, v7);
  *a5 = v17;
  return result;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer64,char const*> *,TRangeValue<Pointer64,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer64,char const*>>>>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a4) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a4) >> 3);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::allocator<CSCppSectionRange>::allocate_at_least[abi:ne200100](a4, v13);
        }

        v14 = 8 * ((v7 - *a4) >> 3);
        v15 = *v5;
        *(v14 + 16) = *(v5 + 2);
        *v14 = v15;
        v7 = 24 * v10 + 24;
        v16 = *(a4 + 8) - *a4;
        v17 = 24 * v10 - v16;
        memcpy((v14 - v16), *a4, v16);
        v18 = *a4;
        *a4 = v17;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        v9 = *v5;
        *(v7 + 16) = *(v5 + 2);
        *v7 = v9;
        v7 += 24;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::deque<TRangeValue<Pointer64,char const*>>::~deque[abi:ne200100](void *a1)
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
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<TRangeValue<Pointer32,char const*> *,std::allocator<TRangeValue<Pointer32,char const*> *>>::~__split_buffer(a1);
}

uint64_t std::deque<TRawSymbol<Pointer64>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0x27];
    v7 = *v6 + 104 * (v5 % 0x27);
    v8 = v2[(a1[5] + v5) / 0x27] + 104 * ((a1[5] + v5) % 0x27);
    if (v7 != v8)
    {
      do
      {
        v14 = (v7 + 64);
        std::vector<TRawSymbol<Pointer64>>::__destroy_vector::operator()[abi:ne200100](&v14);
        v7 += 104;
        if (v7 - *v6 == 4056)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 19;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 39;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<TRangeValue<Pointer32,char const*> *,std::allocator<TRangeValue<Pointer32,char const*> *>>::~__split_buffer(a1);
}

uint64_t std::deque<TRawSourceInfo<Pointer64>>::~deque[abi:ne200100](void *a1)
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
    v5 = 51;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 102;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<TRangeValue<Pointer32,char const*> *,std::allocator<TRangeValue<Pointer32,char const*> *>>::~__split_buffer(a1);
}

void std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<TDwarfDIEStream<Dwarf<Dwarf32,Pointer64,LittleEndian>>>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void extract_direct_stabs_from_header_filtering_redacted<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v10 = *(a1 + 32);
  v19 = *(a1 + 8);
  v18 = (*(*v19 + 32))(v19, a5, a6);
  v11 = a4;
  TRawSymbolOwnerData<Pointer64>::presize_symbols_container_by(a2, a4);
  if (a4)
  {
    v12 = 0;
    for (i = (a3 + 4); ; i += 16)
    {
      v14 = *i;
      v15 = v14 <= 0x1F && (v14 & 0xE) == 14;
      if (v15 && i[1])
      {
        break;
      }

LABEL_24:
      if (!--v11)
      {
        return;
      }
    }

    if (a6 > *(i - 1) && TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::string_at(&v19))
    {
      v16 = (v18 + *(i - 1));
      if (v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = "$$$bad-name-in-nlist$$$";
      if (v12)
      {
        goto LABEL_17;
      }
    }

    if (!strcmp(v16, "<redacted>"))
    {
      v12 = v16;
    }

    else
    {
      v12 = 0;
    }

LABEL_17:
    if (v16 == v12)
    {
      v12 = v16;
    }

    else
    {
      v17 = 38289424;
      if ((v14 & 1) == 0)
      {
        v17 = 38289408;
      }

      if (v14 >= 0x10)
      {
        v17 |= 0x20u;
      }

      TRawSymbolOwnerData<Pointer64>::emplace_symbol(a2, *(i + 4) + v10, 0, v16, v16, v17 | (8 * *(i + 1)) & 0x40, 0, 0);
    }

    goto LABEL_24;
  }
}

void extract_stripped_locals_from_dyld_shared_cache<SizeAndEndianness<Pointer64,LittleEndian>>(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a3 + 2);
  v5 = *(a3 + 3);
  if (v5 != v6)
  {
    v10 = *(a4 + 32);
    v11 = *a3;
    TRawSymbolOwnerData<Pointer64>::presize_symbols_container_by(a5, (v5 - v6));
    v13 = *(a3 + 2);
    v12 = *(a3 + 3);
    if (v13 < v12)
    {
      v14 = (v11 + result + 16 * v13 + 8);
      do
      {
        v15 = *(v14 - 4);
        if ((v15 & 0xEEEEEEEE) == 0xE && *(v14 - 3))
        {
          v16 = 38289440;
          if (v15 < 0x10)
          {
            v16 = 38289408;
          }

          v17 = *(v14 - 2);
          if (v17 >= *(a3 + 4) || (v18 = (result + v17 + a3[3])) == 0 || !*v18)
          {
            v18 = "$$$bad-name-in-nlist$$$";
          }

          TRawSymbolOwnerData<Pointer64>::emplace_symbol(a5, *v14 + v10, 0, v18, v18, v16 | (8 * *(v14 - 1)) & 0x40, 0, 0);
          v12 = *(a3 + 3);
        }

        ++v13;
        v14 += 2;
      }

      while (v13 < v12);
    }
  }
}