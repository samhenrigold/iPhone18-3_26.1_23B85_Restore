WTF **WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String>@<X0>(WTF::StringImpl ***a1@<X0>, WTF::ASCIICaseInsensitiveHash **a2@<X1>, WTF::StringImpl **a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  WTF::checkHashTableKey<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(a2, a2, a3);
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v7) & v9;
  v11 = &v8[2 * v10];
  if ((WTF::equal(*v11, 0, v12) & 1) == 0)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (*v11 == -1)
      {
        v21 = v11;
      }

      else
      {
        result = WTF::equalIgnoringASCIICase(*v11, *a2, v13);
        if (result)
        {
          v23 = *a1;
          if (*a1)
          {
            v24 = *(v23 - 1);
          }

          else
          {
            v24 = 0;
          }

          v20 = 0;
          v19 = &v23[2 * v24];
          goto LABEL_10;
        }
      }

      v10 = (v10 + v22) & v9;
      v11 = &v8[2 * v10];
      ++v22;
    }

    while (!WTF::equal(*v11, 0, v13));
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      --*(*a1 - 4);
      v11 = v21;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>> WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WebCore::RegistrableDomain,WTF::String>(WebCore::RegistrableDomain &&,WTF::String &&)::{lambda(void)#1}>(v11, a2, &v25);
  v15 = *a1;
  if (*a1)
  {
    v16 = *(v15 - 3) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 3) = v16;
  v17 = (*(v15 - 4) + v16);
  v18 = *(v15 - 1);
  if (v18 > 0x400)
  {
    if (v18 > 2 * v17)
    {
      goto LABEL_9;
    }

LABEL_13:
    result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a1, v11);
    v11 = result;
    v15 = *a1;
    if (*a1)
    {
      v18 = *(v15 - 1);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_9;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_13;
  }

LABEL_9:
  v19 = &v15[2 * v18];
  v20 = 1;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  return result;
}

uint64_t WTF::checkHashTableKey<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(WTF **a1, uint64_t a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a1, 0, a3);
  if (result || *a1 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8429C0);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(WTF::StringImpl ***a1, WTF::StringImpl **a2)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>> WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WebCore::RegistrableDomain,WTF::String>(WebCore::RegistrableDomain &&,WTF::String &&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl **a2, WTF::StringImpl ***a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = **a3;
  **a3 = 0;
  result = a1[1];
  a1[1] = v7;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(WTF::StringImpl ***a1, unint64_t a2, WTF::StringImpl **a3)
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
  *a1 = (v9 + 16);
  *(v9 + 8) = v4 - 1;
  *(v9 + 12) = v4;
  *v9 = 0;
  *(v9 + 4) = v8;
  v12 = 0;
  if (v7)
  {
    v14 = v7;
    v15 = v6;
    do
    {
      if (*v15 != -1)
      {
        if (WTF::equal(*v15, 0, v11))
        {
          WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v15, v16);
        }

        else
        {
          v17 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reinsert(a1, v15);
          WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v15, v18);
          if (v15 == a3)
          {
            v12 = v17;
          }
        }
      }

      v15 += 2;
      --v14;
    }

    while (v14);
    goto LABEL_14;
  }

  result = 0;
  if (v6)
  {
LABEL_14:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reinsert(uint64_t *a1, WTF::ASCIICaseInsensitiveHash **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::ASCIICaseInsensitiveHash::hash(*a2, a2);
  v7 = 0;
  do
  {
    v8 = v5 & v4;
    v10 = WTF::equal(*(v3 + 16 * v8), 0, v6);
    v5 = ++v7 + v8;
  }

  while (!v10);
  v11 = (v3 + 16 * v8);
  v12 = v11[1];
  v11[1] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = *v11;
  *v11 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = *a2;
  *a2 = 0;
  *v11 = v14;
  v15 = a2[1];
  a2[1] = 0;
  v11[1] = v15;
  return v11;
}

uint64_t std::optional<WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(uint64_t a1, _DWORD *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

void sub_19D842CAC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,unsigned long long>>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = (*a1 + 16 * v4);
  v7 = *result;
  v8 = result[1];
  *result = 0;
  *v6 = v7;
  v6[1] = v8;
  *(a1 + 12) = v5;
  return result;
}

unint64_t WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(void **a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 3) <= a3)
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

    WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc(0, (16 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 16 * v5);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2, unint64_t a3)
{
  if (result[2] > a2)
  {
    v4 = result;
    v5 = result[3];
    if (v5 > a2)
    {
      result = WTF::VectorDestructor<true,std::pair<WTF::String,unsigned long long>>::destruct((*result + 16 * a2), (*result + 16 * v5));
      v4[3] = a2;
      LODWORD(v5) = a2;
    }

    v6 = *v4;
    if (a2)
    {
      if (v4[2])
      {
        v4[2] = a2;
        result = WTF::fastRealloc(v6, (16 * a2));
        *v4 = result;
        return result;
      }

      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(0, (16 * a2));
      v4[2] = a2;
      *v4 = result;
      if (result != v6)
      {
        result = memcpy(result, v6, 16 * v5);
      }
    }

    if (v6)
    {
      if (*v4 == v6)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v6, a2);
    }
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 12);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v5, v6);
  v8 = result;
  v13[0] = result;
  v13[1] = v9;
  if (*a2)
  {
    v10 = *a2 + 24 * *(*a2 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v8);
      IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (v8 + 1));
      v13[0] += 24;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v13, v11, v12);
      v8 = v13[0];
    }

    while (v13[0] != v10);
  }

  return result;
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v3 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v3 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char>(a1, &v3);
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char>(IPC::Decoder *a1, unsigned __int8 *a2)
{
  v5 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v5 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char>(a1, a2, &v5);
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char>(IPC::Decoder *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v7 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v7 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char>(a1, a2, a3, &v7);
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char>(IPC::Decoder *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v9 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v9 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char>(a1, a2, a3, a4, &v9);
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char>(IPC::Decoder *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v11 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v11 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(a1, a2, a3, a4, a5, &v11);
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(IPC::Decoder *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, _WORD *a6)
{
  v13 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v13 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(a1, a2, a3, a4, a5, a6, &v13);
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(IPC::Decoder *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, _WORD *a6, _WORD *a7)
{
  v15 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v15 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(a1, a2, a3, a4, a5, a6, a7, &v15);
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(IPC::Decoder *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, _WORD *a6, _WORD *a7, _WORD *a8)
{
  v15 = IPC::Decoder::decode<unsigned char>(a1);
  if ((v15 & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(*a2, a2[1], *a3, a3[1], *a4, a4[1], *a5, a5[1], *a6, HIBYTE(*a6), *a7, HIBYTE(*a7), *a8, HIBYTE(*a8), v15, SHIBYTE(v15));
  }

  else
  {
    return 0;
  }
}

unint64_t IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char>(unint64_t result, char a2, unsigned __int8 a3, char a4, unsigned __int8 a5, char a6, unsigned __int8 a7, char a8, unsigned __int8 a9, char a10, unsigned __int8 a11, char a12, unsigned __int8 a13, char a14, unsigned __int8 a15, char a16)
{
  if (a2 & 1) != 0 && (a4 & 1) != 0 && (a6 & 1) != 0 && (a8 & 1) != 0 && (a10 & 1) != 0 && (a12 & 1) != 0 && (a14 & 1) != 0 && (a16)
  {
    return result | (a3 << 8) | (a5 << 16) & 0xFFFFFFFF00FFFFFFLL | (a7 << 24) | (a9 << 32) | (a11 << 40) | (a13 << 48) | (a15 << 56);
  }

  __break(1u);
  return result;
}

uint64_t *IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, void **a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 3);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = &(*a2)[3 * *(*a2 - 1)];
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (v6 + 1));
      do
      {
        v6 += 3;
      }

      while (v6 != v8 && (*v6 + 1) <= 1);
    }

    while (v6 != v9);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 32 * v5;
    do
    {
      IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v6);
      result = IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v6 + 16);
      v6 += 32;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 16 * v5;
    do
    {
      result = IPC::VectorArgumentCoder<false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v6);
      v6 += 16;
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>@<X0>(uint64_t **__return_ptr a1@<X8>, IPC::Decoder *this@<X0>)
{
  v2 = this;
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_37:
    this = IPC::Decoder::markInvalid(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    return this;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_37;
  }

  v10 = 0;
  v11 = *v5;
  v20 = 0;
  if (v11)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::String>(v2, &v18);
      if ((v19 & 1) == 0)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        goto LABEL_28;
      }

      IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v16);
      if ((v17 & 1) == 0)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        goto LABEL_26;
      }

      if ((v19 & 1) == 0)
      {
        break;
      }

      if (v18 + 1 <= 1)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        goto LABEL_25;
      }

      this = WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v20, &v18, v16, &v14);
      if ((v15 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (v17 == 1)
      {
        this = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v12);
      }

      if (v19 == 1)
      {
        this = v18;
        v18 = 0;
        if (this)
        {
          if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            this = WTF::StringImpl::destroy(this, v12);
          }
        }
      }

      if (!--v11)
      {
        v10 = v20;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_35:
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v17)
    {
LABEL_25:
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v12);
    }

LABEL_26:
    if (v19 == 1)
    {
      v13 = v18;
      v18 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }
    }

LABEL_28:
    this = v20;
    if (v20)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, v12);
    }
  }

  else
  {
LABEL_8:
    *a1 = v10;
    *(a1 + 8) = 1;
  }

  return this;
}

void sub_19D843804(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, WTF::StringImpl *a16, char a17)
{
  if (a15)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  }

  if (a17 == 1)
  {
    v19 = a16;
    a16 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, a2);
      }
    }
  }

  v20 = *(v17 - 40);
  if (v20)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl **WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D843A48);
  }

  v7 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*a2 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = (v7 + 24 * (v10 & v8));
    v15 = *v14;
    if (*v14 != -1)
    {
      break;
    }

    v11 = (v7 + 24 * v13);
LABEL_14:
    v10 = i + v13;
  }

  if (!v15)
  {
    if (v11)
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      --*(*a1 - 16);
      v14 = v11;
    }

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WTF::String &&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(v14, a2, &v25);
    v17 = *a1;
    if (*a1)
    {
      v18 = *(v17 - 12) + 1;
    }

    else
    {
      v18 = 1;
    }

    *(v17 - 12) = v18;
    v21 = (*(v17 - 16) + v18);
    v22 = *(v17 - 4);
    if (v22 > 0x400)
    {
      if (v22 <= 2 * v21)
      {
LABEL_24:
        result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v14);
        v14 = result;
        v17 = *a1;
        if (*a1)
        {
          LODWORD(v22) = *(v17 - 4);
        }

        else
        {
          LODWORD(v22) = 0;
        }
      }
    }

    else if (3 * v22 <= 4 * v21)
    {
      goto LABEL_24;
    }

    v24 = v17 + 24 * v22;
    v23 = 1;
    goto LABEL_31;
  }

  result = WTF::equal(v15, *a2, a3);
  if (!result)
  {
    goto LABEL_14;
  }

  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 - 4);
  }

  else
  {
    v20 = 0;
  }

  v23 = 0;
  v24 = v19 + 24 * v20;
LABEL_31:
  *a4 = v14;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WTF::String &&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl **a2, uint64_t **a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *a3;
  v8 = **a3;
  *v7 = 0;
  v12[0] = v8;
  v9 = v7[1];
  v7[1] = 0;
  v12[1] = v9;
  WTF::GenericHashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::assignToEmpty<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((a1 + 1), v12);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v10);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
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

  v9 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = v4 - 1;
  v9[3] = v4;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      if (*v12 != -1)
      {
        if (*v12)
        {
          v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 + 8, v16);
          v18 = *v15;
          *v15 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v17);
          }

          v19 = *v12;
          *v12 = 0;
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *v15 = v19;
          WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v15 + 8, (v12 + 8));
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 8, v20);
          v21 = *v12;
          *v12 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v10);
          }

          if (v12 == a3)
          {
            v11 = v15;
          }
        }

        else
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12 + 8, v10);
          v14 = *v12;
          *v12 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v10);
            }
          }
        }
      }

      v12 += 24;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

void sub_19D843CB4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::GenericHashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::assignToEmpty<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*a1, (*a1 + 8 * v4));
  }

  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
}

uint64_t IPC::Decoder::decode<WebCore::CustomHeaderFields>(uint64_t a1, IPC::Decoder *a2)
{
  v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v8 >= v6 - v7 && v8 - (v6 - v7) > 7)
  {
    *(a2 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_60;
    }

    v10 = *v6;
    v50 = 0uLL;
    if (v10 < 0x10000)
    {
      if (!v10)
      {
LABEL_22:
        v52 = v50;
        v3 = DWORD2(v50);
        v2 = HIDWORD(v50);
        v50 = 0uLL;
        v53 = __PAIR64__(v2, v3);
        v22 = 1;
        v54 = 1;
        WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v7);
        goto LABEL_40;
      }

      DWORD2(v50) = v10;
      *&v50 = WTF::fastMalloc(v6, (16 * v10));
      v2 = -2;
      while (1)
      {
        IPC::Decoder::decode<WebCore::HTTPHeaderField>(v48, a2);
        if ((v49 & 1) == 0)
        {
          goto LABEL_37;
        }

        if (HIDWORD(v50) != DWORD2(v50))
        {
          break;
        }

        v11 = WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, HIDWORD(v50) + 1, v48);
        v12 = HIDWORD(v50) + 1;
        v13 = (v50 + 16 * HIDWORD(v50));
        v14 = *v11;
        *v11 = 0;
        *v13 = v14;
        v15 = v11[1];
        v11[1] = 0;
        v13[1] = v15;
        HIDWORD(v50) = v12;
        if (v49)
        {
          goto LABEL_15;
        }

LABEL_21:
        if (!--v10)
        {
          goto LABEL_22;
        }
      }

      v16 = HIDWORD(v50) + 1;
      v17 = (v50 + 16 * HIDWORD(v50));
      v18 = v48[0];
      v48[0] = 0;
      *v17 = v18;
      v19 = v48[1];
      v48[1] = 0;
      v17[1] = v19;
      HIDWORD(v50) = v16;
LABEL_15:
      v20 = v48[1];
      v48[1] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v7);
      }

      v21 = v48[0];
      v48[0] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v7);
      }

      goto LABEL_21;
    }

    v2 = -2;
    while (1)
    {
      IPC::Decoder::decode<WebCore::HTTPHeaderField>(v48, a2);
      if ((v49 & 1) == 0)
      {
LABEL_37:
        LOBYTE(v52) = 0;
        v54 = 0;
        WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v7);
        goto LABEL_38;
      }

      if (HIDWORD(v50) != DWORD2(v50))
      {
        break;
      }

      v23 = WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, HIDWORD(v50) + 1, v48);
      v24 = HIDWORD(v50) + 1;
      v25 = (v50 + 16 * HIDWORD(v50));
      v26 = *v23;
      *v23 = 0;
      *v25 = v26;
      v27 = v23[1];
      v23[1] = 0;
      v25[1] = v27;
      HIDWORD(v50) = v24;
      if (v49)
      {
        goto LABEL_29;
      }

LABEL_35:
      if (!--v10)
      {
        WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v50, HIDWORD(v50));
        goto LABEL_22;
      }
    }

    v28 = HIDWORD(v50) + 1;
    v29 = (v50 + 16 * HIDWORD(v50));
    v30 = v48[0];
    v48[0] = 0;
    *v29 = v30;
    v31 = v48[1];
    v48[1] = 0;
    v29[1] = v31;
    HIDWORD(v50) = v28;
LABEL_29:
    v32 = v48[1];
    v48[1] = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v7);
    }

    v33 = v48[0];
    v48[0] = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v7);
    }

    goto LABEL_35;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v46 = *(a2 + 3);
  if (v46)
  {
    if (v8)
    {
      (*(*v46 + 16))(v46);
      v7 = *a2;
      v8 = *(a2 + 1);
      goto LABEL_60;
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = 0;
LABEL_60:
  *a2 = 0;
  *(a2 + 1) = 0;
  v47 = *(a2 + 3);
  if (v47 && v8)
  {
    (*(*v47 + 16))(v47, v7);
  }

  LOBYTE(v52) = 0;
  v54 = 0;
LABEL_38:
  v34 = *a2;
  v35 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v36 = *(a2 + 3);
  if (v36 && v35)
  {
    (*(*v36 + 16))(v36, v34);
  }

  v22 = 0;
LABEL_40:
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v50);
  v40 = *a2;
  if (*a2)
  {
    if (v22)
    {
      v41 = v52;
      v52 = 0;
      v53 = 0;
      if (v51)
      {
        *&v39 = 0;
        v42 = v50;
        v49 = v39;
        v50 = v39;
        *a1 = v41;
        *(a1 + 8) = v3;
        *(a1 + 12) = v2;
        *v48 = v39;
        *(a1 + 16) = v42;
        *(a1 + 32) = 1;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v38);
        result = WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v48, v43);
        goto LABEL_44;
      }
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
LABEL_44:
  if (v51 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v38);
  }

  if (v54 == 1)
  {
    result = WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v38);
  }

  if (!v40)
  {
    v44 = *a2;
    v45 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v45)
      {
        return (*(*result + 16))(result, v44);
      }
    }
  }

  return result;
}

void sub_19D844170(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a11 == 1)
  {
    if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }

    if (a9)
    {
      if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a9, a2);
      }
    }
  }

  WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  _Unwind_Resume(a1);
}

uint64_t std::optional<WebCore::CustomHeaderFields>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
    WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, v3);
  }

  return a1;
}

WTF *WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CustomHeaderFields>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 32 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  v4[2] = 0;
  v4[3] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v4 + 2), v3 + 4);
  ++*(a1 + 12);
  return result;
}

void sub_19D8442AC(_Unwind_Exception *a1, void *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v5, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  _Unwind_Resume(a1);
}

unint64_t WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 32 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 27))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = (*result + 32 * v5);
    v7 = WTF::fastMalloc(v5, (32 * a2));
    *(v3 + 8) = v2;
    *v3 = v7;
    WTF::VectorMover<false,WebCore::CustomHeaderFields>::move(v4, v6, v7);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v8);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

_DWORD *WTF::VectorMover<false,WebCore::CustomHeaderFields>::move(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 16);
    do
    {
      *(v5 - 2) = 0;
      *(v5 - 1) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v5 - 2), v4);
      v6 = v4 + 4;
      *v5 = 0;
      v5[1] = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v5, v4 + 4);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v4 + 4), v7);
      result = WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v8);
      v5 += 4;
      v4 += 8;
    }

    while (v6 + 4 != a2);
  }

  return result;
}

void sub_19D8444BC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 - 16);
  if (v4)
  {
    *(v2 - 16) = 0;
    *(v2 - 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t *result, unint64_t a2)
{
  if (*(result + 2) > a2)
  {
    v3 = result;
    v4 = *(result + 3);
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,WebCore::CustomHeaderFields>::destruct((*result + 32 * a2), (*result + 32 * v4));
      *(v3 + 3) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(0, (32 * a2));
      *(v3 + 2) = a2;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::CustomHeaderFields>::move(v5, v5 + 8 * v4, result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 16 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  ++*(a1 + 12);
  return 1;
}

void sub_19D84463C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 3) <= a3)
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

    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = (*result + 16 * v5);
    v7 = WTF::fastMalloc(v5, (16 * a2));
    *(v3 + 8) = v2;
    *v3 = v7;
    WTF::VectorMover<false,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v4, v6, v7);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v8);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

_DWORD *WTF::VectorMover<false,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(_DWORD *result, _DWORD *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, v5);
      result = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      a3 += 2;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_19D84480C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t *result, WTF::StringImpl *a2)
{
  if (*(result + 2) > a2)
  {
    v3 = result;
    v4 = *(result + 3);
    if (v4 > a2)
    {
      result = (*result + 16 * a2);
      v5 = 16 * v4 - 16 * a2;
      do
      {
        result = (WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2) + 16);
        v5 -= 16;
      }

      while (v5);
      *(v3 + 3) = a2;
      LODWORD(v4) = a2;
    }

    v6 = *v3;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(0, (16 * a2));
      *(v3 + 2) = a2;
      *v3 = result;
      if (result != v6)
      {
        result = WTF::VectorMover<false,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v6, v6 + 4 * v4, result);
      }
    }

    if (v6)
    {
      if (*v3 == v6)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v6, a2);
    }
  }

  return result;
}

mpark *IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(IPC::Encoder *a1, unint64_t a2)
{
  if (*(a2 + 88))
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 88))
    {
      v10 = *(a2 + 80);
      IPC::Encoder::operator<<<BOOL>(a1, &v10);
      return IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>(a1, a2, v10);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>(v5, v6, v7);
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>(mpark *a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,0ul>(a1, a2, a3);
  }

  else
  {
    if (*(a2 + 80))
    {
      mpark::throw_bad_variant_access(a1);
    }

    return IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::encode(a1, a2);
  }
}

mpark *IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,0ul>(mpark *result, unint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (*(a2 + 80) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }

    return IPC::Encoder::addAttachment(result, a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::IntRect>,void>::encode<IPC::Encoder,std::optional<WebCore::IntRect>>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

WTF::MachSendRight *IPC::ArgumentCoder<std::optional<WebCore::IntRect>,void>::encode<IPC::Encoder,std::optional<WebCore::IntRect>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::decode<IPC::Decoder>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

WTF::MachSendRight *IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_14;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_14:
    IPC::Decoder::markInvalid(this);
    goto LABEL_15;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_15:
    result = IPC::Decoder::markInvalid(this);
LABEL_16:
    *a2 = 0;
    a2[96] = 0;
    return result;
  }

  if (v5)
  {
    IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::decode<IPC::Decoder>(this, v7);
    if ((v8 & 1) == 0)
    {
      result = IPC::Decoder::markInvalid(this);
      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::move_constructor(a2, v7);
    a2[88] = 1;
    a2[96] = 1;
    if (v8)
    {
      return mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v7);
    }
  }

  else
  {
    LOBYTE(v7[0]) = 0;
    v8 = 0;
    result = std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](a2, v7);
    a2[96] = 1;
    if (v8 == 1)
    {
      return mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v7);
    }
  }

  return result;
}

void sub_19D844C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&a9);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::decode<IPC::Decoder>(IPC::Decoder *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 2);
  if (*(result + 1) <= &v2[-*result])
  {
    v4 = result;
    v5 = a2;
    IPC::Decoder::markInvalid(result);
    result = v4;
    a2 = v5;
    goto LABEL_8;
  }

  *(result + 2) = v2 + 1;
  if (!v2)
  {
LABEL_8:
    v6 = a2;
    IPC::Decoder::markInvalid(result);
    a2 = v6;
    goto LABEL_9;
  }

  v3 = *v2;
  if (v3 >= 2)
  {
LABEL_9:
    *a2 = 0;
    a2[88] = 0;
    return;
  }

  IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::decode<IPC::Decoder>(result, v3, a2);
}

void IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2)
  {

    IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::decode<IPC::Decoder,0ul>(a1, a2, a3);
  }

  else
  {
    IPC::Decoder::decode<WebCore::ShareableBitmapHandle>(v5, a1);
    if (v8 == 1)
    {
      WebCore::ShareableBitmapHandle::ShareableBitmapHandle(a3, v5);
      a3[80] = 0;
      a3[88] = 1;
      if (v8)
      {
        if (v7 == 1)
        {
          v4 = cf;
          cf = 0;
          if (v4)
          {
            CFRelease(v4);
          }
        }

        WTF::MachSendRight::~MachSendRight(v5);
      }
    }

    else
    {
      *a3 = 0;
      a3[88] = 0;
    }
  }
}

void sub_19D844D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::optional<WebCore::ShareableBitmapHandle>::~optional(va);
  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,void>::decode<IPC::Decoder,0ul>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 == 1 && (IPC::Decoder::takeLastAttachment(&v4, a1), BYTE4(v4) == 1))
  {
    WTF::MachSendRight::MachSendRight();
    a3[80] = 1;
    a3[88] = 1;
    if ((v4 & 0x100000000) != 0)
    {
      WTF::MachSendRight::~MachSendRight(&v4);
    }
  }

  else
  {
    *a3 = 0;
    a3[88] = 0;
  }
}

void sub_19D844DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int16 a10, __int16 a11, char a12, char a13)
{
  if (a12 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2 == 0);
  if (v4)
  {
    if (*a2)
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
      v6 = a2[1];

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v6);
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

void IPC::Decoder::decode<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(uint64_t a1, IPC::Decoder *a2)
{
  v123[2] = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(&v102, a2);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *a2;
  if (v6 <= &v7[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v74 = *(a2 + 3);
    if (v74)
    {
      if (v6)
      {
        (*(*v74 + 16))(v74);
        v6 = *(a2 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_136:
    *a2 = 0;
    *(a2 + 1) = 0;
    v75 = *(a2 + 3);
    if (v75)
    {
      if (v6)
      {
        (*(*v75 + 16))(v75);
        v8 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_139;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_139;
  }

  v9 = v7 + 1;
  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_136;
  }

  v10 = *v7;
  if (v10 < 0x12)
  {
    v11 = v10 | 0x100;
    goto LABEL_5;
  }

LABEL_139:
  *a2 = 0;
  *(a2 + 1) = 0;
  v76 = *(a2 + 3);
  if (!v76)
  {
    v20 = 0;
    v11 = 0;
    v6 = 0;
LABEL_141:
    v8 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    goto LABEL_142;
  }

  if (!v6)
  {
    v20 = 0;
    v11 = 0;
    goto LABEL_141;
  }

  (*(*v76 + 16))(v76, v8);
  v11 = 0;
  v8 = *a2;
  v6 = *(a2 + 1);
  v9 = *(a2 + 2);
LABEL_5:
  if (v6 <= v9 - v8)
  {
    v89 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v89)
    {
      if (v6)
      {
        (*(*v89 + 16))(v89);
        v8 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_174;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_174:
    v20 = v11;
LABEL_142:
    *a2 = 0;
    *(a2 + 1) = 0;
    v77 = *(a2 + 3);
    if (v77)
    {
      if (v6)
      {
        (*(*v77 + 16))(v77, v8);
        v8 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_145;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_145:
    *a2 = 0;
    *(a2 + 1) = 0;
    v78 = *(a2 + 3);
    if (v78 && v6)
    {
      (*(*v78 + 16))(v78, v8);
    }

    goto LABEL_146;
  }

  *(a2 + 2) = v9 + 1;
  if (!v9)
  {
    goto LABEL_174;
  }

  v12 = *v9;
  if (v12 >= 2)
  {
    v20 = v11;
    goto LABEL_145;
  }

  if (v12)
  {
    IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a2, v115);
    v13 = v115[16];
    if ((v115[16] & 1) == 0)
    {
      v59 = *a2;
      v60 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v61 = *(a2 + 3);
      if (v61)
      {
        if (v60)
        {
          (*(*v61 + 16))(v61, v59);
        }
      }
    }

    v2 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
    v15 = v14;
    v3 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
    v17 = v16;
    v8 = *a2;
    if (*a2)
    {
      if ((v13 & 1) == 0 || (v15 & 1) == 0 || (v17 & 1) == 0)
      {
        goto LABEL_97;
      }

      v18 = v115[0];
      v123[0] = *&v115[1];
      *(v123 + 7) = *&v115[8];
      v19 = 1;
      v20 = v11;
      goto LABEL_15;
    }

    v62 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v63 = *(a2 + 3);
    if (v63 && v62)
    {
      (*(*v63 + 16))(v63, 0);
    }

    v20 = v11;
LABEL_146:
    v79 = *a2;
    v80 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v81 = *(a2 + 3);
    if (v81 && v80)
    {
      (*(*v81 + 16))(v81, v79);
      v19 = 0;
      v18 = 0;
      v8 = *a2;
    }

    else
    {
      v8 = 0;
      v19 = 0;
      v18 = 0;
    }

LABEL_15:
    v21 = 1;
    goto LABEL_17;
  }

  v18 = 0;
  v21 = 0;
  v19 = 1;
  v20 = v11;
LABEL_17:
  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  if (v22 <= v23 - v8)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v82 = *(a2 + 3);
    if (v82)
    {
      if (v22)
      {
        (*(*v82 + 16))(v82);
        v22 = *(a2 + 1);
      }
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_158;
  }

  *(a2 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_158:
    *a2 = 0;
    *(a2 + 1) = 0;
    v83 = *(a2 + 3);
    if (!v83 || !v22)
    {
      goto LABEL_20;
    }

    v65 = *(*v83 + 16);
    goto LABEL_109;
  }

  v24 = *v23;
  if (v24 > 3)
  {
LABEL_20:
    LOBYTE(v118) = 0;
    v122 = 0;
LABEL_21:
    v8 = *a2;
    v25 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26 && v25)
    {
      (*(*v26 + 16))(v26, v8);
    }

    goto LABEL_84;
  }

  if (!*v23)
  {
    if (v8)
    {
      v121 = 0;
      v122 = 1;
      goto LABEL_84;
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v64 = *(a2 + 3);
    if (!v64)
    {
      goto LABEL_20;
    }

    v65 = *(*v64 + 16);
LABEL_109:
    v65();
    goto LABEL_20;
  }

  v100 = v21;
  if (v24 != 1)
  {
    if (v24 == 2)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a2, &v104);
      IPC::Decoder::decode<WTF::String>(a2, &v113);
      v99 = v18;
      IPC::Decoder::decode<WTF::URL>(a2, v115);
      v40 = *a2;
      if (*a2)
      {
        if ((v105 & 1) == 0)
        {
          goto LABEL_97;
        }

        if ((v114 & 1) == 0)
        {
          goto LABEL_97;
        }

        v41 = v113;
        v113 = 0;
        v111 = v41;
        if ((v115[40] & 1) == 0)
        {
          goto LABEL_97;
        }

        v42 = *v115;
        *v115 = 0;
        v108 = v42;
        *v109 = *&v115[8];
        v110 = *&v115[24];
        *&v115[8] &= ~1u;
        WebCore::Model::create();
        v43 = v112;
        v112 = 0;
        v44 = v108;
        v108 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v8);
        }

        v45 = v111;
        v111 = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v8);
        }
      }

      else
      {
        v43 = 0;
      }

      if (v115[40] == 1)
      {
        v46 = *v115;
        *v115 = 0;
        if (v46)
        {
          if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v46, v8);
          }
        }
      }

      if (v114 == 1)
      {
        v47 = v113;
        v113 = 0;
        if (v47)
        {
          if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v47, v8);
          }
        }
      }

      if (v105 == 1 && (v48 = v104, v104 = 0, v48) && atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v48 + 2);
        (*(*v48 + 8))(v48);
        if (v40)
        {
          goto LABEL_80;
        }
      }

      else if (v40)
      {
LABEL_80:
        v49 = 2;
        v18 = v99;
LABEL_83:
        v118 = v43;
        v121 = v49;
        v122 = 1;
        v21 = v100;
        goto LABEL_84;
      }

      v53 = *a2;
      v54 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v55 = *(a2 + 3);
      v18 = v99;
      if (v55 && v54)
      {
        (*(*v55 + 16))(v55, v53);
      }
    }

    else
    {
      v50 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
      if (v8)
      {
        v43 = v50;
        v49 = 3;
        goto LABEL_83;
      }
    }

    LOBYTE(v118) = 0;
    v122 = 0;
    v21 = v100;
    goto LABEL_21;
  }

  v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = ((v23 & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v22 < v28 - v8 || v22 - (v28 - v8) <= 3)
  {
    v84 = 0;
    v85 = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    v86 = *(a2 + 3);
    if (v86)
    {
      (*(*v86 + 16))(v86);
      v85 = *a2;
      v84 = *(a2 + 1);
    }
  }

  else
  {
    *(a2 + 2) = v27 + 8;
    if (v28)
    {
      v97 = *v28 | 0x100000000;
      goto LABEL_30;
    }

    v84 = v22;
    v85 = v8;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v87 = *(a2 + 3);
  if (v87 && v84)
  {
    (*(*v87 + 16))(v87, v85, v84);
  }

  v97 = 0;
LABEL_30:
  IPC::ArgumentCoder<std::optional<WTF::MachSendRightAnnotated>,void>::decode<IPC::Decoder>(a2, &v104);
  v29 = *(a2 + 1);
  if ((v107 & 1) == 0)
  {
    v66 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v67 = *(a2 + 3);
    if (v67)
    {
      if (v29)
      {
        (*(*v67 + 16))(v67, v66);
        v29 = *(a2 + 1);
      }
    }

    else
    {
      v29 = 0;
    }
  }

  v8 = *a2;
  v30 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v31 = v30 - *a2;
  v32 = v29 >= v31;
  v33 = v29 - v31;
  v96 = v20;
  v94 = v3;
  v95 = v2;
  v98 = v18;
  if (v32 && v33 > 3)
  {
    v34 = (v30 + 1);
    *(a2 + 2) = v30 + 1;
    if (v30)
    {
      v35 = *v30 | 0x100000000;
      goto LABEL_36;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v90 = *(a2 + 3);
    if (v90)
    {
      if (v29)
      {
        (*(*v90 + 16))(v90);
        v29 = *(a2 + 1);
      }
    }

    else
    {
      v29 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v91 = *(a2 + 3);
  if (!v91)
  {
    LODWORD(v35) = 0;
    v38 = 0;
    v29 = 0;
LABEL_179:
    v8 = 0;
LABEL_180:
    *a2 = 0;
    *(a2 + 1) = 0;
    v92 = *(a2 + 3);
    if (v92)
    {
      if (v29)
      {
        (*(*v92 + 16))(v92, v8);
        v36 = 0;
        v8 = *a2;
        v29 = *(a2 + 1);
        goto LABEL_183;
      }
    }

    else
    {
      v29 = 0;
    }

    v8 = 0;
    v36 = 0;
    goto LABEL_183;
  }

  if (!v29)
  {
    LODWORD(v35) = 0;
    v38 = 0;
    goto LABEL_179;
  }

  (*(*v91 + 16))(v91);
  v35 = 0;
  v8 = *a2;
  v29 = *(a2 + 1);
  v34 = *(a2 + 2);
LABEL_36:
  if (v29 <= v34 - v8)
  {
    v88 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v88)
    {
      if (v29)
      {
        (*(*v88 + 16))(v88);
        v8 = *a2;
        v29 = *(a2 + 1);
        goto LABEL_170;
      }
    }

    else
    {
      v29 = 0;
    }

    v8 = 0;
LABEL_170:
    v38 = v35;
    goto LABEL_180;
  }

  *(a2 + 2) = v34 + 1;
  if (!v34)
  {
    goto LABEL_170;
  }

  v36 = *v34;
  if (v36 < 2)
  {
    v37 = 1;
    v38 = v35;
    goto LABEL_40;
  }

  v38 = v35;
LABEL_183:
  *a2 = 0;
  *(a2 + 1) = 0;
  v93 = *(a2 + 3);
  if (!v93 || !v29)
  {
LABEL_184:
    v115[0] = 0;
    v115[40] = 0;
    v3 = v94;
    v2 = v95;
    v21 = v100;
    goto LABEL_49;
  }

  (*(*v93 + 16))(v93, v8);
  v37 = 0;
  v8 = *a2;
LABEL_40:
  if (v36)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (!v8)
  {
    goto LABEL_184;
  }

  if ((v97 & 0x100000000) == 0 || (LODWORD(v108) = v97, (v107 & 1) == 0) || (std::__optional_move_base<WTF::MachSendRightAnnotated,false>::__optional_move_base[abi:sn200100](v109, &v104), (v38 & 0x100000000) == 0) || (DWORD2(v110) = v35, (v37 & 1) == 0))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  BYTE12(v110) = v39;
  *v115 = v108;
  std::__optional_move_base<WTF::MachSendRightAnnotated,false>::__optional_move_base[abi:sn200100](&v115[8], v109);
  v21 = v100;
  *&v115[32] = DWORD2(v110);
  v115[36] = BYTE12(v110);
  v115[40] = 1;
  v3 = v94;
  v2 = v95;
  if (v110 == 1)
  {
    v71 = v109[1];
    v109[1] = 0;
    if (v71)
    {
      WTF::fastFree(v71, v8);
    }

    WTF::MachSendRight::~MachSendRight(v109);
  }

LABEL_49:
  v20 = v96;
  if (v107 == 1 && v106 == 1)
  {
    v72 = v105;
    v105 = 0;
    if (v72)
    {
      WTF::fastFree(v72, v8);
    }

    WTF::MachSendRight::~MachSendRight(&v104);
  }

  if ((v115[40] & 1) == 0)
  {
    v68 = *a2;
    v69 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v70 = *(a2 + 3);
    if (!v70 || !v69 || ((*(*v70 + 16))(v70, v68), (v115[40] & 1) == 0))
    {
      LOBYTE(v118) = 0;
      v122 = 0;
      v18 = v98;
      goto LABEL_21;
    }
  }

  LODWORD(v118) = *v115;
  std::__optional_move_base<WTF::MachSendRightAnnotated,false>::__optional_move_base[abi:sn200100](v119, &v115[8]);
  v119[6] = *&v115[32];
  v120 = v115[36];
  v121 = 1;
  v122 = 1;
  if ((v115[40] & 1) == 0 || v115[24] != 1)
  {
    v18 = v98;
    goto LABEL_84;
  }

  v73 = *&v115[16];
  *&v115[16] = 0;
  if (v73)
  {
    WTF::fastFree(v73, v8);
  }

  WTF::MachSendRight::~MachSendRight(&v115[8]);
  v18 = v98;
  if ((v122 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_84:
  if (*a2)
  {
    if (v103 & 1) != 0 && v11 > 0xFF && (v19 & 1) != 0 && (v122)
    {
      *v115 = v102;
      v115[16] = v20;
      v115[24] = v18;
      *&v115[25] = v123[0];
      *&v115[32] = *(v123 + 7);
      *&v115[40] = v2;
      *&v115[48] = v3;
      v115[56] = v21;
      *v116 = *v101;
      *&v116[3] = *&v101[3];
      mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor(v117, &v118);
      v51 = *&v115[16];
      *a1 = *v115;
      *(a1 + 16) = v51;
      *(a1 + 32) = *&v115[32];
      *(a1 + 41) = *&v115[41];
      mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor((a1 + 64), v117);
      *(a1 + 112) = 1;
      mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(v117, v52);
      goto LABEL_90;
    }

    goto LABEL_97;
  }

LABEL_98:
  *a1 = 0;
  *(a1 + 112) = 0;
LABEL_90:
  if (v122 == 1)
  {
    mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v118, v8);
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v56 = *a2;
    v57 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v58 = *(a2 + 3);
    if (v58)
    {
      if (v57)
      {
        (*(*v58 + 16))(v58, v56);
      }
    }
  }
}

void sub_19D845BE4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF *a19, char a20, int a21, __int16 a22, char a23, char a24, WTF::StringImpl *a25, uint64_t a26, WTF *a27, char a28, uint64_t a29, WTF::StringImpl *a30, uint64_t a31, WTF::StringImpl *a32, char a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42)
{
  if (a22 == 1 && a20 == 1)
  {
    v43 = a19;
    a19 = 0;
    if (v43)
    {
      WTF::fastFree(v43, a2);
    }

    WTF::MachSendRight::~MachSendRight(&a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 112 * *(a1 + 12);
  v5 = *v3;
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  *(v4 + 41) = *(v3 + 41);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  result = mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor((v4 + 64), (v3 + 64));
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 112 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t *WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x2492493)
    {
      __break(0xC471u);
      JUMPOUT(0x19D846014);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 112 * *(result + 3));
    v5 = 112 * a2;
    v6 = WTF::fastMalloc((a2 << 7), (112 * a2));
    *(v2 + 8) = (613566757 * (v5 >> 4)) >> 32;
    *v2 = v6;
    result = WTF::VectorMover<false,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      return WTF::fastFree(v3, v7);
    }
  }

  return result;
}

uint64_t *WTF::VectorMover<false,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>::move(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 64);
    do
    {
      v6 = *v4;
      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      *(v5 - 23) = *(v4 + 41);
      *(v5 - 3) = v7;
      *(v5 - 2) = v8;
      *(v5 - 4) = v6;
      mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor(v5, v4 + 8);
      result = mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(v4 + 8, v9);
      v4 += 14;
      v5 += 112;
    }

    while (v4 != a2);
  }

  return result;
}

WTF *IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      if (v4)
      {
        (*(*v20 + 16))(v20);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_30;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_30:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v4)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *v5;
  v23 = 0;
  v24 = 0;
  if (v11 >= 0x20000)
  {
    while (1)
    {
      v18 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v21 = v18;
      v22 = v6;
      if ((v6 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v24) == v24)
      {
        v16 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, &v21);
        *(v23 + HIDWORD(v24)) = *v16;
      }

      else
      {
        *(v23 + HIDWORD(v24)) = v18;
      }

      v17 = ++HIDWORD(v24);
      if (!--v11)
      {
        WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v23, v17);
        v14 = HIDWORD(v24);
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!v11)
    {
      v14 = 0;
LABEL_17:
      v15 = v23;
      v23 = 0;
      *a2 = v15;
      HIDWORD(v24) = 0;
      *(a2 + 8) = v24;
      *(a2 + 12) = v14;
      *(a2 + 16) = 1;
      goto LABEL_24;
    }

    LODWORD(v24) = v11;
    v23 = WTF::fastMalloc(v5, (8 * v11));
    while (1)
    {
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v21 = v12;
      v22 = v6;
      if ((v6 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v24) == v24)
      {
        v13 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, &v21);
        *(v23 + HIDWORD(v24)) = *v13;
      }

      else
      {
        *(v23 + HIDWORD(v24)) = v12;
      }

      v14 = ++HIDWORD(v24);
      if (!--v11)
      {
        goto LABEL_17;
      }
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_24:
  result = v23;
  if (v23)
  {
    v23 = 0;
    LODWORD(v24) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void sub_19D8462B8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t *result, unint64_t a2)
{
  if (*(result + 2) > a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 3);
    if (v4 > a2)
    {
      *(result + 3) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *result;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(0, (8 * a2));
      *(v3 + 2) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 8 * v4;
        v7 = v5;
        do
        {
          v8 = *v7++;
          *result++ = v8;
          v6 -= 8;
        }

        while (v6);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

_BYTE *std::__optional_move_base<WebCore::FixedContainerEdges,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[64] = 0;
  if (*(a2 + 64) == 1)
  {
    WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(a1, a2);
    a1[64] = 1;
  }

  return a1;
}

void sub_19D84640C(_Unwind_Exception *exception_object, void *a2)
{
  v3 = v2;
  if (*(v3 + 64) == 1)
  {
    v5 = v3 + 48;
    v6 = -64;
    do
    {
      v5 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v5, a2) - 16;
      v6 += 16;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WebKit::EditorState>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::EditorState,void>::decode(a1, a2);
  if ((a2[544] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D8464B8(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 544) == 1)
  {
    if (*(v2 + 528) == 1)
    {
      v4 = *(v2 + 424);
      if (v4)
      {
        *(v2 + 424) = 0;
        *(v2 + 432) = 0;
        WTF::fastFree(v4, a2);
      }

      v5 = *(v2 + 352);
      if (v5)
      {
        *(v2 + 352) = 0;
        *(v2 + 360) = 0;
        WTF::fastFree(v5, a2);
      }

      v6 = *(v2 + 336);
      if (v6)
      {
        *(v2 + 336) = 0;
        *(v2 + 344) = 0;
        WTF::fastFree(v6, a2);
      }
    }

    if (*(v2 + 256) == 1)
    {
      WebKit::EditorState::PostLayoutData::~PostLayoutData((v2 + 32), a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__optional_move_base<WebKit::EditorState,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[544] = 0;
  if (*(a2 + 544) == 1)
  {
    std::__optional_storage_base<WebKit::EditorState,false>::__construct[abi:sn200100]<WebKit::EditorState>(a1, a2);
  }

  return a1;
}

_DWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
    if (v4)
    {
      v6 = v4 << (6 * v5 >= 2 * v4);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = 8;
LABEL_6:
  result = WTF::fastZeroedMalloc((24 * v6 + 16));
  *a1 = (result + 4);
  result[2] = v6 - 1;
  result[3] = v6;
  *result = 0;
  result[1] = v5;
  if (v4)
  {
    v9 = 0;
    v10 = v4;
    do
    {
      v11 = v3 + 24 * v9;
      if (*(v11 + 8) != -1)
      {
        if (*v11 == 0)
        {
          std::unique_ptr<WebKit::LayerProperties>::reset[abi:sn200100]((v11 + 16), 0);
        }

        else
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v3 + 24 * v9));
          v15 = 0;
          do
          {
            v16 = v12 + 24 * (v14 & v13);
            v14 = ++v15 + (v14 & v13);
          }

          while (*v16 != 0);
          std::unique_ptr<WebKit::LayerProperties>::reset[abi:sn200100]((v16 + 16), 0);
          *v16 = *v11;
          v17 = *(v11 + 16);
          *(v11 + 16) = 0;
          *(v16 + 16) = v17;
          std::unique_ptr<WebKit::LayerProperties>::reset[abi:sn200100]((v11 + 16), 0);
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }

  else if (!v3)
  {
    return result;
  }

  return WTF::fastFree((v3 - 16), v8);
}

uint64_t WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(void *a1)
{
  v10 = 0;
  v11 = 0;
  v1 = a1[1];
  v2 = (*a1 >> 5) & 0x7FFF800 ^ ((*a1 - 1640531527) << 16) ^ (*a1 - 1640531527);
  v3 = v2 + WORD2(*a1);
  v4 = (*a1 >> 37) & 0x7FFF800 ^ ((v3 + (v2 >> 11)) << 16) ^ (v3 + (v2 >> 11));
  v5 = (v1 >> 5) & 0x7FFF800 ^ ((v4 + v1 + (v4 >> 11)) << 16) ^ (v4 + v1 + (v4 >> 11));
  v6 = v5 + WORD2(v1) + (v5 >> 11);
  v7 = (v1 >> 37) & 0x7FFF800 ^ (v6 << 16);
  v9 = (v7 ^ v6) + ((v7 ^ v6) >> 11);
  return WTF::SuperFastHash::hash(&v9);
}

void IPC::ArgumentCoder<std::optional<WTF::MachSendRightAnnotated>,void>::encode<IPC::Encoder,std::optional<WTF::MachSendRightAnnotated> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::encode(a1, a2);
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      IPC::ArgumentCoder<std::optional<WTF::MachSendRightAnnotated>,void>::decode<IPC::Decoder>(v4, v5);
    }
  }

  else
  {
    v7 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void IPC::ArgumentCoder<std::optional<WTF::MachSendRightAnnotated>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = a1;
    v9 = *(a1 + 3);
    if (v9)
    {
      if (v3)
      {
        (*(*v9 + 16))(v9);
        v5 = *v12;
        v3 = *(v12 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_15:
    *v12 = 0;
    *(v12 + 1) = 0;
    v10 = *(v12 + 3);
    if (v10)
    {
      if (v3)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *v12;
        v3 = *(v12 + 1);
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_19:
    *v12 = 0;
    *(v12 + 1) = 0;
    v11 = *(v12 + 3);
    if (v11 && v3)
    {
      (*(*v11 + 16))(v11, v5);
    }

    goto LABEL_20;
  }

  *(a1 + 2) = v4 + 1;
  if (!v4)
  {
    v12 = a1;
    goto LABEL_15;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v12 = a1;
    goto LABEL_19;
  }

  if (v6)
  {
    IPC::Decoder::decode<WTF::MachSendRightAnnotated>(v13, a1);
    if (v15 == 1)
    {
      WTF::MachSendRight::MachSendRight();
      *(a2 + 8) = v14;
      *(a2 + 16) = 1;
      *(a2 + 24) = 1;
      if (v15)
      {
        v14 = 0;
LABEL_11:
        WTF::MachSendRight::~MachSendRight(v13);
        return;
      }

      return;
    }

LABEL_20:
    *a2 = 0;
    *(a2 + 24) = 0;
    return;
  }

  v13[0] = 0;
  v15 = 0;
  std::__optional_move_base<WTF::MachSendRightAnnotated,false>::__optional_move_base[abi:sn200100](a2, v13);
  *(a2 + 24) = 1;
  if (v15 == 1)
  {
    v8 = v14;
    v14 = 0;
    if (v8)
    {
      WTF::fastFree(v8, v7);
    }

    goto LABEL_11;
  }
}

void sub_19D846A24(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, char a12)
{
  if (a12 == 1)
  {
    v13 = a11;
    a11 = 0;
    if (v13)
    {
      WTF::fastFree(v13, a2);
    }

    WTF::MachSendRight::~MachSendRight(&a10);
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *IPC::ArgumentCoder<mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&,0ul>(IPC::Encoder *result, int *a2, uint64_t a3)
{
  v4 = result;
  switch(a3)
  {
    case 2:
      if (*(a2 + 40) != 2)
      {
        goto LABEL_19;
      }

      v5 = *a2;
      v6 = *(*a2 + 8);
      atomic_fetch_add(v6 + 2, 1u);
      IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(result, v6);
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        (*(*v6 + 8))(v6);
      }

      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, (v5 + 16));

      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, (v5 + 24));
    case 1:
      if (*(a2 + 40) == 1)
      {
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(result, *a2);
        IPC::ArgumentCoder<std::optional<WTF::MachSendRightAnnotated>,void>::encode<IPC::Encoder,std::optional<WTF::MachSendRightAnnotated> const&>(v4, (a2 + 2));
        IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v4, *(a2 + 8));

        return IPC::Encoder::operator<<<BOOL>(v4, a2 + 36);
      }

LABEL_19:
      mpark::throw_bad_variant_access(result);
    case 3:
      if (*(a2 + 40) != 3)
      {
        goto LABEL_19;
      }

      v7 = *a2;

      return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(result, v7);
    default:
      return result;
  }
}

void sub_19D846BD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      (*(*v1 + 8))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = &v6[18 * v5];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6);
      result = IPC::ArgumentCoder<WebKit::PlatformCAAnimationRemoteProperties,void>::encode(a1, (v6 + 1));
      v6 += 18;
    }

    while (v6 != v7);
  }

  return result;
}

void IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *a2;
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      IPC::ArgumentCoder<WebCore::AcceleratedEffect,void>::encode(a1, v7);
      v6 -= 8;
    }

    while (v6);
  }
}

WTF::StringImpl *IPC::Decoder::decode<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v21);
  if (v22 == 1)
  {
    result = IPC::Decoder::decode<WebKit::PlatformCAAnimationRemoteProperties>(v13, a2);
    if (v20)
    {
      if ((v22 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v6 = v21;
      v21 = 0;
      *a1 = v6;
      result = WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties(a1 + 8, v13);
      *(a1 + 144) = 1;
      if (v20)
      {
        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v5);
        WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v7);
        v9 = v16;
        if (v16)
        {
          v16 = 0;
          v17 = 0;
          WTF::fastFree(v9, v8);
        }

        WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v8);
        v10 = v14;
        v14 = 0;
        if (v10)
        {
          if (v10[2] == 1)
          {
            (*(*v10 + 16))(v10);
          }

          else
          {
            --v10[2];
          }
        }

        result = v13[0];
        v13[0] = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v5);
        }
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 144) = 0;
    }

    if (v22)
    {
      result = v21;
      v21 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 144) = 0;
  }

  if ((*(a1 + 144) & 1) == 0)
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v12)
      {
        return (*(*result + 16))(result, v11);
      }
    }
  }

  return result;
}

uint64_t std::optional<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 144) == 1)
  {
    WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 128, a2);
    WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v3);
    v5 = *(a1 + 96);
    if (v5)
    {
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      WTF::fastFree(v5, v4);
    }

    WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, v4);
    v7 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v7)
    {
      if (v7[2] == 1)
      {
        (*(*v7 + 16))(v7);
      }

      else
      {
        --v7[2];
      }
    }

    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *a1;
    *a1 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }
  }

  return a1;
}

uint64_t IPC::Decoder::decode<WebKit::PlatformCAAnimationRemoteProperties>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::String>(a2, &v179);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v118 = *(a2 + 3);
    if (v118)
    {
      if (v5)
      {
        (*(*v118 + 16))(v118);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_255;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_255:
    *a2 = 0;
    *(a2 + 1) = 0;
    v119 = *(a2 + 3);
    if (v119)
    {
      if (v5)
      {
        (*(*v119 + 16))(v119);
        v7 = *a2;
        v5 = *(a2 + 1);
        goto LABEL_258;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_258:
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result)
    {
      goto LABEL_259;
    }

    if (!v5)
    {
      goto LABEL_259;
    }

    result = (*(*result + 16))(result, v7);
    v9 = 0;
    v7 = *a2;
    if (!*a2)
    {
      goto LABEL_259;
    }

    goto LABEL_5;
  }

  v8 = *v6;
  if (v8 >= 4)
  {
    goto LABEL_258;
  }

  v9 = v8 | 0x100;
  if (!v7)
  {
    goto LABEL_259;
  }

LABEL_5:
  if ((v180 & 1) == 0 || v9 <= 0xFF)
  {
    goto LABEL_180;
  }

  result = WebCore::PlatformCAAnimation::isValidKeyPath();
  if ((result & 1) == 0)
  {
LABEL_259:
    *a1 = 0;
    a1[136] = 0;
    goto LABEL_260;
  }

  v165 = IPC::Decoder::decode<unsigned long long>(a2);
  v166 = v10;
  v163 = IPC::Decoder::decode<unsigned long long>(a2);
  v164 = v11;
  v161 = IPC::Decoder::decode<unsigned long long>(a2);
  v162 = v12;
  v13 = *(a2 + 1);
  v14 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = *a2;
  v16 = v14 - *a2;
  v17 = v13 >= v16;
  v18 = v13 - v16;
  if (v17 && v18 > 3)
  {
    *(a2 + 2) = v14 + 1;
    if (v14)
    {
      v160 = *v14 | 0x100000000;
      v19 = v15;
      goto LABEL_13;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v138 = *(a2 + 3);
    if (v138)
    {
      if (v13)
      {
        (*(*v138 + 16))(v138);
        v13 = *(a2 + 1);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v139 = *(a2 + 3);
  if (v139)
  {
    if (v13)
    {
      (*(*v139 + 16))(v139);
      v160 = 0;
      v19 = *a2;
      v13 = *(a2 + 1);
      v15 = *a2;
      goto LABEL_13;
    }

    v19 = 0;
  }

  else
  {
    v19 = 0;
    v13 = 0;
  }

  v15 = 0;
  v160 = 0;
LABEL_13:
  v20 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v13 < v20 - v15 || v13 - (v20 - v15) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v140 = *(a2 + 3);
    if (v140)
    {
      if (v13)
      {
        (*(*v140 + 16))(v140, v19);
        v19 = *a2;
        v13 = *(a2 + 1);
        goto LABEL_307;
      }
    }

    else
    {
      v13 = 0;
    }

    v19 = 0;
  }

  else
  {
    *(a2 + 2) = v20 + 1;
    if (v20)
    {
      v21 = *v20 | 0x100000000;
      goto LABEL_17;
    }
  }

LABEL_307:
  *a2 = 0;
  *(a2 + 1) = 0;
  v141 = *(a2 + 3);
  if (!v141)
  {
    v15 = 0;
    v137 = 0;
    v159 = 0;
    v13 = 0;
    goto LABEL_309;
  }

  if (!v13)
  {
    v15 = 0;
    v137 = 0;
    v159 = 0;
    goto LABEL_309;
  }

  (*(*v141 + 16))(v141, v19);
  v21 = 0;
  v15 = *a2;
  v13 = *(a2 + 1);
LABEL_17:
  v22 = *(a2 + 2);
  if (v13 <= &v22[-v15])
  {
    v137 = v21;
    v159 = v21;
LABEL_309:
    *a2 = 0;
    *(a2 + 1) = 0;
    v142 = *(a2 + 3);
    if (v142)
    {
      if (v13)
      {
        (*(*v142 + 16))(v142, v15);
        v15 = *a2;
        v13 = *(a2 + 1);
        goto LABEL_312;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
LABEL_312:
    *a2 = 0;
    *(a2 + 1) = 0;
    v143 = *(a2 + 3);
    if (v143)
    {
      if (v13)
      {
        (*(*v143 + 16))(v143, v15);
        v13 = *(a2 + 1);
      }
    }

    else
    {
      v13 = 0;
    }

    LODWORD(v21) = v137;
    goto LABEL_194;
  }

  *(a2 + 2) = v22 + 1;
  if (!v22)
  {
    v137 = v21;
    v159 = v21;
    goto LABEL_312;
  }

  v23 = *v22;
  if (v23 < 4)
  {
    v158 = v23 | 0x100;
    v159 = v21;
    goto LABEL_21;
  }

  v159 = v21;
LABEL_194:
  *a2 = 0;
  *(a2 + 1) = 0;
  v95 = *(a2 + 3);
  if (!v95)
  {
    v15 = 0;
    v158 = 0;
    v13 = 0;
    goto LABEL_196;
  }

  if (!v13)
  {
    v15 = 0;
    v158 = 0;
LABEL_196:
    *a2 = 0;
    *(a2 + 1) = 0;
    v96 = *(a2 + 3);
    if (v96)
    {
      if (v13)
      {
        (*(*v96 + 16))(v96, v15);
        v15 = *a2;
        v13 = *(a2 + 1);
LABEL_199:
        *a2 = 0;
        *(a2 + 1) = 0;
        v97 = *(a2 + 3);
        if (v97)
        {
          if (v13)
          {
            (*(*v97 + 16))(v97, v15);
            v15 = *a2;
            v13 = *(a2 + 1);
            goto LABEL_202;
          }
        }

        else
        {
          v13 = 0;
        }

        v15 = 0;
        goto LABEL_202;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
    goto LABEL_199;
  }

  (*(*v95 + 16))(v95);
  v158 = 0;
  v15 = *a2;
  v13 = *(a2 + 1);
LABEL_21:
  v24 = *(a2 + 2);
  if (v13 <= &v24[-v15])
  {
    goto LABEL_196;
  }

  *(a2 + 2) = v24 + 1;
  if (!v24)
  {
    goto LABEL_199;
  }

  v25 = *v24;
  if (v25 < 0xC)
  {
    v156 = v25 | 0x100;
    goto LABEL_25;
  }

LABEL_202:
  *a2 = 0;
  *(a2 + 1) = 0;
  v98 = *(a2 + 3);
  if (v98 && v13)
  {
    (*(*v98 + 16))(v98, v15);
  }

  v156 = 0;
LABEL_25:
  IPC::Decoder::decode<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(&v177, a2);
  v26 = *(a2 + 1);
  v27 = *(a2 + 2);
  v28 = *a2;
  v157 = v21;
  if (v26 <= &v27[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v122 = *(a2 + 3);
    if (v122)
    {
      if (v26)
      {
        (*(*v122 + 16))(v122);
        v26 = *(a2 + 1);
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_274:
    *a2 = 0;
    *(a2 + 1) = 0;
    v123 = *(a2 + 3);
    if (v123)
    {
      if (v26)
      {
        (*(*v123 + 16))(v123);
        v30 = 0;
        v28 = *a2;
        v26 = *(a2 + 1);
        goto LABEL_277;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 0;
    v30 = 0;
    goto LABEL_277;
  }

  v29 = v27 + 1;
  *(a2 + 2) = v27 + 1;
  if (!v27)
  {
    goto LABEL_274;
  }

  v30 = *v27;
  if (v30 < 2)
  {
    v31 = 1;
    goto LABEL_29;
  }

LABEL_277:
  *a2 = 0;
  *(a2 + 1) = 0;
  v124 = *(a2 + 3);
  if (!v124 || !v26)
  {
    v154 = 0;
    v155 = 0;
    v125 = 0;
    v28 = 0;
LABEL_279:
    *a2 = 0;
    *(a2 + 1) = 0;
    v126 = *(a2 + 3);
    if (v126 && v125)
    {
      (*(*v126 + 16))(v126, v28, v125);
      v33 = 0;
      v28 = *a2;
      v26 = *(a2 + 1);
    }

    else
    {
      v26 = 0;
      v28 = 0;
      v33 = 0;
    }

    goto LABEL_281;
  }

  (*(*v124 + 16))(v124, v28);
  v31 = 0;
  v28 = *a2;
  v26 = *(a2 + 1);
  v29 = *(a2 + 2);
LABEL_29:
  v155 = v31;
  if (!v30)
  {
    v31 = 0;
  }

  v154 = v31;
  if (v26 <= &v29[-v28])
  {
    v125 = 0;
    v144 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v144 && v26)
    {
      (*(*v144 + 16))(v144);
      v28 = *a2;
      v125 = *(a2 + 1);
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_279;
  }

  v32 = v29 + 1;
  *(a2 + 2) = v29 + 1;
  if (!v29)
  {
    v125 = v26;
    goto LABEL_279;
  }

  v33 = *v29;
  if (v33 < 2)
  {
    v34 = 1;
    goto LABEL_35;
  }

LABEL_281:
  *a2 = 0;
  *(a2 + 1) = 0;
  v127 = *(a2 + 3);
  if (!v127 || !v26)
  {
    v152 = 0;
    v153 = 0;
    v128 = 0;
    v28 = 0;
LABEL_283:
    *a2 = 0;
    *(a2 + 1) = 0;
    v129 = *(a2 + 3);
    if (v129 && v128)
    {
      (*(*v129 + 16))(v129, v28, v128);
      v37 = 0;
      v28 = *a2;
      v26 = *(a2 + 1);
    }

    else
    {
      v26 = 0;
      v28 = 0;
      v37 = 0;
    }

    goto LABEL_286;
  }

  (*(*v127 + 16))(v127, v28);
  v34 = 0;
  v28 = *a2;
  v26 = *(a2 + 1);
  v32 = *(a2 + 2);
LABEL_35:
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v152 = v35;
  if (v26 <= &v32[-v28])
  {
    v153 = v34;
    v128 = 0;
    v145 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v145 && v26)
    {
      (*(*v145 + 16))(v145);
      v28 = *a2;
      v128 = *(a2 + 1);
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_283;
  }

  v36 = v32 + 1;
  *(a2 + 2) = v32 + 1;
  if (!v32)
  {
    v153 = v34;
    v128 = v26;
    goto LABEL_283;
  }

  v37 = *v32;
  if (v37 < 2)
  {
    v38 = 1;
    goto LABEL_42;
  }

  v153 = v34;
LABEL_286:
  *a2 = 0;
  *(a2 + 1) = 0;
  v130 = *(a2 + 3);
  if (!v130 || !v26)
  {
    v150 = 0;
    v151 = 0;
    v131 = 0;
    v28 = 0;
LABEL_288:
    *a2 = 0;
    *(a2 + 1) = 0;
    v132 = *(a2 + 3);
    if (v132 && v131)
    {
      (*(*v132 + 16))(v132, v28, v131);
      v40 = 0;
      v28 = *a2;
      v26 = *(a2 + 1);
    }

    else
    {
      v26 = 0;
      v28 = 0;
      v40 = 0;
    }

    goto LABEL_290;
  }

  (*(*v130 + 16))(v130, v28);
  v38 = 0;
  v28 = *a2;
  v26 = *(a2 + 1);
  v36 = *(a2 + 2);
  v34 = v153;
LABEL_42:
  v151 = v38;
  if (!v37)
  {
    v38 = 0;
  }

  v150 = v38;
  if (v26 <= &v36[-v28])
  {
    v153 = v34;
    v131 = 0;
    v146 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v146 && v26)
    {
      (*(*v146 + 16))(v146);
      v28 = *a2;
      v131 = *(a2 + 1);
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_288;
  }

  v39 = v36 + 1;
  *(a2 + 2) = v36 + 1;
  if (!v36)
  {
    v153 = v34;
    v131 = v26;
    goto LABEL_288;
  }

  v40 = *v36;
  if (v40 < 2)
  {
    v41 = 1;
    goto LABEL_48;
  }

  v153 = v34;
LABEL_290:
  *a2 = 0;
  *(a2 + 1) = 0;
  v133 = *(a2 + 3);
  if (!v133 || !v26)
  {
    v149 = 0;
    v41 = 0;
    v134 = 0;
    v28 = 0;
LABEL_292:
    *a2 = 0;
    *(a2 + 1) = 0;
    v135 = *(a2 + 3);
    if (v135 && v134)
    {
      (*(*v135 + 16))(v135, v28, v134);
      v43 = 0;
      v28 = *a2;
      v26 = *(a2 + 1);
    }

    else
    {
      v26 = 0;
      v28 = 0;
      v43 = 0;
    }

    goto LABEL_294;
  }

  (*(*v133 + 16))(v133, v28);
  v41 = 0;
  v28 = *a2;
  v26 = *(a2 + 1);
  v39 = *(a2 + 2);
  v34 = v153;
LABEL_48:
  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v153 = v34;
  v149 = v42;
  if (v26 <= &v39[-v28])
  {
    v134 = 0;
    v147 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v147 && v26)
    {
      (*(*v147 + 16))(v147);
      v28 = *a2;
      v134 = *(a2 + 1);
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_292;
  }

  *(a2 + 2) = v39 + 1;
  if (!v39)
  {
    v134 = v26;
    goto LABEL_292;
  }

  v43 = *v39;
  if (v43 < 2)
  {
    v44 = 1;
    goto LABEL_55;
  }

LABEL_294:
  *a2 = 0;
  *(a2 + 1) = 0;
  v136 = *(a2 + 3);
  if (!v136)
  {
    v26 = 0;
LABEL_296:
    v28 = 0;
    v44 = 0;
    goto LABEL_55;
  }

  if (!v26)
  {
    goto LABEL_296;
  }

  (*(*v136 + 16))(v136, v28);
  v44 = 0;
  v28 = *a2;
  v26 = *(a2 + 1);
LABEL_55:
  if (v43)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v148 = v45;
  v46 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v26 < v46 - v28 || v26 - (v46 - v28) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v105 = *(a2 + 3);
    if (v105)
    {
      if (v26)
      {
        (*(*v105 + 16))(v105);
        v28 = *a2;
        v26 = *(a2 + 1);
LABEL_234:
        *a2 = 0;
        *(a2 + 1) = 0;
        v106 = *(a2 + 3);
        if (v106 && v26)
        {
          (*(*v106 + 16))(v106, v28);
        }

        LOBYTE(v175[0]) = 0;
        v176 = 0;
LABEL_236:
        v107 = *a2;
        v108 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v109 = *(a2 + 3);
        if (v109 && v108)
        {
          (*(*v109 + 16))(v109, v107);
        }

        goto LABEL_76;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 0;
    goto LABEL_234;
  }

  *(a2 + 2) = v46 + 1;
  if (!v46)
  {
    goto LABEL_234;
  }

  v47 = *v46;
  v172 = 0;
  v173 = 0;
  if (v47 >> 1 >= 0xF0F)
  {
    while (1)
    {
      IPC::Decoder::decode<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>(&v183, a2);
      v94 = v203;
      if (v203)
      {
        if (HIDWORD(v173) == v173)
        {
          WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>(&v172, &v183);
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::move_constructor(v172 + 136 * HIDWORD(v173), &v183);
          ++HIDWORD(v173);
        }
      }

      else
      {
        LOBYTE(v175[0]) = 0;
        v176 = 0;
      }

      if (v203 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::~move_constructor(&v183, v48);
      }

      if ((v94 & 1) == 0)
      {
        break;
      }

      if (!--v47)
      {
        WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v172, HIDWORD(v173));
        WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v175, &v172);
        goto LABEL_74;
      }
    }
  }

  else if (v47)
  {
    LODWORD(v173) = 136 * v47 / 0x88u;
    v172 = WTF::fastMalloc((17 * v47), (136 * v47));
    while (1)
    {
      IPC::Decoder::decode<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>(&v183, a2);
      v49 = v203;
      if (v203)
      {
        if (HIDWORD(v173) == v173)
        {
          WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>>(&v172, &v183);
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::move_constructor(v172 + 136 * HIDWORD(v173), &v183);
          ++HIDWORD(v173);
        }
      }

      else
      {
        LOBYTE(v175[0]) = 0;
        v176 = 0;
      }

      if (v203 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,(mpark::detail::Trait)1>::~move_constructor(&v183, v48);
      }

      if ((v49 & 1) == 0)
      {
        break;
      }

      if (!--v47)
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
LABEL_73:
    WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v175, &v172);
LABEL_74:
    v176 = 1;
  }

  WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v172, v48);
  if ((v176 & 1) == 0)
  {
    goto LABEL_236;
  }

LABEL_76:
  IPC::Decoder::decode<WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v172, a2);
  v50 = *(a2 + 1);
  v51 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v52 = v51 - *a2;
  v17 = v50 >= v52;
  v53 = v50 - v52;
  if (!v17 || v53 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v110 = *(a2 + 3);
    if (v110)
    {
      if (v50)
      {
        (*(*v110 + 16))(v110);
        v50 = *(a2 + 1);
      }
    }

    else
    {
      v50 = 0;
    }

    goto LABEL_241;
  }

  *(a2 + 2) = v51 + 1;
  if (!v51)
  {
LABEL_241:
    *a2 = 0;
    *(a2 + 1) = 0;
    v111 = *(a2 + 3);
    if (v111 && v50)
    {
      (*(*v111 + 16))(v111);
    }

    LOBYTE(v170[0]) = 0;
    v171 = 0;
LABEL_243:
    v112 = *a2;
    v113 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v114 = *(a2 + 3);
    if (v114 && v113)
    {
      (*(*v114 + 16))(v114, v112);
    }

    goto LABEL_109;
  }

  v54 = *v51;
  v183 = 0;
  v184 = 0;
  if (v54 >= 0x20000)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(&v167, a2);
      if ((v168 & 1) == 0)
      {
LABEL_107:
        LOBYTE(v170[0]) = 0;
        v171 = 0;
        goto LABEL_108;
      }

      v65 = HIDWORD(v184);
      if (HIDWORD(v184) != v184)
      {
        break;
      }

      v66 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v183, HIDWORD(v184) + 1, &v167);
      v68 = HIDWORD(v184);
      v69 = HIDWORD(v184) + 1;
      v70 = v183;
      v71 = *v66;
      *v66 = 0;
      *(v70 + 8 * v68) = v71;
      HIDWORD(v184) = v69;
      if (v168)
      {
        goto LABEL_100;
      }

LABEL_103:
      if (!--v54)
      {
        WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v183, HIDWORD(v184), v67);
        WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v170, &v183);
        goto LABEL_95;
      }
    }

    v72 = v167;
    v167 = 0;
    *(v183 + HIDWORD(v184)) = v72;
    HIDWORD(v184) = v65 + 1;
LABEL_100:
    v73 = v167;
    v167 = 0;
    if (v73)
    {
      if (v73[2] == 1)
      {
        (*(*v73 + 16))(v73);
      }

      else
      {
        --v73[2];
      }
    }

    goto LABEL_103;
  }

  if (v54)
  {
    v55 = WTF::fastMalloc(v51, (8 * v54));
    LODWORD(v184) = v54;
    v183 = v55;
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(&v167, a2);
      if ((v168 & 1) == 0)
      {
        goto LABEL_107;
      }

      v57 = HIDWORD(v184);
      if (HIDWORD(v184) != v184)
      {
        break;
      }

      v58 = WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v183, HIDWORD(v184) + 1, &v167);
      v59 = HIDWORD(v184);
      v60 = HIDWORD(v184) + 1;
      v61 = v183;
      v62 = *v58;
      *v58 = 0;
      *(v61 + 8 * v59) = v62;
      HIDWORD(v184) = v60;
      if (v168)
      {
        goto LABEL_88;
      }

LABEL_91:
      if (!--v54)
      {
        goto LABEL_94;
      }
    }

    v63 = v167;
    v167 = 0;
    *(v183 + HIDWORD(v184)) = v63;
    HIDWORD(v184) = v57 + 1;
LABEL_88:
    v64 = v167;
    v167 = 0;
    if (v64)
    {
      if (v64[2] == 1)
      {
        (*(*v64 + 16))(v64);
      }

      else
      {
        --v64[2];
      }
    }

    goto LABEL_91;
  }

LABEL_94:
  WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v170, &v183);
LABEL_95:
  v171 = 1;
LABEL_108:
  WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v183, v56);
  if ((v171 & 1) == 0)
  {
    goto LABEL_243;
  }

LABEL_109:
  v74 = *(a2 + 1);
  v75 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v76 = v75 - *a2;
  v17 = v74 >= v76;
  v77 = v74 - v76;
  if (!v17 || v77 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v115 = *(a2 + 3);
    if (v115)
    {
      if (v74)
      {
        (*(*v115 + 16))(v115);
        v74 = *(a2 + 1);
      }
    }

    else
    {
      v74 = 0;
    }

    goto LABEL_248;
  }

  *(a2 + 2) = v75 + 1;
  if (!v75)
  {
LABEL_248:
    *a2 = 0;
    *(a2 + 1) = 0;
    v116 = *(a2 + 3);
    if (v116 && v74)
    {
      (*(*v116 + 16))(v116);
    }

    LOBYTE(v167) = 0;
    v169 = 0;
LABEL_250:
    v7 = *a2;
    v117 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v117)
    {
      result = (*(*result + 16))(result, v7);
    }

    goto LABEL_140;
  }

  v79 = *v75;
  v181 = 0;
  v182 = 0;
  if (v79 >> 1 >= 0xF0F)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::PlatformCAAnimationRemoteProperties>(&v183, a2);
      v99 = v203;
      if (v203)
      {
        if (HIDWORD(v182) == v182)
        {
          WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::PlatformCAAnimationRemoteProperties>(&v181, &v183);
        }

        else
        {
          WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties(&v181[17 * HIDWORD(v182)], &v183);
          ++HIDWORD(v182);
        }
      }

      else
      {
        LOBYTE(v167) = 0;
        v169 = 0;
      }

      if (v203 == 1)
      {
        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v202, v81);
        WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v201, v100);
        v102 = v199;
        if (v199)
        {
          v199 = 0;
          v200 = 0;
          WTF::fastFree(v102, v101);
        }

        WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v198, v101);
        v103 = v192;
        v192 = 0;
        if (v103)
        {
          if (v103[2] == 1)
          {
            (*(*v103 + 16))(v103);
          }

          else
          {
            --v103[2];
          }
        }

        v104 = v183;
        v183 = 0;
        if (v104 && atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v104, v81);
        }
      }

      if ((v99 & 1) == 0)
      {
        break;
      }

      if (!--v79)
      {
        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v181, HIDWORD(v182));
        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v167, &v181);
        goto LABEL_138;
      }
    }
  }

  else
  {
    if (v79)
    {
      v80 = WTF::fastMalloc((17 * v79), (136 * v79));
      LODWORD(v182) = 136 * v79 / 0x88u;
      v181 = v80;
      do
      {
        IPC::Decoder::decode<WebKit::PlatformCAAnimationRemoteProperties>(&v183, a2);
        v82 = v203;
        if (v203)
        {
          if (HIDWORD(v182) == v182)
          {
            WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::PlatformCAAnimationRemoteProperties>(&v181, &v183);
          }

          else
          {
            WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties(&v181[17 * HIDWORD(v182)], &v183);
            ++HIDWORD(v182);
          }
        }

        else
        {
          LOBYTE(v167) = 0;
          v169 = 0;
        }

        if (v203 != 1)
        {
          goto LABEL_131;
        }

        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v202, v81);
        WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v201, v83);
        v85 = v199;
        if (v199)
        {
          v199 = 0;
          v200 = 0;
          WTF::fastFree(v85, v84);
        }

        WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v198, v84);
        v86 = v192;
        v192 = 0;
        if (v86)
        {
          if (v86[2] == 1)
          {
            (*(*v86 + 16))(v86);
          }

          else
          {
            --v86[2];
          }
        }

        v87 = v183;
        v183 = 0;
        if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v87, v81);
          if ((v82 & 1) == 0)
          {
            goto LABEL_139;
          }
        }

        else
        {
LABEL_131:
          if ((v82 & 1) == 0)
          {
            goto LABEL_139;
          }
        }

        --v79;
      }

      while (v79);
    }

    WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v167, &v181);
LABEL_138:
    v169 = 1;
  }

LABEL_139:
  result = WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v181, v81);
  if ((v169 & 1) == 0)
  {
    goto LABEL_250;
  }

LABEL_140:
  if (*a2)
  {
    if (v180)
    {
      v88 = v179;
      v179 = 0;
      v183 = v88;
      LOBYTE(v184) = v9;
      if (v166)
      {
        v185 = v165;
        if (v164)
        {
          v186 = v163;
          if (v162)
          {
            v187 = v161;
            if ((v160 & 0x100000000) != 0)
            {
              v188 = v160;
              if ((v159 & 0x100000000) != 0)
              {
                v189 = v157;
                if (v158 > 0xFF)
                {
                  v190 = v158;
                  if (v156 > 0xFF)
                  {
                    v191 = v156;
                    if (v178)
                    {
                      v89 = v177;
                      v177 = 0;
                      v192 = v89;
                      if (v155)
                      {
                        v193 = v154;
                        if (v153)
                        {
                          v194 = v152;
                          if (v151)
                          {
                            v195 = v150;
                            if (v41)
                            {
                              v196 = v149;
                              if (v44)
                              {
                                v197 = v148;
                                if (v176)
                                {
                                  result = WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v198, v175);
                                  if (v174)
                                  {
                                    result = WTF::Vector<float,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v199, &v172);
                                    if (v171)
                                    {
                                      result = WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v201, v170);
                                      if (v169)
                                      {
                                        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v202, &v167);
                                        WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties(a1, &v183);
                                        a1[136] = 1;
                                        WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v202, v90);
                                        WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v201, v91);
                                        v93 = v199;
                                        if (v199)
                                        {
                                          v199 = 0;
                                          v200 = 0;
                                          WTF::fastFree(v93, v92);
                                        }

                                        WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v198, v92);
                                        result = v192;
                                        v192 = 0;
                                        if (!result)
                                        {
                                          goto LABEL_164;
                                        }

                                        if (*(result + 8) != 1)
                                        {
                                          --*(result + 8);
LABEL_164:
                                          result = v183;
                                          v183 = 0;
                                          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                          {
                                            result = WTF::StringImpl::destroy(result, v7);
                                          }

                                          goto LABEL_167;
                                        }

LABEL_181:
                                        (*(*result + 16))(result);
                                        goto LABEL_164;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  *a1 = 0;
  a1[136] = 0;
LABEL_167:
  if (v169 == 1)
  {
    result = WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v167, v7);
  }

  if (v171 == 1)
  {
    result = WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v170, v7);
  }

  if (v174 == 1)
  {
    result = v172;
    if (v172)
    {
      v172 = 0;
      LODWORD(v173) = 0;
      result = WTF::fastFree(result, v7);
    }
  }

  if (v176 == 1)
  {
    result = WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v175, v7);
  }

  if (v178 == 1)
  {
    result = v177;
    if (v177)
    {
      if (v177[2] == 1)
      {
        result = (*(*v177 + 16))();
      }

      else
      {
        --v177[2];
      }
    }
  }

LABEL_260:
  if (v180 == 1)
  {
    result = v179;
    v179 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if ((a1[136] & 1) == 0)
  {
    v120 = *a2;
    v121 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v121)
      {
        return (*(*result + 16))(result, v120);
      }
    }
  }

  return result;
}

void sub_19D848828(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, WTF *a36, int a37, int a38, char a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, char a47, WTF::StringImpl *a48, char a49, int a50, __int16 a51, char a52, char a53)
{
  if (a49 == 1 && a48 && atomic_fetch_add_explicit(a48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a48, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::pair[abi:sn200100]((*a1 + 144 * *(a1 + 12)), v3);
  ++*(a1 + 12);
  return 1;
}

void *std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::pair[abi:sn200100](void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  WebKit::PlatformCAAnimationRemoteProperties::PlatformCAAnimationRemoteProperties((a1 + 1), a2 + 1);
  return a1;
}

void sub_19D848CAC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 144 * *(a1 + 3) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 2);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 2);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x1C71C72)
    {
      __break(0xC471u);
      JUMPOUT(0x19D848E50);
    }

    v3 = *a1;
    v4 = (*a1 + 144 * *(a1 + 12));
    v5 = 144 * a2;
    v6 = WTF::fastMalloc((9 * a2), (144 * a2));
    *(a1 + 8) = v5 / 0x90;
    *a1 = v6;
    WTF::VectorMover<false,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

uint64_t *WTF::VectorMover<false,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::move(uint64_t *result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::pair[abi:sn200100](a3, v5);
      result = std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::~pair(v5, v6);
      a3 += 18;
      v5 += 18;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t *result, unint64_t this)
{
  if (*(result + 2) > this)
  {
    v3 = result;
    if (*(result + 3) > this)
    {
      result = WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, this);
    }

    v4 = *v3;
    if (this)
    {
      v8 = *v3;
      if (this >= 0x1C71C72)
      {
        __break(0xC471u);
        return result;
      }

      v5 = *(v3 + 3);
      v6 = (9 * this);
      v7 = (144 * this);
      result = WTF::fastMalloc(v6, v7);
      *(v3 + 2) = v7 / 0x90;
      *v3 = result;
      v4 = v8;
      if (result != v8)
      {
        result = WTF::VectorMover<false,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::move(v8, &v8[18 * v5], result);
        v4 = v8;
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 2) = 0;
      }

      return WTF::fastFree(v4, this);
    }
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t result, void *a2)
{
  v2 = *(result + 12);
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
      result = *result + 144 * a2;
      v5 = 144 * v2 - 144 * a2;
      do
      {
        result = std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::~pair(result, a2) + 144;
        v5 -= 144;
      }

      while (v5);
    }

    *(v4 + 12) = v3;
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 144 * v3;
    do
    {
      v6 = std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::~pair(v6, a2) + 144;
      v7 -= 144;
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

void IPC::Decoder::decode<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(&v108, a2);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *a2;
  if (v5 <= &v6[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v71 = *(a2 + 3);
    if (v71)
    {
      if (v5)
      {
        (*(*v71 + 16))(v71);
        v5 = *(a2 + 1);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = v6 + 1;
    *(a2 + 2) = v6 + 1;
    if (v6)
    {
      v9 = *v6;
      if (v9 < 5)
      {
        v10 = v9 | 0x100;
        goto LABEL_5;
      }

      goto LABEL_134;
    }
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v72 = *(a2 + 3);
  if (v72)
  {
    if (v5)
    {
      (*(*v72 + 16))(v72);
      v7 = *a2;
      v5 = *(a2 + 1);
      goto LABEL_134;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
LABEL_134:
  *a2 = 0;
  *(a2 + 1) = 0;
  v73 = *(a2 + 3);
  if (!v73)
  {
    v10 = 0;
    goto LABEL_136;
  }

  if (!v5)
  {
    v10 = 0;
    goto LABEL_137;
  }

  (*(*v73 + 16))(v73, v7);
  v10 = 0;
  v7 = *a2;
  v5 = *(a2 + 1);
  v8 = *(a2 + 2);
LABEL_5:
  if (v5 <= v8 - v7)
  {
    v82 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (!v5)
    {
      goto LABEL_137;
    }

    if (v82)
    {
      (*(*v82 + 16))(v82);
      v7 = *a2;
      v5 = *(a2 + 1);
LABEL_138:
      *a2 = 0;
      *(a2 + 1) = 0;
      v74 = *(a2 + 3);
      if (v74)
      {
        if (v5)
        {
          (*(*v74 + 16))(v74, v7);
          v7 = *a2;
          v5 = *(a2 + 1);
          goto LABEL_141;
        }
      }

      else
      {
        v5 = 0;
      }

      v7 = 0;
      goto LABEL_141;
    }

LABEL_136:
    v5 = 0;
LABEL_137:
    v7 = 0;
    goto LABEL_138;
  }

  *(a2 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_138;
  }

  v11 = *v8;
  if (v11 < 4)
  {
    v12 = v11 | 0x100;
    goto LABEL_9;
  }

LABEL_141:
  *a2 = 0;
  *(a2 + 1) = 0;
  v75 = *(a2 + 3);
  if (v75 && v5)
  {
    (*(*v75 + 16))(v75, v7);
  }

  v12 = 0;
LABEL_9:
  v13 = IPC::Decoder::decode<unsigned long long>(a2);
  v15 = v14;
  v16 = IPC::Decoder::decode<unsigned long long>(a2);
  v18 = v17;
  IPC::Decoder::decode<WebCore::WebAnimationTime>(v84, a2);
  IPC::Decoder::decode<WebCore::WebAnimationTime>(v106, a2);
  IPC::Decoder::decode<WebCore::WebAnimationTime>(&v104, a2);
  IPC::Decoder::decode<WebCore::WebAnimationTime>(&v102, a2);
  IPC::Decoder::decode<WebCore::WebAnimationTime>(&v100, a2);
  v19 = IPC::Decoder::decode<WebCore::WebAnimationTime>(&v98, a2);
  v20 = *a2;
  if (*a2)
  {
    if ((v109 & 1) == 0 || (v21 = v108, v108 = 0, *v110 = v21, v10 <= 0xFF) || (v110[8] = v10, v12 <= 0xFF) || (v110[9] = v12, (v15 & 1) == 0) || (*&v110[16] = v13, (v18 & 1) == 0) || (*&v111 = v16, (v85 & 1) == 0) || (v19 = WebCore::WebAnimationTime::operator WTF::Seconds(), *(&v111 + 1) = v22, (v107 & 1) == 0) || (v19 = WebCore::WebAnimationTime::operator WTF::Seconds(), *&v112 = v23, (v105 & 1) == 0) || (v19 = WebCore::WebAnimationTime::operator WTF::Seconds(), *(&v112 + 1) = v24, LOBYTE(v113[0]) = 1, (v103 & 1) == 0) || (*(v113 + 8) = v102, (v101 & 1) == 0) || (*(&v113[1] + 8) = v100, (v99 & 1) == 0))
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    *(&v113[2] + 8) = v98;
    v97 = 0;
    WebCore::WebAnimationTime::WebAnimationTime((&v113[3] + 8), &v97);
    v97 = 0;
    WebCore::WebAnimationTime::WebAnimationTime((&v114 + 8), &v97);
    v97 = 0;
    WebCore::WebAnimationTime::WebAnimationTime((&v115 + 8), &v97);
    v25 = *v110;
    v93 = v113[3];
    v94 = v114;
    v95 = v115;
    v96 = v116;
    v89 = v112;
    v90 = v113[0];
    v91 = v113[1];
    v92 = v113[2];
    v87 = *&v110[8];
    v88 = v111;
  }

  else
  {
    if ((v109 & 1) != 0 && v108)
    {
      if (v108[2] == 1)
      {
        (*(*v108 + 16))();
      }

      else
      {
        --v108[2];
      }
    }

    v38 = *a2;
    v39 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v40 = *(a2 + 3);
    if (v40 && v39)
    {
      (*(*v40 + 16))(v40, v38);
    }

    v25 = 0;
  }

  v26 = *(a2 + 1);
  v27 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = *a2;
  v29 = v27 - *a2;
  v30 = v26 >= v29;
  v31 = v26 - v29;
  if (!v30 || v31 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v66 = *(a2 + 3);
    if (v66)
    {
      if (v26)
      {
        (*(*v66 + 16))(v66);
        v26 = *(a2 + 1);
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_124;
  }

  *(a2 + 2) = v27 + 1;
  if (!v27)
  {
LABEL_124:
    *a2 = 0;
    *(a2 + 1) = 0;
    v67 = *(a2 + 3);
    if (v67 && v26)
    {
      (*(*v67 + 16))(v67);
    }

    LOBYTE(v106[0]) = 0;
    v107 = 0;
LABEL_126:
    v68 = *a2;
    v69 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v70 = *(a2 + 3);
    if (v70 && v69)
    {
      (*(*v70 + 16))(v70, v68);
    }

    goto LABEL_74;
  }

  v32 = *v27;
  v84[0] = 0;
  v84[1] = 0;
  if (v32 >= 0xEA0)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::AcceleratedEffect::Keyframe>(v110, a2);
      v41 = v119;
      if (v119)
      {
        if (HIDWORD(v84[1]) == LODWORD(v84[1]))
        {
          WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::AcceleratedEffect::Keyframe>(v84, v110);
        }

        else
        {
          v42 = v84[0] + 280 * HIDWORD(v84[1]);
          *v42 = MEMORY[0x1E69E2E58] + 16;
          *(v42 + 1) = *&v110[8];
          WebCore::AcceleratedEffectValues::AcceleratedEffectValues((v42 + 16), &v110[16]);
          v43 = v117;
          v117 = 0;
          *(v42 + 33) = v43;
          *(v42 + 68) = v118;
          ++HIDWORD(v84[1]);
        }
      }

      else
      {
        LOBYTE(v106[0]) = 0;
        v107 = 0;
      }

      if (v119 == 1)
      {
        v44 = v117;
        v117 = 0;
        if (v44)
        {
          if (v44[2] == 1)
          {
            (*(*v44 + 16))(v44);
          }

          else
          {
            --v44[2];
          }
        }

        WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v110[16], v28);
      }

      if ((v41 & 1) == 0)
      {
        break;
      }

      if (!--v32)
      {
        v45 = HIDWORD(v84[1]);
        if (LODWORD(v84[1]) <= HIDWORD(v84[1]))
        {
          goto LABEL_72;
        }

        v46 = v84[0];
        if (HIDWORD(v84[1]))
        {
          if (HIDWORD(v84[1]) >= 0xEA0EA1)
          {
            __break(0xC471u);
            return;
          }

          v47 = WTF::fastMalloc(0x118, (280 * HIDWORD(v84[1])));
          LODWORD(v84[1]) = 280 * v45 / 0x118;
          v84[0] = v47;
          if (v47 != v46)
          {
            WTF::VectorMover<false,WebCore::AcceleratedEffect::Keyframe>::move(v46, v46 + 280 * v45, v47);
          }
        }

        if (v46)
        {
          if (v84[0] == v46)
          {
            v84[0] = 0;
            LODWORD(v84[1]) = 0;
          }

          WTF::fastFree(v46, v28);
        }

        goto LABEL_72;
      }
    }
  }

  else if (v32)
  {
    v33 = WTF::fastMalloc(0x118, (280 * v32));
    LODWORD(v84[1]) = 280 * v32 / 0x118u;
    v84[0] = v33;
    while (1)
    {
      IPC::Decoder::decode<WebCore::AcceleratedEffect::Keyframe>(v110, a2);
      v34 = v119;
      if (v119)
      {
        if (HIDWORD(v84[1]) == LODWORD(v84[1]))
        {
          WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::AcceleratedEffect::Keyframe>(v84, v110);
        }

        else
        {
          v35 = v84[0] + 280 * HIDWORD(v84[1]);
          *v35 = MEMORY[0x1E69E2E58] + 16;
          *(v35 + 1) = *&v110[8];
          WebCore::AcceleratedEffectValues::AcceleratedEffectValues((v35 + 16), &v110[16]);
          v36 = v117;
          v117 = 0;
          *(v35 + 33) = v36;
          *(v35 + 68) = v118;
          ++HIDWORD(v84[1]);
        }
      }

      else
      {
        LOBYTE(v106[0]) = 0;
        v107 = 0;
      }

      if (v119 == 1)
      {
        v37 = v117;
        v117 = 0;
        if (v37)
        {
          if (v37[2] == 1)
          {
            (*(*v37 + 16))(v37);
          }

          else
          {
            --v37[2];
          }
        }

        WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v110[16], v28);
      }

      if ((v34 & 1) == 0)
      {
        break;
      }

      if (!--v32)
      {
        goto LABEL_72;
      }
    }
  }

  else
  {
LABEL_72:
    v106[0] = v84[0];
    v48 = v84[1];
    v84[0] = 0;
    v84[1] = 0;
    v106[1] = v48;
    v107 = 1;
  }

  WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v84, v28);
  if ((v107 & 1) == 0)
  {
    goto LABEL_126;
  }

LABEL_74:
  v49 = *(a2 + 1);
  v50 = *(a2 + 2);
  v51 = *a2;
  if (v49 <= &v50[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v76 = *(a2 + 3);
    if (v76)
    {
      if (v49)
      {
        (*(*v76 + 16))(v76);
        v49 = *(a2 + 1);
      }
    }

    else
    {
      v49 = 0;
    }

LABEL_151:
    *a2 = 0;
    *(a2 + 1) = 0;
    v77 = *(a2 + 3);
    if (v77)
    {
      if (v49)
      {
        (*(*v77 + 16))(v77);
        v51 = *a2;
        v49 = *(a2 + 1);
        goto LABEL_154;
      }
    }

    else
    {
      v49 = 0;
    }

    v51 = 0;
    goto LABEL_154;
  }

  *(a2 + 2) = v50 + 1;
  if (!v50)
  {
    goto LABEL_151;
  }

  v52 = *v50;
  if (v52 < 3)
  {
    v53 = v52 | 0x100;
    goto LABEL_78;
  }

LABEL_154:
  *a2 = 0;
  *(a2 + 1) = 0;
  v78 = *(a2 + 3);
  if (v78 && v49)
  {
    (*(*v78 + 16))(v78, v51);
  }

  v53 = 0;
LABEL_78:
  v54 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>>(&v100, a2);
  v55 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AcceleratedEffectProperty>>(a2);
  LOWORD(v108) = v55;
  BYTE2(v108) = BYTE2(v55);
  v56 = *(a2 + 1);
  v57 = *(a2 + 2);
  v58 = *a2;
  if (v56 <= &v57[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v79 = *(a2 + 3);
    if (v79)
    {
      if (v56)
      {
        (*(*v79 + 16))(v79);
        v56 = *(a2 + 1);
      }
    }

    else
    {
      v56 = 0;
    }

LABEL_160:
    *a2 = 0;
    *(a2 + 1) = 0;
    v80 = *(a2 + 3);
    if (v80)
    {
      if (v56)
      {
        (*(*v80 + 16))(v80);
        v58 = *a2;
        v56 = *(a2 + 1);
        goto LABEL_163;
      }
    }

    else
    {
      v56 = 0;
    }

    v58 = 0;
    goto LABEL_163;
  }

  *(a2 + 2) = v57 + 1;
  if (!v57)
  {
    goto LABEL_160;
  }

  if (*v57 < 2u)
  {
    v2 = 1;
    goto LABEL_82;
  }

LABEL_163:
  *a2 = 0;
  *(a2 + 1) = 0;
  v81 = *(a2 + 3);
  if (v81 && v56)
  {
    (*(*v81 + 16))(v81, v58);
  }

  v2 = 0;
LABEL_82:
  IPC::Decoder::decode<unsigned long long>(a2);
  v60 = v59;
  IPC::Decoder::decode<std::optional<WebCore::WebAnimationTime>>(v110, a2);
  v19 = IPC::Decoder::decode<std::optional<WebCore::WebAnimationTime>>(v84, a2);
  v3 = *a2;
  if (!*a2)
  {
    v2 = a1;
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_97;
  }

  if (!v20)
  {
    goto LABEL_109;
  }

  if ((v107 & 1) == 0)
  {
    goto LABEL_109;
  }

  if (v53 <= 0xFF)
  {
    goto LABEL_109;
  }

  if (v54 <= 0xFFu)
  {
    goto LABEL_109;
  }

  if ((BYTE8(v100) & 1) == 0)
  {
    goto LABEL_109;
  }

  if ((BYTE2(v108) & 1) == 0)
  {
    goto LABEL_109;
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_109;
  }

  if ((v60 & 1) == 0)
  {
    goto LABEL_109;
  }

  if ((v111 & 1) == 0)
  {
    goto LABEL_109;
  }

  v104 = *v110;
  v105 = *&v110[16];
  if ((v86 & 1) == 0)
  {
    goto LABEL_109;
  }

  v102 = *v84;
  v103 = v85;
  WebCore::AcceleratedEffect::create();
  v2 = a1;
  v19 = v25;
  *a1 = v98;
  a1[8] = 1;
  *&v98 = 0;
  if (v25)
  {
    if (v25[2] != 1)
    {
      --v25[2];
      goto LABEL_96;
    }

LABEL_110:
    (*(*v19 + 16))(v19);
  }

LABEL_96:
  v25 = 0;
LABEL_97:
  if (BYTE8(v100) == 1)
  {
    v62 = v100;
    *&v100 = 0;
    if (v62)
    {
      if (v62[2] == 1)
      {
        (*(*v62 + 16))(v62);
      }

      else
      {
        --v62[2];
      }
    }
  }

  if (v107 == 1)
  {
    WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v106, v61);
  }

  if (v20 && v25)
  {
    if (v25[2] == 1)
    {
      (*(*v25 + 16))(v25);
      if (*(v2 + 8))
      {
        return;
      }

      goto LABEL_112;
    }

    --v25[2];
  }

  if (v3)
  {
    return;
  }

LABEL_112:
  v63 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v64 = *(a2 + 3);
  if (v64 && v63)
  {
    v65 = *(*v64 + 16);

    v65();
  }
}

void sub_19D849DE0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, _DWORD *a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a59 == 1 && a58)
  {
    if (a58[2] == 1)
    {
      (*(*a58 + 16))(a58, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      --a58[2];
    }
  }

  if (a66 == 1)
  {
    WTF::Vector<WebCore::AcceleratedEffect::Keyframe,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a65, a2);
  }

  if (v67 && v66)
  {
    if (v66[2] == 1)
    {
      (*(*v66 + 16))(v66);
    }

    else
    {
      --v66[2];
    }
  }

  _Unwind_Resume(a1);
}

unsigned int *WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2, unint64_t a3)
{
  if (result[2] > a2)
  {
    v4 = result;
    v5 = result[3];
    if (v5 > a2)
    {
      result = WTF::VectorDestructor<true,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>::destruct((*result + 8 * a2), (*result + 8 * v5));
      v4[3] = a2;
      LODWORD(v5) = a2;
    }

    v6 = *v4;
    if (a2)
    {
      if (v4[2])
      {
        v4[2] = a2;
        result = WTF::fastRealloc(v6, (8 * a2));
        *v4 = result;
        return result;
      }

      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(0, (8 * a2));
      v4[2] = a2;
      *v4 = result;
      if (result != v6)
      {
        result = memcpy(result, v6, 8 * v5);
      }
    }

    if (v6)
    {
      if (*v4 == v6)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v6, a2);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>::destruct(*a1, (*a1 + 8 * v3));
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

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebCore::TransformationMatrix>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::TransformationMatrix> const&>(IPC::Encoder *a1, double **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::TransformationMatrix,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebCore::FloatRoundedRect>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::FloatRoundedRect> const&>(IPC::Encoder *a1, float **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t WebCore::TransformationMatrix::operator new(WebCore::TransformationMatrix *this, void *a2)
{
  if (this == 128 && *MEMORY[0x1E69E2640])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2640], a2);
  }

  else
  {
    return MEMORY[0x1EEE57B38]();
  }
}

uint64_t WebCore::FloatRoundedRect::operator new(WebCore::FloatRoundedRect *this, void *a2)
{
  if (this == 48 && *MEMORY[0x1E69E25A0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25A0], a2);
  }

  else
  {
    return MEMORY[0x1EEE56350]();
  }
}

uint64_t WebCore::FilterOperations::operator new(WebCore::FilterOperations *this, void *a2)
{
  if (this == 16 && *MEMORY[0x1E69E2598])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2598], a2);
  }

  else
  {
    return MEMORY[0x1EEE56340]();
  }
}

atomic_ullong *IPC::ArgumentCoder<std::unique_ptr<WebCore::ScrollingStateTree>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::ScrollingStateTree> const&>(IPC::Encoder *a1, WebCore::ScrollingStateTree **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::ScrollingStateTree,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t WebCore::ScrollingStateTree::operator new(WebCore::ScrollingStateTree *this, void *a2)
{
  if (this == 72 && *MEMORY[0x1E69E2600])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2600], a2);
  }

  else
  {
    return MEMORY[0x1EEE57220]();
  }
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<WebCore::ScrollingStateFrameScrollingNode,WTF::RawPtrTraits<WebCore::ScrollingStateFrameScrollingNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateFrameScrollingNode>>,void>::encode<IPC::Encoder,WebCore::ScrollingStateFrameScrollingNode>(IPC::Encoder *a1, WebCore::ScrollingStateFrameScrollingNode **a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WebCore::ScrollingStateFrameScrollingNode,void>::encode(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    for (i = 8 * v5; i; i -= 8)
    {
      v8 = *v6;
      v9 = *(*v6 + 16);
      if (v9 <= 1)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);
        result = IPC::ArgumentCoder<WebCore::ScrollingStateFrameScrollingNode,void>::encode(a1, v8);
      }

      else
      {
        if (v9 == 2)
        {
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 1);
          v10 = *(v8 + 32);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 24));
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v10);
          IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v8 + 72);
          result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 40));
          v11 = *(v8 + 40);
          if (v11)
          {
            if (*(v8 + 104))
            {
              v38 = *(v8 + 104);
              v28 = 1;
            }

            else
            {
              v28 = 0;
              LOBYTE(v38) = 0;
            }

            v39 = v28;
            result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
            v11 = *(v8 + 40);
          }

          if ((v11 & 2) != 0)
          {
            v37 = *(v8 + 136);
            *&v38 = *(v8 + 128);
            BYTE8(v38) = v37;
            result = IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, &v38);
          }

          goto LABEL_10;
        }

        if (*(*v6 + 16) < 6u)
        {
          if (v9 == 5)
          {
            IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 2);
            v12 = *(v8 + 32);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 24));
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v12);
            IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v8 + 72);
            result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 40));
            v13 = *(v8 + 40);
            if (v13)
            {
              if (*(v8 + 104))
              {
                v38 = *(v8 + 104);
                v19 = 1;
              }

              else
              {
                v19 = 0;
                LOBYTE(v38) = 0;
              }

              v39 = v19;
              result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 2) != 0)
            {
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 128));
              result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 132));
              v13 = *(v8 + 40);
            }

            if ((v13 & 4) != 0)
            {
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 136));
              result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 140));
              v13 = *(v8 + 40);
            }

            if ((v13 & 8) != 0)
            {
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 144));
              result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 148));
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x10) != 0)
            {
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 152));
              result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 156));
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x20) != 0)
            {
              IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v8 + 160));
              result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v8 + 164));
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x40) != 0)
            {
              result = IPC::ArgumentCoder<WebCore::ScrollableAreaParameters,void>::encode(a1, (v8 + 438));
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x80) != 0)
            {
              result = IPC::ArgumentCoder<WebCore::RequestedScrollData,void>::encode(a1, (v8 + 452));
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x100) != 0)
            {
              result = IPC::ArgumentCoder<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>,void>::encode(a1, v8 + 168);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x200) != 0)
            {
              v35 = *(v8 + 240);
              LODWORD(v38) = v35;
              BYTE4(v38) = BYTE4(v35);
              result = IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x400) != 0)
            {
              v36 = *(v8 + 248);
              LODWORD(v38) = v36;
              BYTE4(v38) = BYTE4(v36);
              result = IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x800) != 0)
            {
              LOBYTE(v38) = *(v8 + 535);
              result = IPC::Encoder::operator<<<BOOL>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x1000) != 0)
            {
              v20 = *(v8 + 272);
              if (v20)
              {
                v38 = *(v8 + 272);
                LOBYTE(v20) = 1;
              }

              else
              {
                LOBYTE(v38) = 0;
              }

              v39 = v20;
              result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x2000) != 0)
            {
              v21 = *(v8 + 312);
              if (v21)
              {
                v38 = *(v8 + 312);
                LOBYTE(v21) = 1;
              }

              else
              {
                LOBYTE(v38) = 0;
              }

              v39 = v21;
              result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x4000) != 0)
            {
              v22 = *(v8 + 352);
              if (v22)
              {
                v38 = *(v8 + 352);
                LOBYTE(v22) = 1;
              }

              else
              {
                LOBYTE(v38) = 0;
              }

              v39 = v22;
              result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x8000) != 0)
            {
              v23 = *(v8 + 392);
              if (v23)
              {
                v38 = *(v8 + 392);
                LOBYTE(v23) = 1;
              }

              else
              {
                LOBYTE(v38) = 0;
              }

              v39 = v23;
              result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x10000) != 0)
            {
              LOBYTE(v38) = *(v8 + 536);
              result = IPC::Encoder::operator<<<BOOL>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x20000) != 0)
            {
              result = IPC::ArgumentCoder<WebCore::LayoutRect,void>::encode(a1, (v8 + 420));
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x40000) != 0)
            {
              LOWORD(v38) = *(v8 + 416);
              IPC::Encoder::operator<<<BOOL>(a1, &v38);
              result = IPC::Encoder::operator<<<BOOL>(a1, &v38 + 1);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x80000) != 0)
            {
              LOWORD(v38) = *(v8 + 436);
              IPC::Encoder::operator<<<BOOL>(a1, &v38);
              result = IPC::Encoder::operator<<<BOOL>(a1, &v38 + 1);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x100000) != 0)
            {
              LOBYTE(v38) = *(v8 + 532);
              result = IPC::Encoder::operator<<<BOOL>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x200000) != 0)
            {
              result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v8 + 533));
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x400000) != 0)
            {
              LOBYTE(v38) = *(v8 + 534);
              result = IPC::Encoder::operator<<<BOOL>(a1, &v38);
              v13 = *(v8 + 40);
            }

            if ((v13 & 0x800000) != 0)
            {
              result = IPC::Encoder::operator<<<WebCore::RequestedKeyboardScrollData const&>(a1, (v8 + 496));
            }
          }

          else if (v9 == 3)
          {
            IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 4);
            result = IPC::ArgumentCoder<WebCore::ScrollingStatePluginScrollingNode,void>::encode(a1, v8);
          }

          else
          {
            IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 5);
            result = IPC::ArgumentCoder<WebCore::ScrollingStatePluginHostingNode,void>::encode(a1, v8);
          }

          goto LABEL_10;
        }

        if (*(*v6 + 16) <= 6u)
        {
          IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 3);
          v24 = *(v8 + 32);
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 24));
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v24);
          IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v8 + 72);
          result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 40));
          v25 = *(v8 + 40);
          if (v25)
          {
            if (*(v8 + 104))
            {
              v38 = *(v8 + 104);
              v29 = 1;
            }

            else
            {
              v29 = 0;
              LOBYTE(v38) = 0;
            }

            v39 = v29;
            result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
            v25 = *(v8 + 40);
          }

          if ((v25 & 2) == 0)
          {
            goto LABEL_10;
          }

          v27 = *(v8 + 128);
          v26 = (v8 + 128);
          LOBYTE(v18) = v27;
          if (v27)
          {
            v38 = *v26;
            LOBYTE(v18) = 1;
          }

          else
          {
            LOBYTE(v38) = 0;
          }

          goto LABEL_65;
        }

        if (v9 != 8)
        {
          if (v9 == 7)
          {
            IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 6);
            v31 = *(v8 + 32);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 24));
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v31);
            IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v8 + 72);
            result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 40));
            v32 = *(v8 + 40);
            if (v32)
            {
              if (*(v8 + 104))
              {
                v38 = *(v8 + 104);
                v33 = 1;
              }

              else
              {
                v33 = 0;
                LOBYTE(v38) = 0;
              }

              v39 = v33;
              result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
              v32 = *(v8 + 40);
            }

            if ((v32 & 2) != 0)
            {
              v34 = *(v8 + 140);
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 136));
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v34);
              IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v8 + 144));
              IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (v8 + 148));
              IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 164));
              result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 168));
            }
          }

          else if (v9 == 9)
          {
            IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 8);
            result = IPC::ArgumentCoder<WebCore::ScrollingStatePositionedNode,void>::encode(a1, v8);
          }

          goto LABEL_10;
        }

        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 7);
        v14 = *(v8 + 32);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 24));
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v14);
        IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v8 + 72);
        result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(v8 + 40));
        v15 = *(v8 + 40);
        if (v15)
        {
          if (*(v8 + 104))
          {
            v38 = *(v8 + 104);
            v30 = 1;
          }

          else
          {
            v30 = 0;
            LOBYTE(v38) = 0;
          }

          v39 = v30;
          result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
          v15 = *(v8 + 40);
        }

        if ((v15 & 2) != 0)
        {
          v16 = *(v8 + 140);
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 136));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v16);
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v8 + 144));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 172));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 176));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 180));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 184));
          v38 = *(v8 + 188);
          IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v38);
          v38 = *(v8 + 204);
          IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v38);
          v38 = *(v8 + 220);
          IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v38);
          v17 = *(v8 + 240);
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 236));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v17);
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 244));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 248));
          IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (v8 + 148));
          IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 164));
          result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(v8 + 168));
          v15 = *(v8 + 40);
        }

        if ((v15 & 4) != 0)
        {
          v18 = *(v8 + 272);
          if (v18)
          {
            v38 = *(v8 + 272);
            LOBYTE(v18) = 1;
          }

          else
          {
            LOBYTE(v38) = 0;
          }

LABEL_65:
          v39 = v18;
          result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v38);
        }
      }

LABEL_10:
      ++v6;
    }
  }

  return result;
}

void IPC::Decoder::decode<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>>(uint64_t a1, uint64_t *a2)
{
  v331 = *MEMORY[0x1E69E9840];
  v9 = a2[2];
  v10 = *a2;
  v11 = a2[1];
  if (v11 <= &v9[-v10])
  {
    *a2 = 0;
    a2[1] = 0;
    v183 = a2[3];
    if (v183)
    {
      if (v11)
      {
        (*(*v183 + 16))(v183);
        v10 = *a2;
        v11 = a2[1];
        goto LABEL_567;
      }
    }

    else
    {
      v11 = 0;
    }

    v10 = 0;
LABEL_567:
    *a2 = 0;
    a2[1] = 0;
    v184 = a2[3];
    if (v184)
    {
      if (v11)
      {
        (*(*v184 + 16))(v184, v10);
        v10 = *a2;
        v11 = a2[1];
        goto LABEL_570;
      }
    }

    else
    {
      v11 = 0;
    }

    v10 = 0;
LABEL_570:
    *a2 = 0;
    a2[1] = 0;
    v185 = a2[3];
    if (!v185)
    {
      goto LABEL_571;
    }

    if (!v11)
    {
      goto LABEL_571;
    }

    (*(*v185 + 16))(v185, v10);
    v13 = 0;
    if (!*a2)
    {
      goto LABEL_571;
    }

    goto LABEL_5;
  }

  a2[2] = (v9 + 1);
  if (!v9)
  {
    goto LABEL_567;
  }

  v12 = *v9;
  if (v12 >= 9)
  {
    goto LABEL_570;
  }

  v13 = v12 | 0x100;
  if (!v10)
  {
    goto LABEL_571;
  }

LABEL_5:
  if (v13 < 0x100 || v13 != 0)
  {
    v6 = &v309;
    if (v13 < 0x100 || v13 != 1)
    {
      v3 = v288;
      if (v13 < 0x100 || v13 != 2)
      {
        if (v13 < 0x100 || v13 != 3)
        {
          if (v13 >= 0x100 && v13 == 4)
          {
            IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v309);
            IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v307, a2);
            v18 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
            if (v19)
            {
              LODWORD(v2) = v18;
              if (v18)
              {
                v18 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
                if (v283[24] != 1)
                {
                  goto LABEL_212;
                }

                LOBYTE(v4) = v283[0];
                v321[0] = *&v283[1];
                *(v321 + 7) = *&v283[8];
                v5 = v283[16];
              }

              else
              {
                v5 = 0;
                LOBYTE(v4) = 0;
              }

              if ((v2 & 2) != 0)
              {
                v18 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              if ((v2 & 4) != 0)
              {
                v18 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              if ((v2 & 8) != 0)
              {
                v18 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              if ((v2 & 0x10) != 0)
              {
                v18 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_212;
                }
              }

              if ((v2 & 0x20) != 0)
              {
                v18 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
                if ((v19 & 1) == 0)
                {
                  goto LABEL_212;
                }

                *v304 = 257;
                *&v304[2] = 0;
                v305 = 0;
              }

              else
              {
                *v304 = 257;
                *&v304[2] = 0;
                v305 = 0;
              }

              if ((v2 & 0x40) != 0)
              {
                v18 = IPC::Decoder::decode<WebCore::ScrollableAreaParameters>(a2);
                if ((v19 & 0x1000000) == 0)
                {
                  goto LABEL_212;
                }

                *v304 = v18;
                *&v304[8] = v19;
                v305 = BYTE2(v19);
              }

              v301[0] = 0;
              *&v301[4] = 0;
              v301[12] = 0;
              *&v301[16] = 256;
              v301[18] = 0;
              v301[20] = 0;
              v303 = 0;
              if ((v2 & 0x80) == 0)
              {
                goto LABEL_193;
              }

              v18 = IPC::Decoder::decode<WebCore::RequestedScrollData>(v283, a2);
              if (v283[44] == 1)
              {
                *v301 = *v283;
                *&v301[15] = *&v283[15];
                if (v303 == v283[40])
                {
                  if (v303)
                  {
                    v301[20] = v283[20];
                    *&v301[24] = *&v283[24];
                    *&v301[32] = *&v283[32];
                    LOWORD(v302) = *&v283[36];
                  }
                }

                else if (v303)
                {
                  v303 = 0;
                }

                else
                {
                  *&v301[20] = *&v283[20];
                  v302 = *&v283[36];
                  v303 = 1;
                }

LABEL_193:
                v288[0] = 0;
                *&v288[8] = 0u;
                v289 = 0u;
                memset(v290, 0, 32);
                if ((v2 & 0x100) != 0)
                {
                  IPC::Decoder::decode<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>>(v283, a2);
                  if (v283[72] != 1)
                  {
                    goto LABEL_428;
                  }

                  v288[0] = v283[0];
                  v106 = *&v288[8];
                  if (*&v288[20])
                  {
                    v107 = 40 * *&v288[20];
                    v108 = *&v288[8] + 24;
                    do
                    {
                      v109 = *v108;
                      if (*v108)
                      {
                        *v108 = 0;
                        *(v108 + 8) = 0;
                        WTF::fastFree(v109, v19);
                      }

                      v108 += 40;
                      v107 -= 40;
                    }

                    while (v107);
                    v106 = *&v288[8];
                  }

                  if (v106)
                  {
                    *&v288[8] = 0;
                    *&v288[16] = 0;
                    WTF::fastFree(v106, v19);
                  }

                  *&v288[8] = *&v283[8];
                  v134 = *&v283[16];
                  *&v283[8] = 0;
                  *&v283[16] = 0;
                  *&v288[16] = v134;
                  v135 = v289;
                  if (HIDWORD(v289))
                  {
                    v136 = 40 * HIDWORD(v289);
                    v137 = v289 + 24;
                    do
                    {
                      v138 = *v137;
                      if (*v137)
                      {
                        *v137 = 0;
                        *(v137 + 8) = 0;
                        WTF::fastFree(v138, v19);
                      }

                      v137 += 40;
                      v136 -= 40;
                    }

                    while (v136);
                    v135 = v289;
                  }

                  if (v135)
                  {
                    *&v289 = 0;
                    DWORD2(v289) = 0;
                    WTF::fastFree(v135, v19);
                  }

                  *&v289 = *&v283[24];
                  v139 = *&v283[32];
                  *&v283[24] = 0;
                  *&v283[32] = 0;
                  *(&v289 + 1) = v139;
                  v140 = *v290;
                  if (*v290)
                  {
                    *v290 = 0;
                    *&v290[8] = 0;
                    WTF::fastFree(v140, v19);
                  }

                  *v290 = *&v283[40];
                  v141 = *&v283[48];
                  *&v283[40] = 0;
                  *&v283[48] = 0;
                  *&v290[8] = v141;
                  v18 = *&v290[16];
                  if (*&v290[16])
                  {
                    *&v290[16] = 0;
                    *&v290[24] = 0;
                    v18 = WTF::fastFree(v18, v19);
                  }

                  *&v290[16] = *&v283[56];
                  v142 = *&v283[64];
                  *&v283[56] = 0;
                  *&v283[64] = 0;
                  *&v290[24] = v142;
                  if (v283[72])
                  {
                    v143 = *&v283[40];
                    if (*&v283[40])
                    {
                      *&v283[40] = 0;
                      *&v283[48] = 0;
                      WTF::fastFree(v143, v19);
                    }

                    WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v283[24], v19);
                    v18 = WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v283[8], v144);
                  }
                }

                if ((v2 & 0x200) != 0)
                {
                  v18 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
                  if ((v19 & 1) == 0)
                  {
                    goto LABEL_428;
                  }
                }

                if ((v2 & 0x400) != 0)
                {
                  v18 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
                  if ((v19 & 1) == 0)
                  {
                    goto LABEL_428;
                  }
                }

                if ((v2 & 0x800) == 0)
                {
LABEL_381:
                  if ((v2 & 0x1000) != 0)
                  {
                    v18 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
                    if ((v283[24] & 1) == 0)
                    {
                      goto LABEL_428;
                    }

                    LOBYTE(v275) = v283[0];
                    v320[0] = *&v283[1];
                    *(v320 + 7) = *&v283[8];
                    LOBYTE(v276) = v283[16];
                  }

                  else
                  {
                    LOBYTE(v276) = 0;
                    LOBYTE(v275) = 0;
                  }

                  if ((v2 & 0x2000) != 0)
                  {
                    v18 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
                    if ((v283[24] & 1) == 0)
                    {
                      goto LABEL_428;
                    }

                    LOBYTE(v273) = v283[0];
                    v319[0] = *&v283[1];
                    *(v319 + 7) = *&v283[8];
                    LOBYTE(v274) = v283[16];
                  }

                  else
                  {
                    LOBYTE(v274) = 0;
                    LOBYTE(v273) = 0;
                  }

                  if ((v2 & 0x4000) != 0)
                  {
                    v18 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
                    if ((v283[24] & 1) == 0)
                    {
                      goto LABEL_428;
                    }

                    v271 = v283[0];
                    v318[0] = *&v283[1];
                    *(v318 + 7) = *&v283[8];
                    LOBYTE(v272) = v283[16];
                  }

                  else
                  {
                    LOBYTE(v272) = 0;
                    v271 = 0;
                  }

                  if ((v2 & 0x8000) == 0)
                  {
                    LOBYTE(v270) = 0;
                    LOBYTE(v269) = 0;
                    goto LABEL_426;
                  }

                  v18 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
                  if (v283[24])
                  {
                    LOBYTE(v269) = v283[0];
                    v317[0] = *&v283[1];
                    *(v317 + 7) = *&v283[8];
                    LOBYTE(v270) = v283[16];
LABEL_426:
                    if ((v2 & 0x10000) == 0)
                    {
                      goto LABEL_469;
                    }

                    v159 = a2[1];
                    v160 = a2[2];
                    v19 = *a2;
                    if (v159 <= &v160[-*a2])
                    {
                      *a2 = 0;
                      a2[1] = 0;
                      v248 = a2[3];
                      if (v248)
                      {
                        if (v159)
                        {
                          (*(*v248 + 16))(v248);
                          v159 = a2[1];
                        }
                      }

                      else
                      {
                        v159 = 0;
                      }
                    }

                    else
                    {
                      a2[2] = (v160 + 1);
                      if (v160)
                      {
                        if (*v160 < 2u)
                        {
LABEL_469:
                          v296 = 0uLL;
                          if ((v2 & 0x20000) != 0)
                          {
                            v18 = IPC::Decoder::decode<WebCore::MouseLocationState>(v283, a2);
                            if ((v283[16] & 1) == 0)
                            {
                              goto LABEL_693;
                            }

                            v296 = *v283;
                          }

                          v295 = 0;
                          if ((v2 & 0x40000) != 0)
                          {
                            v18 = IPC::Decoder::decode<WebCore::ScrollbarHoverState>(a2);
                            if ((v18 & 0xFFFFFF) < 0x10000)
                            {
                              goto LABEL_693;
                            }

                            v295 = v18;
                          }

                          v294 = 0;
                          if ((v2 & 0x80000) != 0)
                          {
                            v18 = IPC::Decoder::decode<WebCore::ScrollbarHoverState>(a2);
                            if ((v18 & 0xFFFFFF) < 0x10000)
                            {
                              goto LABEL_693;
                            }

                            v294 = v18;
                          }

                          if ((v2 & 0x100000) == 0)
                          {
                            goto LABEL_496;
                          }

                          while (1)
                          {
                            v18 = IPC::Decoder::decode<WebCore::UserInterfaceLayoutDirection>(a2);
                            if (v18 < 0x100u)
                            {
                              goto LABEL_693;
                            }

LABEL_496:
                            if ((v2 & 0x200000) != 0)
                            {
                              v18 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
                              if (v18 < 0x100u)
                              {
                                goto LABEL_693;
                              }
                            }

                            if ((v2 & 0x400000) != 0)
                            {
                              v164 = a2[1];
                              v165 = a2[2];
                              v19 = *a2;
                              if (v164 <= &v165[-*a2])
                              {
                                *a2 = 0;
                                a2[1] = 0;
                                v252 = a2[3];
                                if (v252)
                                {
                                  if (v164)
                                  {
                                    (*(*v252 + 16))(v252);
                                    v164 = a2[1];
                                  }
                                }

                                else
                                {
                                  v164 = 0;
                                }

LABEL_706:
                                *a2 = 0;
                                a2[1] = 0;
                                v253 = a2[3];
                                if (!v253)
                                {
                                  v164 = 0;
                                  goto LABEL_708;
                                }

                                if (v164)
                                {
                                  (*(*v253 + 16))(v253);
                                  v19 = *a2;
                                  v164 = a2[1];
                                }

                                else
                                {
LABEL_708:
                                  v19 = 0;
                                }

LABEL_709:
                                *a2 = 0;
                                a2[1] = 0;
                                v239 = a2[3];
                                if (v239 && v164)
                                {
LABEL_761:
                                  (*(*v239 + 16))(v239, v19);
                                }

LABEL_693:
                                LODWORD(v2) = 0;
                                v32 = 0;
                                goto LABEL_429;
                              }

                              a2[2] = (v165 + 1);
                              if (!v165)
                              {
                                goto LABEL_706;
                              }

                              if (*v165 >= 2u)
                              {
                                goto LABEL_709;
                              }
                            }

                            LOBYTE(v314[0]) = 0;
                            BYTE4(v314[0]) = 0;
                            LOBYTE(v316) = 0;
                            if ((v2 & 0x800000) != 0)
                            {
                              v18 = IPC::Decoder::decode<WebCore::RequestedKeyboardScrollData>(v283, a2);
                              if (v283[36] != 1)
                              {
                                goto LABEL_693;
                              }

                              *v314 = *v283;
                              v315 = *&v283[16];
                              v316 = *&v283[32];
                            }

                            if (!*a2)
                            {
                              goto LABEL_693;
                            }

                            if ((v310 & 1) == 0 || (v308 & 1) == 0)
                            {
                              goto LABEL_494;
                            }

                            v32 = WebCore::ScrollingStateScrollingNode::operator new(v18, v19);
                            v283[0] = v4;
                            *&v283[1] = v321[0];
                            *&v283[8] = *(v6 + 167);
                            v283[16] = v5;
                            *&v283[17] = *(v3 + 249);
                            *&v283[20] = *(v3 + 252);
                            LOBYTE(v328) = v275;
                            *(v6 + 225) = v320[0];
                            *(&v328 + 1) = *(v6 + 151);
                            v329 = v276;
                            *(v6 + 241) = *(v3 + 177);
                            *&v330[3] = *(v3 + 180);
                            LOBYTE(v325) = v273;
                            *(v6 + 201) = v319[0];
                            *(&v325 + 1) = *(v6 + 135);
                            v326 = v274;
                            *(v6 + 217) = *(v3 + 170);
                            *&v327[3] = *(v3 + 173);
                            LOBYTE(v322) = v271;
                            *(v6 + 177) = v318[0];
                            *(&v322 + 1) = *(v6 + 119);
                            v323 = v272;
                            *(v6 + 193) = *(v3 + 163);
                            *&v324[3] = *(v3 + 166);
                            LOBYTE(v311) = v269;
                            *(v6 + 25) = v317[0];
                            *(&v311 + 1) = *(v6 + 103);
                            v312 = v270;
                            *(v6 + 41) = *v297;
                            *&v313[3] = *(v3 + 159);
                            WebCore::ScrollingStatePluginScrollingNode::ScrollingStatePluginScrollingNode();
                            LODWORD(v2) = 1;
LABEL_429:
                            v146 = *&v290[16];
                            if (*&v290[16])
                            {
                              *&v290[16] = 0;
                              *&v290[24] = 0;
                              WTF::fastFree(v146, v19);
                            }

                            v147 = *v290;
                            if (*v290)
                            {
                              *v290 = 0;
                              *&v290[8] = 0;
                              WTF::fastFree(v147, v19);
                            }

                            WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v289, v19);
                            WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v288[8], v148);
LABEL_213:
                            if (v308 == 1)
                            {
                              WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v307, v19);
                            }

                            if (v2)
                            {
                              goto LABEL_128;
                            }

                            v33 = *a2;
                            v62 = a2[1];
                            *a2 = 0;
                            a2[1] = 0;
                            v35 = a2[3];
                            if (!v35 || !v62)
                            {
                              goto LABEL_571;
                            }

LABEL_493:
                            (*(*v35 + 16))(v35, v33);
                            if (!*a2)
                            {
                              goto LABEL_571;
                            }

LABEL_494:
                            __break(1u);
                          }
                        }

                        goto LABEL_692;
                      }
                    }

                    *a2 = 0;
                    a2[1] = 0;
                    v249 = a2[3];
                    if (v249)
                    {
                      if (v159)
                      {
                        (*(*v249 + 16))(v249);
                        v19 = *a2;
                        v159 = a2[1];
                        goto LABEL_692;
                      }
                    }

                    else
                    {
                      v159 = 0;
                    }

                    v19 = 0;
LABEL_692:
                    *a2 = 0;
                    a2[1] = 0;
                    v239 = a2[3];
                    if (v239 && v159)
                    {
                      goto LABEL_761;
                    }

                    goto LABEL_693;
                  }

LABEL_428:
                  LODWORD(v2) = 0;
                  v32 = 0;
                  goto LABEL_429;
                }

                v128 = a2[1];
                v129 = a2[2];
                v19 = *a2;
                if (v128 <= &v129[-*a2])
                {
                  *a2 = 0;
                  a2[1] = 0;
                  v237 = a2[3];
                  if (v237)
                  {
                    if (v128)
                    {
                      (*(*v237 + 16))(v237);
                      v128 = a2[1];
                    }
                  }

                  else
                  {
                    v128 = 0;
                  }
                }

                else
                {
                  a2[2] = (v129 + 1);
                  if (v129)
                  {
                    if (*v129 < 2u)
                    {
                      goto LABEL_381;
                    }

                    goto LABEL_661;
                  }
                }

                *a2 = 0;
                a2[1] = 0;
                v238 = a2[3];
                if (v238)
                {
                  if (v128)
                  {
                    (*(*v238 + 16))(v238);
                    v19 = *a2;
                    v128 = a2[1];
                    goto LABEL_661;
                  }
                }

                else
                {
                  v128 = 0;
                }

                v19 = 0;
LABEL_661:
                *a2 = 0;
                a2[1] = 0;
                v239 = a2[3];
                if (v239 && v128)
                {
                  goto LABEL_761;
                }

                goto LABEL_693;
              }
            }

LABEL_212:
            LODWORD(v2) = 0;
            v32 = 0;
            goto LABEL_213;
          }

          if (v13 >= 0x100 && v13 == 5)
          {
            IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v288);
            IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v301, a2);
            v26 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
            if (v19)
            {
              LODWORD(v2) = v26;
              if (v26)
              {
                IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
                if (v283[24] != 1)
                {
                  goto LABEL_144;
                }

                v27 = v283[0];
                v314[0] = *&v283[1];
                *(v314 + 7) = *&v283[8];
                v28 = v283[16];
              }

              else
              {
                v27 = 0;
                v28 = 0;
              }

              if (*a2)
              {
                if ((v288[16] & 1) == 0 || (v301[16] & 1) == 0)
                {
                  goto LABEL_494;
                }

                v283[0] = v27;
                *&v283[1] = v314[0];
                *&v283[8] = *(v314 + 7);
                v283[16] = v28;
                WebCore::ScrollingStatePluginHostingNode::create();
                v2 = v328;
                v39 = 1;
LABEL_145:
                if (v301[16] == 1)
                {
                  WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v301, v19);
                }

                if ((v39 & 1) == 0)
                {
                  v33 = *a2;
                  v40 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v35 = a2[3];
                  if (v35 && v40)
                  {
                    goto LABEL_493;
                  }

                  goto LABEL_571;
                }

                goto LABEL_51;
              }
            }

LABEL_144:
            v39 = 0;
            v2 = 0;
            goto LABEL_145;
          }

          if (v13 >= 0x100 && v13 == 6)
          {
            IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v301);
            IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v314, a2);
            v29 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
            if ((v19 & 1) == 0)
            {
              goto LABEL_513;
            }

            LODWORD(v2) = v29;
            if (v29)
            {
              IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
              if (v283[24] != 1)
              {
                goto LABEL_513;
              }

              v279 = v283[0];
              *&v328 = *&v283[1];
              *(&v328 + 7) = *&v283[8];
              v281 = v283[16];
            }

            else
            {
              v281 = 0;
              v279 = 0;
            }

            memset(&v283[8], 0, 36);
            *v283 = &unk_1F10E8210;
            if ((v2 & 2) == 0)
            {
LABEL_181:
              if (*a2)
              {
                if ((v301[16] & 1) == 0 || (v315 & 1) == 0)
                {
                  goto LABEL_494;
                }

                if (*MEMORY[0x1E69E2698])
                {
                  NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2698], v19);
                }

                else
                {
                  NonCompact = WebCore::ScrollingStateFixedNode::operatorNewSlow(0xB0);
                }

                v32 = NonCompact;
                v288[0] = v279;
                *&v288[1] = v328;
                *&v288[8] = *(&v328 + 7);
                v288[16] = v281;
                WebCore::ScrollingStateFixedNode::ScrollingStateFixedNode();
                LODWORD(v2) = 1;
LABEL_514:
                if (v315 == 1)
                {
                  WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v314, v19);
                }

                if ((v2 & 1) == 0)
                {
                  v33 = *a2;
                  v168 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v35 = a2[3];
                  if (v35 && v168)
                  {
                    goto LABEL_493;
                  }

                  goto LABEL_571;
                }

                goto LABEL_128;
              }

LABEL_513:
              LODWORD(v2) = 0;
              v32 = 0;
              goto LABEL_514;
            }

            v276 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
            v278 = v45;
            v46 = a2[1];
            v47 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v48 = v47 - *a2;
            v49 = v46 >= v48;
            v50 = v46 - v48;
            if (v49 && v50 > 3)
            {
              a2[2] = (v47 + 1);
              if (v47)
              {
                v51 = *v47 | 0x100000000;
LABEL_169:
                v52 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                v54 = v53;
                if ((v53 & 1) == 0)
                {
                  v217 = *a2;
                  v218 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v219 = a2[3];
                  if (v219)
                  {
                    if (v218)
                    {
                      (*(*v219 + 16))(v219, v217);
                    }
                  }
                }

                v275 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                v5 = v55;
                if ((v55 & 1) == 0)
                {
                  v188 = *a2;
                  v189 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v190 = a2[3];
                  if (v190)
                  {
                    if (v189)
                    {
                      (*(*v190 + 16))(v190, v188);
                    }
                  }
                }

                v4 = *a2;
                if (*a2)
                {
                  if ((v54 & 1) == 0 || (v5 & 1) == 0)
                  {
                    goto LABEL_494;
                  }

                  v56 = v52 & 0xFFFFFFFFFFFFFF00;
                  v52 = v52;
                }

                else
                {
                  v186 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v187 = a2[3];
                  if (v187 && v186)
                  {
                    (*(*v187 + 16))(v187, 0);
                  }

                  v52 = 0;
                  v56 = 0;
                }

                v57 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                if (!*a2)
                {
                  v166 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v167 = a2[3];
                  if (v167 && v166)
                  {
                    (*(*v167 + 16))(v167, 0);
                  }

                  goto LABEL_513;
                }

                if ((v278 & 1) == 0 || (v51 & 0x100000000) == 0 || !v4 || (v19 & 1) == 0)
                {
                  goto LABEL_494;
                }

                *&v283[8] = v276;
                *&v283[16] = v51;
                *&v283[20] = v56 | v52;
                *&v283[28] = v275;
                *&v283[36] = v57;
                goto LABEL_181;
              }
            }

            else
            {
              *a2 = 0;
              a2[1] = 0;
              v211 = a2[3];
              if (v211)
              {
                if (v46)
                {
                  (*(*v211 + 16))(v211);
                  v46 = a2[1];
                }
              }

              else
              {
                v46 = 0;
              }
            }

            *a2 = 0;
            a2[1] = 0;
            v212 = a2[3];
            if (v212 && v46)
            {
              (*(*v212 + 16))(v212);
            }

            v51 = 0;
            goto LABEL_169;
          }

          if (v13 >= 0x100 && v13 == 7)
          {
            IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v314);
            IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v328, a2);
            v282 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
            if ((v19 & 1) == 0)
            {
              goto LABEL_522;
            }

            if (v282)
            {
              IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
              if (v283[24] != 1)
              {
                goto LABEL_522;
              }

              v277 = v283[0];
              *&v325 = *&v283[1];
              *(&v325 + 7) = *&v283[8];
              v280 = v283[16];
            }

            else
            {
              v280 = 0;
              v277 = 0;
            }

            memset(v290, 0, sizeof(v290));
            v289 = 0u;
            *&v288[8] = 0u;
            *v288 = &unk_1F10E8238;
            v291 = 0u;
            v292 = 0u;
            v293 = 0u;
            if ((v282 & 2) == 0)
            {
LABEL_308:
              if ((v282 & 4) != 0)
              {
                IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
                if (v283[24] != 1)
                {
                  goto LABEL_522;
                }

                LODWORD(v2) = v283[0];
                *&v322 = *&v283[1];
                *(&v322 + 7) = *&v283[8];
                LOBYTE(v4) = v283[16];
              }

              else
              {
                LOBYTE(v4) = 0;
                LODWORD(v2) = 0;
              }

              if (*a2)
              {
                if ((v315 & 1) == 0 || (v329 & 1) == 0)
                {
                  goto LABEL_494;
                }

                if (*MEMORY[0x1E69E26B0])
                {
                  v110 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26B0], v19);
                }

                else
                {
                  v110 = WebCore::ScrollingStateStickyNode::operatorNewSlow(0x128);
                }

                v32 = v110;
                v301[0] = v277;
                *&v301[1] = v325;
                *&v301[8] = *(&v325 + 7);
                v301[16] = v280;
                *&v301[17] = v311;
                *&v301[20] = *(&v311 + 3);
                *v283 = 0uLL;
                if (v4)
                {
                  v283[16] = v2;
                  *&v283[17] = v322;
                  *&v283[24] = *(&v322 + 7);
                }

                else
                {
                  *&v283[16] = 0uLL;
                }

                *&v283[32] = 3;
                WebCore::ScrollingStateStickyNode::ScrollingStateStickyNode();
                WebCore::LayerRepresentation::~LayerRepresentation(v283, v111);
                LODWORD(v2) = 1;
LABEL_523:
                if (v329 == 1)
                {
                  WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v328, v19);
                }

                if ((v2 & 1) == 0)
                {
                  v33 = *a2;
                  v171 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v35 = a2[3];
                  if (v35 && v171)
                  {
                    goto LABEL_493;
                  }

                  goto LABEL_571;
                }

                goto LABEL_128;
              }

LABEL_522:
              LODWORD(v2) = 0;
              v32 = 0;
              goto LABEL_523;
            }

            v266 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
            v271 = v75;
            v76 = a2[1];
            v77 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v78 = *a2;
            v79 = v77 - *a2;
            v49 = v76 >= v79;
            v80 = v76 - v79;
            if (v49 && v80 > 3)
            {
              a2[2] = (v77 + 1);
              if (v77)
              {
                v276 = *v77 | 0x100000000;
                v81 = v78;
                goto LABEL_251;
              }
            }

            else
            {
              *a2 = 0;
              a2[1] = 0;
              v213 = a2[3];
              if (v213)
              {
                if (v76)
                {
                  (*(*v213 + 16))(v213, v78);
                  v78 = *a2;
                  v76 = a2[1];
                  goto LABEL_614;
                }
              }

              else
              {
                v76 = 0;
              }

              v78 = 0;
            }

LABEL_614:
            *a2 = 0;
            a2[1] = 0;
            v214 = a2[3];
            if (v214)
            {
              if (v76)
              {
                (*(*v214 + 16))(v214, v78);
                v276 = 0;
                v81 = *a2;
                v76 = a2[1];
                v78 = *a2;
                goto LABEL_251;
              }

              v81 = 0;
            }

            else
            {
              v81 = 0;
              v76 = 0;
            }

            v78 = 0;
            v276 = 0;
LABEL_251:
            v82 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
            if (v76 < v82 - v78 || v76 - (v82 - v78) <= 3)
            {
              *a2 = 0;
              a2[1] = 0;
              v240 = a2[3];
              if (v240)
              {
                if (v76)
                {
                  (*(*v240 + 16))(v240, v81);
                  v81 = *a2;
                  v76 = a2[1];
                  goto LABEL_667;
                }
              }

              else
              {
                v76 = 0;
              }

              v81 = 0;
            }

            else
            {
              a2[2] = (v82 + 1);
              if (v82)
              {
                v275 = *v82 | 0x100000000;
                goto LABEL_255;
              }
            }

LABEL_667:
            *a2 = 0;
            a2[1] = 0;
            v241 = a2[3];
            if (v241)
            {
              if (v76)
              {
                (*(*v241 + 16))(v241, v81);
                v275 = 0;
                v81 = *a2;
                v76 = a2[1];
                v78 = *a2;
                goto LABEL_255;
              }

              v81 = 0;
            }

            else
            {
              v81 = 0;
              v76 = 0;
            }

            v78 = 0;
            v275 = 0;
LABEL_255:
            v83 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
            if (v76 < v83 - v78 || v76 - (v83 - v78) <= 3)
            {
              *a2 = 0;
              a2[1] = 0;
              v242 = a2[3];
              if (v242)
              {
                if (v76)
                {
                  (*(*v242 + 16))(v242, v81);
                  v81 = *a2;
                  v76 = a2[1];
                  goto LABEL_673;
                }
              }

              else
              {
                v76 = 0;
              }

              v81 = 0;
            }

            else
            {
              a2[2] = (v83 + 1);
              if (v83)
              {
                v274 = *v83 | 0x100000000;
                goto LABEL_259;
              }
            }

LABEL_673:
            *a2 = 0;
            a2[1] = 0;
            v243 = a2[3];
            if (v243)
            {
              if (v76)
              {
                (*(*v243 + 16))(v243, v81);
                v274 = 0;
                v81 = *a2;
                v76 = a2[1];
                v78 = *a2;
                goto LABEL_259;
              }

              v81 = 0;
            }

            else
            {
              v81 = 0;
              v76 = 0;
            }

            v78 = 0;
            v274 = 0;
LABEL_259:
            v84 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
            if (v76 < v84 - v78 || v76 - (v84 - v78) <= 3)
            {
              *a2 = 0;
              a2[1] = 0;
              v244 = a2[3];
              if (v244)
              {
                if (v76)
                {
                  (*(*v244 + 16))(v244, v81);
                  v81 = *a2;
                  v76 = a2[1];
                  goto LABEL_679;
                }
              }

              else
              {
                v76 = 0;
              }

              v81 = 0;
            }

            else
            {
              a2[2] = (v84 + 1);
              if (v84)
              {
                v273 = *v84 | 0x100000000;
                goto LABEL_263;
              }
            }

LABEL_679:
            *a2 = 0;
            a2[1] = 0;
            v245 = a2[3];
            if (v245)
            {
              if (v76)
              {
                (*(*v245 + 16))(v245, v81);
                v273 = 0;
                v81 = *a2;
                v76 = a2[1];
                v78 = *a2;
                goto LABEL_263;
              }

              v81 = 0;
            }

            else
            {
              v81 = 0;
              v76 = 0;
            }

            v78 = 0;
            v273 = 0;
LABEL_263:
            v85 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v86 = v85 - v78;
            v49 = v76 >= v86;
            v87 = v76 - v86;
            if (v49 && v87 > 3)
            {
              a2[2] = (v85 + 1);
              if (v85)
              {
                v272 = *v85 | 0x100000000;
LABEL_268:
                v88 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                LODWORD(v2) = v89;
                if ((v89 & 1) == 0)
                {
                  v223 = *a2;
                  v224 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v225 = a2[3];
                  if (v225)
                  {
                    if (v224)
                    {
                      (*(*v225 + 16))(v225, v223);
                    }
                  }
                }

                v265 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                LOBYTE(v4) = v90;
                if ((v90 & 1) == 0)
                {
                  v199 = *a2;
                  v200 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v201 = a2[3];
                  if (v201)
                  {
                    if (v200)
                    {
                      (*(*v201 + 16))(v201, v199);
                    }
                  }
                }

                v270 = *a2;
                if (*a2)
                {
                  if ((v2 & 1) == 0 || (v4 & 1) == 0)
                  {
                    goto LABEL_494;
                  }

                  v263 = v88 & 0xFFFFFFFFFFFFFF00;
                  v264 = v88;
                }

                else
                {
                  v191 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v192 = a2[3];
                  if (v192 && v191)
                  {
                    (*(*v192 + 16))(v192, 0);
                  }

                  v263 = 0;
                  v264 = 0;
                }

                v91 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                LODWORD(v2) = v92;
                if ((v92 & 1) == 0)
                {
                  v226 = *a2;
                  v227 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v228 = a2[3];
                  if (v228)
                  {
                    if (v227)
                    {
                      (*(*v228 + 16))(v228, v226);
                    }
                  }
                }

                v262 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                LOBYTE(v4) = v93;
                if ((v93 & 1) == 0)
                {
                  v202 = *a2;
                  v203 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v204 = a2[3];
                  if (v204)
                  {
                    if (v203)
                    {
                      (*(*v204 + 16))(v204, v202);
                    }
                  }
                }

                v269 = *a2;
                if (*a2)
                {
                  if ((v2 & 1) == 0 || (v4 & 1) == 0)
                  {
                    goto LABEL_494;
                  }

                  v259 = v91 & 0xFFFFFFFFFFFFFF00;
                  v260 = v91;
                }

                else
                {
                  v193 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v194 = a2[3];
                  if (v194 && v193)
                  {
                    (*(*v194 + 16))(v194, 0);
                  }

                  v259 = 0;
                  v260 = 0;
                }

                v94 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                LODWORD(v2) = v95;
                if ((v95 & 1) == 0)
                {
                  v229 = *a2;
                  v230 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v231 = a2[3];
                  if (v231)
                  {
                    if (v230)
                    {
                      (*(*v231 + 16))(v231, v229);
                    }
                  }
                }

                v258 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                LOBYTE(v4) = v96;
                if ((v96 & 1) == 0)
                {
                  v205 = *a2;
                  v206 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v207 = a2[3];
                  if (v207)
                  {
                    if (v206)
                    {
                      (*(*v207 + 16))(v207, v205);
                    }
                  }
                }

                v267 = *a2;
                if (*a2)
                {
                  if ((v2 & 1) == 0 || (v4 & 1) == 0)
                  {
                    goto LABEL_494;
                  }

                  v256 = v94 & 0xFFFFFFFFFFFFFF00;
                  v257 = v94;
                }

                else
                {
                  v195 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v196 = a2[3];
                  if (v196 && v195)
                  {
                    (*(*v196 + 16))(v196, 0);
                  }

                  v256 = 0;
                  v257 = 0;
                }

                v255 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                v261 = v97;
                v254 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                LODWORD(v2) = v98;
                v99 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                v101 = v100;
                if ((v100 & 1) == 0)
                {
                  v232 = *a2;
                  v233 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v234 = a2[3];
                  if (v234)
                  {
                    if (v233)
                    {
                      (*(*v234 + 16))(v234, v232);
                    }
                  }
                }

                v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
                v5 = v102;
                if ((v102 & 1) == 0)
                {
                  v208 = *a2;
                  v209 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v210 = a2[3];
                  if (v210)
                  {
                    if (v209)
                    {
                      (*(*v210 + 16))(v210, v208);
                    }
                  }
                }

                v103 = *a2;
                if (*a2)
                {
                  if ((v101 & 1) == 0 || (v5 & 1) == 0)
                  {
                    goto LABEL_494;
                  }

                  v104 = v99 & 0xFFFFFFFFFFFFFF00;
                  v99 = v99;
                }

                else
                {
                  v197 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v198 = a2[3];
                  if (v198 && v197)
                  {
                    (*(*v198 + 16))(v198, 0);
                  }

                  v104 = 0;
                  v99 = 0;
                }

                v105 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                if (*a2)
                {
                  if ((v271 & 1) == 0 || (v276 & 0x100000000) == 0 || (v275 & 0x100000000) == 0 || (v274 & 0x100000000) == 0 || (v273 & 0x100000000) == 0 || (v272 & 0x100000000) == 0 || !v270 || !v269 || !v267 || (v261 & 1) == 0 || (v2 & 1) == 0 || !v103 || (v19 & 1) == 0)
                  {
                    goto LABEL_494;
                  }

                  *&v283[8] = v266;
                  *&v283[16] = v276;
                  *&v283[20] = v99 | v104;
                  *&v283[28] = v4;
                  *&v283[36] = v105;
                  *v283 = &unk_1F10E8238;
                  *&v283[44] = v275;
                  *&v283[48] = v274;
                  *&v283[52] = v273;
                  *&v283[56] = v272;
                  *&v283[60] = v263 | v264;
                  *&v283[68] = v265;
                  *&v284 = v259 | v260;
                  *(&v284 + 1) = v262;
                  *&v285 = v256 | v257;
                  *(&v285 + 1) = v258;
                  *&v286 = v255;
                  *(&v286 + 1) = v254;
                }

                else
                {
                  v283[0] = 0;
                  v287 = 0;
                  v169 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v170 = a2[3];
                  if (!v170)
                  {
                    goto LABEL_522;
                  }

                  if (!v169)
                  {
                    goto LABEL_522;
                  }

                  (*(*v170 + 16))(v170, 0);
                  if ((v287 & 1) == 0)
                  {
                    goto LABEL_522;
                  }
                }

                *&v288[8] = *&v283[8];
                v289 = *&v283[24];
                *v290 = *&v283[40];
                *&v290[20] = *&v283[60];
                v291 = v284;
                v292 = v285;
                v293 = v286;
                *&v290[4] = *&v283[44];
                goto LABEL_308;
              }

LABEL_685:
              *a2 = 0;
              a2[1] = 0;
              v247 = a2[3];
              if (v247 && v76)
              {
                (*(*v247 + 16))(v247, v81);
              }

              v272 = 0;
              goto LABEL_268;
            }

            *a2 = 0;
            a2[1] = 0;
            v246 = a2[3];
            if (v246)
            {
              if (v76)
              {
                (*(*v246 + 16))(v246, v81);
                v81 = *a2;
                v76 = a2[1];
                goto LABEL_685;
              }
            }

            else
            {
              v76 = 0;
            }

            v81 = 0;
            goto LABEL_685;
          }

          if (v13 >= 0x100 && v13 == 8)
          {
            IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v288);
            IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v301, a2);
            v37 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
            if (v19)
            {
              LODWORD(v2) = v37;
              if ((v37 & 1) == 0)
              {
                LOBYTE(v4) = 0;
                v38 = 0;
                goto LABEL_347;
              }

              IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
              if (v283[24] == 1)
              {
                v38 = v283[0];
                *&v325 = *&v283[1];
                *(&v325 + 7) = *&v283[8];
                LOBYTE(v4) = v283[16];
LABEL_347:
                v115 = 0;
                v328 = 0uLL;
                if ((v2 & 2) == 0)
                {
                  goto LABEL_436;
                }

                v116 = a2[1];
                v117 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
                v19 = *a2;
                v118 = v117 - *a2;
                v49 = v116 >= v118;
                v119 = v116 - v118;
                if (v49 && v119 > 7)
                {
                  a2[2] = (v117 + 1);
                  if (v117)
                  {
                    v3 = *v117;
                    v314[1] = 0;
                    v314[0] = 0;
                    if (v3 < 0x10000)
                    {
                      if (v3)
                      {
                        v120 = WTF::fastMalloc(v117, (16 * v3));
                        LODWORD(v121) = 0;
                        LODWORD(v314[1]) = v3;
                        v314[0] = v120;
                        while (1)
                        {
                          IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v283);
                          if ((v283[16] & 1) == 0)
                          {
                            break;
                          }

                          if (v121 == LODWORD(v314[1]))
                          {
                            v122 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v314, v121 + 1, v283);
                            v123 = HIDWORD(v314[1]);
                            v120 = v314[0];
                            *(v314[0] + HIDWORD(v314[1])) = *v122;
                          }

                          else
                          {
                            *(v120 + v121) = *v283;
                            v123 = HIDWORD(v314[1]);
                          }

                          LODWORD(v121) = v123 + 1;
                          HIDWORD(v314[1]) = v123 + 1;
                          if (!--v3)
                          {
                            goto LABEL_435;
                          }
                        }

LABEL_543:
                        if (v314[0])
                        {
                          WTF::fastFree(v314[0], v19);
                        }

                        goto LABEL_545;
                      }

                      LODWORD(v121) = 0;
                      goto LABEL_435;
                    }

                    v172 = 0;
                    LODWORD(v121) = 0;
                    do
                    {
                      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v283);
                      if ((v283[16] & 1) == 0)
                      {
                        goto LABEL_543;
                      }

                      if (v121 == LODWORD(v314[1]))
                      {
                        v173 = WTF::Vector<WebCore::TextTab,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v314, v121 + 1, v283);
                        v174 = HIDWORD(v314[1]);
                        v172 = v314[0];
                        *(v314[0] + HIDWORD(v314[1])) = *v173;
                      }

                      else
                      {
                        *(v172 + v121) = *v283;
                        v174 = HIDWORD(v314[1]);
                      }

                      v121 = (v174 + 1);
                      HIDWORD(v314[1]) = v174 + 1;
                      --v3;
                    }

                    while (v3);
                    if (LODWORD(v314[1]) <= v121)
                    {
                      goto LABEL_435;
                    }

                    if (v174 == -1)
                    {
                      goto LABEL_562;
                    }

                    v175 = (v121 >> 28);
                    if (v175)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x19D84E0D8);
                    }

                    v3 = 16 * v121;
                    v176 = WTF::fastMalloc(v175, (16 * v121));
                    LODWORD(v314[1]) = v121;
                    v314[0] = v176;
                    if (v176 == v172)
                    {
LABEL_562:
                      v314[0] = 0;
                      LODWORD(v314[1]) = 0;
                    }

                    else
                    {
                      v177 = 0;
                      do
                      {
                        *&v176[v177 / 8] = *(v172 + v177);
                        v177 += 16;
                      }

                      while (v3 != v177);
                      if (!v172)
                      {
LABEL_435:
                        v115 = v314[0];
                        *&v328 = v314[0];
                        *(&v328 + 1) = __PAIR64__(v121, v314[1]);
LABEL_436:
                        v314[1] = 0;
                        v314[0] = 0;
                        if ((v2 & 4) != 0)
                        {
                          v149 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                          v3 = v150;
                          *&v322 = v149;
                          BYTE8(v322) = v150;
                          v151 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
                          v153 = v152;
                          *&v311 = v151;
                          BYTE8(v311) = v152;
                          v19 = *a2;
                          if (!*a2)
                          {
                            v283[0] = 0;
                            v283[16] = 0;
                            v181 = a2[1];
                            *a2 = 0;
                            a2[1] = 0;
                            v182 = a2[3];
                            if (v182 && v181)
                            {
                              (*(*v182 + 16))(v182);
                            }

                            goto LABEL_558;
                          }

                          if ((v3 & 1) == 0 || (v153 & 1) == 0)
                          {
                            goto LABEL_494;
                          }

                          WebCore::AbsolutePositionConstraints::AbsolutePositionConstraints(v283, &v322, &v311);
                          *v314 = *v283;
                        }

                        if (*a2)
                        {
                          if ((v288[16] & 1) == 0 || (v301[16] & 1) == 0)
                          {
                            goto LABEL_494;
                          }

                          if (*MEMORY[0x1E69E26F8])
                          {
                            v154 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26F8], v19);
                          }

                          else
                          {
                            v154 = WebCore::ScrollingStatePositionedNode::operatorNewSlow(0xA0);
                          }

                          v3 = v154;
                          v283[0] = v38;
                          *&v283[1] = v325;
                          *&v283[8] = *(&v325 + 7);
                          v283[16] = v4;
                          *&v283[17] = v309;
                          *&v283[20] = *(&v309 + 3);
                          WebCore::ScrollingStatePositionedNode::ScrollingStatePositionedNode();
                          LODWORD(v2) = 1;
                          v115 = v328;
                          if (!v328)
                          {
                            goto LABEL_547;
                          }

LABEL_447:
                          *&v328 = 0;
                          DWORD2(v328) = 0;
                          WTF::fastFree(v115, v19);
LABEL_547:
                          if (v301[16] == 1)
                          {
                            WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v301, v19);
                          }

                          if ((v2 & 1) == 0)
                          {
                            v33 = *a2;
                            v180 = a2[1];
                            *a2 = 0;
                            a2[1] = 0;
                            v35 = a2[3];
                            if (v35 && v180)
                            {
                              goto LABEL_493;
                            }

                            goto LABEL_571;
                          }

                          if (*a2)
                          {
                            *a1 = v3;
                            goto LABEL_130;
                          }

                          *a1 = 0;
                          *(a1 + 8) = 0;
                          if (!v3)
                          {
                            goto LABEL_131;
                          }

                          v133 = (v3 + 8);
                          goto LABEL_465;
                        }

LABEL_558:
                        LODWORD(v2) = 0;
                        v3 = 0;
                        if (!v115)
                        {
                          goto LABEL_547;
                        }

                        goto LABEL_447;
                      }
                    }

                    WTF::fastFree(v172, v19);
                    LODWORD(v121) = HIDWORD(v314[1]);
                    goto LABEL_435;
                  }
                }

                else
                {
                  *a2 = 0;
                  a2[1] = 0;
                  v215 = a2[3];
                  if (v215)
                  {
                    if (v116)
                    {
                      (*(*v215 + 16))(v215);
                      v116 = a2[1];
                    }
                  }

                  else
                  {
                    v116 = 0;
                  }
                }

                *a2 = 0;
                a2[1] = 0;
                v216 = a2[3];
                if (v216 && v116)
                {
                  (*(*v216 + 16))(v216);
                }

LABEL_545:
                v19 = *a2;
                v178 = a2[1];
                *a2 = 0;
                a2[1] = 0;
                v179 = a2[3];
                if (v179 && v178)
                {
                  (*(*v179 + 16))(v179, v19);
                }
              }
            }

            LODWORD(v2) = 0;
            v3 = 0;
            goto LABEL_547;
          }

LABEL_571:
          *a1 = 0;
          *(a1 + 8) = 0;
          goto LABEL_131;
        }

        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v301);
        IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v314, a2);
        v23 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_87;
        }

        LODWORD(v2) = v23;
        if (v23)
        {
          IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
          if (v283[24] != 1)
          {
            goto LABEL_87;
          }

          v24 = v283[0];
          *&v328 = *&v283[1];
          *(&v328 + 7) = *&v283[8];
          LOBYTE(v4) = v283[16];
        }

        else
        {
          LOBYTE(v4) = 0;
          v24 = 0;
        }

        if ((v2 & 2) != 0)
        {
          IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
          if (v283[24] != 1)
          {
            goto LABEL_87;
          }

          v5 = v283[0];
          *&v325 = *&v283[1];
          *(&v325 + 7) = *&v283[8];
          v30 = v283[16];
        }

        else
        {
          v30 = 0;
          v5 = 0;
        }

        if (*a2)
        {
          if ((v301[16] & 1) == 0 || (v315 & 1) == 0)
          {
            goto LABEL_494;
          }

          if (*MEMORY[0x1E69E2738])
          {
            v31 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2738], v19);
          }

          else
          {
            v31 = WebCore::ScrollingStateOverflowScrollProxyNode::operatorNewSlow(0x90);
          }

          v32 = v31;
          v283[0] = v24;
          *&v283[1] = v328;
          *&v283[8] = *(&v328 + 7);
          v283[16] = v4;
          v288[0] = v5;
          *&v288[1] = v325;
          *&v288[8] = *(&v325 + 7);
          v288[16] = v30;
          WebCore::ScrollingStateOverflowScrollProxyNode::ScrollingStateOverflowScrollProxyNode();
          LODWORD(v2) = 1;
LABEL_88:
          if (v315 == 1)
          {
            WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v314, v19);
          }

          if ((v2 & 1) == 0)
          {
            v33 = *a2;
            v34 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            v35 = a2[3];
            if (v35 && v34)
            {
              goto LABEL_493;
            }

            goto LABEL_571;
          }

          goto LABEL_128;
        }

LABEL_87:
        LODWORD(v2) = 0;
        v32 = 0;
        goto LABEL_88;
      }

      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v309);
      IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v307, a2);
      v22 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
      if ((v19 & 1) == 0)
      {
        goto LABEL_124;
      }

      LODWORD(v2) = v22;
      if (v22)
      {
        IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
        if (v283[24] != 1)
        {
          goto LABEL_124;
        }

        v5 = v283[0];
        v321[0] = *&v283[1];
        *(v321 + 7) = *&v283[8];
        LOBYTE(v4) = v283[16];
      }

      else
      {
        v5 = 0;
        LOBYTE(v4) = 0;
      }

      if ((v2 & 2) != 0)
      {
        IPC::Decoder::decode<WebCore::FloatPoint>(a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      if ((v2 & 4) != 0)
      {
        IPC::Decoder::decode<WebCore::FloatPoint>(a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      if ((v2 & 8) != 0)
      {
        IPC::Decoder::decode<WebCore::FloatPoint>(a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      if ((v2 & 0x10) != 0)
      {
        IPC::Decoder::decode<WebCore::FloatPoint>(a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      if ((v2 & 0x20) != 0)
      {
        IPC::Decoder::decode<WebCore::IntPoint>(a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_124;
        }

        *v304 = 257;
        *&v304[2] = 0;
        v305 = 0;
      }

      else
      {
        *v304 = 257;
        *&v304[2] = 0;
        v305 = 0;
      }

      if ((v2 & 0x40) != 0)
      {
        v36 = IPC::Decoder::decode<WebCore::ScrollableAreaParameters>(a2);
        if ((v19 & 0x1000000) == 0)
        {
          goto LABEL_124;
        }

        *v304 = v36;
        *&v304[8] = v19;
        v305 = BYTE2(v19);
      }

      v301[0] = 0;
      *&v301[4] = 0;
      v301[12] = 0;
      *&v301[16] = 256;
      v301[18] = 0;
      v301[20] = 0;
      v303 = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_117;
      }

      IPC::Decoder::decode<WebCore::RequestedScrollData>(v283, a2);
      if (v283[44] == 1)
      {
        *v301 = *v283;
        *&v301[15] = *&v283[15];
        if (v303 == v283[40])
        {
          if (v303)
          {
            v301[20] = v283[20];
            *&v301[24] = *&v283[24];
            *&v301[32] = *&v283[32];
            LOWORD(v302) = *&v283[36];
          }
        }

        else if (v303)
        {
          v303 = 0;
        }

        else
        {
          *&v301[20] = *&v283[20];
          v302 = *&v283[36];
          v303 = 1;
        }

LABEL_117:
        v288[0] = 0;
        *&v288[8] = 0u;
        v289 = 0u;
        memset(v290, 0, 32);
        if ((v2 & 0x100) != 0)
        {
          IPC::Decoder::decode<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>>(v283, a2);
          if (v283[72] != 1)
          {
            goto LABEL_451;
          }

          v288[0] = v283[0];
          v41 = *&v288[8];
          if (*&v288[20])
          {
            v42 = 40 * *&v288[20];
            v43 = *&v288[8] + 24;
            do
            {
              v44 = *v43;
              if (*v43)
              {
                *v43 = 0;
                *(v43 + 8) = 0;
                WTF::fastFree(v44, v19);
              }

              v43 += 40;
              v42 -= 40;
            }

            while (v42);
            v41 = *&v288[8];
          }

          if (v41)
          {
            *&v288[8] = 0;
            *&v288[16] = 0;
            WTF::fastFree(v41, v19);
          }

          *&v288[8] = *&v283[8];
          v63 = *&v283[16];
          *&v283[8] = 0;
          *&v283[16] = 0;
          *&v288[16] = v63;
          v64 = v289;
          if (HIDWORD(v289))
          {
            v65 = 40 * HIDWORD(v289);
            v66 = v289 + 24;
            do
            {
              v67 = *v66;
              if (*v66)
              {
                *v66 = 0;
                *(v66 + 8) = 0;
                WTF::fastFree(v67, v19);
              }

              v66 += 40;
              v65 -= 40;
            }

            while (v65);
            v64 = v289;
          }

          if (v64)
          {
            *&v289 = 0;
            DWORD2(v289) = 0;
            WTF::fastFree(v64, v19);
          }

          *&v289 = *&v283[24];
          v68 = *&v283[32];
          *&v283[24] = 0;
          *&v283[32] = 0;
          *(&v289 + 1) = v68;
          v69 = *v290;
          if (*v290)
          {
            *v290 = 0;
            *&v290[8] = 0;
            WTF::fastFree(v69, v19);
          }

          *v290 = *&v283[40];
          v70 = *&v283[48];
          *&v283[40] = 0;
          *&v283[48] = 0;
          *&v290[8] = v70;
          v71 = *&v290[16];
          if (*&v290[16])
          {
            *&v290[16] = 0;
            *&v290[24] = 0;
            WTF::fastFree(v71, v19);
          }

          *&v290[16] = *&v283[56];
          v72 = *&v283[64];
          *&v283[56] = 0;
          *&v283[64] = 0;
          *&v290[24] = v72;
          if (v283[72])
          {
            v73 = *&v283[40];
            if (*&v283[40])
            {
              *&v283[40] = 0;
              *&v283[48] = 0;
              WTF::fastFree(v73, v19);
            }

            WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v283[24], v19);
            WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v283[8], v74);
          }
        }

        if ((v2 & 0x200) != 0)
        {
          IPC::Decoder::decode<std::optional<unsigned int>>(a2);
          if ((v19 & 1) == 0)
          {
            goto LABEL_451;
          }
        }

        if ((v2 & 0x400) != 0)
        {
          v59 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
          if ((v19 & 1) == 0)
          {
            goto LABEL_451;
          }

          LOBYTE(v276) = v59;
        }

        else
        {
          LOBYTE(v276) = 0;
        }

        if ((v2 & 0x800) == 0)
        {
LABEL_202:
          if ((v2 & 0x1000) != 0)
          {
            IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
            if ((v283[24] & 1) == 0)
            {
              goto LABEL_451;
            }

            LOBYTE(v275) = v283[0];
            v320[0] = *&v283[1];
            *(v320 + 7) = *&v283[8];
            LOBYTE(v274) = v283[16];
          }

          else
          {
            LOBYTE(v275) = 0;
            LOBYTE(v274) = 0;
          }

          if ((v2 & 0x2000) != 0)
          {
            IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
            if ((v283[24] & 1) == 0)
            {
              goto LABEL_451;
            }

            LOBYTE(v273) = v283[0];
            v319[0] = *&v283[1];
            *(v319 + 7) = *&v283[8];
            LOBYTE(v272) = v283[16];
          }

          else
          {
            LOBYTE(v273) = 0;
            LOBYTE(v272) = 0;
          }

          if ((v2 & 0x4000) != 0)
          {
            IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
            if ((v283[24] & 1) == 0)
            {
              goto LABEL_451;
            }

            v271 = v283[0];
            v318[0] = *&v283[1];
            *(v318 + 7) = *&v283[8];
            LOBYTE(v270) = v283[16];
          }

          else
          {
            v271 = 0;
            LOBYTE(v270) = 0;
          }

          if ((v2 & 0x8000) != 0)
          {
            IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
            if ((v283[24] & 1) == 0)
            {
              goto LABEL_451;
            }

            LOBYTE(v269) = v283[0];
            v317[0] = *&v283[1];
            *(v317 + 7) = *&v283[8];
            v268 = v283[16];
          }

          else
          {
            LOBYTE(v269) = 0;
            v268 = 0;
          }

          if ((v2 & 0x10000) == 0)
          {
            goto LABEL_367;
          }

          v124 = a2[1];
          v125 = a2[2];
          v19 = *a2;
          if (v124 <= &v125[-*a2])
          {
            *a2 = 0;
            a2[1] = 0;
            v235 = a2[3];
            if (v235)
            {
              if (v124)
              {
                (*(*v235 + 16))(v235);
                v124 = a2[1];
              }
            }

            else
            {
              v124 = 0;
            }
          }

          else
          {
            a2[2] = (v125 + 1);
            if (v125)
            {
              if (*v125 < 2u)
              {
LABEL_367:
                v296 = 0uLL;
                if ((v2 & 0x20000) != 0)
                {
                  IPC::Decoder::decode<WebCore::MouseLocationState>(v283, a2);
                  if ((v283[16] & 1) == 0)
                  {
                    goto LABEL_451;
                  }

                  v296 = *v283;
                }

                v295 = 0;
                if ((v2 & 0x40000) != 0)
                {
                  v126 = IPC::Decoder::decode<WebCore::ScrollbarHoverState>(a2);
                  if ((v126 & 0xFFFFFF) < 0x10000)
                  {
                    goto LABEL_451;
                  }

                  v295 = v126;
                }

                v294 = 0;
                if ((v2 & 0x80000) != 0)
                {
                  v127 = IPC::Decoder::decode<WebCore::ScrollbarHoverState>(a2);
                  if ((v127 & 0xFFFFFF) < 0x10000)
                  {
                    goto LABEL_451;
                  }

                  v294 = v127;
                }

                if ((v2 & 0x100000) == 0 || IPC::Decoder::decode<WebCore::UserInterfaceLayoutDirection>(a2) >= 0x100u)
                {
                  if ((v2 & 0x200000) == 0)
                  {
                    v145 = 0;
                    goto LABEL_457;
                  }

                  v145 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
                  if (v145 >= 0x100u)
                  {
LABEL_457:
                    if ((v2 & 0x400000) == 0)
                    {
                      LOBYTE(v314[0]) = 0;
                      BYTE4(v314[0]) = 0;
                      LOBYTE(v316) = 0;
LABEL_484:
                      if ((v2 & 0x800000) == 0)
                      {
                        goto LABEL_487;
                      }

                      v145 = IPC::Decoder::decode<WebCore::RequestedKeyboardScrollData>(v283, a2);
                      if (v283[36] == 1)
                      {
                        *v314 = *v283;
                        v315 = *&v283[16];
                        v316 = *&v283[32];
LABEL_487:
                        if (*a2)
                        {
                          if ((v310 & 1) == 0 || (v308 & 1) == 0)
                          {
                            goto LABEL_494;
                          }

                          v32 = WebCore::ScrollingStateScrollingNode::operator new(v145, v19);
                          v283[0] = v5;
                          *&v283[1] = v321[0];
                          *&v283[8] = *(v321 + 7);
                          v283[16] = v4;
                          *&v283[17] = *v306;
                          *&v283[20] = *&v306[3];
                          LOBYTE(v328) = v275;
                          *(&v328 + 1) = v320[0];
                          *(&v328 + 1) = *(v320 + 7);
                          v329 = v274;
                          *v330 = *v300;
                          *&v330[3] = *&v300[3];
                          LOBYTE(v325) = v273;
                          *(&v325 + 1) = v319[0];
                          *(&v325 + 1) = *(v319 + 7);
                          v326 = v272;
                          *v327 = *v299;
                          *&v327[3] = *&v299[3];
                          LOBYTE(v322) = v271;
                          *(&v322 + 1) = v318[0];
                          *(&v322 + 1) = *(v318 + 7);
                          v323 = v270;
                          *v324 = *v298;
                          *&v324[3] = *&v298[3];
                          LOBYTE(v311) = v269;
                          *(&v311 + 1) = v317[0];
                          *(&v311 + 1) = *(v317 + 7);
                          v312 = v268;
                          *v313 = *v297;
                          *&v313[3] = *&v297[3];
                          WebCore::ScrollingStateOverflowScrollingNode::ScrollingStateOverflowScrollingNode();
                          LODWORD(v2) = 1;
                          goto LABEL_452;
                        }

                        goto LABEL_451;
                      }

LABEL_655:
                      LODWORD(v2) = 0;
                      v32 = 0;
                      goto LABEL_452;
                    }

                    v161 = a2[1];
                    v162 = a2[2];
                    v19 = *a2;
                    if (v161 <= &v162[-*a2])
                    {
                      *a2 = 0;
                      a2[1] = 0;
                      v250 = a2[3];
                      if (v250)
                      {
                        if (v161)
                        {
                          (*(*v250 + 16))(v250);
                          v161 = a2[1];
                        }
                      }

                      else
                      {
                        v161 = 0;
                      }
                    }

                    else
                    {
                      a2[2] = (v162 + 1);
                      if (v162)
                      {
                        if (*v162 < 2u)
                        {
                          LOBYTE(v314[0]) = 0;
                          BYTE4(v314[0]) = 0;
                          LOBYTE(v316) = 0;
                          goto LABEL_484;
                        }

                        goto LABEL_699;
                      }
                    }

                    *a2 = 0;
                    a2[1] = 0;
                    v251 = a2[3];
                    if (v251)
                    {
                      if (v161)
                      {
                        (*(*v251 + 16))(v251);
                        v19 = *a2;
                        v161 = a2[1];
                        goto LABEL_699;
                      }
                    }

                    else
                    {
                      v161 = 0;
                    }

                    v19 = 0;
LABEL_699:
                    *a2 = 0;
                    a2[1] = 0;
                    v222 = a2[3];
                    if (!v222 || !v161)
                    {
                      goto LABEL_655;
                    }

                    goto LABEL_735;
                  }
                }

LABEL_451:
                LODWORD(v2) = 0;
                v32 = 0;
LABEL_452:
                v155 = *&v290[16];
                if (*&v290[16])
                {
                  *&v290[16] = 0;
                  *&v290[24] = 0;
                  WTF::fastFree(v155, v19);
                }

                v156 = *v290;
                if (*v290)
                {
                  *v290 = 0;
                  *&v290[8] = 0;
                  WTF::fastFree(v156, v19);
                }

                WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v289, v19);
                WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v288[8], v157);
LABEL_125:
                if (v308 == 1)
                {
                  WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v307, v19);
                }

                if ((v2 & 1) == 0)
                {
                  v33 = *a2;
                  v163 = a2[1];
                  *a2 = 0;
                  a2[1] = 0;
                  v35 = a2[3];
                  if (v35 && v163)
                  {
                    goto LABEL_493;
                  }

                  goto LABEL_571;
                }

LABEL_128:
                if (*a2)
                {
                  *a1 = v32;
                  goto LABEL_130;
                }

                *a1 = 0;
                *(a1 + 8) = 0;
                if (!v32)
                {
                  goto LABEL_131;
                }

                v133 = (v32 + 8);
LABEL_465:
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref(v133, v19);
                goto LABEL_131;
              }

              goto LABEL_654;
            }
          }

          *a2 = 0;
          a2[1] = 0;
          v236 = a2[3];
          if (v236)
          {
            if (v124)
            {
              (*(*v236 + 16))(v236);
              v19 = *a2;
              v124 = a2[1];
              goto LABEL_654;
            }
          }

          else
          {
            v124 = 0;
          }

          v19 = 0;
LABEL_654:
          *a2 = 0;
          a2[1] = 0;
          v222 = a2[3];
          if (!v222 || !v124)
          {
            goto LABEL_655;
          }

          goto LABEL_735;
        }

        v60 = a2[1];
        v61 = a2[2];
        v19 = *a2;
        if (v60 <= &v61[-*a2])
        {
          *a2 = 0;
          a2[1] = 0;
          v220 = a2[3];
          if (v220)
          {
            if (v60)
            {
              (*(*v220 + 16))(v220);
              v60 = a2[1];
            }
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          a2[2] = (v61 + 1);
          if (v61)
          {
            if (*v61 < 2u)
            {
              goto LABEL_202;
            }

            goto LABEL_630;
          }
        }

        *a2 = 0;
        a2[1] = 0;
        v221 = a2[3];
        if (v221)
        {
          if (v60)
          {
            (*(*v221 + 16))(v221);
            v19 = *a2;
            v60 = a2[1];
            goto LABEL_630;
          }
        }

        else
        {
          v60 = 0;
        }

        v19 = 0;
LABEL_630:
        *a2 = 0;
        a2[1] = 0;
        v222 = a2[3];
        if (!v222 || !v60)
        {
          goto LABEL_655;
        }

LABEL_735:
        (*(*v222 + 16))(v222, v19);
        goto LABEL_655;
      }

LABEL_124:
      LODWORD(v2) = 0;
      v32 = 0;
      goto LABEL_125;
    }

    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, v288);
    IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v301, a2);
    v20 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v2) = v20;
    if (v20)
    {
      IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v283, a2);
      if (v283[24] != 1)
      {
        goto LABEL_47;
      }

      v21 = v283[0];
      v314[0] = *&v283[1];
      *(v314 + 7) = *&v283[8];
      v3 = v283[16];
      if ((v2 & 2) == 0)
      {
LABEL_43:
        if (*a2)
        {
          if ((v288[16] & 1) == 0 || (v301[16] & 1) == 0)
          {
            goto LABEL_494;
          }

          v283[0] = v21;
          *&v283[1] = v314[0];
          *&v283[8] = *(v314 + 7);
          v283[16] = v3;
          WebCore::ScrollingStateFrameHostingNode::create();
          v2 = v328;
          v25 = 1;
LABEL_48:
          if (v301[16] == 1)
          {
            WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v301, v19);
          }

          if ((v25 & 1) == 0)
          {
            v33 = *a2;
            v158 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            v35 = a2[3];
            if (v35 && v158)
            {
              goto LABEL_493;
            }

            goto LABEL_571;
          }

LABEL_51:
          if (*a2)
          {
            *a1 = v2;
LABEL_130:
            *(a1 + 8) = 1;
            goto LABEL_131;
          }

          *a1 = 0;
          *(a1 + 8) = 0;
          if (!v2)
          {
            goto LABEL_131;
          }

          v133 = (v2 + 8);
          goto LABEL_465;
        }

LABEL_47:
        v25 = 0;
        v2 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v21 = 0;
      v3 = 0;
      if ((v20 & 2) == 0)
      {
        goto LABEL_43;
      }
    }

    IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v283, a2);
    if (v283[16] != 1)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  IPC::ArgumentCoder<WebCore::ScrollingStateFrameScrollingNode,void>::decode(v283, a2);
  if ((v283[8] & 1) == 0)
  {
    v19 = *a2;
    v130 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v131 = a2[3];
    if (v131)
    {
      if (v130)
      {
        (*(*v131 + 16))(v131, v19);
      }
    }
  }

  if (*a2)
  {
    if ((v283[8] & 1) == 0)
    {
      goto LABEL_494;
    }

    *a1 = *v283;
    goto LABEL_130;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  if (v283[8])
  {
    v132 = *v283;
    *v283 = 0;
    if (v132)
    {
      v133 = (v132 + 8);
      goto LABEL_465;
    }
  }

LABEL_131:
  if ((*(a1 + 8) & 1) == 0)
  {
    v112 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v113 = a2[3];
    if (v113)
    {
      if (v112)
      {
        v114 = *(*v113 + 16);

        v114();
      }
    }
  }
}