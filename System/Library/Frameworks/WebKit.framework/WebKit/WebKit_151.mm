uint64_t std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(__int128 *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  LOBYTE(v19[0]) = 0;
  LOBYTE(v21) = -1;
  v4 = *(a1 + 24);
  if (!*(a1 + 24))
  {
    v5 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    *v19 = v5;
    LODWORD(v20) = *(a1 + 4);
LABEL_3:
    LOBYTE(v21) = v4;
    goto LABEL_4;
  }

  if (v4 != 255)
  {
    *v19 = *a1;
    goto LABEL_3;
  }

LABEL_4:
  WebCore::SecurityOriginData::operator=(a1, a2);
  WebCore::SecurityOriginData::operator=(a2, v19);
  if (!v21)
  {
    v7 = v19[1];
    v19[1] = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v19[0];
    v19[0] = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }

  v11 = *(a1 + 7);
  v9 = a1 + 7;
  v10 = v11;
  *v19 = *(v9 - 3);
  v20 = *(v9 - 1);
  v12 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  v13 = *(a2 + 48);
  *(v9 - 3) = *(a2 + 32);
  *(v9 - 1) = v13;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v9, (a2 + 56));
  *(&v15 + 1) = v19[1];
  *(a2 + 32) = *v19;
  *(a2 + 48) = v20;
  v16 = *(a2 + 68);
  if (v16)
  {
    WTF::VectorTypeOperations<WebCore::SecurityOriginData>::destruct(*(a2 + 56), (*(a2 + 56) + 32 * v16));
  }

  v17 = *(a2 + 56);
  if (v17)
  {
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    WTF::fastFree(v17, v14);
  }

  *&v15 = 0;
  v21 = v15;
  *(a2 + 56) = v10;
  *(a2 + 64) = v12;
  return WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v14);
}

uint64_t std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 48);
  v9 = *(a3 + 48);
  if (v8 <= *(result + 48))
  {
    if (v9 > v8)
    {
      result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(a2, a3);
      if (*(a2 + 48) > *(v7 + 48))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(result, v10);
      goto LABEL_10;
    }

    result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(result, a2);
    if (*(a3 + 48) > *(a2 + 48))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 48) > *(a3 + 48))
  {
    result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(a3, a4);
    if (*(a3 + 48) > *(a2 + 48))
    {
      result = std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(a2, a3);
      if (*(a2 + 48) > *(v7 + 48))
      {

        return std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v7, a2);
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *>(double *a1, double *a2)
{
  v3 = a1;
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = 0x8E38E38E38E38E39 * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[15];
        v9 = *(a2 - 3);
        if (v8 > a1[6])
        {
          if (v9 <= v8)
          {
            std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(a1, (a1 + 9));
            if (*(a2 - 3) <= v3[15])
            {
              return 1;
            }

            a1 = v3 + 9;
          }

          v5 = a2 - 9;
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 9);
        v7 = a2 - 9;
        break;
      case 4:
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,0>(a1, (a1 + 9), (a1 + 18), (a2 - 9));
        return 1;
      case 5:
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,0>(a1, (a1 + 9), (a1 + 18), (a1 + 27));
        if (*(a2 - 3) <= v3[33])
        {
          return 1;
        }

        std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>((v3 + 27), (a2 - 9));
        if (v3[33] <= v3[24])
        {
          return 1;
        }

        std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v3 + 9, (v3 + 27));
        if (v3[24] <= v3[15])
        {
          return 1;
        }

        v6 = (v3 + 9);
        v7 = v3 + 18;
        break;
      default:
        goto LABEL_16;
    }

    std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(v6, v7);
    if (v3[15] > v3[6])
    {
      v5 = v3 + 9;
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 3) > a1[6])
    {
      v5 = a2 - 9;
LABEL_24:
      a1 = v3;
LABEL_31:
      std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 18;
  v11 = a1[15];
  v12 = a1[24];
  if (v11 <= a1[6])
  {
    if (v12 <= v11)
    {
      goto LABEL_36;
    }

    std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>((a1 + 9), (a1 + 18));
    if (v3[15] <= v3[6])
    {
      goto LABEL_36;
    }

    v13 = (v3 + 9);
    a1 = v3;
    goto LABEL_35;
  }

  if (v12 > v11)
  {
LABEL_34:
    v13 = (v3 + 18);
LABEL_35:
    std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(a1, v13);
    goto LABEL_36;
  }

  std::ranges::__iter_swap::__fn::operator()[abi:sn200100]<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *&>(a1, (a1 + 9));
  if (v3[24] > v3[15])
  {
    a1 = v3 + 9;
    goto LABEL_34;
  }

LABEL_36:
  v14 = v3 + 27;
  if (v3 + 27 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (v14[6] <= v10[6])
  {
LABEL_55:
    v10 = v14;
    v15 += 72;
    v14 += 9;
    if (v14 == a2)
    {
      return 1;
    }
  }

  LOBYTE(v29[0]) = 0;
  v31 = -1;
  v17 = *(v14 + 24);
  if (*(v14 + 24))
  {
    if (v17 == 255)
    {
      goto LABEL_42;
    }

    *v29 = *v14;
  }

  else
  {
    v18 = *v14;
    *v14 = 0.0;
    v14[1] = 0.0;
    *v29 = v18;
    v30 = *(v14 + 4);
  }

  v31 = v17;
LABEL_42:
  v32 = *(v14 + 2);
  v19 = *(v14 + 7);
  v33 = v14[6];
  v34[0] = v19;
  v20 = *(v14 + 8);
  v14[7] = 0.0;
  v14[8] = 0.0;
  v21 = v15;
  v34[1] = v20;
  while (1)
  {
    std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v3 + v21 + 216, v3 + v21 + 144);
    if (v21 == -144)
    {
      break;
    }

    v22 = *(v3 + v21 + 120);
    v21 -= 72;
    if (v33 <= v22)
    {
      v23 = v3 + v21 + 216;
      goto LABEL_47;
    }
  }

  v23 = v3;
LABEL_47:
  std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](v23, v29);
  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v34, v24);
  if (!v31)
  {
    v26 = v29[1];
    v29[1] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    v27 = v29[0];
    v29[0] = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }
  }

  if (++v16 != 8)
  {
    goto LABEL_55;
  }

  return v14 + 9 == a2;
}

uint64_t std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>::operator=[abi:sn200100](uint64_t a1, uint64_t a2)
{
  WebCore::SecurityOriginData::operator=(a1, a2);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a1 + 68);
  if (v5)
  {
    WTF::VectorTypeOperations<WebCore::SecurityOriginData>::destruct(*(a1 + 56), (*(a1 + 56) + 32 * v5));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 56, (a2 + 56));
  return a1;
}

uint64_t WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(a1);
  v5 = result;
  v7 = v6;
  v8 = *a1;
  if (*a1)
  {
    v9 = v8 + 72 * *(v8 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      WebCore::SecurityOriginData::isolatedCopy();
      WebCore::SecurityOriginData::isolatedCopy();
      WebCore::SecurityOriginData::operator=(v5, &v18);
      WebCore::SecurityOriginData::operator=(v5 + 32, &v21);
      if (!v23)
      {
        v11 = v22;
        v22 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v10);
        }

        v12 = v21;
        v21 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }

      v23 = -1;
      if (!v20)
      {
        v13 = v19;
        v19 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v10);
        }

        v14 = v18;
        v18 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v10);
        }
      }

      WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy((v5 + 64), &v18);
      v16 = v18;
      v18 = 0;
      result = *(v5 + 64);
      *(v5 + 64) = v16;
      if (result)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v15);
        result = v18;
        if (v18)
        {
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v18, v17);
        }
      }

      do
      {
        v5 += 72;
        if (v5 == v7)
        {
          break;
        }

        result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5);
      }

      while (result);
    }

    while (v5 != v9);
    v8 = *a1;
  }

  *a1 = 0;
  *a2 = v8;
  return result;
}

uint64_t *WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>@<X0>(uint64_t *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDF9FA0);
  }

  v7 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v7;
    v4 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v9 + 16 * v13);
  v15 = *v14;
  if (*v14 == -1)
  {
LABEL_13:
    v18 = *(v9 - 16);
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v22 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_21;
      }

      if (v15 == -2)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v9 + 16 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14 != -1);
    if (!v16)
    {
      goto LABEL_13;
    }

    *v16 = -1;
    v16[1] = 0;
    v18 = *(v9 - 16) - 1;
    *(v9 - 16) = v18;
    v4 = *a2;
  }

  *v16 = v4;
  v16[1] = *a3;
  v19 = *(v9 - 12) + 1;
  *(v9 - 12) = v19;
  v20 = (v19 + v18);
  v21 = *(v9 - 4);
  if (v21 > 0x400)
  {
    if (v21 <= 2 * v20)
    {
LABEL_16:
      result = WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::expand(v7, v16);
      v16 = result;
      v9 = *v7;
      if (*v7)
      {
        v21 = *(v9 - 4);
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_16;
  }

  v23 = v9 + 16 * v21;
  v22 = 1;
  v14 = v16;
LABEL_21:
  *a4 = v14;
  *(a4 + 8) = v23;
  *(a4 + 16) = v22;
  return result;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t **a1, unint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = 0;
    v4 = 0;
LABEL_3:
    v5 = 8;
    goto LABEL_4;
  }

  v3 = *(v2 - 4);
  v4 = *(v2 - 12);
  if (!v3)
  {
    goto LABEL_3;
  }

  v5 = v3 << (6 * v4 >= 2 * v3);
LABEL_4:
  isNull = WTF::fastMalloc(0x28, (40 * v5 + 16));
  v8 = isNull;
  v9 = (isNull + 16);
  if (v5)
  {
    bzero(isNull + 16, 40 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = v3;
    v32 = v3;
    while (1)
    {
      v13 = v2 + 40 * v10;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_10;
      }

LABEL_47:
      if (++v10 == v12)
      {
        goto LABEL_52;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(isNull);
    }

LABEL_10:
    isNull = WebCore::SecurityOriginData::isNull((v2 + 40 * v10));
    if (isNull)
    {
      v14 = *(v13 + 32);
      if (v14)
      {
        isNull = WTF::fastFree((v14 - 16), v7);
      }

      if (!*(v13 + 24))
      {
        v15 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v7);
        }

        isNull = *v13;
        *v13 = 0;
        if (isNull)
        {
          if (atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            isNull = WTF::StringImpl::destroy(isNull, v7);
          }
        }
      }

      *(v13 + 24) = -1;
    }

    else
    {
      v16 = v2;
      v17 = *a1;
      if (*a1)
      {
        v18 = *(v17 - 8);
      }

      else
      {
        v18 = 0;
      }

      v35 = -1640531527;
      v36 = 0;
      v37 = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v35, v13);
      v19 = WTF::SuperFastHash::hash(&v35);
      v20 = 0;
      do
      {
        v21 = v19 & v18;
        v22 = v17 + 40 * (v19 & v18);
        v24 = WebCore::SecurityOriginData::isNull(v22);
        v19 = ++v20 + v21;
      }

      while (!v24);
      v25 = *(v22 + 32);
      if (v25)
      {
        WTF::fastFree((v25 - 16), v23);
      }

      v2 = v16;
      if (!*(v22 + 24))
      {
        v26 = *(v22 + 8);
        *(v22 + 8) = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v23);
        }

        v27 = *v22;
        *v22 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v23);
        }
      }

      *(v22 + 24) = -1;
      isNull = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v22, v13);
      *(v22 + 32) = 0;
      v28 = *(v13 + 32);
      *(v13 + 32) = 0;
      *(v22 + 32) = v28;
      v29 = *(v13 + 32);
      if (v29)
      {
        isNull = WTF::fastFree((v29 - 16), v7);
      }

      if (!*(v13 + 24))
      {
        v30 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v7);
        }

        isNull = *v13;
        *v13 = 0;
        if (isNull && atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isNull = WTF::StringImpl::destroy(isNull, v7);
        }
      }

      *(v13 + 24) = -1;
      if (v13 == a2)
      {
        v11 = v22;
      }

      v12 = v32;
    }

    goto LABEL_47;
  }

  v11 = 0;
  result = 0;
  if (v2)
  {
LABEL_52:
    WTF::fastFree((v2 - 16), v7);
    return v11;
  }

  return result;
}

_OWORD *WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::expand(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 12) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc((16 * a2), (16 * a2 + 16));
  if (v4)
  {
    v11 = v4;
    v12 = v9 + 3;
    do
    {
      *(v12 - 2) = -1;
      *v12 = 0;
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  *a1 = (v9 + 2);
  *(v9 + 2) = v4 - 1;
  *(v9 + 3) = v4;
  *v9 = 0;
  *(v9 + 1) = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v6 + 16 * v13);
      if (*v15 <= 0xFFFFFFFD)
      {
        v16 = *a1;
        if (*a1)
        {
          v17 = *(v16 - 8);
        }

        else
        {
          v17 = 0;
        }

        v18 = 0;
        v19 = 9 * ((*v15 + ~(*v15 << 15)) ^ ((*v15 + ~(*v15 << 15)) >> 10));
        v20 = ((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) ^ (((v19 ^ (v19 >> 6)) + ~((v19 ^ (v19 >> 6)) << 11)) >> 16);
        do
        {
          v21 = v20 & v17;
          v20 = ++v18 + v21;
        }

        while (*(v16 + 16 * v21) != -1);
        v22 = (v16 + 16 * v21);
        *v22 = *v15;
        if (v15 == a3)
        {
          v14 = v22;
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

uint64_t *WTF::HashTable<WebKit::WebsiteDataType,WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebsiteDataType,unsigned long long>>,WTF::IntHash<WebKit::WebsiteDataType>,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::FastMalloc>::HashTable(uint64_t *result, void *a2)
{
  v2 = result;
  *result = 0;
  if (!*a2)
  {
    return v2;
  }

  v3 = *a2;
  v4 = *(*a2 - 12);
  if (!v4)
  {
    return v2;
  }

  v6 = *(v3 - 3);
  v7 = *(v3 - 3);
  if (v4 == 1)
  {
    goto LABEL_6;
  }

  v8 = __clz(v4 - 1);
  if (v8)
  {
    v6 = (1 << -v8);
    v7 = 1 << -v8;
    if (v4 > 0x400)
    {
      if (v6 > 2 * v4)
      {
LABEL_8:
        if (v7 > 0x400)
        {
          v9 = 0.416666667;
        }

        else
        {
          v9 = 0.604166667;
        }

        if (v7 * v9 <= v4)
        {
          v7 *= 2;
        }

        if (v7 <= 8)
        {
          v10 = 8;
        }

        else
        {
          v10 = v7;
        }

        v11 = WTF::fastMalloc((16 * v10), (16 * v10 + 16));
        v12 = v11 + 3;
        v13 = v10;
        do
        {
          *(v12 - 2) = -1;
          *v12 = 0;
          v12 += 2;
          --v13;
        }

        while (v13);
        *v2 = (v11 + 2);
        *(v11 + 2) = v10 - 1;
        *(v11 + 3) = v10;
        *v11 = 0;
        *(v11 + 1) = v4;
        v14 = *a2;
        if (*a2)
        {
          v15 = *(v14 - 1);
          v16 = &v14[4 * v15];
          if (*(v14 - 3))
          {
            if (!v15)
            {
              v19 = 0;
              v18 = *a2;
              goto LABEL_30;
            }

            v17 = 16 * v15;
            v18 = *a2;
            while (*v18 >= 0xFFFFFFFE)
            {
              v18 += 4;
              v17 -= 16;
              if (!v17)
              {
                v18 = v16;
                break;
              }
            }

LABEL_27:
            if (!v14)
            {
              goto LABEL_31;
            }

            v19 = *(v14 - 1);
LABEL_30:
            v14 += 4 * v19;
LABEL_31:
            while (v18 != v14)
            {
              v20 = *v2;
              if (*v2)
              {
                v21 = *(v20 - 8);
              }

              else
              {
                v21 = 0;
              }

              v22 = 0;
              v23 = *v18 + ~(*v18 << 15);
              v24 = (9 * (v23 ^ (v23 >> 10))) ^ ((9 * (v23 ^ (v23 >> 10))) >> 6);
              v25 = (v24 + ~(v24 << 11)) ^ ((v24 + ~(v24 << 11)) >> 16);
              do
              {
                v26 = v25 & v21;
                v27 = *(v20 + 16 * (v25 & v21));
                v25 = ++v22 + (v25 & v21);
              }

              while (v27 != -1);
              v28 = *v18;
              v18 += 4;
              *(v20 + 16 * v26) = v28;
              while (v18 != v16 && *v18 >= 0xFFFFFFFE)
              {
                v18 += 4;
              }
            }

            return v2;
          }
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        v18 = v16;
        v16 = &v14[4 * v15];
        goto LABEL_27;
      }

LABEL_7:
      v7 *= 2;
      goto LABEL_8;
    }

LABEL_6:
    if (3 * v6 > 4 * v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~KeyValuePair(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  if (!*(a1 + 24))
  {
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(mpark *a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1 + 24;
    while (1)
    {
      v5 = *v4;
      if (*v4)
      {
        break;
      }

      if (*(v4 - 3) != -1)
      {
        goto LABEL_5;
      }

LABEL_15:
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_19;
      }
    }

    if (v5 != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

LABEL_5:
    v6 = *(v4 + 1);
    if (v6)
    {
      a1 = WTF::fastFree((v6 - 16), a2);
      v5 = *v4;
    }

    if (!v5)
    {
      v7 = *(v4 - 2);
      *(v4 - 2) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      a1 = *(v4 - 3);
      *(v4 - 3) = 0;
      if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        a1 = WTF::StringImpl::destroy(a1, a2);
      }
    }

    *v4 = -1;
    goto LABEL_15;
  }

LABEL_19:

  return WTF::fastFree((v2 - 16), a2);
}

WTF::StringImpl *_ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS7_EUlRT_E_S7_SA_vE3mapERS7_SA_RKSD_(WTF::StringImpl *result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    v3 = (v2 >> 29);
    if (v3)
    {
      __break(0xC471u);
    }

    else
    {
      v5 = result;
      result = WTF::fastMalloc(v3, (8 * v2));
      *(v5 + 2) = v2;
      *v5 = result;
      v6 = *(a2 + 3);
      if (v6)
      {
        v7 = *a2;
        v8 = 8 * v6;
        do
        {
          WebCore::RegistrableDomain::isolatedCopy(&v13);
          v10 = *(v5 + 3);
          v11 = *v5;
          v12 = v13;
          v13 = 0;
          *(v11 + 8 * v10) = v12;
          *(v5 + 3) = v10 + 1;
          result = v13;
          v13 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v9);
            }
          }

          v7 += 8;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }

  return result;
}

WTF *WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(void *a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  if (v4)
  {
    v5 = *a2;
    v6 = 592 * v4;
    do
    {
      WebCore::ServiceWorkerContextData::isolatedCopy();
      WebCore::ServiceWorkerContextData::operator=(v5, v9);
      WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v9, v7);
      v5 += 592;
      v6 -= 592;
    }

    while (v6);
  }

  *a1 = 0;
  a1[1] = 0;
  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
}

uint64_t WebKit::ServiceWorkerStorageManager::operator new(WebKit::ServiceWorkerStorageManager *this, void *a2)
{
  if (this == 16 && WebKit::ServiceWorkerStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ServiceWorkerStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::ServiceWorkerStorageManager::operatorNewSlow(this);
  }
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(mpark *this, WTF::StringImpl *a2)
{
  v2 = this;
  v3 = *(this - 1);
  if (v3)
  {
    while (!*(this + 24))
    {
      if (*this != -1)
      {
        goto LABEL_4;
      }

LABEL_5:
      this = (this + 96);
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    if (*(this + 24) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }

LABEL_4:
    this = WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~KeyValuePair(this, a2);
    goto LABEL_5;
  }

LABEL_9:

  return WTF::fastFree((v2 - 16), a2);
}

uint64_t WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~KeyValuePair(uint64_t a1, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
  WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 64, v3);
  if (!*(a1 + 56))
  {
    v5 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  *(a1 + 56) = -1;
  if (!*(a1 + 24))
  {
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }

    v8 = *a1;
    *a1 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t WTF::RefCounted<WebKit::MemoryStorageArea>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    v3 = *(result + 8);
    *(v2 + 8) = 0;
    if (v3 && (WTF::RefCounted<WebCore::StorageMap::Impl>::deref(v3, a2), *v2 != 1))
    {
      result = 191;
      __break(0xC471u);
    }

    else
    {
      WebKit::StorageAreaBase::~StorageAreaBase((v2 - 104), a2);

      return bmalloc::api::tzoneFree(v4, v5);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*a1 && (a3 = *(v4 - 1), a3))
  {
    v5 = (a3 << (6 * *(v4 - 3) >= (2 * a3)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2, a3);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v7 = *a1;
  if (*a1)
  {
    v8 = *(v7 - 4);
    v9 = *(v7 - 12);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = WTF::fastMalloc(a4, (16 * a2 + 16));
  v12 = v10;
  v13 = v10 + 2;
  if (v5)
  {
    bzero(v10 + 2, 16 * v5);
  }

  *a1 = v13;
  *(v12 + 2) = v5 - 1;
  *(v12 + 3) = v5;
  *v12 = 0;
  *(v12 + 1) = v9;
  if (v8)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (v7 + 16 * v14);
      v17 = *v16;
      if (*v16 != -1)
      {
        if (v17)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v24;
            v27 = *(v19 + 16 * v24);
            v24 = (v24 + v25++) & v20;
          }

          while (v27);
          v28 = (v19 + 16 * v26);
          v29 = v28[1];
          v28[1] = 0;
          if (v29 && atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v29);
            WTF::fastFree(v29, v11);
          }

          *v28 = *v16;
          v30 = v16[1];
          v16[1] = 0;
          v28[1] = v30;
          v31 = v16[1];
          v16[1] = 0;
          if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v31);
            WTF::fastFree(v31, v11);
          }

          if (v16 == a3)
          {
            v15 = v28;
          }
        }

        else
        {
          v18 = v16[1];
          v16[1] = 0;
          if (v18)
          {
            if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v18);
              WTF::fastFree(v18, v11);
            }
          }
        }
      }

      ++v14;
    }

    while (v14 != v8);
  }

  else
  {
    v15 = 0;
    result = 0;
    if (!v7)
    {
      return result;
    }
  }

  WTF::fastFree((v7 - 16), v11);
  return v15;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t **a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 2), 0xFFFFFFFF00000001);
  *(v4 - 2) = v5;
  v6 = *(v4 - 1);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0, v6);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFAE9CLL);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

_DWORD *WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::FileSystemStorageHandleRegistry::~FileSystemStorageHandleRegistry((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::FileSystemStorageHandleRegistry::~FileSystemStorageHandleRegistry(WebKit::FileSystemStorageHandleRegistry *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6);
              WTF::fastFree(v6, a2);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 12) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = v4 - 1;
  v9[3] = v4;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v26, v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v28, v10);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(v15, v10);
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFB274);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *result@<X0>, WTF::StringImpl *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v3 = (v3 + 16 * *(v3 - 1));
  }

  if (v3 == a2)
  {
    *a3 = 0;
    return result;
  }

  v4 = *(a2 + 1);
  *(a2 + 1) = 0;
  *a3 = v4;
  if (*result)
  {
    v5 = (*result + 16 * *(*result - 4));
    if (v5 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v5 = 0;
  }

  if (v5 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl *a2)
{
  result = *(a2 + 1);
  *a2 = -1;
  *(a2 + 1) = 0;
  if (result)
  {
    result = WTF::RefCounted<WebKit::FileSystemStorageHandle>::deref(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::FileSystemStorageHandle,WTF::RawPtrTraits<WebKit::FileSystemStorageHandle>,WTF::DefaultRefDerefTraits<WebKit::FileSystemStorageHandle>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFB450);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 8 * v8);
  if (v9 == v3)
  {
    return v2 + 8 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 8 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 8 * v8;
    }
  }

  return v2 + 8 * *(v2 - 4);
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t **a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 1)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 3) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t **a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc(0x18, (24 * a2 + 16));
  v10 = v8;
  v11 = v8 + 2;
  if (v3)
  {
    bzero(v8 + 2, 24 * v3);
  }

  *a1 = v11;
  *(v10 + 2) = v3 - 1;
  *(v10 + 3) = v3;
  *v10 = 0;
  *(v10 + 1) = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    v14 = a3;
    do
    {
      v15 = v5 + 24 * v12;
      v16 = *v15;
      if (*v15 != -1)
      {
        if (v16)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = *(v16 + 4);
          if (v19 < 0x100)
          {
            v20 = WTF::StringImpl::hashSlowCase(v16);
            v14 = a3;
          }

          else
          {
            v20 = v19 >> 8;
          }

          v21 = 0;
          do
          {
            v22 = v17 + 24 * (v20 & v18);
            v20 = ++v21 + (v20 & v18);
          }

          while (*v22);
          v23 = *v15;
          *v15 = 0;
          *v22 = v23;
          *(v22 + 8) = *(v15 + 8);
          v24 = *v15;
          *v15 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v9);
            v14 = a3;
          }

          if (v15 == v14)
          {
            v13 = v22;
          }
        }

        else
        {
          *v15 = 0;
        }
      }

      ++v12;
    }

    while (v12 != v6);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v13;
}

WTF **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFB74CLL);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = (v3 + 24 * (v9 & v7));
    v13 = *v12;
    if (*v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *a2, a3))
    {
      return v12;
    }

LABEL_10:
    ++i;
  }

  if (*a1)
  {
    return (*a1 + 24 * *(*a1 - 4));
  }

  else
  {
    return 0;
  }
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t **a1, WTF::StringImpl *a2)
{
  result = *a2;
  *a2 = -1;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 2), 0xFFFFFFFF00000001);
  *(v4 - 2) = v5;
  v6 = *(v4 - 1);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

WTF *WTF::RefCounted<WebCore::IDBServer::IDBConnectionToClient>::deref(WTF *this, void *a2)
{
  v2 = this;
  if (*this != 1)
  {
    --*this;
    return this;
  }

  v3 = *(this + 2);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(v2 + 1);
  if (v4)
  {
    v5 = (v4 + 8);
    if (!atomic_load(v5))
    {
LABEL_12:
      __break(0xC471u);
      JUMPOUT(0x19DDFB8B4);
    }

    atomic_fetch_add(v5, 0xFFFFFFFF);
  }

  if (*v2 != 1)
  {
    goto LABEL_12;
  }

  return WTF::fastFree(v2, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::IDBStorageManager::idbStorageOriginDirectory(WTF::String const&,WebCore::ClientOrigin const&)::$_0,WTF::String,WTF::String const&>::call(void a1, WebCore::IDBServer::SQLiteIDBBackingStore *this)
{
  WebCore::IDBServer::SQLiteIDBBackingStore::decodeDatabaseName(&v4, this, this);
  WebCore::SQLiteFileSystem::computeHashForFileName();
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

WTF::StringImpl *WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a3);
  if (v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFBCC8);
  }

  if (*(a3 + 24))
  {
    if (*(a3 + 24) != 1)
    {
LABEL_18:
      mpark::throw_bad_variant_access(v6);
    }
  }

  else if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFBCE8);
  }

  v7 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, 0), (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::computeHash<WebCore::ClientOrigin>(a3) & v8;
  v10 = (v7 + (v9 << 6));
  v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v10);
  if ((v6 & 1) == 0)
  {
    v11 = 0;
    v12 = 1;
    while (!*(v10 + 24))
    {
      if (*v10 != -1)
      {
        goto LABEL_11;
      }

      v11 = v10;
LABEL_15:
      v9 = (v9 + v12) & v8;
      v10 = (v7 + (v9 << 6));
      v6 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v10);
      ++v12;
      if (v6)
      {
        if (v11)
        {
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          --*(*a2 - 16);
          v10 = v11;
        }

        goto LABEL_21;
      }
    }

    if (*(v10 + 24) != 1)
    {
      goto LABEL_18;
    }

LABEL_11:
    if (WebCore::operator==())
    {
      result = WebCore::operator==();
      if (result)
      {
        v27 = *a2;
        if (*a2)
        {
          v28 = *(v27 - 4);
        }

        else
        {
          v28 = 0;
        }

        v26 = 0;
        v25 = v27 + (v28 << 6);
        goto LABEL_48;
      }
    }

    goto LABEL_15;
  }

LABEL_21:
  LOBYTE(v29[0]) = 0;
  v31 = -1;
  v14 = *(a3 + 24);
  if (!*(a3 + 24))
  {
    v15 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    *v29 = v15;
    v30 = *(a3 + 4);
LABEL_23:
    v31 = v14;
    goto LABEL_24;
  }

  if (v14 != 255)
  {
    *v29 = *a3;
    goto LABEL_23;
  }

LABEL_24:
  LOBYTE(v32[0]) = 0;
  v34 = -1;
  v16 = *(a3 + 56);
  if (!*(a3 + 56))
  {
    v17 = a3[2];
    *(a3 + 4) = 0;
    *(a3 + 5) = 0;
    *v32 = v17;
    v33 = *(a3 + 12);
LABEL_26:
    v34 = v16;
    goto LABEL_27;
  }

  if (v16 != 255)
  {
    *v32 = a3[2];
    goto LABEL_26;
  }

LABEL_27:
  WebCore::SecurityOriginData::operator=(v10, v29);
  result = WebCore::SecurityOriginData::operator=(v10 + 32, v32);
  if (!v34)
  {
    v19 = v32[1];
    v32[1] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    result = v32[0];
    v32[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v18);
    }
  }

  v34 = -1;
  if (!v31)
  {
    v20 = v29[1];
    v29[1] = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    result = v29[0];
    v29[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v18);
    }
  }

  v21 = *a2;
  if (*a2)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v23 = (*(v21 - 16) + v22);
  v24 = *(v21 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_45:
      result = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, v10);
      v10 = result;
      v21 = *a2;
      if (*a2)
      {
        v24 = *(v21 - 4);
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_45;
  }

  v25 = v21 + (v24 << 6);
  v26 = 1;
LABEL_48:
  *a1 = v10;
  *(a1 + 8) = v25;
  *(a1 + 16) = v26;
  return result;
}

void WTF::Detail::CallableWrapper<WebKit::IDBStorageManager::migrateOriginData(WTF::String const&,WTF::String const&)::$_0,WTF::String,WTF::String const&>::call(atomic_uint **a1@<X1>, atomic_uint **a2@<X8>)
{
  v2 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
}

void *WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::begin(void **a1)
{
  result = *a1;
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[11 * v2];
  if (!*(result - 3))
  {
    return &result[11 * v2];
  }

  if (v2)
  {
    v4 = 88 * v2;
    while ((*result + 1) <= 1)
    {
      result += 11;
      v4 -= 88;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 12) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc((88 * a2), (88 * a2 + 16));
  if (v3)
  {
    v10 = v3;
    v11 = v8 + 12;
    do
    {
      *(v11 - 5) = 0;
      *(v11 - 4) = 0;
      *(v11 - 16) = 0;
      *(v11 - 3) = 0;
      *(v11 - 8) = 0;
      *(v11 - 5) = 0uLL;
      *(v11 - 4) = 0uLL;
      *(v11 - 48) = 0;
      *v11 = 0;
      v11 += 11;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 2);
  *(v8 + 2) = v3 - 1;
  *(v8 + 3) = v3;
  *v8 = 0;
  *(v8 + 1) = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    v14 = v6;
    do
    {
      v15 = v5 + 88 * v12;
      if (*v15 != -1)
      {
        if (*v15)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = WTF::computeHash<WebCore::IDBDatabaseIdentifier>(v5 + 88 * v12);
          v20 = 0;
          do
          {
            v21 = v17 + 88 * (v19 & v18);
            v19 = ++v20 + (v19 & v18);
          }

          while (*v21);
          std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100]((v21 + 80), 0);
          WebCore::IDBDatabaseIdentifier::~IDBDatabaseIdentifier(v21, v22);
          v23 = *v15;
          *v15 = 0;
          *v21 = v23;
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v21 + 8), v15 + 8);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v21 + 40), v15 + 40);
          *(v21 + 72) = *(v15 + 72);
          v24 = *(v15 + 80);
          *(v15 + 80) = 0;
          *(v21 + 80) = v24;
          std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100]((v15 + 80), 0);
          WebCore::IDBDatabaseIdentifier::~IDBDatabaseIdentifier((v5 + 88 * v12), v25);
          if (v15 == a3)
          {
            v13 = v21;
          }
        }

        else
        {
          std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100]((v15 + 80), 0);
          WebCore::IDBDatabaseIdentifier::~IDBDatabaseIdentifier((v5 + 88 * v12), v16);
        }
      }

      ++v12;
    }

    while (v12 != v14);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v13;
}

uint64_t WTF::computeHash<WebCore::IDBDatabaseIdentifier>(uint64_t a1)
{
  v4 = -1640531527;
  v5 = 0;
  v6 = 0;
  v2 = *(a1 + 72);
  WTF::add(&v4, a1);
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v4, a1 + 8);
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v4, a1 + 40);
  v4 = ((v4 + v2) ^ ((v4 + v2) << 16)) + (((v4 + v2) ^ ((v4 + v2) << 16)) >> 11);
  return WTF::SuperFastHash::hash(&v4);
}

uint64_t WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::remove(uint64_t *a1, WebCore::IDBDatabaseIdentifier *this)
{
  WebCore::IDBDatabaseIdentifier::~IDBDatabaseIdentifier(this, this);
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  result = std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>::reset[abi:sn200100](this + 10, 0);
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

void *WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>>,(WTF::ShouldValidateKey)1,WebCore::IDBDatabaseIdentifier>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFC1F8);
  }

  v5 = *(v2 - 8);
  v6 = WTF::computeHash<WebCore::IDBDatabaseIdentifier>(a2);
  for (i = 0; ; v6 = ++i + v9)
  {
    v9 = v6 & v5;
    v10 = (v2 + 88 * (v6 & v5));
    if (*v10 == -1)
    {
      continue;
    }

    if (!*v10)
    {
      break;
    }

    if (WebCore::operator==(v2 + 88 * v9, a2, v7))
    {
      return v10;
    }
  }

  if (!*a1)
  {
    return 0;
  }

  return (*a1 + 88 * *(*a1 - 4));
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::IDBStorageConnectionToClient>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::IDBStorageConnectionToClient>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v5 = 0;
    v6 = 0;
LABEL_3:
    v7 = 8;
    goto LABEL_4;
  }

  v5 = *(v4 - 4);
  v6 = *(v4 - 12);
  if (!v5)
  {
    goto LABEL_3;
  }

  v7 = v5 << (6 * v6 >= (2 * v5));
LABEL_4:
  v8 = WTF::fastZeroedMalloc((16 * v7 + 16));
  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v4 + 16 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 16 * v22);
          v25 = v24[1];
          v24[1] = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          *v24 = *v12;
          v26 = v12[1];
          v12[1] = 0;
          v24[1] = v26;
          v27 = v12[1];
          v12[1] = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          if (v12 == a2)
          {
            v11 = v24;
          }
        }

        else
        {
          v14 = v12[1];
          v12[1] = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }
        }
      }

      ++v10;
    }

    while (v10 != v5);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v11;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t **a1@<X0>, uint64_t *x8_0@<X8>)
{
  v3 = *a1;
  if (*a1 && (x8_0 = *(v3 - 1), x8_0))
  {
    v4 = (x8_0 << (6 * *(v3 - 3) >= (2 * x8_0)));
  }

  else
  {
    v4 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, x8_0);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc(a3, (16 * a2 + 16));
  v10 = v8;
  v11 = v8 + 2;
  if (v3)
  {
    bzero(v8 + 2, 16 * v3);
  }

  *a1 = v11;
  *(v10 + 2) = v3 - 1;
  *(v10 + 3) = v3;
  *v10 = 0;
  *(v10 + 1) = v7;
  if (v6)
  {
    v12 = 0;
    while (1)
    {
      v13 = (v5 + 16 * v12);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v26);
            WTF::fastFree(v26, v9);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v15 = v13[1];
          v13[1] = 0;
          if (!v15 || atomic_fetch_add(v15, 0xFFFFFFFF) != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (!v15 || atomic_fetch_add(v15, 0xFFFFFFFF) != 1)
          {
            goto LABEL_24;
          }
        }

        atomic_store(1u, v15);
        WTF::fastFree(v15, v9);
      }

LABEL_24:
      if (++v12 == v6)
      {
        goto LABEL_27;
      }
    }
  }

  if (v5)
  {
LABEL_27:

    WTF::fastFree((v5 - 16), v9);
  }
}

uint64_t *WTF::HashTable<WebCore::IDBResourceIdentifier,WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashMap<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::FastMalloc>::expand(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 && (v3 = *(v2 - 1)) != 0)
  {
    v4 = (v3 << (6 * *(v2 - 3) >= (2 * v3)));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::IDBResourceIdentifier,WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashMap<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::FastMalloc>::rehash(a1, v4);
}

uint64_t *WTF::HashTable<WebCore::IDBResourceIdentifier,WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashMap<WebCore::IDBResourceIdentifier,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseTransaction,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBResourceIdentifier>,WTF::FastMalloc>::rehash(uint64_t **a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastMalloc((24 * a2), (24 * a2 + 16));
  v9 = result;
  v10 = result + 2;
  if (v2)
  {
    v11 = v2;
    v12 = result + 4;
    do
    {
      result = WebCore::IDBResourceIdentifier::IDBResourceIdentifier(&v24);
      *(v12 - 1) = v24;
      *v12 = 0;
      v12 += 3;
      --v11;
    }

    while (v11);
  }

  *a1 = v10;
  *(v9 + 2) = v2 - 1;
  *(v9 + 3) = v2;
  *v9 = 0;
  *(v9 + 1) = v6;
  if (v5)
  {
    v13 = 0;
    v14 = v5;
    while (1)
    {
      v15 = v4 + 24 * v13;
      if (*(v15 + 8) != -1)
      {
        v8 = *v15;
        if (*v15 == 0)
        {
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (!v16 || atomic_fetch_add(v16, 0xFFFFFFFF) != 1)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          LODWORD(v24) = -1640531527;
          WORD2(v24) = 0;
          BYTE6(v24) = 0;
          WTF::add<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(&v24, v8, (v15 + 8));
          v19 = WTF::SuperFastHash::hash(&v24);
          v20 = 0;
          do
          {
            v21 = v17 + 24 * (v19 & v18);
            v19 = ++v20 + (v19 & v18);
          }

          while (*v21 != 0);
          v22 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v8);
          }

          *v21 = *v15;
          v23 = *(v15 + 16);
          *(v15 + 16) = 0;
          *(v21 + 16) = v23;
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (!v16 || atomic_fetch_add(v16, 0xFFFFFFFF) != 1)
          {
            goto LABEL_25;
          }
        }

        atomic_store(1u, v16);
        WTF::fastFree(v16, v8);
      }

LABEL_25:
      if (++v13 == v14)
      {
        return WTF::fastFree((v4 - 16), v8);
      }
    }
  }

  if (v4)
  {
    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

unsigned int *WTF::add<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBResourceObjectIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(unsigned int *result, unint64_t a2, unint64_t *a3)
{
  v3 = *result;
  if (a2)
  {
    ++v3;
  }

  v4 = (v3 ^ (v3 << 16)) + ((v3 ^ (v3 << 16)) >> 11);
  if (a2)
  {
    v5 = (a2 >> 5) & 0x7FFF800 ^ ((v4 + a2) << 16) ^ (v4 + a2);
    v6 = (a2 >> 37) & 0x7FFF800 ^ ((v5 + WORD2(a2) + (v5 >> 11)) << 16) ^ (v5 + WORD2(a2) + (v5 >> 11));
    v4 = v6 + (v6 >> 11);
  }

  *result = v4;
  v7 = *a3;
  if (*a3)
  {
    ++v4;
  }

  v8 = (v4 ^ (v4 << 16)) + ((v4 ^ (v4 << 16)) >> 11);
  if (v7)
  {
    v9 = (v7 >> 5) & 0x7FFF800 ^ ((v8 + v7) << 16) ^ (v8 + v7);
    v10 = (v7 >> 37) & 0x7FFF800 ^ ((v9 + WORD2(v7) + (v9 >> 11)) << 16) ^ (v9 + WORD2(v7) + (v9 >> 11));
    v8 = v10 + (v10 >> 11);
  }

  *result = v8;
  return result;
}

_DWORD *WTF::RefCounted<WebKit::SQLiteStorageArea>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::SQLiteStorageArea::~SQLiteStorageArea((result - 26));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 72 * v3;
    do
    {
      v6 = std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>::~pair(v6, a2) + 72;
      v7 -= 72;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFCA08);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(__int128 *a1)
{
  if (qword_1ED642750 && (v2 = *(qword_1ED642750 - 4)) != 0)
  {
    v3 = v2 << (6 * *(qword_1ED642750 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v3, a1);
}

atomic_uchar *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WebKit::NetworkStorageManager&>(WTF::String const&,WebKit::NetworkStorageManager&)::{lambda(void)#1}>(uint64_t *a1, atomic_uint **a2, uint64_t *a3)
{
  WTF::String::operator=(a1, a2);
  v5 = *a3;
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v5 + 8), v6);
  v9 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  result = a1[2];
  a1[2] = v9;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v8);
  }

  a1[1] = v5;
  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(unsigned int a1, __int128 *a2)
{
  v4 = qword_1ED642750;
  if (qword_1ED642750)
  {
    v5 = *(qword_1ED642750 - 4);
    v6 = *(qword_1ED642750 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc(0x18, (24 * a1 + 16));
  v9 = v7;
  v10 = (v7 + 2);
  if (a1)
  {
    bzero(v7 + 2, 24 * a1);
  }

  qword_1ED642750 = v10;
  *(v9 + 2) = a1 - 1;
  *(v9 + 3) = a1;
  *v9 = 0;
  *(v9 + 1) = v6;
  v11 = 0;
  if (v5)
  {
    v13 = v5;
    v14 = v4;
    do
    {
      if (*v14 != -1)
      {
        if (*v14)
        {
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(v14, v8);
          WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>::~KeyValuePair(v14, v16);
          if (v14 == a2)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>::~KeyValuePair(v14, v8);
        }
      }

      v14 = (v14 + 24);
      --v13;
    }

    while (v13);
    goto LABEL_16;
  }

  result = 0;
  if (v4)
  {
LABEL_16:
    WTF::fastFree((v4 - 16), v8);
    return v11;
  }

  return result;
}

uint64_t WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>::~KeyValuePair(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkStorageManager,WTF::NoTaggingTraits<WebKit::NetworkStorageManager>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::reinsert(__int128 *a1, void *a2)
{
  v3 = *a1;
  v4 = qword_1ED642750;
  if (qword_1ED642750)
  {
    v5 = *(qword_1ED642750 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 4);
  if (v6 < 0x100)
  {
    v7 = WTF::StringImpl::hashSlowCase(v3);
  }

  else
  {
    v7 = v6 >> 8;
  }

  v8 = 0;
  do
  {
    v9 = (v4 + 24 * (v7 & v5));
    v7 = ++v8 + (v7 & v5);
  }

  while (*v9);
  v10 = v9[2];
  v9[2] = 0;
  if (v10)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v10, a2);
    v12 = *v9;
    *v9 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }
  }

  else
  {
    *v9 = 0;
  }

  v13 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  *v9 = v13;
  v9[2] = *(a1 + 2);
  *(a1 + 2) = 0;
  return v9;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AB58;
  WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0::~$_0(a1 + 1, a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AB58;
  WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0::~$_0(a1 + 1, a2);

  return WTF::fastFree(a1, v3);
}

atomic_uchar *WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0::operator()(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    return result;
  }

  v3 = *a1;
  result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v33);
  if (!v33)
  {
    return result;
  }

  *(v3 + 176) = *(a1 + 64);
  v4 = *(a1 + 72);
  *(v3 + 200) = *(a1 + 80);
  *(v3 + 192) = v4;
  v5 = *(a1 + 88);
  *(v3 + 216) = *(a1 + 96);
  *(v3 + 208) = v5;
  v6 = *(a1 + 104);
  *(v3 + 232) = *(a1 + 112);
  *(v3 + 224) = v6;
  v7 = *(a1 + 120);
  *(v3 + 248) = *(a1 + 128);
  *(v3 + 240) = v7;
  *(v3 + 344) = 0x40F5180000000000;
  WebKit::NetworkStorageManager::setStorageSiteValidationEnabledInternal(v3, *(a1 + 137));
  v9 = WebKit::FileSystemStorageHandleRegistry::operator new(0x18, v8);
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v9 + 16) = 0;
  v11 = *(v3 + 104);
  *(v3 + 104) = v9;
  if (v11)
  {
    v9 = WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v11 + 8), v10);
  }

  v12 = WebKit::StorageAreaRegistry::operator new(v9, v10);
  v13 = WebKit::StorageAreaRegistry::StorageAreaRegistry(v12);
  if (*(v3 + 112))
  {
    __break(0xC471u);
    goto LABEL_31;
  }

  *(v3 + 112) = v13;
  v15 = WebKit::IDBStorageRegistry::operator new(0x20, v14);
  *v15 = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 8) = 0;
  if (*(v3 + 120))
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFD090);
  }

  *(v3 + 120) = v15;
  WebKit::CacheStorageRegistry::create(v16, &v32);
  if (*(v3 + 128))
  {
    __break(0xC471u);
LABEL_31:
    JUMPOUT(0x19DDFD070);
  }

  *(v3 + 128) = v32;
  *(v3 + 289) = *(a1 + 136);
  WTF::String::operator=((v3 + 40), (a1 + 24));
  WTF::String::operator=((v3 + 136), (a1 + 32));
  WTF::String::operator=((v3 + 144), (a1 + 40));
  WTF::String::operator=((v3 + 160), (a1 + 48));
  WTF::String::operator=((v3 + 168), (a1 + 56));
  v18 = *(v3 + 40);
  if (v18 && *(v18 + 4))
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    Salt = WTF::FileSystemImpl::readOrMakeSalt(&v32, v19);
    v21 = (v17 & 1) != 0 ? Salt : 0;
    *(v3 + 56) = v21;
    v22 = v32;
    v32 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }
    }
  }

  if (*(v3 + 289) < 2u)
  {
    v30 = WebKit::ServiceWorkerStorageManager::operator new(0x10, v17);
    WebKit::ServiceWorkerStorageManager::ServiceWorkerStorageManager(v30, (v3 + 168));
    std::unique_ptr<WebKit::ServiceWorkerStorageManager>::reset[abi:sn200100]((v3 + 352), v30);
  }

  else
  {
    WebKit::NetworkStorageManager::migrateServiceWorkerRegistrationsToOrigins(v3, v17);
  }

  if (!*(v3 + 289))
  {
    v31 = *(v3 + 136);
    if (v31)
    {
      if (*(v31 + 4))
      {
        WTF::FileSystemImpl::makeAllDirectories((v3 + 136), v23);
        WTF::FileSystemImpl::setExcludedFromBackup((v3 + 136), 1);
      }
    }
  }

  VersionDirectoryIfNeeded = WebKit::IDBStorageManager::createVersionDirectoryIfNeeded((v3 + 144), v23);
  WTF::RunLoop::mainSingleton(VersionDirectoryIfNeeded);
  v25 = v33;
  v33 = 0;
  v27 = WTF::fastMalloc(v26, 0x10);
  *v27 = &unk_1F110AB80;
  v27[1] = v25;
  v32 = v27;
  WTF::RunLoop::dispatch();
  result = v32;
  v32 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v29 = v33;
  v33 = 0;
  if (v29)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v29 + 8), v28);
  }

  return result;
}

uint64_t WebKit::StorageAreaRegistry::operator new(WebKit::StorageAreaRegistry *this, void *a2)
{
  if (WebKit::StorageAreaRegistry::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::StorageAreaRegistry::s_heapRef, a2);
  }

  else
  {
    return WebKit::StorageAreaRegistry::operatorNewSlow(0x10);
  }
}

uint64_t WebKit::IDBStorageRegistry::operator new(WebKit::IDBStorageRegistry *this, void *a2)
{
  if (WebKit::IDBStorageRegistry::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::IDBStorageRegistry::s_heapRef, a2);
  }

  else
  {
    return WebKit::IDBStorageRegistry::operatorNewSlow(0x20);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110AB80;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::NetworkStorageManager(WebKit::NetworkProcess &,PAL::SessionID,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,std::optional<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,WTF::String const&,unsigned long long,std::optional<double>,std::optional<double>,std::optional<unsigned long long>,std::optional<unsigned long long>,WebKit::UnifiedOriginStorageLevel,BOOL)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110AB80;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::ThreadSafeWeakHashSet<IPC::Connection>::values(void *a1, atomic_uchar ***a2)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  v5 = (a2 + 2);
  atomic_compare_exchange_strong_explicit(a2 + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a2 + 2);
  }

  v13 = 0;
  v11 = &v13;
  WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,WTF::ThreadSafeWeakHashSet<IPC::Connection>::values(void)::{lambda(0ul &)#1},WTF::HashSet<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0>>(v12, a2, &v11);
  WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, v12);
  result = WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v6);
  if (v13 == 1)
  {
    result = _ZN3WTF9HashTableINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENS_12RawPtrTraitsIS4_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKN3IPC10ConnectionEEESD_NS_17IdentityExtractorENS_11DefaultHashISD_EENS_10HashTraitsISD_EESI_NS_10FastMallocEE8removeIfIZNKS_21ThreadSafeWeakHashSetISA_E6valuesEvEUlRT_E0_EEbRKSO_(a2);
  }

  *(a2 + 2) = 0;
  v8 = *a2;
  if (*a2 && (LODWORD(v8) = *(v8 - 3), v8 > 0x7FFFFFFE))
  {
    v9 = -2;
  }

  else
  {
    v9 = 2 * v8;
  }

  *(a2 + 3) = v9;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(a2 + 16, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t **WTF::compactMap<0ul,WTF::CrashOnOverflow,16ul,WTF::ThreadSafeWeakHashSet<IPC::Connection>::values(void)::{lambda(0ul &)#1},WTF::HashSet<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0>>(uint64_t **result, atomic_uchar ***a2, _BYTE **a3)
{
  v5 = result;
  *result = 0;
  result[1] = 0;
  v6 = *a2;
  if (v6)
  {
    v7 = *(v6 - 3);
    if (v7)
    {
      v8 = (v7 >> 29);
      if (v8)
      {
        __break(0xC471u);
        return result;
      }

      v9 = WTF::fastMalloc(v8, (8 * v7));
      *(v5 + 2) = v7;
      *v5 = v9;
      v6 = *a2;
    }
  }

  return _ZN3WTF13CompactMapperIZNKS_21ThreadSafeWeakHashSetIN3IPC10ConnectionEE6valuesEvEUlRT_E_NS_6VectorINS_3RefIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERNS_7HashSetINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENSA_ISM_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKS3_EENS_11DefaultHashISS_EENS_10HashTraitsISS_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE0EEEvE10compactMapERSH_S10_RKS7_(v5, v6, a3);
}

uint64_t WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    v6 = *a1;
    v7 = 8 * v4;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8, a2);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

unsigned int *_ZN3WTF13CompactMapperIZNKS_21ThreadSafeWeakHashSetIN3IPC10ConnectionEE6valuesEvEUlRT_E_NS_6VectorINS_3RefIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERNS_7HashSetINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENSA_ISM_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKS3_EENS_11DefaultHashISS_EENS_10HashTraitsISS_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE0EEEvE10compactMapERSH_S10_RKS7_(uint64_t a1, atomic_uchar **a2, _BYTE **a3)
{
  v4 = a2;
  v6 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::begin(a2);
  v8 = v6;
  v10 = v9;
  if (v4)
  {
    v4 += 2 * *(v4 - 1);
  }

  if (v4 != v6)
  {
    do
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(*v8, v8[1], &v20);
      v12 = v20;
      if (v20)
      {
        v19 = v20;
        v20 = 0;
        v13 = *(a1 + 12);
        if (v13 == *(a1 + 8))
        {
          WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>>(a1, &v19);
        }

        else
        {
          v14 = *a1;
          v19 = 0;
          v14[v13] = v12;
          *(a1 + 12) = v13 + 1;
        }

        v15 = v19;
        v19 = 0;
        if (v15)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15, v11);
        }

        v16 = v20;
        v20 = 0;
        if (v16)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16, v11);
        }
      }

      else
      {
        **a3 = 1;
      }

      do
      {
        v8 += 2;
        if (v8 == v10)
        {
          break;
        }
      }

      while (*v8 == -1 || *v8 == 0);
    }

    while (v8 != v4);
  }

  return WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, *(a1 + 12), v7);
}

void *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::begin(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 - 3))
  {
    return WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::makeConstIterator(a1, a1);
  }

  return &a1[2 * *(a1 - 1)];
}

unsigned int *WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2, unint64_t a3)
{
  if (result[2] > a2)
  {
    v4 = result;
    if (result[3] > a2)
    {
      result = WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v5 = *v4;
    if (a2)
    {
      if (v4[2])
      {
        v4[2] = a2;
        result = WTF::fastRealloc(v5, (8 * a2));
        *v4 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v6 = v4[3];
      result = WTF::fastMalloc(0, (8 * a2));
      v4[2] = a2;
      *v4 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 8 * v6);
      }
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

atomic_ullong *WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(atomic_ullong *result, unint64_t a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      v5 = (*result + 8 * a2);
      v6 = 8 * v2 - 8 * a2;
      do
      {
        result = *v5;
        *v5 = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result, a2);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    *(v4 + 3) = v3;
  }

  return result;
}

atomic_uchar *_ZN3WTF9HashTableINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENS_12RawPtrTraitsIS4_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKN3IPC10ConnectionEEESD_NS_17IdentityExtractorENS_11DefaultHashISD_EENS_10HashTraitsISD_EESI_NS_10FastMallocEE8removeIfIZNKS_21ThreadSafeWeakHashSetISA_E6valuesEvEUlRT_E0_EEbRKSO_(atomic_uchar *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *(v1 - 4);
    if (v3)
    {
      v4 = 0;
      v5 = (v1 + 16 * v3 - 16);
      do
      {
        result = *v5;
        if (*v5 != -1 && *v5 != 0)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(result);
          if (result)
          {
            result = *v5;
            *v5 = 0;
            if (result)
            {
              result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v6);
            }

            *v5 = -1;
            ++v4;
          }
        }

        v5 -= 2;
        --v3;
      }

      while (v3);
      v1 = *v2;
      if (v4)
      {
        v7 = *(v1 - 12) - v4;
        *(v1 - 16) += v4;
        *(v1 - 12) = v7;
      }

      else if (!v1)
      {
        return result;
      }
    }

    v8 = 6 * *(v1 - 12);
    v9 = *(v1 - 4);
    if (v8 < v9 && v9 >= 9)
    {

      return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::shrinkToBestSize(v2);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *result)
{
  if (!*result)
  {
    LODWORD(v1) = 0;
    goto LABEL_7;
  }

  v1 = *(*result - 12);
  if (v1 <= 1)
  {
LABEL_7:
    v4 = v1;
    v3 = 1;
    goto LABEL_8;
  }

  v2 = __clz(v1 - 1);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = (1 << -v2);
  if (v1 > 0x400)
  {
    if (v3 > 2 * v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = *(*result - 12);
LABEL_8:
  if (3 * v3 <= 4 * v4)
  {
LABEL_9:
    LODWORD(v3) = 2 * v3;
  }

LABEL_10:
  if (v3 > 0x400)
  {
    v5 = 0.416666667;
  }

  else
  {
    v5 = 0.604166667;
  }

  if (v3 * v5 <= v1)
  {
    LODWORD(v3) = 2 * v3;
  }

  if (v3 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v3;
  }

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::rehash(result, v6, 0);
}

uint64_t WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, atomic_uchar **a3)
{
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = v4 - 1;
  v9[3] = v4;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (v14->n128_u64[0] != -1)
      {
        if (*v14 == 0)
        {
          v14->n128_u64[0] = 0;
        }

        else
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::reinsert(*a1, v14);
          v16 = v15;
          v17 = v14->n128_u64[0];
          v14->n128_u64[0] = 0;
          if (v17)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v17, v10);
          }

          if (v14 == a3)
          {
            v11 = v16;
          }
        }
      }

      ++v14;
      --v13;
    }

    while (v13);
    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

__n128 WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::reinsert(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u64[0];
  v5 = a2->n128_u64[1];
  if (a1)
  {
    v6 = *(a1 - 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>::hash(v4, v5);
  v8 = 0;
  do
  {
    v9 = v7 & v6;
    v10 = (a1 + 16 * v9);
    v7 = ++v8 + v9;
  }

  while (*v10 != 0);
  *v10 = 0;
  result = *a2;
  a2->n128_u64[0] = 0;
  *v10 = result;
  return result;
}

uint64_t WTF::Vector<WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8, a2);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110ABA8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110ABA8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  if (v4)
  {
    *(v3 + 72) = 0;
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(v3 + 104);
  *(v3 + 104) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::FileSystemStorageHandleRegistry>::deref((v5 + 8), a2);
  }

  v21[0] = 0;
  v21[1] = 0;
  v6 = *(v3 + 312);
  *&v22 = v6;
  v7 = *(v3 + 320);
  v8 = *(v3 + 324);
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(&v22 + 1) = __PAIR64__(v8, v7);
  WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v3 + 312, v21);
  if (v8)
  {
    v17 = 72 * v8;
    v18 = (v6 + 64);
    do
    {
      v19 = *v18;
      *v18 = 0;
      v18 += 9;
      (*(*v19 + 16))(v19, 0);
      (*(*v19 + 8))(v19);
      v17 -= 72;
    }

    while (v17);
  }

  WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v9);
  WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v10);
  v11 = std::unique_ptr<WebKit::ServiceWorkerStorageManager>::reset[abi:sn200100]((v3 + 352), 0);
  WTF::RunLoop::mainSingleton(v11);
  v20 = *(a1 + 1);
  *(a1 + 1) = 0u;
  v13 = WTF::fastMalloc(v12, 0x18);
  *v13 = &unk_1F110ABD0;
  v22 = 0u;
  *(v13 + 1) = v20;
  v21[0] = v13;
  WTF::RunLoop::dispatch();
  v15 = v21[0];
  v21[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(&v22, v14);
}

uint64_t *WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    v6 = *a1;
    v7 = 72 * v4;
    do
    {
      v6 = std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>::~pair(v6, a2) + 72;
      v7 -= 72;
    }

    while (v7);
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110ABD0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110ABD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::close(WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::startReceivingMessageFromConnection(IPC::Connection &,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SharedPreferencesForWebProcess const&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110ABF8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::startReceivingMessageFromConnection(IPC::Connection &,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SharedPreferencesForWebProcess const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110ABF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::NetworkStorageManager::startReceivingMessageFromConnection(IPC::Connection &,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SharedPreferencesForWebProcess const&)::$_0::operator()(void *a1)
{
  v2 = WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::SharedPreferencesForWebProcess const&>(v7, (*a1 + 384), a1 + 2, (a1 + 3));
  WTF::RunLoop::mainSingleton(v2);
  v3 = a1[1];
  a1[1] = 0;
  v5 = WTF::fastMalloc(v4, 0x10);
  *v5 = &unk_1F110AC20;
  v5[1] = v3;
  v7[0] = v5;
  WTF::RunLoop::dispatch();
  result = v7[0];
  v7[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::SharedPreferencesForWebProcess const&>(uint64_t a1, uint64_t **a2, uint64_t *a3, __int128 *a4)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 2);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v11 = result & v9;
  v12 = &v8[4 * v11];
  v13 = *v12;
  v14 = *a3;
  if (*v12)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (v13 == v14)
      {
        v25 = *a2;
        if (*a2)
        {
          v26 = *(v25 - 1);
        }

        else
        {
          v26 = 0;
        }

        v22 = 0;
        v21 = &v25[4 * v26];
        goto LABEL_10;
      }

      if (v13 == -1)
      {
        v23 = v12;
      }

      v11 = (v11 + v24) & v9;
      v12 = &v8[4 * v11];
      v13 = *v12;
      ++v24;
    }

    while (*v12);
    if (v23)
    {
      *v23 = 0u;
      v23[1] = 0u;
      --*(*a2 - 4);
      v14 = *a3;
      v12 = v23;
    }
  }

  *v12 = v14;
  v15 = *a4;
  v16 = *(a4 + 8);
  *(v12 + 26) = *(a4 + 18);
  *(v12 + 24) = v16;
  *(v12 + 8) = v15;
  v17 = *a2;
  if (*a2)
  {
    v18 = *(v17 - 3) + 1;
  }

  else
  {
    v18 = 1;
  }

  *(v17 - 3) = v18;
  v19 = (*(v17 - 4) + v18);
  v20 = *(v17 - 1);
  if (v20 > 0x400)
  {
    if (v20 > 2 * v19)
    {
      goto LABEL_9;
    }

LABEL_13:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v12);
    v12 = result;
    v17 = *a2;
    if (*a2)
    {
      v20 = *(v17 - 1);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v20 <= 4 * v19)
  {
    goto LABEL_13;
  }

LABEL_9:
  v21 = &v17[4 * v20];
  v22 = 1;
LABEL_10:
  *a1 = v12;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  return result;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFE298);
  }

  return result;
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t **a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 1)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 3) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t **a1, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc(a2, ((32 * a2) | 0x10));
  v11 = v9;
  v12 = v9 + 2;
  if (v4)
  {
    bzero(v9 + 2, 32 * v4);
  }

  *a1 = v12;
  *(v11 + 2) = v4 - 1;
  *(v11 + 3) = v4;
  *v11 = 0;
  *(v11 + 1) = v8;
  v13 = 0;
  if (v7)
  {
    v15 = v7;
    v16 = v6;
    do
    {
      v10 = *v16;
      if ((*v16 + 1) >= 2)
      {
        v17 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a1, v10);
        v18 = *(v16 + 16);
        *v17 = *v16;
        v17[1] = v18;
        if (v16 == a3)
        {
          v13 = v17;
        }
      }

      v16 += 32;
      --v15;
    }

    while (v15);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 - 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = *(a1 + 32 * v6);
    v6 = (v6 + v7++) & v2;
  }

  while (v9);
  return a1 + 32 * v8;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::startReceivingMessageFromConnection(IPC::Connection &,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SharedPreferencesForWebProcess const&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110AC20;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::startReceivingMessageFromConnection(IPC::Connection &,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::SharedPreferencesForWebProcess const&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110AC20;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::controlBlock@<X0>(atomic_ullong *a1@<X0>, uint64_t *a3@<X8>)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(a3, 0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1;
    while (1)
    {
      v6 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v6 >> 1;
      v7 = v6;
      atomic_compare_exchange_strong_explicit(a1, &v7, result, memory_order_release, memory_order_relaxed);
      if (v7 == v6)
      {
        return result;
      }
    }

    WTF::fastFree(result, v5);
    return *a1;
  }

  return result;
}

atomic_uchar *_ZN3WTF9HashTableINSt3__14pairINS_6RefPtrINS_29ThreadSafeWeakPtrControlBlockENS_12RawPtrTraitsIS4_EENS_43ThreadSafeWeakPtrControlBlockRefDerefTraitsEEEPKN3IPC10ConnectionEEESD_NS_17IdentityExtractorENS_11DefaultHashISD_EENS_10HashTraitsISD_EESI_NS_10FastMallocEE8removeIfIZNKS_21ThreadSafeWeakHashSetISA_E24amortizedCleanupIfNeededEvEUlRT_E_EEbRKSO_(atomic_uchar *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *(v1 - 4);
    if (v3)
    {
      v4 = 0;
      v5 = (v1 + 16 * v3 - 16);
      do
      {
        result = *v5;
        if (*v5 != -1 && *v5 != 0)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(result);
          if (result)
          {
            result = *v5;
            *v5 = 0;
            if (result)
            {
              result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v6);
            }

            *v5 = -1;
            ++v4;
          }
        }

        v5 -= 2;
        --v3;
      }

      while (v3);
      v1 = *v2;
      if (v4)
      {
        v10 = *(v1 - 12) - v4;
        *(v1 - 16) += v4;
        *(v1 - 12) = v10;
      }

      else if (!v1)
      {
        return result;
      }
    }

    v7 = 6 * *(v1 - 12);
    v8 = *(v1 - 4);
    if (v7 < v8 && v8 >= 9)
    {

      return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::shrinkToBestSize(v2);
    }
  }

  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)0>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (*a2 || (WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::expand(a2, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>::hash(*a3, *(a3 + 8));
  v10 = result & v7;
  v11 = v6 + 16 * (result & v7);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *a3;
  v15 = *(a3 + 8);
  if (*v11 != 0)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      if (v12 == v14 && v13 == v15)
      {
        v24 = *a2;
        if (*a2)
        {
          v25 = *(v24 - 4);
        }

        else
        {
          v25 = 0;
        }

        v21 = 0;
        v20 = v24 + 16 * v25;
        goto LABEL_12;
      }

      if (v12 == -1)
      {
        v22 = v11;
      }

      v10 = (v10 + v23) & v7;
      v11 = v6 + 16 * v10;
      v12 = *v11;
      v13 = *(v11 + 8);
      ++v23;
    }

    while (*v11 != 0);
    if (v22)
    {
      *v22 = 0;
      v22[1] = 0;
      --*(*a2 - 16);
      v14 = *a3;
      v15 = *(a3 + 8);
      v11 = v22;
    }
  }

  *a3 = 0;
  result = *v11;
  *v11 = v14;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v9);
  }

  *(v11 + 8) = v15;
  v16 = *a2;
  if (*a2)
  {
    v17 = *(v16 - 12) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 12) = v17;
  v18 = (*(v16 - 16) + v17);
  v19 = *(v16 - 4);
  if (v19 > 0x400)
  {
    if (v19 > 2 * v18)
    {
      goto LABEL_11;
    }

LABEL_15:
    result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::expand(a2, v11);
    v11 = result;
    v16 = *a2;
    if (*a2)
    {
      v19 = *(v16 - 4);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_11;
  }

  if (3 * v19 <= 4 * v18)
  {
    goto LABEL_15;
  }

LABEL_11:
  v20 = v16 + 16 * v19;
  v21 = 1;
LABEL_12:
  *a1 = v11;
  *(a1 + 8) = v20;
  *(a1 + 16) = v21;
  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::expand(uint64_t *a1, atomic_uchar **a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 12) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::weakRefCount(atomic_ullong *a1, unint64_t a2)
{
  if (*a1)
  {
    return 0;
  }

  v2 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::controlBlock(a1, *a1);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v2);
}

uint64_t *WTF::HashSet<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0>::remove(uint64_t *result, atomic_uchar **a2)
{
  if (*result)
  {
    v2 = (*result + 16 * *(*result - 4));
    if (v2 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

void *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>>,(WTF::ShouldValidateKey)0,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>>,(WTF::ShouldValidateKey)0,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>(result, a2);
    v4 = *a1;
    if (!result)
    {
      if (v4)
      {
        return &v4[2 * *(v4 - 1)];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>>,(WTF::ShouldValidateKey)0,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result - 2);
    v5 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>::hash(*a2, *(a2 + 8));
    v6 = *(a2 + 8);
    v7 = v5 & v4;
    result = &v3[2 * (v5 & v4)];
    v8 = *result;
    v9 = result[1];
    if (*result != *a2 || v9 != v6)
    {
      v11 = 1;
      while (v8 | v9)
      {
        v7 = (v7 + v11) & v4;
        result = &v3[2 * v7];
        v8 = *result;
        v9 = result[1];
        ++v11;
        if (*result == *a2 && v9 == v6)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

atomic_uchar *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::remove(uint64_t *a1, atomic_uchar **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  *a2 = -1;
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,IPC::Connection const*>>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::stopReceivingMessageFromConnection(IPC::Connection &)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AC48;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::stopReceivingMessageFromConnection(IPC::Connection &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AC48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WebKit::NetworkStorageManager::stopReceivingMessageFromConnection(IPC::Connection &)::$_0::operator()(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1 + 2;
  WebKit::IDBStorageRegistry::removeConnectionToClient(*(*a1 + 120), a1[2]);
  v12 = a1 + 2;
  _ZN3WTF9HashTableIN7WebCore12ClientOriginENS_12KeyValuePairIS2_NSt3__110unique_ptrIN6WebKit20OriginStorageManagerENS4_14default_deleteIS7_EEEEEENS_24KeyValuePairKeyExtractorISB_EENS_11DefaultHashIS2_EENS_7HashMapIS2_SA_SF_NS_10HashTraitsIS2_EENSH_ISA_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsESI_SM_E8removeIfIZZNS6_21NetworkStorageManager34stopReceivingMessageFromConnectionERN3IPC10ConnectionEEN3__0clEvEUlRT_E_EEbRKSW_((v2 + 72), &v12);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((v2 + 304), *v3);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v2 + 304), v4);
  if (*(v2 + 376) == 1)
  {
    v11 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( *(v2 + 368),  *v3);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v2 + 368), v11);
  }

  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((v2 + 384), a1 + 2);
  v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v2 + 384), v5);
  WTF::RunLoop::mainSingleton(v6);
  v7 = a1[1];
  a1[1] = 0;
  v9 = WTF::fastMalloc(v8, 0x10);
  *v9 = &unk_1F110AC70;
  v9[1] = v7;
  v12 = v9;
  WTF::RunLoop::dispatch();
  result = v12;
  v12 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void _ZN3WTF9HashTableIN7WebCore12ClientOriginENS_12KeyValuePairIS2_NSt3__110unique_ptrIN6WebKit20OriginStorageManagerENS4_14default_deleteIS7_EEEEEENS_24KeyValuePairKeyExtractorISB_EENS_11DefaultHashIS2_EENS_7HashMapIS2_SA_SF_NS_10HashTraitsIS2_EENSH_ISA_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsESI_SM_E8removeIfIZZNS6_21NetworkStorageManager34stopReceivingMessageFromConnectionERN3IPC10ConnectionEEN3__0clEvEUlRT_E_EEbRKSW_(uint64_t *result, uint64_t **a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = *(v2 - 4);
    if (v4)
    {
      v6 = 0;
      v7 = v2 + 72 * v4 - 72;
      do
      {
        if (!WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v7) && _ZZZN6WebKit21NetworkStorageManager34stopReceivingMessageFromConnectionERN3IPC10ConnectionEEN3__0clEvENKUlRT_E_clIN3WTF12KeyValuePairIN7WebCore12ClientOriginENSt3__110unique_ptrINS_20OriginStorageManagerENSD_14default_deleteISF_EEEEEEEEDaS6_(**a2, v7))
        {
          WTF::KeyValuePairHashTraits<WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>>::customDeleteBucket(v7, v8);
          ++v6;
        }

        v7 -= 72;
        --v4;
      }

      while (v4);
      v2 = *result;
      if (v6)
      {
        v9 = *(v2 - 12) - v6;
        *(v2 - 16) += v6;
        *(v2 - 12) = v9;
      }

      else if (!v2)
      {
        return;
      }
    }

    v10 = 6 * *(v2 - 12);
    v11 = *(v2 - 4);
    if (v10 < v11 && v11 >= 9)
    {

      WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::shrinkToBestSize(result);
    }
  }
}

BOOL WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(uint64_t a1)
{
  v2 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a1);
  if (v2)
  {
    return 1;
  }

  if (!*(a1 + 24))
  {
    return *a1 == -1;
  }

  if (*(a1 + 24) != 1)
  {
    mpark::throw_bad_variant_access(v2);
  }

  return 0;
}

uint64_t _ZZZN6WebKit21NetworkStorageManager34stopReceivingMessageFromConnectionERN3IPC10ConnectionEEN3__0clEvENKUlRT_E_clIN3WTF12KeyValuePairIN7WebCore12ClientOriginENSt3__110unique_ptrINS_20OriginStorageManagerENSD_14default_deleteISF_EEEEEEEEDaS6_(uint64_t a1, uint64_t a2)
{
  WebKit::OriginStorageManager::connectionClosed(*(a2 + 64), a1);
  v3 = WebKit::OriginStorageManager::defaultBucket(*(a2 + 64));
  if (WebKit::OriginStorageManager::StorageBucket::isActive(v3, v4))
  {
    return 0;
  }

  v6 = WebKit::OriginStorageManager::defaultBucket(*(a2 + 64));
  if (WebKit::OriginStorageManager::StorageBucket::hasDataInMemory(v6, v7))
  {
    return 0;
  }

  WebKit::OriginStorageManager::deleteEmptyDirectory(*(a2 + 64));
  WebKit::deleteEmptyOriginDirectory((*(a2 + 64) + 24), v8);
  return 1;
}

uint64_t *WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *result)
{
  if (!*result)
  {
    LODWORD(v1) = 0;
LABEL_3:
    v2 = v1;
    v3 = 1;
    goto LABEL_8;
  }

  v1 = *(*result - 12);
  if (v1 <= 1)
  {
    goto LABEL_3;
  }

  v4 = __clz(v1 - 1);
  if (!v4)
  {
    __break(1u);
    return result;
  }

  v3 = (1 << -v4);
  if (v1 > 0x400)
  {
    if (v3 > 2 * v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = *(*result - 12);
LABEL_8:
  if (3 * v3 <= 4 * v2)
  {
LABEL_9:
    LODWORD(v3) = 2 * v3;
  }

LABEL_10:
  if (v3 > 0x400)
  {
    v5 = 0.416666667;
  }

  else
  {
    v5 = 0.604166667;
  }

  if (v3 * v5 <= v1)
  {
    LODWORD(v3) = 2 * v3;
  }

  if (v3 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v3;
  }

  return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(result, v6, 0);
}

double WTF::KeyValuePairHashTraits<WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>>::customDeleteBucket(uint64_t a1, WTF::StringImpl *a2)
{
  WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebCore::ClientOrigin>,WebCore::ClientOrigin>(a1, a2);
  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5)
  {

    return WebKit::OriginStorageManager::operator delete(v5, v3);
  }

  return result;
}

uint64_t WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebCore::ClientOrigin>,WebCore::ClientOrigin>(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  if (!*(result + 56))
  {
    v3 = *(result + 40);
    *(v2 + 40) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    result = *(v2 + 32);
    *(v2 + 32) = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }
  }

  *(v2 + 56) = -1;
  if (!*(v2 + 24))
  {
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    result = *v2;
    *v2 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }
  }

  *v2 = -1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc(0x48, (72 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (v4)
  {
    bzero((v9 + 16), 72 * v4);
  }

  *a1 = v12;
  v11[2] = v4 - 1;
  v11[3] = v4;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v15 = v7;
    v16 = v6;
    while (!*(v16 + 24))
    {
      if (*v16 != -1)
      {
        goto LABEL_12;
      }

LABEL_16:
      v16 += 72;
      if (!--v15)
      {
        goto LABEL_17;
      }
    }

    if (*(v16 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

LABEL_12:
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v16))
    {
      v9 = WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>::~KeyValuePair(v16, v17);
    }

    else
    {
      v18 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::reinsert(*a1, v16);
      v9 = WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>::~KeyValuePair(v16, v19);
      if (v16 == a3)
      {
        v13 = v18;
      }
    }

    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_17:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::reinsert(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::computeHash<WebCore::ClientOrigin>(a2);
  v6 = 0;
  do
  {
    v7 = v5 & v4;
    v8 = a1 + 72 * (v5 & v4);
    v10 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v8);
    v5 = ++v6 + v7;
  }

  while (!v10);
  v11 = WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>::~KeyValuePair(a1 + 72 * v7, v9);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v11, a2);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v8 + 32), a2 + 32);
  v12 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v8 + 64) = v12;
  return a1 + 72 * v7;
}

uint64_t **WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t **result, WTF::StringImpl *a2)
{
  if (*result)
  {
    v2 = &(*result)[2 * *(*result - 1)];
    if (v2 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t **a1, WTF::StringImpl *a2)
{
  *a2 = -1;
  result = *(a2 + 1);
  if (result)
  {
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 2), 0xFFFFFFFF00000001);
  *(v4 - 2) = v5;
  v6 = *(v4 - 1);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0, v6);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v7 = *a1;
  if (*a1)
  {
    v8 = *(v7 - 4);
    v9 = *(v7 - 12);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = WTF::fastMalloc(a4, (16 * a2 + 16));
  v12 = v10;
  v13 = v10 + 2;
  if (v5)
  {
    bzero(v10 + 2, 16 * v5);
  }

  *a1 = v13;
  *(v12 + 2) = v5 - 1;
  *(v12 + 3) = v5;
  *v12 = 0;
  *(v12 + 1) = v9;
  if (v8)
  {
    v14 = 0;
    v15 = 0;
    v16 = v8;
    do
    {
      v17 = (v7 + 16 * v14);
      v18 = *v17;
      if (*v17 != -1)
      {
        if (v18)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = (v18 + ~(v18 << 32)) ^ ((v18 + ~(v18 << 32)) >> 22);
          v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
          v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
          v25 = v21 & ((v24 >> 31) ^ v24);
          v26 = 1;
          do
          {
            v27 = v25;
            v28 = *(v20 + 16 * v25);
            v25 = (v25 + v26++) & v21;
          }

          while (v28);
          v29 = (v20 + 16 * v27);
          v30 = v29[1];
          if (v30)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v30, v11);
            v18 = *v17;
          }

          *v29 = v18;
          v29[1] = 0;
          v31 = v17[1];
          v17[1] = 0;
          v29[1] = v31;
          v32 = v17[1];
          if (v32)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, v11);
          }

          if (v17 == a3)
          {
            v15 = v29;
          }
        }

        else
        {
          v19 = v17[1];
          if (v19)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v19, v11);
          }
        }
      }

      ++v14;
    }

    while (v14 != v16);
  }

  else
  {
    v15 = 0;
    result = 0;
    if (!v7)
    {
      return result;
    }
  }

  WTF::fastFree((v7 - 16), v11);
  return v15;
}

WTF::StringImpl **WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = result;
  v3 = *result;
  if (*result)
  {
    v4 = &v3[2 * *(v3 - 1)];
    if (v4 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v4 = 0;
  }

  if (v4 != a2)
  {
    *a2 = -1;
    result = *(a2 + 1);
    if (result)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
      v3 = *v2;
    }

    v5 = vadd_s32(*(v3 - 2), 0xFFFFFFFF00000001);
    *(v3 - 2) = v5;
    v6 = *(v3 - 1);
    if (6 * v5.i32[1] < v6 && v6 >= 9)
    {

      return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0, v6);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v7 = *a1;
  if (*a1)
  {
    v8 = *(v7 - 4);
    v9 = *(v7 - 12);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = WTF::fastMalloc(a4, (16 * a2 + 16));
  v12 = v10;
  v13 = v10 + 2;
  if (v5)
  {
    bzero(v10 + 2, 16 * v5);
  }

  *a1 = v13;
  *(v12 + 2) = v5 - 1;
  *(v12 + 3) = v5;
  *v12 = 0;
  *(v12 + 1) = v9;
  if (v8)
  {
    v14 = 0;
    v15 = 0;
    v16 = v8;
    do
    {
      v17 = (v7 + 16 * v14);
      v18 = *v17;
      if (*v17 != -1)
      {
        if (v18)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = (v18 + ~(v18 << 32)) ^ ((v18 + ~(v18 << 32)) >> 22);
          v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
          v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
          v25 = v21 & ((v24 >> 31) ^ v24);
          v26 = 1;
          do
          {
            v27 = v25;
            v28 = *(v20 + 16 * v25);
            v25 = (v25 + v26++) & v21;
          }

          while (v28);
          v29 = (v20 + 16 * v27);
          v30 = v29[1];
          if (v30)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v30, v11);
            v18 = *v17;
          }

          *v29 = v18;
          v29[1] = 0;
          v31 = v17[1];
          v17[1] = 0;
          v29[1] = v31;
          v32 = v17[1];
          if (v32)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v32, v11);
          }

          if (v17 == a3)
          {
            v15 = v29;
          }
        }

        else
        {
          v19 = v17[1];
          if (v19)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v19, v11);
          }
        }
      }

      ++v14;
    }

    while (v14 != v16);
  }

  else
  {
    v15 = 0;
    result = 0;
    if (!v7)
    {
      return result;
    }
  }

  WTF::fastFree((v7 - 16), v11);
  return v15;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFF740);
  }

  v2 = *(a1 - 8);
  v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
  v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
  v6 = v2 & ((v5 >> 31) ^ v5);
  v7 = *(a1 + 16 * v6);
  if (v7 == a2)
  {
    return a1 + 16 * v6;
  }

  v8 = 1;
  while (v7)
  {
    v6 = (v6 + v8) & v2;
    v7 = *(a1 + 16 * v6);
    ++v8;
    if (v7 == a2)
    {
      return a1 + 16 * v6;
    }
  }

  return a1 + 16 * *(a1 - 4);
}

uint64_t **WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t **result, void *a2)
{
  if (*result)
  {
    v2 = &(*result)[4 * *(*result - 1)];
    if (v2 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 0;
  }

  if (v2 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

uint64_t **WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t **result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 2), 0xFFFFFFFF00000001);
  *(v2 - 2) = v3;
  v4 = *(v2 - 1);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 32 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  if (!result)
  {
    if (*a1)
    {
      return *a1 + 32 * *(*a1 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
  v4 = *a1;
  if (v4)
  {
    v5 = *(v4 - 8);
    v6 = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a2) & v5;
    v7 = *(v4 + 32 * v6);
    if (v7 == *a2)
    {
      return v4 + 32 * v6;
    }

    v9 = 1;
    while (v7)
    {
      v6 = (v6 + v9) & v5;
      v7 = *(v4 + 32 * v6);
      ++v9;
      if (v7 == *a2)
      {
        return v4 + 32 * v6;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDFF910);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::stopReceivingMessageFromConnection(IPC::Connection &)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110AC70;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::stopReceivingMessageFromConnection(IPC::Connection &)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110AC70;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateSharedPreferencesForConnection(IPC::Connection &,WebKit::SharedPreferencesForWebProcess const&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AC98;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateSharedPreferencesForConnection(IPC::Connection &,WebKit::SharedPreferencesForWebProcess const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AC98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateSharedPreferencesForConnection(IPC::Connection &,WebKit::SharedPreferencesForWebProcess const&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::SharedPreferencesForWebProcess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((v2 + 384), (a1 + 24));
  v4 = *(v2 + 384);
  if (v4)
  {
    v4 += 32 * *(v4 - 4);
  }

  if (v4 != v3)
  {
    v5 = *(a1 + 32);
    *(v3 + 23) = *(a1 + 47);
    *(v3 + 8) = v5;
  }

  WTF::RunLoop::mainSingleton(v3);
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  v8 = WTF::fastMalloc(v7, 0x10);
  *v8 = &unk_1F110ACC0;
  v8[1] = v6;
  v10 = v8;
  WTF::RunLoop::dispatch();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateSharedPreferencesForConnection(IPC::Connection &,WebKit::SharedPreferencesForWebProcess const&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110ACC0;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateSharedPreferencesForConnection(IPC::Connection &,WebKit::SharedPreferencesForWebProcess const&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110ACC0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(uint64_t *a1, uint64_t a2)
{
  WTF::checkHashTableKey<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(a2);
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 8);
    v6 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v5;
    v7 = v4 + 72 * v6;
    v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v7);
    if ((v8 & 1) == 0)
    {
      v9 = 1;
      do
      {
        if (*(v7 + 24))
        {
          if (*(v7 + 24) != 1)
          {
            mpark::throw_bad_variant_access(v8);
          }
        }

        else if (*v7 == -1)
        {
          goto LABEL_8;
        }

        if (WebCore::operator==() && (WebCore::operator==() & 1) != 0)
        {
          return v7;
        }

LABEL_8:
        v6 = (v6 + v9) & v5;
        v7 = v4 + 72 * v6;
        v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v7);
        ++v9;
      }

      while (!v8);
    }
  }

  return 0;
}

mpark *WTF::checkHashTableKey<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(uint64_t a1)
{
  result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a1);
  if (result)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 24))
  {
    if (*a1 != -1)
    {
      return result;
    }

LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19DDFFD70);
  }

  if (*(a1 + 24) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::prepareForEviction(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110ACE8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::prepareForEviction(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110ACE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::prepareForEviction(void)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v13);
    if (v13)
    {
      if ((*(v13 + 64) & 1) == 0)
      {
        v4 = *(v13 + 16);
        if (v4)
        {
          v5 = *(v4 + 8);
          if (v5)
          {
            atomic_fetch_add(v5 + 36, 1u);
            v6 = v13;
            v7 = *(v13 + 24);
            v8 = *(a1 + 8);
            v9 = *(a1 + 16);
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            v10 = WTF::fastMalloc(v6, 0x18);
            *v10 = &unk_1F110AD10;
            v10[1] = v8;
            v10[2] = v9;
            v12 = v10;
            WebKit::NetworkProcess::registrableDomainsWithLastAccessedTime(v5, v7, &v12);
            result = v12;
            v12 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            if (atomic_fetch_add(v5 + 36, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v5 + 36);
              result = (*(*v5 + 24))(v5);
            }
          }
        }
      }

      v11 = v13;
      v13 = 0;
      if (v11)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v11 + 8), v3);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvEUlT_E_vJONSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISB_EENS_10HashTraitsISB_EENSF_ISC_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F110AD10;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvEUlT_E_vJONSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISB_EENS_10HashTraitsISB_EENSF_ISC_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F110AD10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvEUlT_E_vJONSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISB_EENS_10HashTraitsISB_EENSF_ISC_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEE4callESN_(uint64_t a1, WTF::StringImpl *a2)
{
  LOBYTE(v15) = 0;
  v16 = 0;
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    v4 = *a2;
    *a2 = 0;
    v15 = v4;
    v16 = 1;
  }

  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v22);
    v7 = v22;
    if (v22)
    {
      if (*(v22 + 64) == 1)
      {
        v22 = 0;
LABEL_24:
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v7 + 8), a2);
        goto LABEL_4;
      }

      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v17 = v8;
      v18 = v9;
      if (v3)
      {
        WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v15, &v19, a2, v6);
        v10 = 1;
      }

      else
      {
        v10 = 0;
        LOBYTE(v19) = 0;
      }

      v20 = v10;
      v11 = WTF::fastMalloc(v10, 0x28);
      v12 = v17;
      *v11 = &unk_1F110AD38;
      v11[1] = v12;
      v11[2] = v18;
      v17 = 0;
      v18 = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      if (v20 == 1)
      {
        v13 = v19;
        v19 = 0;
        v11[3] = v13;
        *(v11 + 32) = 1;
      }

      v21 = v11;
      WTF::SuspendableWorkQueue::dispatch();
      v14 = v21;
      v21 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      if (v20 == 1 && v19)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v19, a2);
      }

      result = v18;
      v18 = 0;
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
      }

      v7 = v22;
      v22 = 0;
      if (v7)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_4:
  if (v16 == 1)
  {
    result = v15;
    if (v15)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, a2);
    }
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvENUlT_E_clINSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSG_ISD_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEDaS5_EUlvE_vJEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AD38;
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvENUlT_E_clINSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSG_ISD_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEDaS5_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110AD38;
  if (*(this + 32) == 1)
  {
    v3 = *(this + 3);
    if (v3)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvENUlT_E_clINSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSG_ISD_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEDaS5_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = a1;
  v155 = *MEMORY[0x1E69E9840];
  result = *(a1 + 16);
  if (!result)
  {
    return result;
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(v1 + 8), &v140);
  v3 = v140;
  if (!v140)
  {
    return result;
  }

  v141 = 0;
  WebKit::NetworkStorageManager::getAllOrigins(&v142, v140);
  v5 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v142);
  v6 = v4;
  v7 = 0;
  isNull = v142;
  if (v142)
  {
    v7 = v142 + 64 * *(v142 - 1);
  }

  v139 = v3;
  v9 = 0;
  if (v7 != v5)
  {
    v136 = v7;
    v137 = v1;
    while (1)
    {
      v10 = WebKit::NetworkStorageManager::originStorageManager(v3, v5, 1);
      atomic_fetch_add((v10 + 8), 1u);
      v11 = *(v10 + 56);
      while (1)
      {
        v12 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v13 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v12)
        {
          goto LABEL_13;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_13:
      v14 = WebKit::OriginQuotaManager::usage(v11);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v11, v15);
      if (!atomic_load((v10 + 8)))
      {
        __break(0xC471u);
        JUMPOUT(0x19DE0124CLL);
      }

      atomic_fetch_add((v10 + 8), 0xFFFFFFFF);
      if (*(v1 + 32) == 1)
      {
        WebCore::RegistrableDomain::RegistrableDomain(buf, v5);
        v19 = WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>((v1 + 24), buf, v17);
        v20 = *buf;
        *buf = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }

        goto LABEL_52;
      }

      v21 = WebKit::NetworkStorageManager::originStorageManager(v3, v5, 1);
      atomic_fetch_add((v21 + 8), 1u);
      v22 = *(v3 + 289);
      v19 = 0.0;
      if (v22 == 2)
      {
        goto LABEL_43;
      }

      if (v22 == 1)
      {
        goto LABEL_36;
      }

      if (!*(v3 + 289))
      {
        break;
      }

LABEL_50:
      if (!atomic_load((v21 + 8)))
      {
        __break(0xC471u);
        JUMPOUT(0x19DE012ACLL);
      }

      atomic_fetch_add((v21 + 8), 0xFFFFFFFF);
LABEL_52:
      isNull = WebCore::SecurityOriginData::isNull(v5);
      if (isNull)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE0128CLL);
      }

      if (*(v5 + 24))
      {
        if (*(v5 + 24) != 1)
        {
LABEL_270:
          mpark::throw_bad_variant_access(isNull);
        }
      }

      else if (*v5 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE0126CLL);
      }

      v40 = v14;
      v41 = v141;
      if (v141 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(&v141, 0), (v41 = v141) != 0))
      {
        v42 = *(v41 - 2);
      }

      else
      {
        v42 = 0;
      }

      *buf = -1640531527;
      *&buf[4] = 0;
      buf[6] = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(buf, v5);
      v43 = WTF::SuperFastHash::hash(buf) & v42;
      v44 = &v41[9 * v43];
      isNull = WebCore::SecurityOriginData::isNull(v44);
      if ((isNull & 1) == 0)
      {
        v45 = 0;
        v46 = 1;
        while (!*(v44 + 24))
        {
          if (*v44 != -1)
          {
            goto LABEL_62;
          }

          v45 = v44;
LABEL_65:
          v43 = (v43 + v46) & v42;
          v44 = &v41[9 * v43];
          isNull = WebCore::SecurityOriginData::isNull(v44);
          ++v46;
          if (isNull)
          {
            if (v45)
            {
              *(v45 + 64) = 0;
              *(v45 + 32) = 0u;
              *(v45 + 48) = 0u;
              *v45 = 0u;
              *(v45 + 16) = 0u;
              --*(v141 - 4);
              v44 = v45;
            }

            goto LABEL_71;
          }
        }

        if (*(v44 + 24) != 1)
        {
          goto LABEL_270;
        }

LABEL_62:
        if (WebCore::operator==())
        {
          goto LABEL_81;
        }

        goto LABEL_65;
      }

LABEL_71:
      mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v44, v5);
      *buf = 0;
      buf[2] = 0;
      *v151 = 0u;
      *&buf[8] = 0u;
      *(v44 + 32) = *buf;
      *(v44 + 48) = *&buf[16];
      v48 = *(v44 + 68);
      if (v48)
      {
        WTF::VectorTypeOperations<WebCore::SecurityOriginData>::destruct(*(v44 + 56), (*(v44 + 56) + 32 * v48));
      }

      v49 = *(v44 + 56);
      if (v49)
      {
        *(v44 + 56) = 0;
        *(v44 + 64) = 0;
        WTF::fastFree(v49, v47);
      }

      *(v44 + 56) = *v151;
      v50 = *&v151[8];
      *v151 = 0;
      *&v151[8] = 0;
      *(v44 + 64) = v50;
      WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v151, v47);
      v51 = v141;
      if (v141)
      {
        v52 = *(v141 - 3) + 1;
      }

      else
      {
        v52 = 1;
      }

      *(v141 - 3) = v52;
      v53 = (*(v51 - 4) + v52);
      v54 = *(v51 - 1);
      if (v54 <= 0x400)
      {
        if (3 * v54 > 4 * v53)
        {
          goto LABEL_81;
        }

LABEL_80:
        v44 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(&v141, v44);
        goto LABEL_81;
      }

      if (v54 <= 2 * v53)
      {
        goto LABEL_80;
      }

LABEL_81:
      *(v44 + 40) += v40;
      if (*(v44 + 48) < v19)
      {
        *(v44 + 48) = v19;
      }

      v55 = *(v44 + 68);
      v1 = v137;
      v3 = v139;
      if (v55 == *(v44 + 64))
      {
        WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData const&>(v44 + 56, v5 + 32);
      }

      else
      {
        mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*(v44 + 56) + 32 * v55), v5 + 32);
        ++*(v44 + 68);
      }

      if ((WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v139, v5) & 1) == 0)
      {
        *(v44 + 32) = 1;
      }

      if (*(v44 + 34))
      {
        goto LABEL_119;
      }

      buf[0] = 0;
      v151[0] = -1;
      LODWORD(v56) = *(v5 + 24);
      if (!*(v5 + 24))
      {
        v57 = *v5;
        if (*v5)
        {
          atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
        }

        *buf = v57;
        v56 = *(v5 + 8);
        if (v56)
        {
          atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
        }

        *&buf[8] = v56;
        *&buf[16] = *(v5 + 16);
        LOBYTE(v56) = *(v5 + 24);
        goto LABEL_95;
      }

      if (v56 != 255)
      {
        *buf = *v5;
LABEL_95:
        v151[0] = v56;
      }

      v151[8] = 0;
      LOBYTE(v153) = -1;
      if (*(v5 + 24))
      {
        if (*(v5 + 24) == 255)
        {
          goto LABEL_103;
        }

        *&v151[8] = *v5;
      }

      else
      {
        v58 = *v5;
        if (*v5)
        {
          atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
        }

        *&v151[8] = v58;
        v59 = *(v5 + 8);
        if (v59)
        {
          atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
        }

        *&v151[16] = v59;
        LODWORD(v152) = *(v5 + 16);
      }

      LOBYTE(v153) = *(v5 + 24);
LABEL_103:
      v60 = WebKit::NetworkStorageManager::persistedInternal(v139, buf);
      if (!v153)
      {
        v61 = *&v151[16];
        *&v151[16] = 0;
        if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v61, v4);
        }

        v62 = *&v151[8];
        *&v151[8] = 0;
        if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v62, v4);
        }
      }

      LOBYTE(v153) = -1;
      if (!v151[0])
      {
        v63 = *&buf[8];
        *&buf[8] = 0;
        if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v63, v4);
        }

        v64 = *buf;
        *buf = 0;
        if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v64, v4);
        }
      }

      if (v60)
      {
        *(v44 + 33) = 257;
      }

      do
      {
LABEL_119:
        v5 += 64;
      }

      while (v5 != v6 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5));
      v9 = (v9 + v40);
      if (v5 == v136)
      {
        isNull = v142;
        goto LABEL_132;
      }
    }

    WebKit::LocalStorageManager::localStorageFilePath(buf, (v3 + 17), v5);
    v24 = COERCE_DOUBLE(WTF::FileSystemImpl::fileModificationTime(buf, v23));
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
    }

    if (v24 >= 0.0)
    {
      v19 = v24;
    }

    else
    {
      v19 = 0.0;
    }

    WebKit::IDBStorageManager::idbStorageOriginDirectory(v144, (v3 + 18), v5);
    v28 = COERCE_DOUBLE(WTF::FileSystemImpl::fileModificationTime(v144, v26));
    if ((v27 & 1) == 0)
    {
      v28 = 0.0;
    }

    if (v28 >= v19)
    {
      v19 = v28;
    }

    v29 = v144[0];
    v144[0] = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v27);
    }

    v30 = *buf;
    *buf = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v27);
    }

LABEL_36:
    WebKit::CacheStorageManager::cacheStorageOriginDirectory(v3 + 20, v5, buf);
    v33 = COERCE_DOUBLE(WTF::FileSystemImpl::fileModificationTime(buf, v31));
    if ((v32 & 1) == 0)
    {
      v33 = 0.0;
    }

    if (v33 >= v19)
    {
      v19 = v33;
    }

    v34 = *buf;
    *buf = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v32);
    }

LABEL_43:
    WebKit::originFilePath(buf, *(v21 + 24));
    v37 = COERCE_DOUBLE(WTF::FileSystemImpl::fileModificationTime(buf, v35));
    if ((v36 & 1) == 0)
    {
      v37 = 0.0;
    }

    if (v37 >= v19)
    {
      v19 = v37;
    }

    v38 = *buf;
    *buf = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v36);
    }

    goto LABEL_50;
  }

LABEL_132:
  if (isNull)
  {
    isNull = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(isNull, v4);
  }

  v3[32] = v9;
  *(v3 + 264) = 1;
  *(v3 + 288) = 0;
  if ((v3[35] & 1) == 0)
  {
    goto LABEL_276;
  }

  v65 = v141;
  if (v9 <= v3[34])
  {
    goto LABEL_254;
  }

  v142 = 0;
  v143 = 0;
  if (!v141)
  {
    v67 = 0;
    LODWORD(v66) = 0;
    goto LABEL_145;
  }

  v66 = *(v141 - 1);
  v67 = &v141[9 * v66];
  if (!*(v141 - 3))
  {
LABEL_145:
    v69 = v67;
    v67 = &v141[9 * v66];
    goto LABEL_146;
  }

  if (!v66)
  {
    v70 = 0;
    v69 = v141;
    goto LABEL_150;
  }

  v68 = 72 * v66;
  v69 = v141;
  while (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v69))
  {
    v69 += 9;
    v68 -= 72;
    if (!v68)
    {
      v69 = v67;
      break;
    }
  }

  v3 = v139;
LABEL_146:
  if (!v65)
  {
    v71 = 0;
    goto LABEL_151;
  }

  v70 = *(v65 - 1);
LABEL_150:
  v71 = &v65[9 * v70];
LABEL_151:
  if (v71 == v69)
  {
    v91 = 0;
    v90 = 0;
    goto LABEL_179;
  }

  do
  {
    buf[0] = 0;
    v151[0] = -1;
    v72 = *(v69 + 24);
    if (!*(v69 + 24))
    {
      v73 = *v69;
      *v69 = 0;
      v69[1] = 0;
      *buf = v73;
      *&buf[16] = *(v69 + 4);
LABEL_154:
      v151[0] = v72;
      goto LABEL_155;
    }

    if (v72 != 255)
    {
      *buf = *v69;
      goto LABEL_154;
    }

LABEL_155:
    v74 = v69[6];
    *&v151[8] = *(v69 + 2);
    v153 = 0;
    v154 = 0;
    v152 = v74;
    v75 = v69[7];
    v69[7] = 0;
    v153 = v75;
    v76 = v69[8];
    v69[8] = 0;
    v154 = v76;
    v77 = HIDWORD(v143);
    if (HIDWORD(v143) == v143)
    {
      v78 = WTF::Vector<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v142, HIDWORD(v143) + 1, buf);
      v79 = HIDWORD(v143);
      v80 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v142 + 72 * HIDWORD(v143), v78);
      v81 = *(v78 + 32);
      v82 = *(v78 + 48);
      *(v80 + 7) = 0;
      v80 += 56;
      *(v80 - 1) = v82;
      *(v80 - 24) = v81;
      *(v80 + 1) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v80, (v78 + 56));
      v77 = v79;
      v3 = v139;
      goto LABEL_161;
    }

    v83 = v142 + 72 * HIDWORD(v143);
    *v83 = 0;
    v83[24] = -1;
    if (v151[0])
    {
      if (v151[0] == 255)
      {
        goto LABEL_160;
      }

      *v83 = *buf;
    }

    else
    {
      v84 = *buf;
      *buf = 0;
      *v83 = v84;
      v85 = *&buf[8];
      *&buf[8] = 0;
      *(v83 + 1) = v85;
      *(v83 + 4) = *&buf[16];
    }

    v83[24] = v151[0];
LABEL_160:
    v86 = v152;
    *(v83 + 2) = *&v151[8];
    *(v83 + 7) = 0;
    *(v83 + 8) = 0;
    *(v83 + 6) = v86;
    v87 = v153;
    v153 = 0;
    *(v83 + 7) = v87;
    LODWORD(v87) = v154;
    LODWORD(v154) = 0;
    *(v83 + 16) = v87;
    LODWORD(v87) = HIDWORD(v154);
    HIDWORD(v154) = 0;
    *(v83 + 17) = v87;
LABEL_161:
    HIDWORD(v143) = v77 + 1;
    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v153, v4);
    if (!v151[0])
    {
      v88 = *&buf[8];
      *&buf[8] = 0;
      if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v88, v4);
      }

      v89 = *buf;
      *buf = 0;
      if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v89, v4);
      }
    }

    do
    {
      v69 += 9;
    }

    while (v69 != v67 && WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v69));
  }

  while (v69 != v71);
  v90 = v142;
  v91 = (v142 + 72 * HIDWORD(v143));
  if (HIDWORD(v143))
  {
    v92 = 126 - 2 * __clz(HIDWORD(v143));
    goto LABEL_180;
  }

LABEL_179:
  v92 = 0;
LABEL_180:
  std::__introsort<std::_RangeAlgPolicy,WebKit::NetworkStorageManager::performEviction(WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)::$_0 &,std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord> *,false>(v90, v91, v92, 1);
  if (HIDWORD(v143))
  {
    v93 = 0;
    while (1)
    {
      if ((v3[33] & 1) == 0 || (v3[35] & 1) == 0)
      {
        goto LABEL_276;
      }

      if (v3[32] <= v3[34])
      {
        goto LABEL_243;
      }

      v94 = HIDWORD(v143);
      v95 = v142;
      v96 = (v142 + 72 * HIDWORD(v143));
      buf[0] = 0;
      v151[0] = -1;
      if (!*(v96 - 48))
      {
        break;
      }

      if (*(v96 - 48) != 255)
      {
        *buf = *(v96 - 72);
        goto LABEL_187;
      }

LABEL_188:
      v99 = *(v96 - 3);
      *&v151[8] = *(v96 - 40);
      v153 = 0;
      v154 = 0;
      v152 = v99;
      v100 = *(v96 - 2);
      *(v96 - 2) = 0;
      v153 = v100;
      LODWORD(v100) = *(v96 - 2);
      *(v96 - 2) = 0;
      LODWORD(v154) = v100;
      LODWORD(v100) = *(v96 - 1);
      *(v96 - 1) = 0;
      HIDWORD(v154) = v100;
      v101 = v94 - 1;
      WTF::VectorTypeOperations<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>>::destruct((v95 + 72 * v94 - 72), v96);
      HIDWORD(v143) = v101;
      if (v151[8])
      {
        v3 = v139;
      }

      else
      {
        v3 = v139;
        if (v151[10] != 1 || (v151[9] & 1) == 0)
        {
          v138 = v93;
          if (!HIDWORD(v154))
          {
LABEL_229:
            if ((v3[33] & 1) == 0)
            {
              goto LABEL_276;
            }

            v3[32] = (v3[32] - *&v151[16]);
            *(v3 + 264) = 1;
            v93 = v138 + 1;
            goto LABEL_231;
          }

          v103 = (v153 + 24);
          v104 = 32 * HIDWORD(v154);
          while (2)
          {
            LOBYTE(v144[0]) = 0;
            v146 = -1;
            v105 = v151[0];
            if (v151[0])
            {
              if (v151[0] != 255)
              {
                *v144 = *buf;
                goto LABEL_200;
              }
            }

            else
            {
              v106 = *buf;
              if (*buf)
              {
                atomic_fetch_add_explicit(*buf, 2u, memory_order_relaxed);
              }

              v144[0] = v106;
              v107 = *&buf[8];
              if (*&buf[8])
              {
                atomic_fetch_add_explicit(*&buf[8], 2u, memory_order_relaxed);
              }

              v144[1] = v107;
              v145 = *&buf[16];
              v105 = v151[0];
LABEL_200:
              v146 = v105;
            }

            v108 = v103 - 24;
            LOBYTE(v147) = 0;
            v149 = -1;
            if (*v103)
            {
              if (*v103 != 255)
              {
                v147 = *v108;
                goto LABEL_207;
              }
            }

            else
            {
              v109 = *v108;
              if (v109)
              {
                atomic_fetch_add_explicit(v109, 2u, memory_order_relaxed);
              }

              *&v147 = v109;
              v110 = *(v103 - 2);
              if (v110)
              {
                atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
              }

              *(&v147 + 1) = v110;
              v148 = *(v103 - 2);
LABEL_207:
              v149 = *v103;
            }

            v111 = WebKit::NetworkStorageManager::originStorageManager(v3, v144, 1);
            v112 = v3;
            v113 = (v111 + 2);
            atomic_fetch_add(v111 + 2, 1u);
            v114 = WebKit::OriginStorageManager::defaultBucket(v111);
            v115.n128_u64[0] = 0xFFF0000000000000;
            WebKit::OriginStorageManager::StorageBucket::deleteData(v114, 0x8C0B0, v115);
            if (!atomic_load(v113))
            {
              __break(0xC471u);
              JUMPOUT(0x19DE0122CLL);
            }

            atomic_fetch_add(v113, 0xFFFFFFFF);
            WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v112, v144);
            v3 = v112;
            if (!v149)
            {
              v117 = *(&v147 + 1);
              *(&v147 + 1) = 0;
              if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v117, v102);
              }

              v118 = v147;
              *&v147 = 0;
              if (v118 && atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v118, v102);
              }
            }

            v149 = -1;
            if (!v146)
            {
              v119 = v144[1];
              v144[1] = 0;
              if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v119, v102);
              }

              v120 = v144[0];
              v144[0] = 0;
              if (v120 && atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v120, v102);
              }
            }

            v103 += 32;
            v104 -= 32;
            if (!v104)
            {
              goto LABEL_229;
            }

            continue;
          }
        }
      }

LABEL_231:
      WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v153, v102);
      if (!v151[0])
      {
        v122 = *&buf[8];
        *&buf[8] = 0;
        if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v122, v121);
        }

        v123 = *buf;
        *buf = 0;
        if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v123, v121);
        }
      }

      if (!HIDWORD(v143))
      {
        goto LABEL_243;
      }
    }

    v97 = *(v96 - 9);
    *(v96 - 9) = 0;
    *buf = v97;
    v98 = *(v96 - 8);
    *(v96 - 8) = 0;
    *&buf[8] = v98;
    *&buf[16] = *(v96 - 14);
LABEL_187:
    v151[0] = *(v96 - 48);
    goto LABEL_188;
  }

  v93 = 0;
LABEL_243:
  v124 = qword_1ED641350;
  isNull = os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT);
  if (isNull)
  {
    if (v3[35])
    {
      if (*(v3 + 264))
      {
        v125 = v3[32];
      }

      else
      {
        v125 = 0;
      }

      v126 = v3[34];
      *buf = 134218752;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v93;
      *&buf[22] = 2048;
      *v151 = v125;
      *&v151[8] = 2048;
      *&v151[10] = v126;
      _os_log_impl(&dword_19D52D000, v124, OS_LOG_TYPE_DEFAULT, "%p - NetworkStorageManager::performEviction evicts %llu origins, current usage %llu, total quota %llu", buf, 0x2Au);
      goto LABEL_249;
    }

LABEL_276:
    __break(1u);
  }

LABEL_249:
  v127 = v142;
  if (HIDWORD(v143))
  {
    isNull = WTF::VectorTypeOperations<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>>::destruct(v142, (v142 + 72 * HIDWORD(v143)));
  }

  if (v127)
  {
    isNull = WTF::fastFree(v127, v4);
  }

  v65 = v141;
LABEL_254:
  if (v65)
  {
    v128 = *(v65 - 1);
    if (v128)
    {
      v129 = (v65 + 7);
      while (!*(v129 - 32))
      {
        if (*(v129 - 56) != -1)
        {
          goto LABEL_259;
        }

LABEL_267:
        v129 += 72;
        if (!--v128)
        {
          goto LABEL_271;
        }
      }

      if (*(v129 - 32) != 1)
      {
        goto LABEL_270;
      }

LABEL_259:
      isNull = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v129, v4);
      if (!*(v129 - 32))
      {
        v130 = *(v129 - 48);
        *(v129 - 48) = 0;
        if (v130 && atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v130, v4);
        }

        isNull = *(v129 - 56);
        *(v129 - 56) = 0;
        if (isNull && atomic_fetch_add_explicit(isNull, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isNull = WTF::StringImpl::destroy(isNull, v4);
        }
      }

      *(v129 - 32) = -1;
      goto LABEL_267;
    }

LABEL_271:
    isNull = WTF::fastFree((v65 - 2), v4);
  }

  WTF::RunLoop::mainSingleton(isNull);
  v131 = v140;
  v140 = 0;
  v133 = WTF::fastMalloc(v132, 0x10);
  *v133 = &unk_1F110AD60;
  v133[1] = v131;
  *buf = v133;
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v135 = v140;
  v140 = 0;
  if (v135)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v135 + 1, v134);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvENUlT_E_clINSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSG_ISD_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEDaS5_ENUlvE_clEvEUlvE_vJEED1Ev(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110AD60;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZZN6WebKit21NetworkStorageManager18prepareForEvictionEvEN3__0clEvENUlT_E_clINSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashISC_EENS_10HashTraitsISC_EENSG_ISD_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEDaS5_ENUlvE_clEvEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110AD60;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  v2 = result;
  while (1)
  {
    v3 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v4 = *result;
    atomic_compare_exchange_strong_explicit(result, &v4, v3 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      if (v3 == 3)
      {
        v5 = result[18];
        v2[18] = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v6 = v2[17];
        v2[17] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = v2[16];
        v2[16] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        if (*(v2 + 64) == 1)
        {
          v8 = v2[6];
          v2[6] = 0;
          if (v8)
          {
            (*(*v8 + 8))(v8);
          }
        }

        WTF::Deque<WebKit::OriginQuotaManager::Request,0ul>::destroyAll(v2 + 1);
        v10 = v2[3];
        if (v10)
        {
          v2[3] = 0;
          *(v2 + 8) = 0;
          WTF::fastFree(v10, v9);
        }

        return bmalloc::api::tzoneFree(v2, v9);
      }

      return result;
    }
  }

  v11 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>(v11, a2);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v2 = this;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this, a2);
  }

  v4 = *(v2 + 1) - 1;
  *(v2 + 1) = v4;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 3);
    ++*(v2 + 2);
    *(v2 + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return this;
    }
  }

  else
  {
    v17 = v4;
    this = WTF::Lock::unlockSlow(v2);
    if (v17)
    {
      return this;
    }
  }

  if (v5)
  {
    v7 = *(v5 + 144);
    *(v5 + 144) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v5 + 136);
    *(v5 + 136) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(v5 + 128);
    *(v5 + 128) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    if (*(v5 + 64) == 1)
    {
      v10 = *(v5 + 48);
      *(v5 + 48) = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    WTF::Deque<WebKit::OriginQuotaManager::Request,0ul>::destroyAll((v5 + 8));
    v12 = *(v5 + 24);
    if (v12)
    {
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      WTF::fastFree(v12, v11);
    }

    this = bmalloc::api::tzoneFree(v5, v11);
  }

  v13 = 0;
  v14 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v13, 1u, memory_order_acquire, memory_order_acquire);
  if (v13)
  {
    this = MEMORY[0x19EB01E30](v2);
  }

  v15 = *(v2 + 2) - 1;
  *(v2 + 2) = v15;
  atomic_compare_exchange_strong_explicit(v2, &v14, 0, memory_order_release, memory_order_relaxed);
  if (v14 == 1)
  {
    if (v15)
    {
      return this;
    }
  }

  else
  {
    v16 = v15;
    this = WTF::Lock::unlockSlow(v2);
    if (v16)
    {
      return this;
    }
  }

  return WTF::fastFree(v2, a2);
}

uint64_t *WTF::Deque<WebKit::OriginQuotaManager::Request,0ul>::destroyAll(uint64_t *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = *(result + 6);
  v4 = *result;
  v5 = v1 - *result;
  if (v1 < *result)
  {
    if (v1 <= v3)
    {
      if (v1)
      {
        v6 = result;
        v7 = 24 * v1;
        v8 = (v2 + 8);
        do
        {
          result = *v8;
          *v8 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v8 += 3;
          v7 -= 24;
        }

        while (v7);
        v4 = *v6;
      }

      if (v4 <= v3)
      {
        if (v4 != v3)
        {
          v9 = 3 * v4;
          v10 = 24 * v3 - 8 * v9;
          v11 = (v2 + 8 * v9 + 8);
          do
          {
            result = *v11;
            *v11 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            v11 += 3;
            v10 -= 24;
          }

          while (v10);
        }

        return result;
      }
    }

LABEL_27:
    __break(1u);
    return result;
  }

  v12 = v3 - v4;
  if (v3 < v4)
  {
    goto LABEL_27;
  }

  if (v5 == -1)
  {
    v5 = v3 - v4;
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    if (v12 < v5)
    {
      goto LABEL_27;
    }

    if (!v5)
    {
      return result;
    }
  }

  v13 = 24 * v5;
  v14 = (v2 + 24 * v4 + 8);
  do
  {
    result = *v14;
    *v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v14 += 3;
    v13 -= 24;
  }

  while (v13);
  return result;
}

double WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE01948);
  }

  v6 = *a1;
  v7 = 0.0;
  if (v6)
  {
    v8 = *(v6 - 8);
    v9 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v8;
    v10 = v6 + 16 * v9;
    if ((WTF::equal(*v10, 0, v11) & 1) == 0)
    {
      v13 = 1;
      while (*v10 == -1 || (WTF::equalIgnoringASCIICase(*v10, *a2, v12) & 1) == 0)
      {
        v9 = (v9 + v13) & v8;
        v10 = v6 + 16 * v9;
        ++v13;
        if (WTF::equal(*v10, 0, v12))
        {
          return v7;
        }
      }

      return *(v10 + 8);
    }
  }

  return v7;
}

uint64_t WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebKit::NetworkStorageManager::AccessRecord>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(uint64_t **a1, unint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= 2 * v3);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = WTF::fastMalloc(0x48, (72 * v5 + 16));
  v8 = v6;
  v9 = (v6 + 16);
  if (v5)
  {
    bzero((v6 + 16), 72 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = v3;
    v32 = v3;
    while (1)
    {
      v13 = v2 + 72 * v10;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_12;
      }

LABEL_43:
      if (++v10 == v12)
      {
        goto LABEL_48;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

LABEL_12:
    if (WebCore::SecurityOriginData::isNull((v2 + 72 * v10)))
    {
      v6 = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 56, v14);
      if (!*(v13 + 24))
      {
        v15 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v7);
        }

        v6 = *v13;
        *v13 = 0;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v6 = WTF::StringImpl::destroy(v6, v7);
          }
        }
      }

      *(v13 + 24) = -1;
    }

    else
    {
      v16 = v2;
      v17 = *a1;
      if (*a1)
      {
        v18 = *(v17 - 8);
      }

      else
      {
        v18 = 0;
      }

      v35 = -1640531527;
      v36 = 0;
      v37 = 0;
      WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v35, v13);
      v19 = WTF::SuperFastHash::hash(&v35);
      v20 = 0;
      do
      {
        v21 = v19 & v18;
        v22 = v17 + 72 * (v19 & v18);
        isNull = WebCore::SecurityOriginData::isNull(v22);
        v19 = ++v20 + v21;
      }

      while (!isNull);
      WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22 + 56, v23);
      v2 = v16;
      if (!*(v22 + 24))
      {
        v26 = *(v22 + 8);
        *(v22 + 8) = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v25);
        }

        v27 = *v22;
        *v22 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v25);
        }
      }

      *(v22 + 24) = -1;
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v22, v13);
      v28 = *(v13 + 48);
      *(v22 + 32) = *(v13 + 32);
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      *(v22 + 48) = v28;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v22 + 56, (v13 + 56));
      v6 = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13 + 56, v29);
      if (!*(v13 + 24))
      {
        v30 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v7);
        }

        v6 = *v13;
        *v13 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v6 = WTF::StringImpl::destroy(v6, v7);
        }
      }

      *(v13 + 24) = -1;
      if (v13 == a2)
      {
        v11 = v22;
      }

      v12 = v32;
    }

    goto LABEL_43;
  }

  v11 = 0;
  result = 0;
  if (v2)
  {
LABEL_48:
    WTF::fastFree((v2 - 16), v7);
    return v11;
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 56, a2);
      if (!*(v3 + 24))
      {
        v4 = *(v3 + 1);
        *(v3 + 1) = 0;
        if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }

        result = *v3;
        *v3 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }
      }

      *(v3 + 24) = -1;
      v3 = (v3 + 72);
    }

    while (v3 != a2);
  }

  return result;
}

unint64_t WTF::Vector<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(WTF::StringImpl *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 72 * *(a1 + 3) <= a3)
  {
    v10 = *(a1 + 2);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 2);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<std::pair<WebCore::SecurityOriginData,WebKit::NetworkStorageManager::AccessRecord>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x38E38E4)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 72 * a2;
      result = WTF::fastMalloc((9 * a2), (72 * a2));
      *(v2 + 2) = v5 / 0x48;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 0;
        v9 = 72 * v4;
        do
        {
          v10 = v3 + v8;
          v11 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v7 + v8, v3 + v8);
          v12 = *(v3 + v8 + 32);
          v13 = *(v3 + v8 + 48);
          *(v11 + 7) = 0;
          v11 += 56;
          *(v11 - 1) = v13;
          *(v11 - 24) = v12;
          *(v11 + 1) = 0;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v11, (v3 + v8 + 56));
          result = WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + v8 + 56, v14);
          if (!*(v3 + v8 + 24))
          {
            v15 = *(v10 + 1);
            *(v10 + 1) = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v6);
            }

            result = *v10;
            *v10 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v6);
            }
          }

          v10[24] = -1;
          v8 += 72;
        }

        while (v9 != v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0,void,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AD88;
  if (!*(a1 + 72))
  {
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 72) = -1;
  if (!*(a1 + 40))
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0,void,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110AD88;
  if (!*(this + 72))
  {
    v3 = *(this + 7);
    *(this + 7) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 6);
    *(this + 6) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 72) = -1;
  if (!*(this + 40))
  {
    v5 = *(this + 3);
    *(this + 3) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 2);
    *(this + 2) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 40) = -1;

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0,void,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,unsigned long long,unsigned long long>::call(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v6 = *(a1 + 80);
  if (v6)
  {
    v7[0] = a1 + 8;
    v7[1] = a1 + 16;
    v7[2] = &v8;
    v7[3] = a3;
    v7[4] = a4;
    v7[5] = a5;
    IPC::Connection::send<Messages::NetworkProcessProxy::IncreaseQuota>(v6, v7);
  }
}

void IPC::Connection::send<Messages::NetworkProcessProxy::IncreaseQuota>(uint64_t a1, uint64_t a2)
{
  IPC::Connection::connection(a1, &v11);
  v4 = v11;
  if (v11)
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 539;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v12 = v5;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, **a2);
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v5, *(a2 + 8));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, **(a2 + 16));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 24));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 32));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 40));
    IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8, v6);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1,void,unsigned long long>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110ADB0;
  WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1::~$_1((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1,void,unsigned long long>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110ADB0;
  WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1::~$_1(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1,void,unsigned long long>::call(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (!result)
  {
    return result;
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v63);
  v5 = v63;
  if (!v63)
  {
    return result;
  }

  WTF::WallTime::now(result);
  v7 = v6;
  if (!*(v5 + 360))
  {
    goto LABEL_16;
  }

  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a1 + 24);
  if (v8)
  {
    goto LABEL_142;
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_64;
    }
  }

  else if (*(a1 + 24) == -1)
  {
    goto LABEL_143;
  }

  v9 = *(v5 + 360);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v9 - 8);
  v11 = WTF::computeHash<WebCore::ClientOrigin>(a1 + 24) & v10;
  v12 = v9 + 72 * v11;
  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v12);
  if (v8)
  {
LABEL_10:
    v14 = *(v5 + 360);
    if (v14)
    {
      v15 = *(v14 - 4);
      v12 = v14 + 72 * v15;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v31 = 1;
  while (!*(v12 + 24))
  {
    if (*v12 != -1)
    {
      goto LABEL_59;
    }

LABEL_61:
    v11 = (v11 + v31) & v10;
    v12 = v9 + 72 * v11;
    v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v12);
    ++v31;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (*(v12 + 24) != 1)
  {
    goto LABEL_64;
  }

LABEL_59:
  if (!WebCore::operator==())
  {
    goto LABEL_61;
  }

  v8 = WebCore::operator==();
  if ((v8 & 1) == 0)
  {
    goto LABEL_61;
  }

  v14 = *(v5 + 360);
  if (v14)
  {
    v15 = *(v14 - 4);
LABEL_12:
    v14 += 72 * v15;
  }

  if (v14 != v12)
  {
    if (v7 - *(v12 + 64) <= 30.0)
    {
      goto LABEL_108;
    }

LABEL_15:
    *(v12 + 64) = v7;
    goto LABEL_42;
  }

LABEL_16:
  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a1 + 24);
  if (v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE02A64);
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      goto LABEL_19;
    }

LABEL_64:
    mpark::throw_bad_variant_access(v8);
  }

  if (*(a1 + 24) == -1)
  {
    __break(0xC471u);
    goto LABEL_141;
  }

LABEL_19:
  v16 = *(v5 + 360);
  if (v16 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand((v5 + 360), 0), (v16 = *(v5 + 360)) != 0))
  {
    v17 = *(v16 - 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = WTF::computeHash<WebCore::ClientOrigin>(a1 + 24) & v17;
  v12 = v16 + 72 * v18;
  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v12);
  if (v8)
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = 1;
  while (2)
  {
    if (*(v12 + 24))
    {
      if (*(v12 + 24) != 1)
      {
        goto LABEL_64;
      }

      goto LABEL_26;
    }

    if (*v12 == -1)
    {
      v19 = v12;
    }

    else
    {
LABEL_26:
      if (WebCore::operator==() && WebCore::operator==())
      {
        goto LABEL_15;
      }
    }

    v18 = (v18 + v20) & v17;
    v12 = v16 + 72 * v18;
    v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v12);
    ++v20;
    if (!v8)
    {
      continue;
    }

    break;
  }

  if (v19)
  {
    *(v19 + 64) = 0;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *v19 = 0u;
    *(v19 + 16) = 0u;
    --*(*(v5 + 360) - 16);
    v12 = v19;
  }

LABEL_36:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v12, (a1 + 24));
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v12 + 32), (a1 + 56));
  *(v12 + 64) = v7;
  v21 = *(v5 + 360);
  if (v21)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v23 = (*(v21 - 16) + v22);
  v24 = *(v21 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_41:
      WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand((v5 + 360), v12);
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_41;
  }

LABEL_42:
  v25 = *(v5 + 360);
  if (!v25)
  {
    goto LABEL_90;
  }

  v26 = *(v25 - 4);
  if (!v26)
  {
    goto LABEL_66;
  }

  v27 = 0;
  v28 = v25 + 72 * v26 - 72;
  while (2)
  {
    v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v28);
    if ((v8 & 1) == 0)
    {
      if (*(v28 + 24))
      {
        if (*(v28 + 24) != 1)
        {
          goto LABEL_64;
        }

LABEL_48:
        if (v7 - *(v28 + 64) > 30.0)
        {
          WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebCore::ClientOrigin>,WebCore::ClientOrigin>(v28, v29);
          ++v27;
        }
      }

      else if (*v28 != -1)
      {
        goto LABEL_48;
      }
    }

    v28 -= 72;
    if (--v26)
    {
      continue;
    }

    break;
  }

  v25 = *(v5 + 360);
  if (v27)
  {
    v30 = *(v25 - 12) - v27;
    *(v25 - 16) += v27;
    *(v25 - 12) = v30;
    goto LABEL_66;
  }

  if (v25)
  {
LABEL_66:
    v32 = 6 * *(v25 - 12);
    v33 = *(v25 - 4);
    if (v32 >= v33 || v33 < 9)
    {
      goto LABEL_90;
    }

    v35 = *(v5 + 360);
    if (v35)
    {
      v36 = *(v35 - 12);
      if (v36 > 1)
      {
        v37 = __clz(v36 - 1);
        if (v37)
        {
          v38 = (1 << -v37);
          if (v36 <= 0x400)
          {
            v39 = v36;
            goto LABEL_79;
          }

          if (v38 > 2 * v36)
          {
LABEL_81:
            if (v38 > 0x400)
            {
              v40 = 0.416666667;
            }

            else
            {
              v40 = 0.604166667;
            }

            if (v38 * v40 <= v36)
            {
              LODWORD(v38) = 2 * v38;
            }

            if (v38 <= 8)
            {
              v41 = 8;
            }

            else
            {
              v41 = v38;
            }

            WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash((v5 + 360), v41, 0);
            goto LABEL_90;
          }

LABEL_80:
          LODWORD(v38) = 2 * v38;
          goto LABEL_81;
        }

LABEL_141:
        __break(1u);
LABEL_142:
        __break(0xC471u);
        JUMPOUT(0x19DE02AA4);
      }
    }

    else
    {
      LODWORD(v36) = 0;
    }

    v39 = v36;
    v38 = 1;
LABEL_79:
    if (3 * v38 > 4 * v39)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_90:
  v8 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((v5 + 72), a1 + 24);
  if (!v8 || (v42 = *(v8 + 64)) == 0)
  {
LABEL_143:
    __break(0xC471u);
    JUMPOUT(0x19DE02A24);
  }

  atomic_fetch_add((v42 + 8), 1u);
  v43 = *(v42 + 24);
  if (v43)
  {
    atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    WebKit::originFilePath(&v64, v43);
    WTF::FileSystemImpl::updateFileModificationTime(&v64, v44);
    v8 = v64;
    v64 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v8 = WTF::StringImpl::destroy(v8, v13);
    }

    if (*(v5 + 289) <= 1u)
    {
      v45 = WebKit::OriginStorageManager::defaultBucket(v42);
      WebKit::OriginStorageManager::StorageBucket::resolvedPath(v45, 0x8000, &v64);
      WTF::FileSystemImpl::updateFileModificationTime(&v64, v46);
      v8 = v64;
      v64 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v8 = WTF::StringImpl::destroy(v8, v13);
      }

      if (!*(v5 + 289))
      {
        v47 = WebKit::OriginStorageManager::defaultBucket(v42);
        WebKit::OriginStorageManager::StorageBucket::resolvedPath(v47, 128, &v64);
        WTF::FileSystemImpl::updateFileModificationTime(&v64, v48);
        v8 = v64;
        v64 = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v8 = WTF::StringImpl::destroy(v8, v13);
          }
        }
      }
    }

    if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v8 = WTF::StringImpl::destroy(v43, v13);
    }
  }

  if (!atomic_load((v42 + 8)))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE02A44);
  }

  atomic_fetch_add((v42 + 8), 0xFFFFFFFF);
LABEL_108:
  if (*(v5 + 216) == 1)
  {
    if (*(v5 + 280))
    {
      goto LABEL_114;
    }

    if (*(v5 + 248))
    {
      v50 = *(v5 + 208) * *(v5 + 240);
      goto LABEL_112;
    }

    v8 = WTF::FileSystemImpl::volumeCapacity((v5 + 40), v13);
    if (v57)
    {
      if ((*(v5 + 216) & 1) == 0)
      {
        goto LABEL_141;
      }

      v50 = *(v5 + 208) * ((v8 + 0x3FFFFFFF) & 0xFFFFFFFFC0000000);
      if ((*(v5 + 280) & 1) == 0)
      {
LABEL_112:
        *(v5 + 280) = 1;
      }

      *(v5 + 272) = v50;
LABEL_114:
      if (*(v5 + 264) != 1 || (v51 = *(v5 + 256) + a2, *(v5 + 256) = v51, *(v5 + 264) = 1, v51 > *(v5 + 272)))
      {
        if ((*(v5 + 288) & 1) == 0)
        {
          *(v5 + 288) = 1;
          WTF::RunLoop::mainSingleton(v8);
          v53 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v5 + 8), v52);
          v54 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v53);
          v56 = WTF::fastMalloc(v55, 0x18);
          *v56 = &unk_1F110ACE8;
          v56[1] = v5;
          v56[2] = v54;
          v64 = v56;
          WTF::RunLoop::dispatch();
          v8 = v64;
          v64 = 0;
          if (v8)
          {
            v8 = (*(*v8 + 8))(v8);
          }
        }
      }
    }
  }

  WTF::RunLoop::mainSingleton(v8);
  v58 = v63;
  v63 = 0;
  v60 = WTF::fastMalloc(v59, 0x10);
  *v60 = &unk_1F110ADD8;
  v60[1] = v58;
  v64 = v60;
  WTF::RunLoop::dispatch();
  result = v64;
  v64 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v62 = v63;
  v63 = 0;
  if (v62)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v62 + 8), v61);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1::operator() const(unsigned long long)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F110ADD8;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_1::operator() const(unsigned long long)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110ADD8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

mpark *WTF::checkHashTableKey<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashMapEnsureTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(uint64_t a1)
{
  result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a1);
  if (result)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 24))
  {
    if (*a1 != -1)
    {
      return result;
    }

LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19DE02BE0);
  }

  if (*(a1 + 24) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = (v5 << (6 * *(v3 - 12) >= (2 * v5)));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashMapEnsureTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>::equal<WebCore::ClientOrigin,WebCore::ClientOrigin>(uint64_t a1, uint64_t a2)
{
  result = WebCore::operator==();
  if (result)
  {

    return WebCore::operator==();
  }

  return result;
}

double WTF::HashMapEnsureTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>::translate<WebCore::ClientOrigin const&,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WebKit::NetworkStorageManager::originStorageManager(WebCore::ClientOrigin const&,WebKit::NetworkStorageManager::ShouldWriteOriginFile)::$_0>(uint64_t a1, __n128 *a2, WebCore::SecurityOriginData **a3)
{
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(a1, a2);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((a1 + 32), a2 + 2);
  WebKit::NetworkStorageManager::originStorageManager(WebCore::ClientOrigin const&,WebKit::NetworkStorageManager::ShouldWriteOriginFile)::$_0::operator()(&v9, a3);
  v8 = *(a1 + 64);
  *(a1 + 64) = v9;
  if (v8)
  {

    return WebKit::OriginStorageManager::operator delete(v8, v6);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkStorageManager::originStorageManager(WebCore::ClientOrigin const&,WebKit::NetworkStorageManager::ShouldWriteOriginFile)::$_0::operator()(WebKit::OriginStorageManager *a1, WebCore::SecurityOriginData **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  WebKit::originDirectoryPath(&v18, *a2 + 5, a2[1], *(*a2 + 7));
  WebKit::LocalStorageManager::localStorageFilePath(&v17, (v4 + 136), a2[1]);
  WebKit::IDBStorageManager::idbStorageOriginDirectory(&v16, (v4 + 144), a2[1]);
  WebKit::CacheStorageManager::cacheStorageOriginDirectory((v4 + 160), a2[1], &v15);
  WebKit::CacheStorageManager::copySaltFileToOriginDirectory((v4 + 160), &v15, v5);
  v19 = *(v4 + 24);
  v6 = a2[1];
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v20, v6);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v21, v6 + 32);
  v22 = *(v4 + 296);
  _ZN3WTF8FunctionIFvNS_23ObjectIdentifierGenericIN6WebKit34QuotaIncreaseRequestIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyyyEEC1IZZNS2_21NetworkStorageManager20originStorageManagerERKN7WebCore12ClientOriginENSA_21ShouldWriteOriginFileEENK3__0clEvEUlT_T0_T1_T2_E_vEEOSH_(&v14, &v19, v22);
  WebKit::NetworkStorageManager::originQuotaManagerParameters(WebCore::ClientOrigin const&)::$_0::~$_0(&v19, v7);
  WebKit::NetworkStorageManager::originQuotaManagerParameters(&v19, v4, a2[1]);
  std::make_unique[abi:sn200100]<WebKit::OriginStorageManager,WebKit::OriginQuotaManager::Parameters,WTF::String,WTF::String,WTF::String,WTF::String,WebKit::UnifiedOriginStorageLevel &,0>(a1, &v19, &v18, &v17, &v16, &v15, (v4 + 289));
  WebKit::OriginQuotaManager::Parameters::~Parameters(&v19);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v15;
  v15 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v16;
  v16 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

uint64_t **_ZN3WTF8FunctionIFvNS_23ObjectIdentifierGenericIN6WebKit34QuotaIncreaseRequestIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyyyEEC1IZZNS2_21NetworkStorageManager20originStorageManagerERKN7WebCore12ClientOriginENSA_21ShouldWriteOriginFileEENK3__0clEvEUlT_T0_T1_T2_E_vEEOSH_@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x58);
  v6 = *a2;
  *v5 = &unk_1F110AE00;
  v5[1] = v6;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v5 + 16, (a2 + 1));
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v5 + 48, (a2 + 5));
  v5[10] = a2[9];
  *a1 = v5;
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager20originStorageManagerERKN7WebCore12ClientOriginENS3_21ShouldWriteOriginFileEENK3__0clEvEUlT_T0_T1_T2_E_vJNS_23ObjectIdentifierGenericINS2_34QuotaIncreaseRequestIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyyyEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AE00;
  if (!*(a1 + 72))
  {
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 72) = -1;
  if (!*(a1 + 40))
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager20originStorageManagerERKN7WebCore12ClientOriginENS3_21ShouldWriteOriginFileEENK3__0clEvEUlT_T0_T1_T2_E_vJNS_23ObjectIdentifierGenericINS2_34QuotaIncreaseRequestIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyyyEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110AE00;
  if (!*(this + 72))
  {
    v3 = *(this + 7);
    *(this + 7) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 6);
    *(this + 6) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 72) = -1;
  if (!*(this + 40))
  {
    v5 = *(this + 3);
    *(this + 3) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 2);
    *(this + 2) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 40) = -1;

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager20originStorageManagerERKN7WebCore12ClientOriginENS3_21ShouldWriteOriginFileEENK3__0clEvEUlT_T0_T1_T2_E_vJNS_23ObjectIdentifierGenericINS2_34QuotaIncreaseRequestIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyyyEE4callESJ_yyy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v6 = *(a1 + 80);
  if (v6)
  {
    v7[0] = a1 + 8;
    v7[1] = a1 + 16;
    v7[2] = &v8;
    v7[3] = a3;
    v7[4] = a4;
    v7[5] = a5;
    IPC::Connection::send<Messages::NetworkProcessProxy::IncreaseQuota>(v6, v7);
  }
}

uint64_t std::make_unique[abi:sn200100]<WebKit::OriginStorageManager,WebKit::OriginQuotaManager::Parameters,WTF::String,WTF::String,WTF::String,WTF::String,WebKit::UnifiedOriginStorageLevel &,0>(WebKit::OriginStorageManager *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, char *a7)
{
  v14 = WebKit::OriginStorageManager::operator new(a1, a2);
  result = WebKit::OriginStorageManager::OriginStorageManager(v14, a2, a3, a4, a5, a6, *a7);
  *a1 = result;
  return result;
}

uint64_t WebKit::OriginStorageManager::operator new(WebKit::OriginStorageManager *this, void *a2)
{
  if (WebKit::OriginStorageManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::OriginStorageManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::OriginStorageManager::operatorNewSlow(0x58);
  }
}

void WebKit::OriginQuotaManager::Parameters::~Parameters(WebKit::OriginQuotaManager::Parameters *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a2);
  if (v4)
  {
    goto LABEL_22;
  }

  if (!*(a2 + 24))
  {
    if (*a2 != -1)
    {
      goto LABEL_5;
    }

LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x19DE033E8);
  }

  if (*(a2 + 24) != 1)
  {
LABEL_18:
    mpark::throw_bad_variant_access(v4);
  }

LABEL_5:
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v6;
  v8 = v5 + 72 * v7;
  v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v8);
  if ((v4 & 1) == 0)
  {
    v10 = 1;
    do
    {
      if (*(v8 + 24))
      {
        if (*(v8 + 24) != 1)
        {
          goto LABEL_18;
        }
      }

      else if (*v8 == -1)
      {
        goto LABEL_15;
      }

      if (WebCore::operator==() && (WebCore::operator==() & 1) != 0)
      {
        return v8;
      }

LABEL_15:
      v7 = (v7 + v10) & v6;
      v8 = v5 + 72 * v7;
      v4 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v8);
      ++v10;
    }

    while (!v4);
  }

  if (*a1)
  {
    return *a1 + 72 * *(*a1 - 4);
  }

  return 0;
}

void WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 1)) != 0)
  {
    v5 = (v4 << (6 * *(v3 - 3) >= (2 * v4)));
  }

  else
  {
    v5 = 8;
  }

  WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::WallTime>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::WallTime,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::rehash(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if (*a1)
  {
    LODWORD(v5) = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc(0x48, (72 * a2 + 16));
  v9 = v7;
  v10 = (v7 + 16);
  if (v3)
  {
    bzero((v7 + 16), 72 * v3);
  }

  *a1 = v10;
  v9[2] = v3 - 1;
  v9[3] = v3;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v5 = v5;
    v32 = v4;
    while (1)
    {
      v13 = v4 + 72 * v11;
      if (*(v13 + 24))
      {
        break;
      }

      if (*v13 != -1)
      {
        goto LABEL_10;
      }

LABEL_61:
      if (++v11 == v5)
      {
        goto LABEL_66;
      }
    }

    if (*(v13 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

LABEL_10:
    v7 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v4 + 72 * v11);
    if (v7)
    {
      if (!*(v13 + 56))
      {
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v8);
        }

        v7 = *(v13 + 32);
        *(v13 + 32) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v13 + 56) = -1;
      if (!*(v13 + 24))
      {
        v15 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v8);
        }

        v7 = *v13;
        *v13 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v13 + 24) = -1;
    }

    else
    {
      v16 = v5;
      v17 = v12;
      v18 = *a1;
      if (*a1)
      {
        v19 = *(v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      v20 = WTF::computeHash<WebCore::ClientOrigin>(v13);
      v21 = 0;
      do
      {
        v22 = v20 & v19;
        v23 = v18 + 72 * (v20 & v19);
        v25 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v23);
        v20 = ++v21 + v22;
      }

      while (!v25);
      v12 = v17;
      v5 = v16;
      v4 = v32;
      if (!*(v23 + 56))
      {
        v26 = *(v23 + 40);
        *(v23 + 40) = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v24);
        }

        v27 = *(v23 + 32);
        *(v23 + 32) = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v24);
        }
      }

      *(v23 + 56) = -1;
      if (!*(v23 + 24))
      {
        v28 = *(v23 + 8);
        *(v23 + 8) = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v24);
        }

        v29 = *v23;
        *v23 = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v24);
        }
      }

      *(v23 + 24) = -1;
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v23, v13);
      v7 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v23 + 32), v13 + 32);
      *(v23 + 64) = *(v13 + 64);
      if (!*(v13 + 56))
      {
        v30 = *(v13 + 40);
        *(v13 + 40) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v8);
        }

        v7 = *(v13 + 32);
        *(v13 + 32) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v13 + 56) = -1;
      if (!*(v13 + 24))
      {
        v31 = *(v13 + 8);
        *(v13 + 8) = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v8);
        }

        v7 = *v13;
        *v13 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v7 = WTF::StringImpl::destroy(v7, v8);
        }
      }

      *(v13 + 24) = -1;
      if (v13 == a3)
      {
        v12 = v23;
      }
    }

    goto LABEL_61;
  }

  if (v4)
  {
LABEL_66:

    WTF::fastFree((v4 - 16), v8);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchRegistrableDomainsForPersist(void)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110AE28;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchRegistrableDomainsForPersist(void)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AE28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchRegistrableDomainsForPersist(void)::$_0,void,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::call(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + 16);
  if (result)
  {
    v9[3] = v2;
    v9[4] = v3;
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), v9);
    result = v9[0];
    if (v9[0])
    {
      result = WebKit::NetworkStorageManager::didFetchRegistrableDomainsForPersist(v9[0], a2);
      v8 = v9[0];
      v9[0] = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v8 + 8), v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::didFetchRegistrableDomainsForPersist(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AE50;
  v3 = a1[3];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::didFetchRegistrableDomainsForPersist(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110AE50;
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::didFetchRegistrableDomainsForPersist(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)::$_0,void>::call(uint64_t *a1)
{
  result = a1[2];
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, a1[1], &v22);
    v4 = v22;
    if (v22)
    {
      if (*(v22 + 336) == 1)
      {
        v5 = a1[3];
        a1[3] = 0;
        v6 = *(v4 + 41);
        *(v4 + 41) = v5;
        if (v6)
        {
          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v3);
          v4 = v22;
        }
      }

      else
      {
        *(v22 + 41) = 0;
        v7 = a1[3];
        a1[3] = 0;
        *(v4 + 41) = v7;
        *(v4 + 336) = 1;
      }

      v18[0] = 0;
      v18[1] = 0;
      v8 = *(v4 + 39);
      v19 = v8;
      v9 = *(v4 + 80);
      v10 = *(v4 + 81);
      *(v4 + 39) = 0;
      *(v4 + 40) = 0;
      v20 = v9;
      v21 = v10;
      WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v4 + 312, v18);
      if (v10)
      {
        v12 = (v8 + 72 * v10);
        do
        {
          v13 = WebKit::NetworkStorageManager::persistOrigin(v22, v8);
          v14 = *(v8 + 8);
          *(v8 + 8) = 0;
          (*(*v14 + 16))(v14, v13);
          (*(*v14 + 8))(v14);
          v8 = (v8 + 72);
        }

        while (v8 != v12);
      }

      WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v11);
      result = WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18, v15);
      v17 = v22;
      v22 = 0;
      if (v17)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v17 + 1, v16);
      }
    }
  }

  return result;
}

unint64_t WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 72 * *(a1 + 3) <= a3)
  {
    v10 = *(a1 + 2);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 2);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t *WTF::Vector<std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x38E38E4)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 72 * a2;
      result = WTF::fastMalloc((9 * a2), (72 * a2));
      *(v2 + 2) = v5 / 0x48;
      *v2 = result;
      if (v4)
      {
        v7 = result + 4;
        v8 = 72 * v4;
        v9 = v3 + 32;
        do
        {
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v7 - 32, v9 - 32);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v7, v9);
          v10 = *(v9 + 32);
          *(v9 + 32) = 0;
          v7[4] = v10;
          result = std::pair<WebCore::ClientOrigin,WTF::CompletionHandler<void ()(BOOL)>>::~pair(v9 - 32, v11);
          v7 += 9;
          v9 += 72;
          v8 -= 72;
        }

        while (v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}