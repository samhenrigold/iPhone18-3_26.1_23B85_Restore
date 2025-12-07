void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F11047E8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11047E8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  v4 = WTF::fastMalloc(v2, 0x10);
  *v4 = &unk_1F1104810;
  v4[1] = v3;
  v6 = v4;
  WTF::SuspendableWorkQueue::dispatch();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104810;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104810;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::removeAllStorageAccess(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104860;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104860;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(JSC::MessageSource,JSC::MessageLevel,WTF::String const&)::$_0,void>::call(uint64_t result)
{
  v1 = *(*(result + 8) + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      result = WebKit::NetworkProcess::broadcastConsoleMessage(*(v2 + 32), *(v2 + 24), *(result + 16), *(result + 17), result + 24);
      v3 = *(v2 + 16);
      if (v3)
      {
        *(v2 + 16) = v3 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

WTF **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD111B0);
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = (v6 + 8 * v8);
  if (WTF::equal(*v9, 0, v10))
  {
    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = (v6 + 8 * v8);
    ++v12;
    if (WTF::equal(*v9, 0, v11))
    {
      return 0;
    }
  }

  return v9;
}

uint64_t WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v10;
    }

    *a1 = v6;
  }

  else
  {
    *a1 = 0;
  }

  v7 = *a3;
  *a3 = 0;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a3 + 16) == 1)
  {
    v8 = a3[1];
    a3[1] = 0;
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t *WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 13) = 0;
  WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::reserveInitialCapacity(a1, a3);
  if (a3)
  {
    v6 = a2 + 32 * a3;
    do
    {
      WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::pair<WTF::String,std::optional<WTF::String>> const&>(a1, a2, (a2 + 8), v8);
      a2 += 32;
    }

    while (a2 != v6);
  }

  return a1;
}

uint64_t WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::pair<WTF::String,std::optional<WTF::String>> const&>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, atomic_uint **a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (20 * v7 >= 19 * v8 || v8 <= 2 * v7 && (*(a1 + 20) & 1) != 0)
  {
    if (v8)
    {
      v24 = 2 * v8;
    }

    else
    {
      v24 = 8;
    }

    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(a1, v24);
    v8 = *(a1 + 2);
  }

  v9 = v8 - 1;
  v10 = *(a1 + 4);
  v11 = *(*a2 + 4);
  if (v11 < 0x100)
  {
    v12 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v12 = v11 >> 8;
  }

  v13 = *a1 + 32 * ((v12 ^ v10) & v9);
  v14 = *v13;
  if (*v13)
  {
    v19 = 0;
    LODWORD(v20) = (v12 ^ v10) & v9;
    while (1)
    {
      v21 = *(v14 + 4);
      if (v21 < 0x100)
      {
        v37 = v20;
        v22 = WTF::StringImpl::hashSlowCase(v14);
        LODWORD(v20) = v37;
      }

      else
      {
        v22 = v21 >> 8;
      }

      v23 = (v20 + v8 - ((v22 ^ v10) & v9)) & v9;
      if (v19 > v23)
      {
        break;
      }

      if (v22 == v12)
      {
        v36 = v20;
        result = WTF::equal(*v13, *a2, a3);
        v16 = *a1;
        if (result)
        {
          v17 = 0;
          goto LABEL_9;
        }

        LODWORD(v20) = v36;
      }

      else
      {
        v16 = *a1;
      }

      v20 = (v20 + 1) & v9;
      ++v19;
      v13 = v16 + 32 * v20;
      v14 = *v13;
      if (!*v13)
      {
        if (v19 >= 0x80)
        {
          *(a1 + 20) = 1;
        }

        goto LABEL_7;
      }
    }

    if (v19 >= 0x80)
    {
      *(a1 + 20) = 1;
    }

    v25 = v20;
    v26 = *v13;
    *v13 = 0;
    *(v13 + 8) = 0;
    v39 = v26;
    LOBYTE(v40) = 0;
    v41 = 0;
    if (*(v13 + 24) == 1)
    {
      v27 = *(v13 + 16);
      *(v13 + 16) = 0;
      v40 = v27;
      v41 = 1;
    }

    v28 = WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(v13, a2);
    *(v13 + 24) = 0;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    WTF::HashMapTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&>(WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&)::{lambda(void)#1}>(v28, a2, &v38);
    v29 = (v25 + 1) & v9;
    v30 = (*a1 + 32 * v29);
    for (i = *v30; *v30; i = *v30)
    {
      v32 = *(i + 4);
      if (v32 < 0x100)
      {
        v33 = WTF::StringImpl::hashSlowCase(i);
      }

      else
      {
        v33 = v32 >> 8;
      }

      ++v23;
      v34 = (v29 + v8 - ((v33 ^ v10) & v9)) & v9;
      if (v23 > v34)
      {
        std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(&v39, v30);
        v23 = v34;
      }

      v29 = (v29 + 1) & v9;
      v30 = (*a1 + 32 * v29);
    }

    WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(v30, &v39);
    result = WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(&v39, v35);
  }

  else
  {
LABEL_7:
    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&>(WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&)::{lambda(void)#1}>(v13, a2, &v38);
  }

  ++*(a1 + 3);
  v16 = *a1;
  v17 = 1;
LABEL_9:
  v18 = v16 + 32 * *(a1 + 2);
  *a4 = v13;
  *(a4 + 8) = v18;
  *(a4 + 16) = v17;
  return result;
}

unint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::reserveInitialCapacity(uint64_t a1, uint64_t a2)
{
  v3 = WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::computeBestTableSize(a2);
  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3;
  }

  v5 = WTF::fastMalloc(8, (32 * v4));
  v6 = v5;
  v7 = v4;
  do
  {
    *(v6 + 24) = 0;
    *v6 = 0;
    v6[1] = 0;
    *(v6 + 16) = 0;
    v6 += 4;
    --v7;
  }

  while (v7);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 12) = 0;
  result = WTF::intHash(v5);
  *(a1 + 16) = result;
  *(a1 + 20) = 0;
  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result >= 2)
  {
    v4 = __clz(result - 1);
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v1 = 1 << -v4;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1 << (20 * result >= 19 * v1);
  v3 = v2 << (v2 * 0.754166667 <= result);
  if (v3 <= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&>(WTF::String const&,std::pair<WTF::String,std::optional<WTF::String>> const&)::{lambda(void)#1}>(WTF::StringImpl **a1, atomic_uint **a2, atomic_uint ***a3)
{
  WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(a1, a2);
  v5 = *a3;
  v6 = **a3;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v11 = v6;
  LOBYTE(v12) = 0;
  v13 = 0;
  if (*(v5 + 16) == 1)
  {
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v12 = v7;
    v13 = 1;
  }

  std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](a1 + 1, &v11);
  if (v13 == 1)
  {
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }
    }
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

uint64_t WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v29 = *(a1 + 8);
  v30 = *a1;
  result = WTF::fastMalloc(*a1, (32 * a2));
  if (v2)
  {
    v6 = v2;
    v7 = result;
    do
    {
      *(v7 + 24) = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v7 += 32;
      --v6;
    }

    while (v6);
  }

  *a1 = result;
  *(a1 + 8) = v2;
  v8 = (~(result << 32) + result) ^ ((~(result << 32) + result) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  *(a1 + 16) = (v10 >> 31) ^ v10;
  *(a1 + 20) = 0;
  if (v29)
  {
    for (i = 0; i != v29; ++i)
    {
      v12 = &v30[4 * i];
      v13 = *v12;
      if (*v12)
      {
        v14 = *(a1 + 8);
        v15 = *(a1 + 16);
        v16 = *(v13 + 4);
        if (v16 < 0x100)
        {
          v17 = WTF::StringImpl::hashSlowCase(v13);
        }

        else
        {
          v17 = v16 >> 8;
        }

        v18 = v14 - 1;
        v19 = (v17 ^ v15) & (v14 - 1);
        v20 = (*a1 + 32 * v19);
        v21 = *v20;
        if (*v20)
        {
          v22 = 0;
          do
          {
            v23 = *(v21 + 4);
            if (v23 < 0x100)
            {
              v24 = WTF::StringImpl::hashSlowCase(v21);
            }

            else
            {
              v24 = v23 >> 8;
            }

            v25 = (v19 + v14 - ((v24 ^ v15) & v18)) & v18;
            if (v22 > v25)
            {
              std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(v12, v20);
              v22 = v25;
            }

            v19 = (v19 + 1) & v18;
            ++v22;
            v20 = (*a1 + 32 * v19);
            v21 = *v20;
          }

          while (*v20);
        }

        WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(v20, v12);
      }

      if (*(v12 + 24) == 1)
      {
        v26 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v26)
        {
          if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v5);
          }
        }
      }

      v27 = *(v12 + 8);
      *(v12 + 8) = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v5);
      }

      v28 = *v12;
      *v12 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v5);
      }
    }
  }

  else if (!v30)
  {
    return result;
  }

  return WTF::fastFree(v30, v5);
}

WTF::StringImpl **WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>,WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](a1 + 1, a2 + 8);
}

uint64_t std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>>(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  *a1 = 0;
  v15 = v4;
  LOBYTE(v16) = 0;
  v17 = 0;
  if (*(a1 + 24) == 1)
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16 = v6;
    v17 = 1;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](v5, a2 + 8);
  v10 = *a2;
  *a2 = v3;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](a2 + 1, &v15);
  if (v17 == 1)
  {
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }
  }

  v13 = v15;
  v15 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  return 0;
}

WTF::StringImpl **std::pair<WTF::String,std::optional<WTF::String>>::operator=[abi:sn200100](WTF::StringImpl **a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::String,false>>((a1 + 1), (a2 + 8));
  return a1;
}

uint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 312 * v3;
    do
    {
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v4, a2);
      v4 = (v6 + 312);
      v5 -= 312;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PrivateClickMeasurement>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 312 * *(a1 + 12);
  *v4 = *v3;
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v5;
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v6;
  v7 = *(v3 + 24);
  *(v4 + 33) = *(v3 + 33);
  *(v4 + 24) = v7;
  *(v4 + 56) = 0;
  *(v4 + 184) = 0;
  if (*(v3 + 184) == 1)
  {
    std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v4 + 56, v3 + 56);
  }

  v8 = *(v3 + 208);
  *(v4 + 192) = *(v3 + 192);
  *(v4 + 208) = v8;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  if (*(v3 + 232) == 1)
  {
    v9 = *(v3 + 224);
    *(v3 + 224) = 0;
    *(v4 + 224) = v9;
    *(v4 + 232) = 1;
  }

  v10 = *(v3 + 240);
  *(v3 + 240) = 0;
  *(v4 + 240) = v10;
  v11 = *(v3 + 248);
  *(v3 + 248) = 0;
  *(v4 + 248) = v11;
  v12 = *(v3 + 256);
  *(v3 + 256) = 0;
  *(v4 + 256) = v12;
  v13 = *(v3 + 264);
  *(v3 + 264) = 0;
  *(v4 + 264) = v13;
  *(v4 + 272) = 0;
  *(v4 + 296) = 0;
  if (*(v3 + 296) == 1)
  {
    v14 = *(v3 + 272);
    *(v3 + 272) = 0;
    *(v4 + 272) = v14;
    v15 = *(v3 + 280);
    *(v3 + 280) = 0;
    *(v4 + 280) = v15;
    v16 = *(v3 + 288);
    *(v3 + 288) = 0;
    *(v4 + 288) = v16;
    *(v4 + 296) = 1;
  }

  v17 = *(v3 + 304);
  *(v3 + 304) = 0;
  *(v4 + 304) = v17;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 312 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xD20D21)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD12004);
    }

    v3 = *a1;
    v4 = *(a1 + 12);
    v5 = (*a1 + 312 * v4);
    v6 = 312 * a2;
    v7 = WTF::fastMalloc(v4, (312 * a2));
    *(a1 + 8) = v6 / 0x138;
    *a1 = v7;
    WTF::VectorMover<false,WebCore::PrivateClickMeasurement>::move(v3, v5, v7);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v8);
    }
  }

  return 1;
}

void WTF::VectorMover<false,WebCore::PrivateClickMeasurement>::move(WTF::StringImpl *a1, WTF::StringImpl *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = a3 + v6;
      *v8 = *(a1 + v6);
      v9 = *(a1 + v6 + 8);
      *(v7 + 1) = 0;
      *(v8 + 8) = v9;
      v10 = *(a1 + v6 + 16);
      *(v7 + 2) = 0;
      *(v8 + 16) = v10;
      v11 = *(a1 + v6 + 24);
      v12 = *(a1 + v6 + 33);
      *(a3 + v6 + 56) = 0;
      v13 = a3 + v6 + 56;
      *(v13 - 23) = v12;
      *(v13 - 32) = v11;
      *(v13 + 128) = 0;
      if (*(a1 + v6 + 184) == 1)
      {
        std::__optional_storage_base<WebCore::PCM::AttributionTriggerData,false>::__construct[abi:sn200100]<WebCore::PCM::AttributionTriggerData>(v13, (v7 + 56));
      }

      v14 = *(v7 + 13);
      *(v8 + 192) = *(v7 + 12);
      *(v8 + 208) = v14;
      *(v8 + 224) = 0;
      *(v8 + 232) = 0;
      if (v7[232] == 1)
      {
        v15 = *(a1 + v6 + 224);
        *(a1 + v6 + 224) = 0;
        *(v8 + 224) = v15;
        *(v8 + 232) = 1;
      }

      v16 = a3 + v6;
      v17 = *(v7 + 30);
      *(v7 + 30) = 0;
      *(v16 + 240) = v17;
      v18 = *(v7 + 31);
      *(v7 + 31) = 0;
      *(v16 + 248) = v18;
      v19 = *(v7 + 32);
      *(v7 + 32) = 0;
      *(v16 + 256) = v19;
      v20 = *(v7 + 33);
      *(v7 + 33) = 0;
      *(v16 + 264) = v20;
      *(v16 + 272) = 0;
      *(v16 + 296) = 0;
      if (v7[296] == 1)
      {
        v21 = (a1 + v6);
        v22 = *(a1 + v6 + 272);
        v21[34] = 0;
        *(v16 + 272) = v22;
        v23 = *(a1 + v6 + 280);
        v21[35] = 0;
        *(v16 + 280) = v23;
        v24 = *(a1 + v6 + 288);
        v21[36] = 0;
        *(v16 + 288) = v24;
        *(v16 + 296) = 1;
      }

      v25 = *(v7 + 38);
      *(v7 + 38) = 0;
      *(v16 + 304) = v25;
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement((a1 + v6), a2);
      v6 += 312;
    }

    while (v7 + 312 != a2);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104888;
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), v3);
  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104888;
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, v3);
  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>::call(uint64_t result)
{
  v1 = *(*(result + 8) + 16);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      ++*(v2 + 16);
      v4 = *(v2 + 160);
      ++v4[2];
      v5 = *(result + 44);
      if (v5)
      {
        v6 = *(result + 32);
        v7 = 312 * v5;
        do
        {
          result = (*(*v4 + 48))(v4, v6, 1);
          v6 += 312;
          v7 -= 312;
        }

        while (v7);
      }

      v8 = *(v3 + 28);
      if (v8)
      {
        v9 = *(v3 + 16);
        v10 = 312 * v8;
        do
        {
          result = (*(*v4 + 48))(v4, v9, 0);
          v9 += 312;
          v10 -= 312;
        }

        while (v10);
      }

      if (v4[2] == 1)
      {
        result = (*(*v4 + 8))(v4);
      }

      else
      {
        --v4[2];
      }

      v11 = *(v2 + 16);
      if (v11)
      {
        *(v2 + 16) = v11 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

WTF *WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(WTF *result, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = result;
  v4 = qword_1ED6425F0;
  if (qword_1ED6425F0)
  {
    v6 = qword_1ED6425F8;
    v7 = qword_1ED6425F8 - 1;
    v8 = dword_1ED642600;
    v9 = *(*a2 + 4);
    if (v9 < 0x100)
    {
      v10 = WTF::StringImpl::hashSlowCase(*a2);
      v4 = qword_1ED6425F0;
    }

    else
    {
      v10 = v9 >> 8;
    }

    v11 = (v10 ^ v8) & v7;
    v12 = v4 + 32 * v11;
    result = *v12;
    if (*v12)
    {
      v13 = -1;
      do
      {
        v14 = *(result + 4);
        result = v14 < 0x100 ? WTF::StringImpl::hashSlowCase(result) : (v14 >> 8);
        if (++v13 > ((v11 + v6 - ((result ^ v8) & v7)) & v7))
        {
          break;
        }

        if (result == v10)
        {
          result = WTF::equal(*v12, *a2, a3);
          if (result)
          {
            v15 = *(v12 + 8);
            if (v15)
            {
              atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
            }

            *v3 = v15;
            *(v3 + 8) = 0;
            *(v3 + 16) = 0;
            if (*(v12 + 24) == 1)
            {
              v16 = *(v12 + 16);
              if (v16)
              {
                atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
              }

              *(v3 + 1) = v16;
              *(v3 + 16) = 1;
            }

            return result;
          }
        }

        v11 = (v11 + 1) & v7;
        v12 = qword_1ED6425F0 + 32 * v11;
        result = *v12;
      }

      while (*v12);
    }
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  return result;
}

uint64_t WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ITPThirdPartyData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 24 * *(a1 + 12));
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v4[2] = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v4 + 1), (v3 + 8));
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD126F0);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((3 * a2), (24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::ITPThirdPartyData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebKit::ITPThirdPartyData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, void *a3)
{
  if (result != a2)
  {
    v4 = (result + 8);
    do
    {
      v5 = *(v4 - 1);
      *(v4 - 1) = 0;
      *a3 = v5;
      a3[1] = 0;
      v6 = a3 + 1;
      a3[2] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((a3 + 1), v4);
      WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v7);
      result = *(v4 - 1);
      *(v4 - 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v9 = (v4 + 4);
      v4 += 6;
      a3 = v6 + 2;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(_BYTE *__dst, unint64_t a2, _BYTE *__src, size_t __n, unint64_t a5, char a6)
{
  v8 = __n;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_9;
    }

    memcpy(__dst, __src, __n);
  }

  while (a2 < v8)
  {
    __break(1u);
LABEL_9:
    *__dst = *__src;
  }

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&__dst[v8], a2 - v8, a5, a6);
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(uint64_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, unint64_t a5, char a6)
{
  if (a4 < 0x40)
  {
    v7 = result;
  }

  else
  {
    v7 = (result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
    v8 = 0uLL;
    v9 = result;
    do
    {
      v21.val[0] = *a3;
      v10 = a3[1];
      v22.val[0] = a3[2];
      v11 = a3[3];
      a3 += 4;
      v12 = v11;
      v22.val[1] = 0uLL;
      v23.val[0] = v10;
      v21.val[1] = 0uLL;
      v13 = v9;
      vst2q_s8(v13, v21);
      v13 += 32;
      v23.val[1] = 0uLL;
      vst2q_s8(v13, v23);
      v14 = (v9 + 8);
      vst2q_s8(v14, v22);
      v15 = (v9 + 12);
      vst2q_s8(v15, *(&v8 - 1));
      v9 += 16;
    }

    while (v9 != v7);
  }

  while (v7 != (result + 2 * a4))
  {
    v16 = a3->u8[0];
    a3 = (a3 + 1);
    *v7 = v16;
    v7 = (v7 + 2);
  }

  if (a2 < a4 || (v17 = a2 - a4, v18 = result + 2 * a4, v20 = a5, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v20, v18), (v19 = v20) != 0) && (v19 = *(v20 + 4), v17 < v19) || v17 == v19)
  {
    __break(1u);
  }

  else
  {
    *&v18[2 * v19] = a6;
  }

  return result;
}

uint64_t std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(uint64_t ***a1, unint64_t a2, _DWORD *a3)
{
  v6 = (a1 + 1);
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 7);
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        return 0;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = (a1 + 1);
LABEL_9:
    v9 = WTF::fastMalloc(0, 0x20);
    *(v9 + 7) = *a3;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v7;
    *v6 = v9;
    v10 = **a1;
    if (v10)
    {
      *a1 = v10;
      v11 = *v6;
    }

    else
    {
      v11 = v9;
    }

    std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(a1[1], v11);
    a1[2] = (a1[2] + 1);
    return 1;
  }
}

uint64_t WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned int>(WTF::StringBuilder *a1, int8x16_t *a2, uint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = a3 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 >> 31;
  if (v4 >> 31)
  {
    result = 161;
    __break(0xC471u);
    goto LABEL_27;
  }

  v8 = -1;
  v9 = a4;
  do
  {
    LODWORD(v5) = v5 + 1;
    --v8;
    v10 = v9 > 9;
    v9 /= 0xAu;
  }

  while (v10);
  v11 = *(a1 + 1);
  if ((v11 || (v11 = *a1) != 0) && (*(v11 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!result)
    {
      return result;
    }

    v14 = v13;
    v15 = (result + 2 * v4);
    if (v4 >= 0x40)
    {
      v16 = result;
      result += 2 * (v4 & 0x7FFFFFC0);
      v17 = 0uLL;
      do
      {
        v27.val[0] = *a2;
        v18 = a2[1];
        v28.val[0] = a2[2];
        v19 = a2[3];
        a2 += 4;
        v20 = v19;
        v28.val[1] = 0uLL;
        v29.val[0] = v18;
        v27.val[1] = 0uLL;
        v21 = v16;
        vst2q_s8(v21, v27);
        v21 += 32;
        v29.val[1] = 0uLL;
        vst2q_s8(v21, v29);
        v22 = (v16 + 64);
        vst2q_s8(v22, v28);
        v23 = (v16 + 96);
        vst2q_s8(v23, *(&v17 - 1));
        v16 += 128;
      }

      while (v16 != result);
    }

    while (result != v15)
    {
      v24 = a2->u8[0];
      a2 = (a2 + 1);
      *result = v24;
      result += 2;
    }

    if (v14 >= v4)
    {

      return WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a4, v15, v14 - v4);
    }

LABEL_27:
    __break(1u);
    return result;
  }

  result = MEMORY[0x19EB01170]();
  if (result)
  {

    return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(result, v25, a2, v4, a4);
  }

  return result;
}

unint64_t WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(_BYTE *__dst, unint64_t a2, _BYTE *__src, size_t __n, unint64_t a5)
{
  v6 = __n;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_9;
    }

    memcpy(__dst, __src, __n);
  }

  while (a2 < v6)
  {
    __break(1u);
LABEL_9:
    *__dst = *__src;
  }

  return WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a5, &__dst[v6], a2 - v6);
}

unint64_t WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(unint64_t result, _WORD *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = 12;
  do
  {
    if (v3 == -1)
    {
LABEL_8:
      __break(1u);
    }

    v7[v3--] = (result % 0xA) | 0x30;
    v4 = result > 9;
    result = result / 0xAuLL;
  }

  while (v4);
  v5 = v3 + 1;
  v6 = v3 + 2;
  do
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    *a2++ = v7[v5];
    ++v6;
    --a3;
    ++v5;
  }

  while (v6 != 14);
  return result;
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1, int *a2)
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
  v8 = WTF::fastMalloc((40 * v7), (40 * v7 + 16));
  if (v7)
  {
    v10 = v7;
    v11 = v8 + 3;
    do
    {
      *(v11 - 2) = 0;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      v11 = (v11 + 40);
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 2);
  *(v8 + 2) = v7 - 1;
  *(v8 + 3) = v7;
  *v8 = 0;
  *(v8 + 1) = v6;
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v4 + 40 * v12);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
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

          v19 = 0;
          v20 = 9 * ((v15 + ~(v15 << 15)) ^ ((v15 + ~(v15 << 15)) >> 10));
          v21 = ((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) ^ (((v20 ^ (v20 >> 6)) + ~((v20 ^ (v20 >> 6)) << 11)) >> 16);
          do
          {
            v22 = v21 & v18;
            v23 = v17 + 40 * v22;
            v21 = ++v19 + v22;
          }

          while (*v23);
          v24 = *(v23 + 8);
          *(v23 + 8) = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v9);
          }

          *v23 = *v14;
          v25 = *(v14 + 1);
          *(v14 + 1) = 0;
          *(v23 + 8) = v25;
          v26 = *(v14 + 1);
          *(v23 + 32) = v14[8];
          *(v23 + 16) = v26;
          v27 = *(v14 + 1);
          *(v14 + 1) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v9);
          }

          if (v14 == a2)
          {
            v13 = v23;
          }
        }

        else
        {
          v16 = *(v14 + 1);
          *(v14 + 1) = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v9);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v5);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v13;
}

_DWORD *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(_DWORD *result)
{
  if (!result)
  {
    return 0;
  }

  v2 = *(result - 1);
  v3 = &result[10 * v2];
  if (!*(result - 3))
  {
    return &result[10 * v2];
  }

  if (v2)
  {
    v4 = 40 * v2;
    while ((*result + 1) <= 1)
    {
      result += 10;
      v4 -= 40;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return result;
}

int *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD12FD8);
  }

  v2 = *(a1 - 8);
  v3 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
  v5 = v2 & (v4 ^ HIWORD(v4));
  v6 = (a1 + 40 * v5);
  v7 = *v6;
  if (*v6 != a2)
  {
    v8 = 1;
    while (v7)
    {
      v5 = (v5 + v8) & v2;
      v6 = (a1 + 40 * v5);
      v7 = *v6;
      ++v8;
      if (*v6 == a2)
      {
        return v6;
      }
    }

    return (a1 + 40 * *(a1 - 4));
  }

  return v6;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11048B0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11048B0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_4:
  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  v7 = WTF::fastMalloc(v4, 0x18);
  v8 = &unk_1F11048D8;
  *v7 = &unk_1F11048D8;
  v7[1] = v3;
  v7[2] = v6;
  v9 = v3[2];
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      ++*(v10 + 16);
      v11 = *(v10 + 32);
      v18 = *(v10 + 24);
      v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 248), &v18);
      if (v12)
      {
        v13 = v12;
        ++*(v12 + 8);
        result = WebCore::NetworkStorageSession::hasCookies();
        v15 = *(v13 + 8);
        if (v15)
        {
          *(v13 + 8) = v15 - 1;
          v16 = *(v10 + 16);
          if (v16)
          {
            *(v10 + 16) = v16 - 1;
            if (!v7)
            {
              return result;
            }

            return (*(*v7 + 8))(v7);
          }
        }

LABEL_16:
        __break(0xC471u);
        JUMPOUT(0x19DD132E8);
      }

      v17 = *(v10 + 16);
      if (!v17)
      {
        goto LABEL_16;
      }

      *(v10 + 16) = v17 - 1;
      v8 = *v7;
    }
  }

  v8[2](v7, 0);
  return (*(*v7 + 8))(v7);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F11048D8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11048D8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  v5 = WTF::fastMalloc(v3, 0x18);
  *v5 = &unk_1F1104900;
  v5[1] = v4;
  *(v5 + 16) = v2;
  v7 = v5;
  WTF::SuspendableWorkQueue::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104900;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104900;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104928;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104928;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::call(uint64_t a1, unint64_t a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_16;
  }

  v3 = *(a1 + 8);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_5:
  v6 = *(a1 + 56);
  *(a1 + 56) = 0;
  v7 = WTF::fastMalloc(v4, 0x18);
  v8 = &unk_1F1104950;
  *v7 = &unk_1F1104950;
  v7[1] = v3;
  v7[2] = v6;
  v9 = v3[2];
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      ++*(v10 + 16);
      v11 = *(v10 + 32);
      v19 = *(v10 + 24);
      v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 248), &v19);
      if (v12)
      {
        v13 = v12;
        ++*(v12 + 8);
        hasStorageAccess = WebCore::NetworkStorageSession::hasStorageAccess();
        (*(*v7 + 16))(v7, hasStorageAccess);
        result = (*(*v7 + 8))(v7);
        v16 = *(v13 + 8);
        if (v16)
        {
          *(v13 + 8) = v16 - 1;
          v17 = *(v10 + 16);
          if (v17)
          {
            *(v10 + 16) = v17 - 1;
            return result;
          }
        }

LABEL_16:
        __break(0xC471u);
        JUMPOUT(0x19DD139C4);
      }

      v18 = *(v10 + 16);
      if (!v18)
      {
        goto LABEL_16;
      }

      *(v10 + 16) = v18 - 1;
      v8 = *v7;
    }
  }

  v8[2](v7, 0);
  return (*(*v7 + 8))(v7);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F1104950;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104950;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  v5 = WTF::fastMalloc(v3, 0x18);
  *v5 = &unk_1F1104978;
  v5[1] = v4;
  *(v5 + 16) = v2;
  v7 = v5;
  WTF::SuspendableWorkQueue::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104978;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104978;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(void)::{lambda(BOOL)#1}::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebKit::StorageAccessStatus)> &&)::$_0,void,WebCore::StorageAccessWasGranted>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11049A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebKit::StorageAccessStatus)> &&)::$_0,void,WebCore::StorageAccessWasGranted>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11049A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebKit::StorageAccessStatus)> &&)::$_0,void,WebCore::StorageAccessWasGranted>::call(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, 2 * (a2 == 1));
  v3 = *(*v2 + 8);

  return v3(v2);
}

WTF ***WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(WTF ***a1, WTF **a2, uint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::reserveInitialCapacity(a1, a3);
    v7 = 8 * a3;
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, a2++, v6, v9);
      v7 -= 8;
    }

    while (v7);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F11049F0;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F11049F0;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1,void>::call(uint64_t a1)
{
  LOBYTE(v54) = 0;
  v57 = 0;
  v2 = *(*(a1 + 40) + 16);
  if (!v2 || (v3 = *(v2 + 8)) == 0)
  {
    v12 = 0;
    v30 = *(a1 + 8);
    *(a1 + 8) = 0;
    v43 = v30;
    goto LABEL_30;
  }

  ++*(v3 + 16);
  v4 = *(v3 + 32);
  v43 = *(v3 + 24);
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 248), &v43);
  if (v5)
  {
    v6 = v5;
    ++*(v5 + 8);
    WebCore::NetworkStorageSession::storageAccessQuirkForDomainPair();
    std::__optional_storage_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::OrganizationStorageAccessPromptQuirk,false>>(&v54, &v43);
    if (v45[16] == 1)
    {
      WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v7);
      if (v44)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v44, v8);
      }

      v9 = v43;
      v43 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }
    }

    canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
    v11 = *(v6 + 8);
    if (!v11)
    {
LABEL_41:
      __break(0xC471u);
      JUMPOUT(0x19DD14390);
    }

    v12 = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
    *(v6 + 8) = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v3 + 16);
  if (!v13)
  {
    goto LABEL_41;
  }

  *(v3 + 16) = v13 - 1;
  v14 = v57;
  v15 = *(a1 + 8);
  *(a1 + 8) = 0;
  v43 = v15;
  if ((v14 & 1) == 0)
  {
LABEL_30:
    LOBYTE(v44) = 0;
    v45[24] = 0;
    goto LABEL_31;
  }

  WTF::String::isolatedCopy();
  WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v59, &v55, v16);
  v19 = v56;
  v20 = HIDWORD(v56);
  if (HIDWORD(v56))
  {
    v21 = 40 * HIDWORD(v56);
    do
    {
      WTF::URL::isolatedCopy();
      WTF::URL::operator=(v19, &v61);
      v22 = v61;
      v61 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }

      v19 += 5;
      v21 -= 40;
    }

    while (v21);
    v19 = v56;
    v20 = HIDWORD(v56);
  }

  *&v18 = 0;
  v23 = DWORD2(v56);
  v56 = v18;
  v24 = v60;
  v60 = 0;
  v61 = v24;
  v62 = v59;
  v63 = v19;
  v58 = v18;
  v64 = v23;
  v65 = v20;
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v17);
  v26 = v60;
  v60 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  std::__optional_destruct_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_destruct_base[abi:sn200100]<WebCore::OrganizationStorageAccessPromptQuirk>(&v44, &v61);
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v27);
  if (v62)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v62, v28);
  }

  v29 = v61;
  v61 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v28);
  }

LABEL_31:
  WebCore::RegistrableDomain::isolatedCopy(&v46);
  WebCore::RegistrableDomain::isolatedCopy(&v47);
  v31 = *(a1 + 48);
  *(a1 + 48) = 0;
  v48 = v31;
  v49 = *(a1 + 56);
  v50 = *(a1 + 72);
  v51 = v12;
  v32 = *(a1 + 80);
  *(a1 + 80) = 0;
  v52 = v32;
  v33 = WTF::fastMalloc(v32, 0x78);
  *v33 = &unk_1F1104A18;
  v34 = v43;
  v43 = 0;
  v33[1] = v34;
  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100]((v33 + 2), &v44);
  v33[7] = v46;
  v35 = v47;
  v46 = 0;
  v47 = 0;
  v33[8] = v35;
  v33[9] = v48;
  v36 = v49;
  *(v33 + 48) = v50;
  *(v33 + 5) = v36;
  *(v33 + 104) = v51;
  v37 = v52;
  v48 = 0;
  v52 = 0;
  v53 = v33;
  v33[14] = v37;
  WTF::SuspendableWorkQueue::dispatch();
  v39 = v53;
  v53 = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  result = WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(&v43, v38);
  if (v57 == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v41);
    if (v55)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v55, v42);
    }

    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v42);
      }
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(uint64_t a1, void *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (*(a1 + 40) == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
    v7 = *(a1 + 16);
    if (v7)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v7, a2);
    }

    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104A18;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104A18;
  WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1}::~(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v4 = *(a1 + 8);
  if (v4 && *(v4 + 8))
  {
    if (*(a1 + 48) == 1)
    {
      v5 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a1 + 24), a2, a3);
      v8 = v5;
      v26[0] = v5;
      v26[1] = v6;
      v9 = *(a1 + 24);
      v10 = v9 ? v9 + 24 * *(v9 - 4) : 0;
      if (v10 != v5)
      {
        do
        {
          v14 = *(v8 + 20);
          if (v14)
          {
            v15 = *(v8 + 8);
            v16 = 8 * v14;
            do
            {
              if (!WTF::equal(*v8, *(a1 + 64), v7) || (WTF::equal(*v15, *(a1 + 56), v17) & 1) == 0)
              {
                v18 = *v15;
                if (*v15)
                {
                  atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
                }

                v25 = v18;
                v19 = *v8;
                if (*v8)
                {
                  atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
                }

                v24 = v19;
                v20 = WTF::fastMalloc(v19, 0x10);
                *v20 = &unk_1F1104A40;
                v23 = v20;
                WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(a1 + 72, &v25, &v24, &v23);
                if (v23)
                {
                  (*(*v23 + 8))(v23);
                }

                v21 = v24;
                v24 = 0;
                if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v21, v6);
                }

                v22 = v25;
                v25 = 0;
                if (v22)
                {
                  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v22, v6);
                  }
                }
              }

              ++v15;
              v16 -= 8;
            }

            while (v16);
            v8 = v26[0];
          }

          v26[0] = v8 + 24;
          WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v26, v6, v7);
          v8 = v26[0];
        }

        while (v26[0] != v10);
      }
    }

    return WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(a1 + 72, (a1 + 56), (a1 + 64), (a1 + 112));
  }

  else
  {
    v11 = *(a1 + 112);
    *(a1 + 112) = 0;
    (*(*v11 + 16))(v11, 0);
    v12 = *(*v11 + 8);

    return v12(v11);
  }
}

_DWORD *WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(uint64_t a1, WTF **a2, const WTF::StringImpl **a3, uint64_t **a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v5 = *(*a1 + 8);
    if (v5)
    {
      ++*(v5 + 104);
      if (*(a1 + 24) != 1)
      {
        v16 = 0;
LABEL_21:
        WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(v5, a2, a3, *(a1 + 8), 1, *(a1 + 16), v16 & 1, *(a1 + 25), a4);
        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v5 + 104));
      }

      WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v5, a2, "grantStorageAccess");
      if ((v10 & 1) == 0)
      {
        v17 = *a4;
        *a4 = 0;
        (*(*v17 + 16))(v17, 0);
        (*(*v17 + 8))(v17);
        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v5 + 104));
      }

      v11 = v9;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v12 = v22;
      v21 = v22;
      v13 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v23[0] = v13;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v22, v23, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v5, &v21, &v22, v11);
      if (v22)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v22, v14);
      }

      v15 = v23[0];
      v23[0] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
        if (v12)
        {
LABEL_12:
          if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v14);
          }
        }
      }

      else if (v12)
      {
        goto LABEL_12;
      }

      v16 = *(a1 + 24);
      goto LABEL_21;
    }
  }

  v18 = *a4;
  *a4 = 0;
  (*(*v18 + 16))(v18, 0, a3);
  v19 = *(*v18 + 8);

  return v19(v18);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104A68;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104A68;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0,void>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a1 + 64) = 0;
  while (1)
  {
    v7 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v8 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_4:
  v9 = WTF::fastMalloc(v7, 0x18);
  *v9 = &unk_1F1104A90;
  v9[1] = v6;
  v9[2] = v5;
  v10 = v5[2];
  if (!v10 || (v11 = *(v10 + 8)) == 0)
  {
    v17 = 0;
    goto LABEL_12;
  }

  ++*(v11 + 16);
  v12 = *(v11 + 32);
  v21 = *(v11 + 24);
  v13 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v12 + 248), &v21);
  if (!v13)
  {
    v20 = *(v11 + 16);
    if (v20)
    {
      v17 = 0;
      *(v11 + 16) = v20 - 1;
      goto LABEL_12;
    }

LABEL_21:
    __break(0xC471u);
    JUMPOUT(0x19DD14DE4);
  }

  v14 = v13;
  ++*(v13 + 8);
  WebCore::NetworkStorageSession::grantStorageAccess();
  v15 = *(v14 + 8);
  if (!v15)
  {
    goto LABEL_21;
  }

  *(v14 + 8) = v15 - 1;
  v16 = *(v11 + 16);
  if (!v16)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD14E04);
  }

  *(v11 + 16) = v16 - 1;
  if (v4)
  {
    v17 = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(v5, v3, *(a1 + 8));
  }

  else
  {
    v17 = 1;
  }

LABEL_12:
  (*(*v9 + 16))(v9, v17);
  v18 = *(*v9 + 8);

  return v18(v9);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1},void,WTF::CompletionHandler>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F1104A90;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1},void,WTF::CompletionHandler>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104A90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1},void,WTF::CompletionHandler>::call(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 8) = 0;
  v5 = WTF::fastMalloc(v3, 0x18);
  *v5 = &unk_1F1104AB8;
  *(v5 + 8) = v2;
  v5[2] = v4;
  v7 = v5;
  WTF::SuspendableWorkQueue::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1}::operator()(WTF::CompletionHandler)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104AB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1}::operator()(WTF::CompletionHandler)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104AB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,WTF::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_0::operator()(void)::{lambda(WTF::CompletionHandler)#1}::operator()(WTF::CompletionHandler)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104B08;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104B08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    v3 = (v2 + 104);
    ++*(v2 + 104);
    WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(v2, (a1 + 16));

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3);
  }

  else
  {
    v7 = 0;
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v5 + 16))(v5, &v7);
    (*(*v5 + 8))(v5);
    result = v7;
    v7 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebKit::ResourceLoadStatisticsStore::DomainData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 40);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v5, a2, a3);
}

uint64_t *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
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

  v9 = WTF::fastMalloc(a4, (16 * a2 + 16));
  v12 = v9;
  v13 = v9 + 2;
  if (v4)
  {
    bzero(v9 + 2, 16 * v4);
  }

  *a1 = v13;
  *(v12 + 2) = v4 - 1;
  *(v12 + 3) = v4;
  *v12 = 0;
  *(v12 + 1) = v8;
  if (v7)
  {
    v14 = 0;
    v15 = 0;
    v16 = v7;
    do
    {
      v17 = v6 + 16 * v14;
      if (*v17 != -1)
      {
        if (WTF::equal(*v17, 0, v11))
        {
          v18 = *v17;
          *v17 = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v10);
            }
          }
        }

        else
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

          v21 = WTF::ASCIICaseInsensitiveHash::hash(*v17, v10);
          v22 = 0;
          do
          {
            v23 = v21 & v20;
            v24 = WTF::equal(*(v19 + 16 * v23), 0, v11);
            v21 = ++v22 + v23;
          }

          while (!v24);
          v25 = v19 + 16 * v23;
          v26 = *v25;
          *v25 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v10);
          }

          v27 = *v17;
          *v17 = 0;
          *v25 = v27;
          *(v25 + 8) = *(v17 + 8);
          v28 = *v17;
          *v17 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v10);
          }

          if (v17 == a3)
          {
            v15 = v25;
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
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v15;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104B30;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104B30;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104B58;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::clear(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104B58;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104B80;
  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[9];
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 7), a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), v6);
  v8 = a1[2];
  a1[2] = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v7);
  }

  v9 = a1[1];
  a1[1] = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104B80;
  v3 = *(a1 + 10);
  *(a1 + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 9);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, v6);
  v8 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v7);
  }

  v9 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return WTF::fastFree(a1, v7);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  a1[1] = 0;
  while (1)
  {
    v5 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v6 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_4:
  v7 = a1[10];
  a1[10] = 0;
  v8 = WTF::fastMalloc(v5, 0x20);
  *v8 = &unk_1F1104BA8;
  v8[1] = v4;
  v8[2] = v3;
  v8[3] = v7;
  v11 = v8;
  WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(v3, (a1 + 3), &v11);
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 8);

    return v10();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104BA8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104BA8;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  v4 = a1[3];
  a1[3] = 0;
  v5 = WTF::fastMalloc(v2, 0x18);
  *v5 = &unk_1F1104BD0;
  v5[1] = v3;
  v5[2] = v4;
  v7 = v5;
  WTF::SuspendableWorkQueue::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104BD0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104BD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2);
  result = (*(*v2 + 8))(v2);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (*(v5 + 724) == 1)
      {
        v6 = qword_1ED640B30;
        if (!os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO) || (*buf = 0, _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Done applying cross-site tracking restrictions.", buf, 2u), (v7 = *(a1 + 8)) != 0) && (v5 = *(v7 + 8)) != 0)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v5, 4, &v9);
          result = v9;
          v9 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v8);
            }
          }
        }

        else
        {
          result = 121;
          __break(0xC471u);
        }
      }
    }
  }

  return result;
}

__n128 WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ResourceLoadStatisticsStore::DomainData>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = (*a1 + 40 * a1[3]);
  v4->n128_u32[0] = v3->n128_u32[0];
  v5 = v3->n128_u64[1];
  v3->n128_u64[1] = 0;
  v4->n128_u64[1] = v5;
  v6 = v3[2].n128_u64[0];
  result = v3[1];
  v4[1] = result;
  v4[2].n128_u64[0] = v6;
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(WTF::StringImpl *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 40 * a2;
      result = WTF::fastMalloc((5 * a2), (40 * a2));
      *(v2 + 2) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = v3;
        do
        {
          *v7 = *v8;
          v9 = *(v8 + 1);
          *(v8 + 1) = 0;
          *(v7 + 1) = v9;
          v10 = *(v8 + 1);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 1) = v10;
          result = *(v8 + 1);
          *(v8 + 1) = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v6);
          }

          v7 = (v7 + 40);
          v8 = (v8 + 40);
        }

        while (v8 != (v3 + 40 * v4));
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

uint64_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(uint64_t *result, unint64_t a2, unint64_t *a3, char *a4)
{
  v5 = a3;
  v7 = *a3;
  while (((v8 = result[1]) != 0 || (v8 = *result) != 0) && (*(v8 + 16) & 4) == 0 || v7 && (*(v7 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(result);
    if (!result)
    {
      return result;
    }

    v11 = *a2;
    v10 = *(a2 + 8);
    v7 = *v5;
    a2 = *a4;
    if (v10 < 0x40)
    {
      v12 = result;
    }

    else
    {
      v12 = (result + 2 * (v10 & 0x7FFFFFFFFFFFFFC0));
      v13 = 0uLL;
      v14 = result;
      do
      {
        v29.val[0] = *v11;
        v15 = v11[1];
        v30.val[0] = v11[2];
        v16 = v11[3];
        v11 += 4;
        v17 = v16;
        v30.val[1] = 0uLL;
        v31.val[0] = v15;
        v29.val[1] = 0uLL;
        v18 = v14;
        vst2q_s8(v18, v29);
        v18 += 32;
        v31.val[1] = 0uLL;
        vst2q_s8(v18, v31);
        v19 = (v14 + 8);
        vst2q_s8(v19, v30);
        v20 = (v14 + 12);
        vst2q_s8(v20, *(&v13 - 1));
        v14 += 16;
      }

      while (v14 != v12);
    }

    while (v12 != (result + 2 * v10))
    {
      v26 = v11->u8[0];
      v11 = (v11 + 1);
      *v12 = v26;
      v12 = (v12 + 2);
    }

    if (v9 >= v10)
    {
      v5 = (v9 - v10);
      a4 = result + 2 * v10;
      v27 = v7;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v27, a4);
      v7 = v27;
      if (!v27 || (v7 = *(v27 + 4), v5 >= v7))
      {
        if (v5 != v7)
        {
          *&a4[2 * v7] = a2;
          return result;
        }
      }
    }

    __break(1u);
  }

  result = MEMORY[0x19EB01170]();
  if (result)
  {
    v22 = *a2;
    v23 = *(a2 + 8);
    v24 = *v5;
    v25 = *a4;

    return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(result, v21, v22, v23, v24, v25);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104C48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104C48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 129) = *(a1 + 8);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104C70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104C70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 128) = *(a1 + 8);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_ullong *WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::WebResourceLoadStatisticsStore>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::WebResourceLoadStatisticsStore *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_4:
  v5 = a1[2];
  v6 = a1[3];
  v7 = (a1[1] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  result = v5(v7);
  if (v2)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v2, v9);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(WebKit::NetworkSession &,WTF::String const&,WebKit::ShouldIncludeLocalhost,WebCore::ResourceLoadStatistics::IsEphemeral)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1104CC0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(WebKit::NetworkSession &,WTF::String const&,WebKit::ShouldIncludeLocalhost,WebCore::ResourceLoadStatistics::IsEphemeral)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104CC0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(WebKit::NetworkSession &,WTF::String const&,WebKit::ShouldIncludeLocalhost,WebCore::ResourceLoadStatistics::IsEphemeral)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = (v4 + 32);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v17 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v17, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v6)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_4:
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = WebKit::ResourceLoadStatisticsStore::operator new(0x2D8, a2);
  WebKit::ResourceLoadStatisticsStore::ResourceLoadStatisticsStore(v9, a2, v4, v7, a1, v8);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 32));
  ++*(v9 + 104);
  v10 = a2[4];
  a2[4] = v9;
  if (v10)
  {
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v10 + 104));
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (WTF::FileSystemImpl::fileExists(&v18, v11))
  {
    WTF::FileSystemImpl::deleteFile(&v18, v12);
  }

  WebKit::ResourceLoadStatisticsStore::didCreateNetworkProcess(v9, v13);
  v15 = v18;
  v18 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v9 + 104));
}

uint64_t WebKit::ResourceLoadStatisticsStore::operator new(WebKit::ResourceLoadStatisticsStore *this, void *a2)
{
  if (WebKit::ResourceLoadStatisticsStore::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ResourceLoadStatisticsStore::s_heapRef, a2);
  }

  else
  {
    return WebKit::ResourceLoadStatisticsStore::operatorNewSlow(0x2D8);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104CE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104CE8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D10;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession(WTF::CompletionHandler<void ()(void)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D10;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D38;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D38;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v4 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v6);
  WTF::RunLoop::mainSingleton(v4);
  WTF::RunLoop::dispatch();
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D60;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>(uint64_t *a1, atomic_ullong *a2)
{
  v3 = a2[4];
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    v5 = *(v3 + 727);
    if (v5 == 1)
    {
      v6 = *a1;
      *a1 = 0;
      v7 = WTF::fastMalloc(v5, 0x10);
      *v7 = &unk_1F1104D88;
      v7[1] = v6;
      v17[0] = v7;
      WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(v3, v17);
      if (v17[0])
      {
        (*(*v17[0] + 8))(v17[0]);
      }

      *(v3 + 727) = 0;
    }

    else
    {
      while (1)
      {
        v10 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v11 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_10;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_10:
      v12 = *a1;
      *a1 = 0;
      v13 = WTF::fastMalloc(v10, 0x18);
      *v13 = &unk_1F1104DB0;
      v13[1] = a2;
      v17[0] = 0;
      v17[1] = 0;
      v13[2] = v12;
      v18 = v13;
      WTF::RunLoop::mainSingleton(v13);
      WTF::RunLoop::dispatch();
      v15 = v18;
      v18 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      _ZZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEON3WTF17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENUlvE0_D1Ev(v17, v14);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  else
  {
    v16 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1, v17);
    WTF::RunLoop::mainSingleton(v16);
    WTF::RunLoop::dispatch();
    result = v17[0];
    v17[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEON3WTF17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENUlvE0_D1Ev(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104D88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104D88;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEON3WTF17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENUlvE_clEv(uint64_t *a1, unint64_t a2)
{
  v2 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1, &v4);
  WTF::RunLoop::mainSingleton(v2);
  WTF::RunLoop::dispatch();
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F1104DB0;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1104DB0;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27populateMemoryStoreFromDiskEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEE4callEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::WebResourceLoadStatisticsStore::logTestingEvent(v2, &v7);
  v4 = v7;
  v7 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v5 + 16))(v5);
  return (*(*v5 + 8))(v5);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1104DD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1104DD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    if (*(v3 + 725) != v4)
    {
      *(v3 + 725) = v4;
      *(v3 + 724) = v4;
      v5 = qword_1ED640B30;
      v6 = os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (v6)
        {
          *buf = 0;
          _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Turned ITP Debug Mode on.", buf, 2u);
        }
      }

      else if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Turned ITP Debug Mode off.", buf, 2u);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
      v8 = *buf;
      *buf = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      WebKit::ResourceLoadStatisticsStore::ensurePrevalentResourcesForDebugMode(buf, v3);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v9);
      if (v4)
      {
        v11 = WTF::fastMalloc(v10, 0x10);
        *v11 = &unk_1F1104630;
        v14 = v11;
        WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v3, &v14);
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v12 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), buf);
  WTF::RunLoop::mainSingleton(v12);
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104E00;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104E00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    v5 = *(a1 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v6 = *(v3 + 248);
    *(v3 + 248) = v5;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v7 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v9);
  WTF::RunLoop::mainSingleton(v7);
  WTF::RunLoop::dispatch();
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104E28;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104E28;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(v3);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v7);
  WTF::RunLoop::mainSingleton(v5);
  WTF::RunLoop::dispatch();
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104E50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104E50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = v3 + 26;
    ++v3[26];
    WebKit::ResourceLoadStatisticsStore::checkForMissingTablesInSchema(v15, v3);
    v5 = v16;
    v6 = v16 ^ 1;
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    v9 = WTF::fastMalloc(v8, 0x18);
    *v9 = &unk_1F1104E78;
    *(v9 + 8) = v6;
    v9[2] = v7;
    v14 = v9;
    WTF::RunLoop::mainSingleton(v9);
    WTF::RunLoop::dispatch();
    if (v14)
    {
      (*(*v14 + 8))(v14);
      if (!v5)
      {
        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
      }
    }

    else if (!v5)
    {
      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v10);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v12 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v12 + 16))(v12);
  v13 = *(*v12 + 8);

  return v13(v12);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30statisticsDatabaseHasAllTablesEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1104E78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30statisticsDatabaseHasAllTablesEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1104E78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30statisticsDatabaseHasAllTablesEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

WTF *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>,WTF::CompletionHandler<void ()(void)> &,0>@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x20);
  *v5 = &unk_1F1104EA0;
  v5[2] = 0;
  v5[1] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v5 + 1), a2);
  v7 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5[3] = v7;
  *a1 = v5;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104EA0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104EA0;
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

uint64_t *WebKit::WebResourceLoadStatisticsStore::resourceLoadStatisticsUpdated(WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>(uint64_t a1, atomic_ullong *a2)
{
  v3 = a2[4];
  if (v3)
  {
    ++*(v3 + 104);
    WebKit::ResourceLoadStatisticsStore::mergeStatistics(v3, a1);
    v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v12);
    WTF::RunLoop::mainSingleton(v5);
    WTF::RunLoop::dispatch();
    v6 = v12;
    v12 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    if (*(v3 + 280) == 1)
    {
      *(v3 + 280) = 0;
    }

    while (1)
    {
      v7 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v8 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_8:
    v9 = WTF::fastMalloc(v7, 0x10);
    *v9 = &unk_1F1104EC8;
    v9[1] = a2;
    v12 = v9;
    WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v3, &v12);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    WebKit::ResourceLoadStatisticsStore::processStatisticsAndDataRecords(v3);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  else
  {
    v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v12);
    WTF::RunLoop::mainSingleton(v11);
    WTF::RunLoop::dispatch();
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1104EC8;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104EC8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEON3WTF6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEONS1_17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENKUlvE_clEv(atomic_ullong *a1, unint64_t a2)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v4 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_3;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_3:
  v5 = WTF::fastMalloc(v3, 0x10);
  *v5 = &unk_1F1104EF0;
  v5[1] = a1;
  v7 = v5;
  WTF::RunLoop::mainSingleton(v5);
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_ENKUlvE_clEvEUlvE_vJEED1Ev(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1104EF0;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEONS_6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_ENKUlvE_clEvEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104EF0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZZZZN6WebKit30WebResourceLoadStatisticsStore29resourceLoadStatisticsUpdatedEON3WTF6VectorIN7WebCore22ResourceLoadStatisticsELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEONS1_17CompletionHandlerIFvvEEEEN3__0clIS0_EEDaRT_ENKUlvE_clEvENKUlvE_clEv(atomic_ullong *a1)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::WebResourceLoadStatisticsStore::logTestingEvent(a1, &v4);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1104F18;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1104F18;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (v4 + 104);
    v6 = (*(v4 + 104) + 1);
    *(v4 + 104) = v6;
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *(a1 + 56) = 0;
    v12 = WTF::fastMalloc(v6, 0x10);
    *v12 = &unk_1F1104F68;
    v12[1] = v11;
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v4, (a1 + 8), "hasStorageAccess");
    if ((v13 & 1) == 0)
    {
LABEL_6:
      (*(*v12 + 8))(v12);
LABEL_27:

      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
    }

    v14 = WebKit::ResourceLoadStatisticsStore::cookieAccess(v4, (a1 + 8), (a1 + 16), v10);
    if (v14 == 1)
    {
      WTF::RunLoop::mainSingleton(v14);
      v15 = *(v4 + 112);
      if (v15)
      {
        while (1)
        {
          v16 = *v15;
          if ((*v15 & 1) == 0)
          {
            break;
          }

          v17 = *v15;
          atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v17 == v16)
          {
            goto LABEL_10;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_10:
        WebCore::RegistrableDomain::isolatedCopy(v40);
        v40[1] = v12;
        v19 = WTF::fastMalloc(v18, 0x20);
        *v19 = &unk_1F11048B0;
        v19[1] = v15;
        v20 = *v40;
        v40[0] = 0;
        v40[1] = 0;
        *(v19 + 1) = v20;
        v44 = v19;
        WTF::RunLoop::dispatch();
        v22 = v44;
        v44 = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }

        v23 = v40[1];
        v40[1] = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (!v14)
      {
        (*(*v12 + 16))(v12, 0);
        goto LABEL_6;
      }

      WTF::RunLoop::mainSingleton(v14);
      v24 = *(v4 + 112);
      if (v24)
      {
        while (1)
        {
          v25 = *v24;
          if ((*v24 & 1) == 0)
          {
            break;
          }

          v26 = *v24;
          atomic_compare_exchange_strong_explicit(v24, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v26 == v25)
          {
            goto LABEL_17;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_17:
        WebCore::RegistrableDomain::isolatedCopy(v40);
        WebCore::RegistrableDomain::isolatedCopy(&v40[1]);
        *&v41 = v8;
        BYTE8(v41) = v7;
        v42 = v9;
        v43 = v12;
        v28 = WTF::fastMalloc(v27, 0x40);
        *v28 = &unk_1F1104928;
        v28[1] = v24;
        v29 = v40[0];
        v40[0] = 0;
        v28[2] = v29;
        v28[3] = v40[1];
        v30 = v42;
        *(v28 + 2) = v41;
        v28[6] = v30;
        v31 = v43;
        v40[1] = 0;
        v43 = 0;
        v44 = v28;
        v28[7] = v31;
        WTF::RunLoop::dispatch();
        v32 = v44;
        v44 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        v33 = v43;
        v43 = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        v34 = v40[1];
        v40[1] = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v21);
        }

LABEL_24:
        v35 = v40[0];
        v40[0] = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v21);
        }

        goto LABEL_27;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DD18880);
  }

  v37 = *(a1 + 56);
  *(a1 + 56) = 0;
  v38 = WTF::fastMalloc(a3, 0x10);
  *v38 = &unk_1F1104F40;
  v38[1] = v37;
  v39 = v38;
  WTF::RunLoop::mainSingleton(v38);
  WTF::RunLoop::dispatch();
  result = v39;
  if (v39)
  {
    return (*(*v39 + 8))(v39);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104F40;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104F40;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlbE_vJbEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104F68;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlbE_vJbEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104F68;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlbE_vJbEE4callEb@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  v5 = WTF::fastMalloc(a3, 0x18);
  *v5 = &unk_1F1104F90;
  v5[1] = v4;
  *(v5 + 16) = v3;
  v7 = v5;
  WTF::RunLoop::mainSingleton(v5);
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_ENUlbE_clEbEUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104F90;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_ENUlbE_clEbEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104F90;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore16hasStorageAccessEON7WebCore17RegistrableDomainES6_NSt3__18optionalINS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENS9_INS4_18PageIdentifierTypeESC_yEEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_ENUlbE_clEbEUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1104FB8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1104FB8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_1,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1104FE0;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 6), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_1,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1104FE0;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 48, a2);
  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  return WTF::fastFree(a1, v3);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_1,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 41);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *v81 = v8;
    *&v81[16] = v9;
    v82[0] = *(a1 + 80);
    *(v82 + 9) = *(a1 + 89);
    std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v83, (a1 + 112));
    v10 = *(a1 + 152);
    *(a1 + 152) = 0;
    v84 = v10;
    v11 = WTF::fastMalloc(v10, 0x78);
    *v11 = &unk_1F1105058;
    *(v11 + 1) = *v81;
    v12 = *&v81[16];
    *&v81[8] = 0u;
    v11[3] = v12;
    v13 = *&v81[24];
    *&v81[24] = 0;
    v11[4] = v13;
    v14 = *(v82 + 9);
    *(v11 + 5) = v82[0];
    *(v11 + 49) = v14;
    std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100]((v11 + 9), v83);
    v15 = v84;
    v84 = 0;
    v11[14] = v15;
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 8), "requestStorageAccess");
    if ((v16 & 1) == 0)
    {
LABEL_6:
      (*(*v11 + 16))(v11, 0);
LABEL_7:
      (*(*v11 + 8))(v11);
LABEL_8:
      WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v81, v18);
      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
    }

    v17 = WebKit::ResourceLoadStatisticsStore::cookieAccess(v3, (a1 + 8), (a1 + 16), v7);
    if (v17 == 1)
    {
      if (*(v3 + 724) == 1)
      {
        v49 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          v50 = v85[0] ? v85[0] + 16 : 0;
          *buf = 136380675;
          *&buf[4] = v50;
          _os_log_impl(&dword_19D52D000, v49, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: No need to grant storage access to %{private}s since its cookies are not blocked in third-party contexts. Note that the underlying cookie policy may still block this third-party from setting cookies.", buf, 0xCu);
          v52 = v85[0];
          v85[0] = 0;
          if (v52)
          {
            if (*v52 == 1)
            {
              WTF::fastFree(v52, v51);
            }

            else
            {
              --*v52;
            }
          }
        }

        v53 = *(a1 + 8);
        if (v53)
        {
          atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
        }

        v85[0] = v53;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] No need to grant storage access to '", 43, v85, "' since its cookies are not blocked in third-party contexts. Note that the underlying cookie policy may still block this third-party from setting cookies.", 155, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v55 = *buf;
        *buf = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v54);
        }

        v56 = v85[0];
        v85[0] = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v54);
        }
      }

      (*(*v11 + 16))(v11, 2);
      goto LABEL_7;
    }

    if (!v17)
    {
      if (*(v3 + 724) == 1)
      {
        v41 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          v42 = v85[0] ? v85[0] + 16 : 0;
          *buf = 136380675;
          *&buf[4] = v42;
          _os_log_impl(&dword_19D52D000, v41, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Cannot grant storage access to %{private}s since its cookies are blocked in third-party contexts and it has not received user interaction as first-party.", buf, 0xCu);
          v44 = v85[0];
          v85[0] = 0;
          if (v44)
          {
            if (*v44 == 1)
            {
              WTF::fastFree(v44, v43);
            }

            else
            {
              --*v44;
            }
          }
        }

        v45 = *(a1 + 8);
        if (v45)
        {
          atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
        }

        v85[0] = v45;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] Cannot grant storage access to '", 39, v85, "' since its cookies are blocked in third-party contexts and it has not received user interaction as first-party.", 113, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 2, buf);
        v47 = *buf;
        *buf = 0;
        if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v46);
        }

        v48 = v85[0];
        v85[0] = 0;
        if (v48)
        {
          if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v48, v46);
          }
        }
      }

      goto LABEL_6;
    }

    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 16), "hasUserGrantedStorageAccessThroughPrompt");
    if ((v20 & 1) == 0 || (WebCore::SQLiteDatabase::prepareStatement(), v94))
    {
      v21 = *(v3 + 724);
LABEL_14:
      if (v21)
      {
        v57 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          if (v85[0])
          {
            v58 = v85[0] + 16;
          }

          else
          {
            v58 = 0;
          }

          WTF::String::utf8();
          if (v87[0])
          {
            v59 = v87[0] + 16;
          }

          else
          {
            v59 = 0;
          }

          *buf = 136380931;
          *&buf[4] = v58;
          v91 = 2081;
          v92 = v59;
          _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: About to ask the user whether they want to grant storage access to %{private}s under %{private}s or not.", buf, 0x16u);
          v61 = v87[0];
          v87[0] = 0;
          if (v61)
          {
            if (*v61 == 1)
            {
              WTF::fastFree(v61, v60);
            }

            else
            {
              --*v61;
            }
          }

          v62 = v85[0];
          v85[0] = 0;
          if (v62)
          {
            if (*v62 == 1)
            {
              WTF::fastFree(v62, v60);
            }

            else
            {
              --*v62;
            }
          }
        }

        v63 = *(a1 + 8);
        if (v63)
        {
          atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
        }

        v85[0] = v63;
        v64 = *(a1 + 16);
        if (v64)
        {
          atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
        }

        v87[0] = v64;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] About to ask the user whether they want to grant storage access to '", 75, v85, "' under '", 10, v87, "' or not.", 10, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v66 = *buf;
        *buf = 0;
        if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v66, v65);
        }

        v67 = v87[0];
        v87[0] = 0;
        if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v67, v65);
        }

        v68 = v85[0];
        v85[0] = 0;
        if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v68, v65);
        }
      }

      (*(*v11 + 16))(v11, 1);
      goto LABEL_7;
    }

    v22 = WebCore::SQLiteStatement::bindInt(buf);
    if (v22)
    {
      goto LABEL_19;
    }

    if (v94)
    {
      goto LABEL_100;
    }

    v22 = WebCore::SQLiteStatement::bindInt(buf);
    if (v22)
    {
LABEL_19:
      v23 = 0;
    }

    else
    {
      if (v94)
      {
        goto LABEL_100;
      }

      v22 = WebCore::SQLiteStatement::step(buf);
      if (v22 == 100)
      {
        if (v94)
        {
          goto LABEL_100;
        }

        v23 = WebCore::SQLiteStatement::columnInt(buf) != 0;
      }

      else
      {
        v23 = 0;
      }
    }

    if (!v94)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(buf);
    }

    v21 = *(v3 + 724);
    if (!v23)
    {
      goto LABEL_14;
    }

    if (*(v3 + 724))
    {
      v69 = qword_1ED640B30;
      if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
      {
        WTF::String::utf8();
        if (v85[0])
        {
          v70 = v85[0] + 16;
        }

        else
        {
          v70 = 0;
        }

        WTF::String::utf8();
        if (v87[0])
        {
          v71 = v87[0] + 16;
        }

        else
        {
          v71 = 0;
        }

        *buf = 136380931;
        *&buf[4] = v70;
        v91 = 2081;
        v92 = v71;
        _os_log_impl(&dword_19D52D000, v69, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Storage access was granted to %{private}s under %{private}s.", buf, 0x16u);
        v73 = v87[0];
        v87[0] = 0;
        if (v73)
        {
          if (*v73 == 1)
          {
            WTF::fastFree(v73, v72);
          }

          else
          {
            --*v73;
          }
        }

        v74 = v85[0];
        v85[0] = 0;
        if (v74)
        {
          if (*v74 == 1)
          {
            WTF::fastFree(v74, v72);
          }

          else
          {
            --*v74;
          }
        }
      }

      v75 = *(a1 + 8);
      if (v75)
      {
        atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
      }

      v89 = v75;
      v76 = *(a1 + 16);
      if (v76)
      {
        atomic_fetch_add_explicit(v76, 2u, memory_order_relaxed);
      }

      v88 = v76;
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] Storage access was granted to '", 38, &v89, "' under '", 10, &v88, "'.", 3, buf);
      WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
      v78 = *buf;
      *buf = 0;
      if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v78, v77);
      }

      v79 = v88;
      v88 = 0;
      if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, v77);
      }

      v80 = v89;
      v89 = 0;
      if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v80, v77);
      }
    }

    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v87, v3);
    WebCore::SQLiteDatabase::prepareStatement();
    if (v86)
    {
      goto LABEL_30;
    }

    v22 = WebCore::SQLiteStatement::bindInt(v85);
    if (v22)
    {
      goto LABEL_30;
    }

    if (!v86)
    {
      if (WebCore::SQLiteStatement::step(v85) == 101)
      {
        v25 = WTF::fastMalloc(v24, 0x10);
        *v25 = &unk_1F11049A0;
        v25[1] = v11;
        *buf = v25;
        WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(v3, (a1 + 8), (a1 + 16), v5, 1, v4, 1, v6, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

LABEL_33:
        if (!v86)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v85);
        }

        WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v87);
        goto LABEL_8;
      }

LABEL_30:
      v26 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v38 = *(v3 + 664);
        Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
        *buf = 134218755;
        *&buf[4] = v3;
        v91 = 2048;
        v92 = v38;
        v93 = 1024;
        v94 = Error;
        v95 = 2081;
        v96 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::requestStorageAccess: failed to step statement", buf, 0x26u);
      }

      (*(*v11 + 16))(v11, 0);
      (*(*v11 + 8))(v11);
      goto LABEL_33;
    }

LABEL_100:
    mpark::throw_bad_variant_access(v22);
  }

  v27 = *(a1 + 48);
  v28 = *(a1 + 64);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *v81 = v27;
  *&v81[16] = v28;
  v82[0] = *(a1 + 80);
  *(v82 + 9) = *(a1 + 89);
  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v83, (a1 + 112));
  v29 = *(a1 + 152);
  *(a1 + 152) = 0;
  v84 = v29;
  v30 = WTF::fastMalloc(v29, 0x78);
  *v30 = &unk_1F1105008;
  *(v30 + 1) = *v81;
  v31 = *&v81[16];
  *&v81[8] = 0u;
  v30[3] = v31;
  v32 = *&v81[24];
  *&v81[24] = 0;
  v30[4] = v32;
  v33 = *(v82 + 9);
  *(v30 + 5) = v82[0];
  *(v30 + 49) = v33;
  v34 = std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100]((v30 + 9), v83);
  v35 = v84;
  v84 = 0;
  v30[14] = v35;
  *buf = v30;
  WTF::RunLoop::mainSingleton(v34);
  WTF::RunLoop::dispatch();
  v37 = *buf;
  *buf = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  return WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v81, v36);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105008;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105008;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v6 = 0;
  v7 = *(a1 + 64);
  v1 = *(a1 + 32);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 2u, memory_order_relaxed);
  }

  v8 = v1;
  v2 = *(a1 + 24);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v9 = v2;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 112), &v6);
  v4 = v9;
  v9 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::operator()(WebKit::StorageAccessStatus)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105030;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::operator()(WebKit::StorageAccessStatus)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105030;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::RegistrableDomain &&<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::operator()(WebKit::StorageAccessStatus)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    WebCore::RegistrableDomain::isolatedCopy(&v24);
    WebCore::RegistrableDomain::isolatedCopy(&v25);
    v26[0] = v4;
    v26[1] = v5;
    LOBYTE(v27) = 1;
    HIBYTE(v27) = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = 0;
    v28 = v7;
    v8 = WTF::fastMalloc(v7, 0x38);
    *v8 = &unk_1F11050F8;
    v8[1] = v24;
    v9 = v25;
    v24 = 0;
    v25 = 0;
    v8[2] = v9;
    v10 = *v26;
    *(v8 + 20) = v27;
    *(v8 + 3) = v10;
    v11 = v28;
    v28 = 0;
    v8[6] = v11;
    if (*(v3 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
      return result;
    }

    v12 = v8;
    while (1)
    {
      v13 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v14 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
    v15 = WTF::fastMalloc(v13, 0x18);
    *v15 = &unk_1F11044F0;
    v15[1] = v3;
    v15[2] = v12;
    v29 = v15;
    WTF::SuspendableWorkQueue::dispatch();
    v17 = v29;
    v29 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v28;
    v28 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v25;
    v25 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    result = v24;
    v24 = 0;
    if (result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LOWORD(v24) = 256;
    BYTE2(v24) = *(a1 + 56);
    v21 = *(a1 + 32);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v25 = v21;
    v22 = *(a1 + 24);
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    v26[0] = v22;
    WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 64), &v24);
    v23 = v26[0];
    v26[0] = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v16);
    }

    result = v25;
    v25 = 0;
    if (result)
    {
LABEL_23:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlNS2_19StorageAccessStatusEE_vJSR_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105058;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlNS2_19StorageAccessStatusEE_vJSR_EED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105058;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_EUlNS2_19StorageAccessStatusEE_vJSR_EE4callESR_(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *v17 = v4;
  *&v17[16] = v5;
  v18[0] = *(a1 + 40);
  *(v18 + 9) = *(a1 + 49);
  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v19, (a1 + 72));
  v6 = *(a1 + 112);
  *(a1 + 112) = 0;
  v20 = v6;
  v21 = a2;
  v7 = WTF::fastMalloc(v6, 0x80);
  v8 = *v17;
  *v7 = &unk_1F1105080;
  *(v7 + 1) = __PAIR128__(*&v17[8], v8);
  v9 = *&v17[16];
  *&v17[8] = 0u;
  v7[3] = v9;
  v10 = *&v17[24];
  *&v17[24] = 0;
  v7[4] = v10;
  v11 = *(v18 + 9);
  *(v7 + 5) = v18[0];
  *(v7 + 49) = v11;
  v12 = std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100]((v7 + 9), v19);
  v13 = v20;
  v20 = 0;
  v7[14] = v13;
  *(v7 + 120) = v21;
  v22 = v7;
  WTF::RunLoop::mainSingleton(v12);
  WTF::RunLoop::dispatch();
  v15 = v22;
  v22 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v17, v14);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_ENUlNS2_19StorageAccessStatusEE_clESR_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105080;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_ENUlNS2_19StorageAccessStatusEE_clESR_EUlvE_vJEED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105080;
  WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore20requestStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS7_INS2_26WebPageProxyIdentifierTypeESA_yEENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__1clIS3_EEDaRT_ENUlNS2_19StorageAccessStatusEE_clESR_EUlvE_vJEE4callEv(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = *(result + 120);
  v4 = *(result + 8);
  if (v3 == 2)
  {
    LOWORD(v28) = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(*(result + 8), *(result + 40), *(result + 24));
    goto LABEL_19;
  }

  if (v3 != 1)
  {
    if (*(result + 120))
    {
      return result;
    }

    goto LABEL_4;
  }

  v5 = *(v4 + 16);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
LABEL_4:
    LOWORD(v28) = 0;
LABEL_19:
    BYTE2(v28) = *(v2 + 64);
    v21 = *(v2 + 32);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v29 = v21;
    v22 = *(v2 + 24);
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    }

    v30 = v22;
    WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((v2 + 112), &v28);
    v24 = v30;
    v30 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }

    result = v29;
    v29 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v23);
      }
    }

    return result;
  }

  ++*(v6 + 16);
  v7 = *(result + 16);
  while (1)
  {
    v8 = *v7;
    if ((*v7 & 1) == 0)
    {
      break;
    }

    v9 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_10:
  v10 = *(v2 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v27 = v6;
  add_explicit = (v2 + 32);
  v12 = *(v2 + 32);
  if (v12)
  {
    add_explicit = atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  v14 = *(v2 + 40);
  v13 = *(v2 + 48);
  v15 = *(v2 + 64);
  v16 = *(v2 + 112);
  *(v2 + 112) = 0;
  v17 = WTF::fastMalloc(add_explicit, 0x48);
  *v17 = &unk_1F1105030;
  v17[1] = v4;
  v17[2] = v7;
  v17[3] = v10;
  v17[4] = v12;
  v17[5] = v14;
  v17[6] = v13;
  *(v17 + 56) = v15;
  v17[8] = v16;
  v33 = v17;
  v18 = *(*(v27 + 32) + 40);
  if (v18)
  {
    while (1)
    {
      v19 = *v18;
      if ((*v18 & 1) == 0)
      {
        break;
      }

      v20 = *v18;
      atomic_compare_exchange_strong_explicit(v18, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_30;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
  }

LABEL_30:
  v28 = v2 + 56;
  v29 = (v2 + 40);
  v30 = (v2 + 24);
  v31 = v2 + 32;
  v32 = v2 + 72;
  IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(v18, &v28, &v33, (v2 + 32));
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18, v25);
  }

  result = v33;
  if (v33)
  {
    result = (*(*v33 + 8))(v33);
  }

  v26 = *(v27 + 16);
  if (v26)
  {
    *(v27 + 16) = v26 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 && (v3 = *(v2 - 4)) != 0)
  {
    v4 = (v3 << (6 * *(v2 - 12) >= (2 * v3)));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v4);
}

uint64_t *WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
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

  v7 = a2;
  result = WTF::fastMalloc(0x10, ((a2 << 6) | 0x10));
  if (v2)
  {
    v11 = result + 9;
    do
    {
      *(v11 - 7) = 0;
      *(v11 - 48) = 0;
      *(v11 - 40) = 0;
      *v11 = 0;
      v11 += 8;
      --v7;
    }

    while (v7);
  }

  *a1 = (result + 2);
  *(result + 2) = v2 - 1;
  *(result + 3) = v2;
  *result = 0;
  *(result + 1) = v6;
  if (v5)
  {
    v12 = 0;
    while (1)
    {
      v13 = v4 + (v12 << 6);
      if (*v13 != -1)
      {
        if (WTF::equal(*v13, 0, v10))
        {
          if (*(v13 + 56) == 1)
          {
            v14 = *(v13 + 24);
            *(v13 + 24) = 0;
            if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v9);
            }

            v15 = *(v13 + 16);
            *(v13 + 16) = 0;
            if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v9);
            }
          }

          v16 = *v13;
          *v13 = 0;
          if (!v16 || atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_47;
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

          v19 = WTF::ASCIICaseInsensitiveHash::hash(*v13, v9);
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v22 = WTF::equal(*(v17 + (v21 << 6)), 0, v10);
            v19 = ++v20 + v21;
          }

          while (!v22);
          v23 = v17 + (v21 << 6);
          if (*(v23 + 56) == 1)
          {
            v24 = *(v23 + 24);
            *(v23 + 24) = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v9);
            }

            v25 = *(v23 + 16);
            *(v23 + 16) = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v9);
            }
          }

          v26 = *v23;
          *v23 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v9);
          }

          v27 = *v13;
          *v13 = 0;
          *v23 = v27;
          *(v23 + 8) = *(v13 + 8);
          *(v23 + 16) = 0;
          *(v23 + 56) = 0;
          if (*(v13 + 56) == 1)
          {
            v28 = *(v13 + 16);
            *(v13 + 16) = 0;
            *(v23 + 16) = v28;
            v29 = *(v13 + 24);
            *(v13 + 24) = 0;
            *(v23 + 24) = v29;
            v30 = *(v13 + 32);
            *(v23 + 48) = *(v13 + 48);
            *(v23 + 32) = v30;
            *(v23 + 56) = 1;
            if (*(v13 + 56))
            {
              v31 = *(v13 + 24);
              *(v13 + 24) = 0;
              if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v31, v9);
              }

              v32 = *(v13 + 16);
              *(v13 + 16) = 0;
              if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v32, v9);
              }
            }
          }

          v16 = *v13;
          *v13 = 0;
          if (!v16 || atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_47;
          }
        }

        WTF::StringImpl::destroy(v16, v9);
      }

LABEL_47:
      if (++v12 == v5)
      {
        goto LABEL_50;
      }
    }
  }

  if (v4)
  {
LABEL_50:

    return WTF::fastFree((v4 - 16), v9);
  }

  return result;
}

__n128 std::__optional_storage_base<WebCore::LoginStatus,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::LoginStatus,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 40) == a2[2].n128_u8[8])
  {
    if (*(a1 + 40))
    {
      v4 = a2->n128_u64[0];
      a2->n128_u64[0] = 0;
      v5 = *a1;
      *a1 = v4;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = a2->n128_u64[1];
      a2->n128_u64[1] = 0;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }

      result = a2[1];
      *(a1 + 32) = a2[2].n128_u64[0];
      *(a1 + 16) = result;
    }
  }

  else if (*(a1 + 40))
  {
    v9 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = *a1;
    *a1 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    *(a1 + 40) = 0;
  }

  else
  {
    v11 = a2->n128_u64[0];
    a2->n128_u64[0] = 0;
    *a1 = v11;
    v12 = a2->n128_u64[1];
    a2->n128_u64[1] = 0;
    *(a1 + 8) = v12;
    result = a2[1];
    *(a1 + 32) = a2[2].n128_u64[0];
    *(a1 + 16) = result;
    *(a1 + 40) = 1;
  }

  return result;
}

WTF **WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD1AB34);
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = (v6 + (v8 << 6));
  if (WTF::equal(*v9, 0, v10))
  {
LABEL_10:
    if (*a1)
    {
      return (*a1 + (*(*a1 - 4) << 6));
    }

    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = (v6 + (v8 << 6));
    ++v12;
    if (WTF::equal(*v9, 0, v11))
    {
      goto LABEL_10;
    }
  }

  return v9;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessEphemeral(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11050A8;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessEphemeral(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11050A8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessEphemeral(WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::StorageAccessScope,WebKit::CanRequestStorageAccessWithoutUserInteraction,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,BOOL>::call(uint64_t a1, int a2)
{
  if (!a2)
  {
    LOWORD(v24) = 256;
    BYTE2(v24) = *(a1 + 56);
    v18 = *(a1 + 32);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v25 = v18;
    v19 = *(a1 + 24);
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 56);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = *(a1 + 40);
      ++*(v6 + 16);
      v8 = *(v6 + 32);
      v24 = *(v6 + 24);
      v9 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v8 + 248), &v24);
      if (v9)
      {
        v10 = v9;
        ++*(v9 + 8);
        WebCore::NetworkStorageSession::grantStorageAccess();
        LOBYTE(v24) = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(v3, v7, *(a1 + 24));
        BYTE1(v24) = 1;
        BYTE2(v24) = v4;
        v11 = *(a1 + 32);
        if (v11)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        v25 = v11;
        v12 = *(a1 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
        }

        v26 = v12;
        WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 64), &v24);
        v14 = v26;
        v26 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v13);
        }

        result = v25;
        v25 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v13);
        }

        v16 = *(v10 + 8);
        if (v16)
        {
          *(v10 + 8) = v16 - 1;
          v17 = *(v6 + 16);
          if (v17)
          {
            *(v6 + 16) = v17 - 1;
            return result;
          }
        }

LABEL_35:
        __break(0xC471u);
        JUMPOUT(0x19DD1AF28);
      }

      v22 = *(v6 + 16);
      if (!v22)
      {
        goto LABEL_35;
      }

      *(v6 + 16) = v22 - 1;
    }
  }

  LOWORD(v24) = 256;
  BYTE2(v24) = v4;
  v23 = *(a1 + 32);
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  v25 = v23;
  v19 = *(a1 + 24);
  if (v19)
  {
LABEL_21:
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

LABEL_22:
  v26 = v19;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 64), &v24);
  v21 = v26;
  v26 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  result = v25;
  v25 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v20);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11050D0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11050D0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(WebCore::RegistrableDomain &&,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(_DWORD *result, uint64_t a2, const WTF::StringImpl *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(result + 2);
    v5 = (result + 2);
    v6 = (result + 6);
    if ((WTF::equal(*(result + 1), *(result + 3), a3) & 1) == 0)
    {
      add_explicit = *(v3 + 724);
      if (add_explicit == 1)
      {
        v9 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          if (v22)
          {
            v10 = v22 + 16;
          }

          else
          {
            v10 = 0;
          }

          WTF::String::utf8();
          if (v21)
          {
            v11 = v21 + 16;
          }

          else
          {
            v11 = 0;
          }

          *buf = 136380931;
          *&buf[4] = v10;
          v24 = 2081;
          v25 = v11;
          _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: [Temporary combatibility fix] Storage access was granted for %{private}s under opener page from %{private}s, with user interaction in the opened window.", buf, 0x16u);
          v13 = v21;
          v21 = 0;
          if (v13)
          {
            if (*v13 == 1)
            {
              WTF::fastFree(v13, v12);
            }

            else
            {
              --*v13;
            }
          }

          v14 = v22;
          v22 = 0;
          if (v14)
          {
            if (*v14 == 1)
            {
              WTF::fastFree(v14, v12);
            }

            else
            {
              --*v14;
            }
          }
        }

        v15 = *v5;
        if (*v5)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        v22 = v15;
        v16 = *v6;
        if (*v6)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v21 = v16;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("[ITP] Storage access was granted for '", 39, &v22, "' under opener page from '", 27, &v21, "', with user interaction in the opened window.", 47, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v18 = *buf;
        *buf = 0;
        if (v18)
        {
          add_explicit = atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed);
          if (add_explicit == 2)
          {
            WTF::StringImpl::destroy(v18, v17);
          }
        }

        v19 = v21;
        v21 = 0;
        if (v19)
        {
          add_explicit = atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed);
          if (add_explicit == 2)
          {
            WTF::StringImpl::destroy(v19, v17);
          }
        }

        v20 = v22;
        v22 = 0;
        if (v20)
        {
          add_explicit = atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed);
          if (add_explicit == 2)
          {
            WTF::StringImpl::destroy(v20, v17);
          }
        }
      }

      v8 = WTF::fastMalloc(add_explicit, 0x10);
      *v8 = &unk_1F11049C8;
      *buf = v8;
      WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(v3, v5, v5 + 2, 0, 0, v4, 0, 1, buf);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11050F8;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11050F8;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, atomic_ullong *a2)
{
  v3 = a2[4];
  if (v3)
  {
    v5 = (v3 + 104);
    v6 = (*(v3 + 104) + 1);
    *(v3 + 104) = v6;
    v45 = *(a1 + 24);
    v7 = *(a1 + 40);
    v8 = *(a1 + 41);
    v9 = *a2;
    if (*a2)
    {
      v9 = WTF::fastMalloc(v6, 0x20);
      *v9 = 0;
      *(v9 + 1) = xmmword_19E7014F0;
      v9[3] = a2;
      while (1)
      {
        v43 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v9[1] = v43 >> 1;
        v44 = v43;
        atomic_compare_exchange_strong_explicit(a2, &v44, v9, memory_order_release, memory_order_relaxed);
        if (v44 == v43)
        {
          goto LABEL_3;
        }
      }

      WTF::fastFree(v9, v42);
      v9 = *a2;
    }

LABEL_3:
    v48 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v9);
    v49 = *(a1 + 24);
    WebCore::RegistrableDomain::isolatedCopy(&v50);
    WebCore::RegistrableDomain::isolatedCopy(&v51);
    v52 = *(a1 + 40);
    v10 = *(a1 + 48);
    *(a1 + 48) = 0;
    v53 = v10;
    v11 = WTF::fastMalloc(v10, 0x40);
    *v11 = &unk_1F1105148;
    v11[1] = a2;
    v11[2] = v48;
    v11[3] = v49;
    v11[4] = v50;
    v12 = v51;
    v50 = 0;
    v51 = 0;
    v11[5] = v12;
    *(v11 + 24) = v52;
    v13 = v53;
    v53 = 0;
    v11[7] = v13;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v61, v3);
    v14 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 96), v3);
    v15 = *(v3 + 96);
    atomic_fetch_add(v15, 1u);
    WTF::RunLoop::mainSingleton(v14);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v3 + 96), v3);
    v16 = *(v3 + 96);
    atomic_fetch_add(v16, 1u);
    v54[0] = v16;
    WebCore::RegistrableDomain::isolatedCopy(&v54[1]);
    WebCore::RegistrableDomain::isolatedCopy(&v55);
    v17 = *(v3 + 120);
    while (1)
    {
      v18 = *(v17 + 32);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(v17 + 32);
      atomic_compare_exchange_strong_explicit((v17 + 32), &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v17 + 32));
LABEL_8:
    *(&v55 + 1) = v17;
    v20 = *(v3 + 112);
    if (v20)
    {
      while (1)
      {
        v21 = *v20;
        if ((*v20 & 1) == 0)
        {
          break;
        }

        v22 = *v20;
        atomic_compare_exchange_strong_explicit(v20, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v22 == v21)
        {
          goto LABEL_11;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v20);
LABEL_11:
      *&v56 = v20;
      *(&v56 + 1) = v15;
      v57 = v45;
      LOBYTE(v58) = v7;
      HIBYTE(v58) = v8;
      v59 = v11;
      v23 = WTF::fastMalloc(v21, 0x58);
      *v23 = &unk_1F11049F0;
      v23[1] = v54[0];
      v23[2] = v54[1];
      v23[3] = v55;
      v24 = *(&v55 + 1);
      *v54 = 0u;
      v55 = 0u;
      v23[4] = v24;
      v23[5] = v56;
      v25 = *(&v56 + 1);
      v56 = 0u;
      v23[6] = v25;
      v26 = v57;
      *(v23 + 36) = v58;
      *(v23 + 7) = v26;
      v27 = v59;
      v59 = 0;
      v23[10] = v27;
      v60 = v23;
      WTF::RunLoop::dispatch();
      v29 = v60;
      v60 = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }

      WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1(v54, v28);
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v61);
      v31 = v53;
      v53 = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      v32 = v51;
      v51 = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v30);
      }

      v33 = v50;
      v50 = 0;
      if (v33)
      {
        if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v30);
        }
      }

      return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
    }

    else
    {
      result = 114;
      __break(0xC471u);
    }
  }

  else
  {
    WebCore::RegistrableDomain::isolatedCopy(v54);
    WebCore::RegistrableDomain::isolatedCopy(&v54[1]);
    LOWORD(v55) = *(a1 + 40);
    v35 = *(a1 + 48);
    *(a1 + 48) = 0;
    *(&v55 + 1) = v35;
    v36 = WTF::fastMalloc(v35, 0x28);
    *v36 = &unk_1F1105120;
    v36[1] = v54[0];
    v37 = v54[1];
    v54[0] = 0;
    v54[1] = 0;
    v36[2] = v37;
    *(v36 + 12) = v55;
    v38 = *(&v55 + 1);
    *(&v55 + 1) = 0;
    v36[4] = v38;
    v47 = v36;
    WTF::RunLoop::mainSingleton(v36);
    WTF::RunLoop::dispatch();
    if (v47)
    {
      (*(*v47 + 8))(v47);
    }

    v40 = *(&v55 + 1);
    *(&v55 + 1) = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v54[1];
    v54[1] = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v39);
    }

    result = v54[0];
    v54[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v39);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105120;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105120;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v6 = 0;
  v7 = *(a1 + 24);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 2u, memory_order_relaxed);
  }

  v8 = v1;
  v2 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v9 = v2;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 32), &v6);
  v4 = v9;
  v9 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlNS4_23StorageAccessWasGrantedEE_vJSQ_EED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105148;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlNS4_23StorageAccessWasGrantedEE_vJSQ_EED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105148;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_EUlNS4_23StorageAccessWasGrantedEE_vJSQ_EE4callESQ_(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *v15 = v4;
  v16 = *(a1 + 24);
  WebCore::RegistrableDomain::isolatedCopy(&v17);
  WebCore::RegistrableDomain::isolatedCopy(&v18);
  v19[0] = a2;
  *&v19[1] = *(a1 + 48);
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  v20 = v5;
  v6 = WTF::fastMalloc(v5, 0x40);
  *v6 = &unk_1F1105170;
  *(v6 + 1) = *v15;
  v6[3] = v16;
  v6[4] = v17;
  v7 = v18;
  v17 = 0;
  v18 = 0;
  v6[5] = v7;
  *(v6 + 24) = *v19;
  *(v6 + 50) = v19[2];
  v8 = v20;
  v20 = 0;
  v6[7] = v8;
  v21 = v6;
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  v10 = v21;
  v21 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v20;
  v20 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = v18;
  v18 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  return 0;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_ENUlNS4_23StorageAccessWasGrantedEE_clESQ_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105170;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[4];
  a1[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_ENUlNS4_23StorageAccessWasGrantedEE_clESQ_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105170;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore18grantStorageAccessEON7WebCore17RegistrableDomainES6_NS_23ObjectIdentifierGenericINS4_19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENS7_INS4_18PageIdentifierTypeESA_yEENS4_27StorageAccessPromptWasShownENS4_18StorageAccessScopeEONS_17CompletionHandlerIFvNS4_26RequestStorageAccessResultEEEEEN3__0clIS3_EEDaRT_ENUlNS4_23StorageAccessWasGrantedEE_clESQ_EUlvE_vJEE4callEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_22;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    v14 = v2;
    MEMORY[0x19EB01E30]();
    v2 = v14;
  }

  if (*(v2 + 24))
  {
    ++*(v2 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(v2);
    if (!v4)
    {
LABEL_22:
      v15 = *(a1 + 48);
      v16 = *(a1 + 49);
      v11 = *(a1 + 40);
      if (v11)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v17 = v11;
      v12 = *(a1 + 32);
      if (v12)
      {
        atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      }

      v18 = v12;
      WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 56), &v15);
      v13 = v18;
      v18 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v17;
      v17 = 0;
      if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
LABEL_32:
        if (!v4)
        {
          return result;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, v8);
      }

LABEL_31:
      result = WTF::StringImpl::destroy(result, v8);
      goto LABEL_32;
    }
  }

  if (*(a1 + 48) != 1)
  {
    goto LABEL_22;
  }

  v15 = WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(v4, *(a1 + 24), *(a1 + 32));
  v16 = *(a1 + 49);
  v6 = *(a1 + 40);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v17 = v6;
  v7 = *(a1 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v18 = v7;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()((a1 + 56), &v15);
  v9 = v18;
  v18 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  result = v17;
  v17 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    goto LABEL_31;
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, v8);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setThirdPartyCookieBlockingMode(WebCore::ThirdPartyCookieBlockingMode)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    v5 = result[26];
    v4 = result + 26;
    *v4 = v5 + 1;
    *(v4 + 616) = *(a1 + 8);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  return result;
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSameSiteStrictEnforcementEnabled(WebCore::SameSiteStrictEnforcementEnabled)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    v5 = result[26];
    v4 = result + 26;
    *v4 = v5 + 1;
    *(v4 + 617) = *(a1 + 8);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F11051E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11051E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    ++*(a2 + 104);
    v4 = *a1;
    *(a2 + 722) = v4;
    if (v4 == 3)
    {
      *(a2 + 233) = 1;
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((a2 + 104));
  }

  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  v6 = WTF::fastMalloc(a3, 0x10);
  *v6 = &unk_1F1105210;
  v6[1] = v5;
  v8 = v6;
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore35setFirstPartyWebsiteDataRemovalModeEN7WebCore32FirstPartyWebsiteDataRemovalModeEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105210;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore35setFirstPartyWebsiteDataRemovalModeEN7WebCore32FirstPartyWebsiteDataRemovalModeEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105210;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore35setFirstPartyWebsiteDataRemovalModeEN7WebCore32FirstPartyWebsiteDataRemovalModeEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105238;
  v3 = a1[1];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105238;
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(_DWORD *result, WTF::StringImpl *a2)
{
  v2 = *(a2 + 4);
  if (v2)
  {
    v4 = *(v2 + 104);
    v3 = v2 + 104;
    *v3 = v4 + 1;
    v5 = *(result + 1);
    *(result + 1) = 0;
    v6 = *(v3 + 216);
    *(v3 + 216) = v5;
    if (v6)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, a2);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105260;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105260;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t a1@<X0>, WTF::StringImpl *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v6 = *(v4 + 104);
    v5 = v4 + 104;
    *v5 = v6 + 1;
    v7 = *(a1 + 8);
    *(a1 + 8) = 0;
    v8 = *(v5 + 192);
    *(v5 + 192) = v7;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  v10 = WTF::fastMalloc(a3, 0x10);
  *v10 = &unk_1F1105288;
  v10[1] = v9;
  v12 = v10;
  WTF::RunLoop::mainSingleton(v10);
  WTF::RunLoop::dispatch();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30setStandaloneApplicationDomainERKN7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105288;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30setStandaloneApplicationDomainERKN7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105288;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30setStandaloneApplicationDomainERKN7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11052B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11052B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = *(v3 + 304);
    *(v3 + 304) = v4;
    if (v5)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }

    *(v3 + 720) = 1;
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setManagedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11052D8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setManagedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11052D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setManagedDomains(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = *(v3 + 312);
    *(v3 + 312) = v4;
    if (v5)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
    }

    *(v3 + 720) = 2;
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::performDailyTasks(void)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    ++v2[26];
    WebKit::ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary(v2);
    WebCore::SQLiteDatabase::runIncrementalVacuumCommand((v2 + 4));

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v2 + 26);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105328;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105328;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(_DWORD *result, uint64_t a2, const WTF::StringImpl *a3)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  ++*(v3 + 104);
  v5 = *(result + 32);
  v6 = *(result + 33);
  v7 = *(result + 5);
  v8 = *(result + 48);
  v9 = (result + 2);
  v10 = WTF::equal(*(result + 1), *(result + 2), a3);
  v11 = (v4 + 6);
  v13 = WTF::equal(*v9, *(v4 + 3), v12);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v70, v3);
  v14 = v6 | v10 | v13;
  if ((v14 & 1) == 0)
  {
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v9, "logFrameNavigation");
    if ((v32 & 1) == 0)
    {
      goto LABEL_7;
    }

    v66 = HIDWORD(v31);
    WTF::WallTime::now(v31);
    WebCore::ResourceLoadStatistics::reduceTimeResolution();
    WebKit::ResourceLoadStatisticsStore::updateLastSeen(v3, v9, v33);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v67 = *buf;
    v69 = *buf;
    v34 = *(v4 + 2);
    if (v34)
    {
      atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
    }

    v75[0] = v34;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v75, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v69, buf, v66);
    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v35);
    }

    v36 = v75[0];
    v75[0] = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v35);
    }

    if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v67, v35);
    }
  }

  if (v13)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v4 + 3, "logFrameNavigation");
    v17 = v16;
    v19 = v18;
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v9, "logFrameNavigation");
    if (v21 & 1) != 0 && (v19)
    {
      v22 = v20;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v23 = *buf;
      v69 = *buf;
      v24 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
      }

      v75[0] = v24;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v75, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v69, buf, v17);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v25);
      }

      v26 = v75[0];
      v75[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }

      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v25);
      }

      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v27 = *buf;
      v69 = *buf;
      v28 = *v11;
      if (*v11)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v75[0] = v28;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v75, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v69, buf, v22);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v29);
      }

      v30 = v75[0];
      v75[0] = 0;
      if (!v30)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    goto LABEL_7;
  }

  v15 = (v8 & 1) == 0 && v7 < *(v3 + 216);
  if ((v5 & 1) == 0 && !v15)
  {
LABEL_6:
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_62:
    WebKit::ResourceLoadStatisticsStore::scheduleStatisticsProcessingRequestIfNecessary(v3);
    goto LABEL_7;
  }

  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v4 + 3, "logFrameNavigation");
  v38 = v37;
  v40 = v39;
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v9, "logFrameNavigation");
  if (v42 & 1) != 0 && (v40)
  {
    v43 = v41;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v44 = *buf;
    v69 = *buf;
    v45 = *v9;
    if (*v9)
    {
      atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
    }

    v75[0] = v45;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v75, 1);
    v46 = HIDWORD(v38);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v69, buf, v46);
    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v47);
    }

    v48 = v75[0];
    v75[0] = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v47);
    }

    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v47);
    }

    if (v5)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v49 = *buf;
      v69 = *buf;
      v50 = *v9;
      if (*v9)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v75[0] = v50;
      WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, v75, 1);
      WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v69, buf, v46);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v51);
      }

      v52 = v75[0];
      v75[0] = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v51);
      }

      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v51);
      }

      if (*(v3 + 724) == 1)
      {
        v54 = qword_1ED640B30;
        if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
        {
          WTF::String::utf8();
          if (v69)
          {
            v55 = v69 + 16;
          }

          else
          {
            v55 = 0;
          }

          WTF::String::utf8();
          if (v75[0])
          {
            v56 = v75[0] + 16;
          }

          else
          {
            v56 = 0;
          }

          *buf = 136446466;
          *&buf[4] = v55;
          v73 = 2082;
          v74 = v56;
          _os_log_impl(&dword_19D52D000, v54, OS_LOG_TYPE_INFO, "ResourceLoadStatisticsStore: Did set %{public}s as making a top frame redirect to %{public}s.", buf, 0x16u);
          v58 = v75[0];
          v75[0] = 0;
          if (v58)
          {
            if (*v58 == 1)
            {
              WTF::fastFree(v58, v57);
            }

            else
            {
              --*v58;
            }
          }

          v59 = v69;
          v69 = 0;
          if (v59)
          {
            if (*v59 == 1)
            {
              WTF::fastFree(v59, v57);
            }

            else
            {
              --*v59;
            }
          }
        }

        v60 = *v11;
        if (*v11)
        {
          atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
        }

        v69 = v60;
        v61 = *v9;
        if (*v9)
        {
          atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
        }

        v75[0] = v61;
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("Did set '", 10, &v69, "' as making a top frame redirect to '", 38, v75, "'.", 3, buf);
        WebKit::ResourceLoadStatisticsStore::debugBroadcastConsoleMessage(v3, 4, buf);
        v63 = *buf;
        *buf = 0;
        if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v63, v62);
        }

        v64 = v75[0];
        v75[0] = 0;
        if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v64, v62);
        }

        v65 = v69;
        v69 = 0;
        if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v65, v62);
        }
      }
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v27 = *buf;
    v68 = *buf;
    v53 = *v11;
    if (*v11)
    {
      atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
    }

    v71 = v53;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, &v71, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v68, buf, v43);
    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v29);
    }

    v30 = v71;
    v71 = 0;
    if (!v30)
    {
      goto LABEL_61;
    }

LABEL_59:
    if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v29);
    }

LABEL_61:
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v29);
    }

    goto LABEL_62;
  }

LABEL_7:
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v70);

  return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105350;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105350;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  v18 = v2;
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = (v3 + 104);
    v6 = (*(v3 + 104) + 1);
    *(v3 + 104) = v6;
    v7 = WTF::fastMalloc(v6, 0x10);
    *v7 = &unk_1F1105378;
    v7[1] = v2;
    v17 = v7;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v19, v3);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 8), "logUserInteraction");
    if ((v8 & 1) != 0 && (hasHadUserInteraction = WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(v3, (a1 + 8)), v10 = hasHadUserInteraction, v11 = *(v3 + 656), WTF::WallTime::now(hasHadUserInteraction), WebKit::ResourceLoadStatisticsStore::setUserInteraction(v3, (a1 + 8), 1, v11 + v12), !v10))
    {
      WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v3, &v17);
      v14 = v17;
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v19);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    else
    {
      (*(*v7 + 16))(v7);
      (*(*v7 + 8))(v7);
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v19);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  else
  {
    v15 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(&v18, v19);
    WTF::RunLoop::mainSingleton(v15);
    WTF::RunLoop::dispatch();
    v16 = v19[0];
    v19[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = v18;
    v18 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18logUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105378;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18logUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105378;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18logUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1, unint64_t a2)
{
  v2 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v4);
  WTF::RunLoop::mainSingleton(v2);
  WTF::RunLoop::dispatch();
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11053A0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11053A0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_26;
  }

  ++*(v3 + 104);
  v4 = *(a1 + 24);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v17, v3);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 16), "logCrossSiteLoadWithLinkDecoration");
  if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

  v7 = v5;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v8 = v18;
  v16 = v18;
  v9 = *(a1 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v19[0] = v9;
  WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v18, v19, 1);
  WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v16, &v18, v7);
  if (v18)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v18, v10);
  }

  v11 = v19[0];
  v19[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
    if (v8)
    {
LABEL_10:
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v10);
      }
    }
  }

  else if (v8)
  {
    goto LABEL_10;
  }

  if ((*(v3 + 233) & 1) == 0 && (*(v3 + 723) & 1) == 0 && MEMORY[0x19EB01EF0](*(a1 + 16), "localhost", 9))
  {
    goto LABEL_18;
  }

  WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 472), "isScheduledForAllButCookieDataRemoval", &v18);
  v12 = WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(v3, &v18, *(a1 + 16));
  MEMORY[0x19EB0CD50](&v18);
  if (v12 == 2)
  {
    if ((v4 & 1) == 0)
    {
      v13 = 1;
      goto LABEL_23;
    }
  }

  else if (!v12)
  {
LABEL_18:
    if (v4)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

LABEL_23:
    if (WebKit::ResourceLoadStatisticsStore::isPrevalentResource(v3, (a1 + 8)))
    {
      WebKit::ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval(v3, (a1 + 16), v13);
    }
  }

LABEL_25:
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v17);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
LABEL_26:
  v14 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 32), v17);
  WTF::RunLoop::mainSingleton(v14);
  WTF::RunLoop::dispatch();
  result = v17[0];
  v17[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11053C8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11053C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  v10 = v2;
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = (*(v3 + 104) + 1);
    *(v3 + 104) = v5;
    v6 = WTF::fastMalloc(v5, 0x10);
    *v6 = &unk_1F11053F0;
    v6[1] = v2;
    v11 = v6;
    WebKit::ResourceLoadStatisticsStore::clearUserInteraction(v3, (a1 + 8), &v11);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  else
  {
    v8 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(&v10, &v11);
    WTF::RunLoop::mainSingleton(v8);
    WTF::RunLoop::dispatch();
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = v10;
    v10 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20clearUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11053F0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20clearUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11053F0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore20clearUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1, unint64_t a2)
{
  v2 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v4);
  WTF::RunLoop::mainSingleton(v2);
  WTF::RunLoop::dispatch();
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105418;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105418;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    for (i = *(v3 + 656); i <= v4; i = i + 86400.0)
    {
      *(v3 + 656) = i;
      WebKit::ResourceLoadStatisticsStore::includeTodayAsOperatingDateIfNecessary(v3);
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF **WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(a1, a2, a3);
  v5 = *a1;
  if (!result)
  {
    if (v5)
    {
      return (v5 + 8 * *(v5 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105440;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105440;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (v4 + 104);
    ++*(v4 + 104);
    hasHadUserInteraction = WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(v4, (a1 + 8));
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  else
  {
    hasHadUserInteraction = 0;
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  v8 = WTF::fastMalloc(a3, 0x18);
  *v8 = &unk_1F1105468;
  *(v8 + 8) = hasHadUserInteraction;
  v8[2] = v7;
  v10 = v8;
  WTF::RunLoop::mainSingleton(v8);
  WTF::RunLoop::dispatch();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore21hasHadUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105468;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore21hasHadUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105468;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore21hasHadUserInteractionEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setLastSeen(WebCore::RegistrableDomain &&,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105490;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setLastSeen(WebCore::RegistrableDomain &&,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105490;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setLastSeen(WebCore::RegistrableDomain &&,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(void *a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 26);
    v4 = *(a1 + 2);
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v8, v3);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 1, "setLastSeen");
    if (v5)
    {
      WebKit::ResourceLoadStatisticsStore::updateLastSeen(v3, a1 + 1, v4);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v8);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 3, v8);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = v8[0];
  v8[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WebCore::RegistrableDomain &&,BOOL,BOOL,BOOL,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11054B8;
  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WebCore::RegistrableDomain &&,BOOL,BOOL,BOOL,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11054B8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WebCore::RegistrableDomain &&,BOOL,BOOL,BOOL,unsigned int,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 26);
    v4 = *(a1 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v16[0] = v4;
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v29 = 0;
    v30 = 0;
    v16[1] = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v25 = *(a1 + 57);
    v26 = *(a1 + 60);
    v15 = 0;
    v5 = *(a1 + 16);
    if (v5 && *(v5 + 4) && (MEMORY[0x19EB01EF0]() & 1) == 0)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v15, (a1 + 16), v6, v14);
    }

    v7 = *(a1 + 24);
    if (v7 && *(v7 + 4) && (MEMORY[0x19EB01EF0]() & 1) == 0)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v15, (a1 + 24), v8, v14);
    }

    v9 = v15;
    v15 = 0;
    *(&v22 + 1) = v9;
    v14[0] = WTF::fastMalloc(v9, 0xC8);
    v14[1] = 0x100000001;
    WebCore::ResourceLoadStatistics::ResourceLoadStatistics(v14[0], v16);
    WebKit::ResourceLoadStatisticsStore::mergeStatistics(v3, v14);
    WTF::Vector<WebCore::ResourceLoadStatistics,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v10);
    if (v15)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v11);
    }

    WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(v16, v11);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
  }

  v12 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 64), v16);
  WTF::RunLoop::mainSingleton(v12);
  WTF::RunLoop::dispatch();
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11054E0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11054E0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(void *a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    WebCore::SQLiteDatabase::prepareStatement();
    WebCore::SQLiteDatabase::prepareStatement();
    WebCore::SQLiteDatabase::prepareStatement();
    if (v29 || v27 || v25)
    {
      v5 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        v6 = 0;
LABEL_7:
        if (!v25)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v24);
        }

        if (!v27)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v26);
        }

        v7 = v29;
        if (!v29)
        {
          WebCore::SQLiteStatement::~SQLiteStatement(v28);
        }

        v8 = a1[3];
        a1[3] = 0;
        v9 = WTF::fastMalloc(v7, 0x18);
        *v9 = &unk_1F1105508;
        *(v9 + 8) = v6;
        v9[2] = v8;
        *buf = v9;
        WTF::RunLoop::mainSingleton(v9);
        WTF::RunLoop::dispatch();
        v10 = *buf;
        *buf = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
      }

      v12 = *(v3 + 664);
      *buf = 134218755;
      *&buf[4] = v3;
      v31 = 2048;
      v32 = v12;
      v33 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
      v35 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
      v13 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::isCorrectSubStatisticsCount: failed to prepare statement";
LABEL_17:
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, v13, buf, 0x26u);
      goto LABEL_6;
    }

    if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 1)) >> 32))
    {
      goto LABEL_53;
    }

    v14 = WebCore::SQLiteStatement::bindInt(v28);
    if (!v14)
    {
      if (v29)
      {
        goto LABEL_52;
      }

      if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 2)) >> 32))
      {
        goto LABEL_53;
      }

      if (!WebCore::SQLiteStatement::bindInt(v28))
      {
        if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 1)) >> 32))
        {
          goto LABEL_53;
        }

        v14 = WebCore::SQLiteStatement::bindInt(v26);
        if (!v14)
        {
          if (v27)
          {
            goto LABEL_52;
          }

          if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 2)) >> 32))
          {
            goto LABEL_53;
          }

          if (!WebCore::SQLiteStatement::bindInt(v26))
          {
            if (!(WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 1)) >> 32))
            {
              goto LABEL_53;
            }

            v14 = WebCore::SQLiteStatement::bindInt(v24);
            if (!v14)
            {
              if (v25)
              {
                goto LABEL_52;
              }

              if (WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 2)) >> 32)
              {
                v14 = WebCore::SQLiteStatement::bindInt(v24);
                if (v14)
                {
                  goto LABEL_33;
                }

                if (!v29)
                {
                  v14 = WebCore::SQLiteStatement::step(v28);
                  if (v14 != 100)
                  {
                    goto LABEL_50;
                  }

                  if (v27)
                  {
                    goto LABEL_52;
                  }

                  v14 = WebCore::SQLiteStatement::step(v26);
                  if (v14 != 100)
                  {
                    goto LABEL_50;
                  }

                  if (v25)
                  {
                    goto LABEL_52;
                  }

                  v14 = WebCore::SQLiteStatement::step(v24);
                  if (v14 != 100)
                  {
LABEL_50:
                    v5 = qword_1ED641148;
                    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_6;
                    }

                    v20 = *(v3 + 664);
                    v21 = WebCore::SQLiteDatabase::lastError((v3 + 16));
                    v22 = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
                    *buf = 134218755;
                    *&buf[4] = v3;
                    v31 = 2048;
                    v32 = v20;
                    v33 = 1024;
                    Error = v21;
                    v35 = 2081;
                    ErrorMsg = v22;
                    v13 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::isCorrectSubStatisticsCount: failed to step statement";
                    goto LABEL_17;
                  }

                  if (!v29)
                  {
                    v14 = WebCore::SQLiteStatement::columnInt(v28);
                    if (v14 != 1)
                    {
                      goto LABEL_6;
                    }

                    if (!v27)
                    {
                      v14 = WebCore::SQLiteStatement::columnInt(v26);
                      if (v14 != 1)
                      {
                        goto LABEL_6;
                      }

                      if (!v25)
                      {
                        v6 = WebCore::SQLiteStatement::columnInt(v24) == 1;
                        goto LABEL_7;
                      }
                    }
                  }
                }

LABEL_52:
                mpark::throw_bad_variant_access(v14);
              }

LABEL_53:
              v23 = std::__throw_bad_optional_access[abi:sn200100]();
              return _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore32isRelationshipOnlyInDatabaseOnceEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(v23);
            }
          }
        }
      }
    }

LABEL_33:
    v5 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v15 = *(v3 + 664);
    v16 = WebCore::SQLiteDatabase::lastError((v3 + 16));
    v17 = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
    *buf = 134218755;
    *&buf[4] = v3;
    v31 = 2048;
    v32 = v15;
    v33 = 1024;
    Error = v16;
    v35 = 2081;
    ErrorMsg = v17;
    v13 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::isCorrectSubStatisticsCount: failed to bind parameters";
    goto LABEL_17;
  }

  v18 = a1[3];
  a1[3] = 0;
  (*(*v18 + 16))(v18, 0);
  v19 = *(*v18 + 8);

  return v19(v18);
}