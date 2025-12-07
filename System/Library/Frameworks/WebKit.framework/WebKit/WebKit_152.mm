void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::persist(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110AE78;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::persist(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AE78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::persist(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v17[7] = v1;
    v17[8] = v2;
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v16);
    v5 = v16;
    if (v16)
    {
      v6 = *(v16 + 16);
      if (v6 && (v7 = *(v6 + 8)) != 0)
      {
        add = atomic_fetch_add(v7 + 36, 1u);
        v9 = *(v5 + 24);
        v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v5 + 8), add);
        v11 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
        v13 = WTF::fastMalloc(v12, 0x18);
        *v13 = &unk_1F110AE28;
        v13[1] = v5;
        v13[2] = v11;
        v17[0] = v13;
        WebKit::NetworkProcess::registrableDomainsExemptFromWebsiteDataDeletion(v7, v9, v17);
        result = v17[0];
        v17[0] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        if (atomic_fetch_add(v7 + 36, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7 + 36);
          result = (*(*v7 + 24))(v7);
        }
      }

      else
      {
        v17[0] = 0;
        WebKit::NetworkStorageManager::didFetchRegistrableDomainsForPersist(v16, v17);
        result = v17[0];
        if (v17[0])
        {
          result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17[0], v14);
        }
      }

      v15 = v16;
      v16 = 0;
      if (v15)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v15 + 8), v14);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetStoragePersistedState(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AEA0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetStoragePersistedState(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AEA0;
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

WTF::RunLoop *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetStoragePersistedState(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  WebKit::NetworkStorageManager::getAllOrigins(&v14, v2);
  v4 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v14);
  v5 = v3;
  v6 = v14;
  if (v14)
  {
    v7 = (v14 + 64 * *(v14 - 1));
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v4)
  {
    while (1)
    {
      WebKit::NetworkStorageManager::persistedFilePath(&v13, v2, v4);
      v8 = v13;
      if (v13)
      {
        if (!*(v13 + 1))
        {
          v13 = 0;
LABEL_9:
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v3);
          }

          goto LABEL_11;
        }

        WTF::FileSystemImpl::deleteFile(&v13, v3);
        v8 = v13;
        v13 = 0;
        if (v8)
        {
          goto LABEL_9;
        }
      }

      do
      {
LABEL_11:
        v4 = (v4 + 64);
      }

      while (v4 != v5 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4));
      if (v4 == v7)
      {
        v6 = v14;
        break;
      }
    }
  }

  if (v6)
  {
    v6 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  WTF::RunLoop::mainSingleton(v6);
  v12 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = WTF::fastMalloc(v9, 0x18);
  *v10 = &unk_1F110AEC8;
  *(v10 + 1) = v12;
  v14 = v10;
  WTF::RunLoop::dispatch();
  result = v14;
  v14 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetStoragePersistedState(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AEC8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetStoragePersistedState(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AEC8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetStoragePersistedState(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 - 12))
  {
    return a1 + 72 * *(a1 - 4);
  }

  return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeIterator(a1, a1);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeIterator(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1 + 72 * v3;
  if (v4 != a2)
  {
    while (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v2))
    {
      v2 += 72;
      if (v2 == v4)
      {
        return v4;
      }
    }
  }

  return v2;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AEF0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::cloneSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AF18;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::cloneSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AF18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::cloneSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(void *a1)
{
  v1 = a1[3];
  if ((v1 - 1) >= 0xFFFFFFFFFFFFFFFELL || (v2 = a1[4], (v2 - 1) >= 0xFFFFFFFFFFFFFFFELL))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE045B0);
  }

  v3 = a1[1];
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(v3 + 72));
  v5 = result;
  v7 = v6;
  v8 = *(v3 + 72);
  if (v8)
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
      result = WebKit::OriginStorageManager::defaultBucket(*(v5 + 64))[7];
      if (result)
      {
        result = WebKit::SessionStorageManager::cloneStorageArea(result, v1, v2);
      }

      do
      {
        v5 += 72;
        if (v5 == v7)
        {
          break;
        }

        result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5);
      }

      while (result);
    }

    while (v5 != v9);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AF40;
  v3 = a1[4];
  a1[4] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AF40;
  v3 = *(this + 4);
  *(this + 4) = 0;
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

mpark *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void>::call(void *a1)
{
  v1 = a1[1];
  v24 = 0;
  v2 = a1[3];
  if ((v2 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0xC471u);
    goto LABEL_29;
  }

  isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(v1 + 72));
  v5 = isEmptyOrDeletedBucket;
  v7 = v6;
  v8 = *(v1 + 72);
  if (v8)
  {
    v9 = (v8 + 72 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != isEmptyOrDeletedBucket)
  {
    while (1)
    {
      v10 = v5[4].n128_u64[0];
      atomic_fetch_add(v10 + 2, 1u);
      if (!v10)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE04940);
      }

      isEmptyOrDeletedBucket = WebKit::OriginStorageManager::defaultBucket(v10)[7];
      if (!atomic_load(v10 + 2))
      {
        break;
      }

      atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
      if (isEmptyOrDeletedBucket)
      {
        WebKit::SessionStorageManager::fetchStorageMap(isEmptyOrDeletedBucket, v2, &v23);
        isEmptyOrDeletedBucket = v23;
        if (v23)
        {
          if (!*(v23 - 3) || (WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v21, &v24, v5, &v23), (isEmptyOrDeletedBucket = v23) != 0))
          {
            isEmptyOrDeletedBucket = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(isEmptyOrDeletedBucket, v12);
          }
        }
      }

      do
      {
        v5 = (v5 + 72);
        if (v5 == v7)
        {
          break;
        }

        isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5);
      }

      while (isEmptyOrDeletedBucket);
      if (v5 == v9)
      {
        goto LABEL_17;
      }
    }

    __break(0xC471u);
LABEL_29:
    JUMPOUT(0x19DE04920);
  }

LABEL_17:
  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  v13 = a1[4];
  a1[4] = 0;
  v21 = v13;
  WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v24, &v22);
  v15 = WTF::fastMalloc(v14, 0x18);
  *v15 = &unk_1F110AF68;
  v15[1] = v21;
  v16 = v22;
  v21 = 0;
  v22 = 0;
  v15[2] = v16;
  v23 = v15;
  WTF::RunLoop::dispatch();
  v18 = v23;
  v23 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (v22)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v22, v17);
  }

  v19 = v21;
  v21 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  result = v24;
  if (v24)
  {
    return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v24, v17);
  }

  return result;
}

WTF::StringImpl **WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2, __n128 *a3, WTF::StringImpl **a4)
{
  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a3);
  if (v8)
  {
    goto LABEL_42;
  }

  if (a3[1].n128_u8[8])
  {
    if (a3[1].n128_u8[8] != 1)
    {
LABEL_18:
      mpark::throw_bad_variant_access(v8);
    }

    goto LABEL_4;
  }

  if (a3->n128_u64[0] == -1)
  {
LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x19DE04BC4);
  }

LABEL_4:
  v9 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, 0), (v9 = *a2) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::computeHash<WebCore::ClientOrigin>(a3) & v10;
  v12 = (v9 + 72 * v11);
  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v12);
  if (v8)
  {
    goto LABEL_21;
  }

  v26 = a1;
  v13 = 0;
  v14 = 1;
  do
  {
    if (*(v12 + 24))
    {
      if (*(v12 + 24) != 1)
      {
        goto LABEL_18;
      }
    }

    else if (*v12 == -1)
    {
      v13 = v12;
      goto LABEL_15;
    }

    if (WebCore::operator==())
    {
      result = WebCore::operator==();
      if (result)
      {
        v22 = *a2;
        if (*a2)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        a1 = v26;
        v25 = 0;
        v24 = v22 + 72 * v23;
        goto LABEL_34;
      }
    }

LABEL_15:
    v11 = (v11 + v14) & v10;
    v12 = (v9 + 72 * v11);
    v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v12);
    ++v14;
  }

  while (!v8);
  a1 = v26;
  if (v13)
  {
    v13[8] = 0;
    *(v13 + 2) = 0u;
    *(v13 + 3) = 0u;
    *v13 = 0u;
    *(v13 + 1) = 0u;
    --*(*a2 - 16);
    v12 = v13;
  }

LABEL_21:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v12, a3);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v12 + 32, a3 + 2);
  v17 = *a4;
  *a4 = 0;
  result = v12[8];
  v12[8] = v17;
  if (result)
  {
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v16);
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v20 = (*(v18 - 16) + v19);
  v21 = *(v18 - 4);
  if (v21 > 0x400)
  {
    if (v21 <= 2 * v20)
    {
      goto LABEL_28;
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
LABEL_28:
    result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(a2, v12);
    v12 = result;
    v18 = *a2;
    if (*a2)
    {
      LODWORD(v21) = *(v18 - 4);
    }

    else
    {
      LODWORD(v21) = 0;
    }
  }

  v24 = v18 + 72 * v21;
  v25 = 1;
LABEL_34:
  *a1 = v12;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AF68;
  v3 = a1[2];
  if (v3)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110AF68;
  v3 = *(this + 2);
  if (v3)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

mpark *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, &v4);
  result = (*(*v1 + 8))(v1);
  if (v5 == 1)
  {
    result = v4;
    if (v4)
    {
      return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, v3);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AF90;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[4];
  if (v4)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110AF90;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = a1[3];
  if ((v1 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0xC471u);
LABEL_51:
    JUMPOUT(0x19DE051F8);
  }

  v3 = a1[1];
  isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(a1 + 4);
  v5 = isEmptyOrDeletedBucket;
  v7 = v6;
  v8 = a1[4];
  if (v8)
  {
    v9 = v8 + 72 * *(v8 - 4);
  }

  else
  {
    v9 = 0;
  }

  v29 = a1;
  if (v9 != isEmptyOrDeletedBucket)
  {
    v10 = 1;
    while (1)
    {
      v11 = WebKit::NetworkStorageManager::originStorageManager(v3, v5, 1);
      v12 = (v11 + 2);
      atomic_fetch_add(v11 + 2, 1u);
      v13 = *(v3 + 14);
      v14 = WebKit::OriginStorageManager::defaultBucket(v11);
      v15 = WebKit::OriginStorageManager::StorageBucket::sessionStorageManager(v14, v13);
      if (!atomic_load(v12))
      {
        __break(0xC471u);
        goto LABEL_51;
      }

      atomic_fetch_add(v12, 0xFFFFFFFF);
      LOBYTE(v31[0]) = 0;
      v33 = -1;
      LODWORD(v17) = *(v5 + 24);
      if (!*(v5 + 24))
      {
        break;
      }

      if (v17 != 255)
      {
        *v31 = *v5;
LABEL_14:
        v33 = v17;
      }

      LOBYTE(v34) = 0;
      v36 = -1;
      LODWORD(v19) = *(v5 + 56);
      if (*(v5 + 56))
      {
        if (v19 == 255)
        {
          goto LABEL_22;
        }

        v34 = *(v5 + 32);
      }

      else
      {
        v20 = *(v5 + 32);
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        }

        *&v34 = v20;
        v19 = *(v5 + 40);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        *(&v34 + 1) = v19;
        v35 = *(v5 + 48);
        LOBYTE(v19) = *(v5 + 56);
      }

      v36 = v19;
LABEL_22:
      isEmptyOrDeletedBucket = WebKit::SessionStorageManager::setStorageMap(v15, v1, v31, (v5 + 64));
      v22 = isEmptyOrDeletedBucket;
      if (!v36)
      {
        v23 = *(&v34 + 1);
        *(&v34 + 1) = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v21);
        }

        isEmptyOrDeletedBucket = v34;
        *&v34 = 0;
        if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v21);
        }
      }

      v36 = -1;
      if (!v33)
      {
        v24 = v31[1];
        v31[1] = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v21);
        }

        isEmptyOrDeletedBucket = v31[0];
        v31[0] = 0;
        if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v21);
        }
      }

      v33 = -1;
      do
      {
        v5 += 72;
        if (v5 == v7)
        {
          break;
        }

        isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5);
      }

      while (isEmptyOrDeletedBucket);
      v10 &= v22;
      if (v5 == v9)
      {
        goto LABEL_46;
      }
    }

    v18 = *v5;
    if (*v5)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v31[0] = v18;
    v17 = *(v5 + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    v31[1] = v17;
    v32 = *(v5 + 16);
    LOBYTE(v17) = *(v5 + 24);
    goto LABEL_14;
  }

  v10 = 1;
LABEL_46:
  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  v25 = a1[2];
  v29[2] = 0;
  v26 = v29[5];
  v29[5] = 0;
  v27 = WTF::fastMalloc(v29, 0x20);
  *v27 = &unk_1F110AFB8;
  v27[1] = v25;
  v27[2] = v26;
  *(v27 + 24) = v10;
  v30 = v27;
  WTF::RunLoop::dispatch();
  result = v30;
  if (v30)
  {
    return (*(*v30 + 8))(v30);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110AFB8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110AFB8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreSessionStorageForWebPage(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::didIncreaseQuota(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AFE0;
  WebKit::NetworkStorageManager::didIncreaseQuota(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::didIncreaseQuota(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110AFE0;
  WebKit::NetworkStorageManager::didIncreaseQuota(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::didIncreaseQuota(WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)::$_0,void>::call(void *a1)
{
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1[1] + 72), (a1 + 3));
  if (result)
  {
    v3 = *(result + 64);
    if (v3)
    {
      atomic_fetch_add((v3 + 8), 1u);
      v4 = *(v3 + 56);
      while (1)
      {
        v5 = *v4;
        if ((*v4 & 1) == 0)
        {
          break;
        }

        v6 = *v4;
        atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v5)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_8:
      WebKit::OriginQuotaManager::didIncreaseQuota(v4, a1[11], a1[12], a1[13]);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v4, v7);
      if (atomic_load((v3 + 8)))
      {
        atomic_fetch_add((v3 + 8), 0xFFFFFFFF);
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

uint64_t std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>::expected(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  v3 = *(a2 + 24);
  if (v3 != 255)
  {
    if (*(a2 + 24))
    {
      *a1 = *a2;
    }

    else
    {
      *a1 = *a2;
      WTF::FileSystemImpl::FileHandle::FileHandle();
      *(a1 + 16) = *(a2 + 16);
      LOBYTE(v3) = *(a2 + 24);
    }

    *(a1 + 24) = v3;
  }

  return a1;
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::getAllOrigins(void)::$_0,void,WTF::String const&>::call(uint64_t a1, atomic_uint **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  WebKit::originFilePath(v9, v3);
  WebCore::StorageUtilities::readOriginFromFile(&v10, v9, v4);
  result = v9[0];
  v9[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
  }

  if (v16 != 1)
  {
    goto LABEL_21;
  }

  result = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(*(a1 + 8), &v10, v9);
  if ((v16 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v15)
  {
    v7 = v14;
    v14 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    result = v13;
    v13 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }
  }

  v15 = -1;
  if (v12)
  {
    goto LABEL_21;
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  result = v10;
  v10 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
LABEL_21:
    if (!v3)
    {
      return result;
    }
  }

  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v3, v5);
  }

  return result;
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(WebCore::SecurityOriginData *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 - 3))
  {
    return (a1 + 40 * *(a1 - 1));
  }

  return WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::makeIterator(a1, a1);
}

WebCore::SecurityOriginData *WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::HashMap<WebKit::WebsiteDataType,unsigned long long,WTF::IntHash<WebKit::WebsiteDataType>,WTF::StrongEnumHashTraits<WebKit::WebsiteDataType>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::makeIterator(uint64_t a1, WebCore::SecurityOriginData *a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = (a1 + 40 * v3);
  if (v4 != a2)
  {
    while (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v2))
    {
      v2 = (v2 + 40);
      if (v2 == v4)
      {
        return v4;
      }
    }
  }

  return v2;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B030;
  v3 = a1[4];
  a1[4] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B030;
  v3 = *(this + 4);
  *(this + 4) = 0;
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

uint64_t WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(uint64_t a1)
{
  DataFromDisk = WebKit::NetworkStorageManager::fetchDataFromDisk(v13, *a1, *(a1 + 16), *(a1 + 20));
  WTF::RunLoop::mainSingleton(DataFromDisk);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(v13, &v11);
  WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>(&v12, &v10, v5);
  WTF::RunLoop::dispatch();
  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1}::~(&v10, v6);
  return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v8);
}

uint64_t **WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>@<X0>(uint64_t **a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x28);
  *v5 = &unk_1F110B058;
  v6 = *a2;
  *a2 = 0u;
  *(v5 + 1) = v6;
  *(v5 + 3) = 0u;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v5 + 3), a2 + 4);
  *a1 = v5;
  return a1;
}

uint64_t *WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1}::~(uint64_t *a1, void *a2)
{
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), v3);
  }

  return a1;
}

WTF *WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  if (v4)
  {
    v6 = *a1;
    v7 = *a1 + 48 * v4;
    do
    {
      WebKit::WebsiteData::Entry::isolatedCopy(v6, v9);
      WebCore::SecurityOriginData::operator=(v6, v9);
      *(v6 + 32) = v10;
      WebKit::WebsiteData::Entry::~Entry(v9, v8);
      v6 += 48;
    }

    while (v6 != v7);
  }

  *a2 = 0;
  a2[1] = 0;
  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a2, a1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B058;
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110B058;
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), v3);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WebKit::NetworkStorageManager::fetchData(WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::NetworkStorageManager::ShouldComputeSize,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B080;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110B080;
  v3 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), v4);
  }

  return WTF::fastFree(a1, v4);
}

mpark *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v24 = 0;
  WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::reserveInitialCapacity(&v24, *(a1 + 44));
  add_explicit = *(a1 + 44);
  if (add_explicit)
  {
    v4 = 32 * add_explicit;
    v5 = (*(a1 + 32) + 24);
    do
    {
      LOBYTE(v25[0]) = 0;
      v27 = -1;
      v7 = v5 - 24;
      LODWORD(v6) = *v5;
      if (*v5)
      {
        if (v6 == 255)
        {
          goto LABEL_10;
        }

        *v25 = *v7;
      }

      else
      {
        v8 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        }

        v25[0] = v8;
        v6 = *(v5 - 2);
        if (v6)
        {
          atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        }

        v25[1] = v6;
        v26 = *(v5 - 2);
        LOBYTE(v6) = *v5;
      }

      v27 = v6;
LABEL_10:
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v25, &v24, v23);
      add_explicit = v27;
      if (!v27)
      {
        v10 = v25[1];
        v25[1] = 0;
        if (v10)
        {
          add_explicit = atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed);
          if (add_explicit == 2)
          {
            WTF::StringImpl::destroy(v10, v9);
          }
        }

        v11 = v25[0];
        v25[0] = 0;
        if (v11)
        {
          add_explicit = atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed);
          if (add_explicit == 2)
          {
            WTF::StringImpl::destroy(v11, v9);
          }
        }
      }

      v5 += 32;
      v4 -= 32;
    }

    while (v4);
  }

  v12 = *(a1 + 24);
  v13 = WTF::fastMalloc(add_explicit, 0x10);
  *v13 = &unk_1F110B0A8;
  v13[1] = &v24;
  v23[0] = v13;
  WebKit::NetworkStorageManager::deleteDataOnDisk(v25, v2, v12, v23, -INFINITY);
  if (v25[0])
  {
    WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v25[0], v14);
  }

  v15 = (*(*v13 + 8))(v13);
  WTF::RunLoop::mainSingleton(v15);
  v16 = *(a1 + 16);
  *(a1 + 16) = 0;
  v17 = *(a1 + 48);
  *(a1 + 48) = 0;
  v19 = WTF::fastMalloc(v18, 0x18);
  *v19 = &unk_1F110B0D0;
  v19[1] = v16;
  v19[2] = v17;
  v23[0] = v19;
  WTF::RunLoop::dispatch();
  v21 = v23[0];
  v23[0] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  result = v24;
  if (v24)
  {
    return WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v24, v20);
  }

  return result;
}

void WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::reserveInitialCapacity(uint64_t **a1, uint64_t a2)
{
  v3 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(a2);
  v4 = WTF::fastMalloc(v3, ((32 * v3) | 0x10));
  v5 = v4;
  v6 = v4 + 2;
  if (v3)
  {
    bzero(v4 + 2, 32 * v3);
  }

  *a1 = v6;
  *(v5 + 2) = v3 - 1;
  *(v5 + 3) = v3;
  *v5 = 0;
}

BOOL _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager10deleteDataENS_9OptionSetINS2_15WebsiteDataTypeEEERKNS_6VectorIN7WebCore18SecurityOriginDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEN3__0clEvEUlT_E_bJRKNS8_12ClientOriginEEE4callESO_(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  LOBYTE(v15[0]) = 0;
  v17 = -1;
  LODWORD(v3) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v15[0] = v4;
    v3 = *(a2 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    v15[1] = v3;
    v16 = *(a2 + 16);
    LOBYTE(v3) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v3 != 255)
  {
    *v15 = *a2;
LABEL_7:
    v17 = v3;
  }

  LOBYTE(v18) = 0;
  v20 = -1;
  LODWORD(v5) = *(a2 + 56);
  if (*(a2 + 56))
  {
    if (v5 == 255)
    {
      goto LABEL_15;
    }

    v18 = *(a2 + 32);
  }

  else
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *&v18 = v6;
    v5 = *(a2 + 40);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(&v18 + 1) = v5;
    v19 = *(a2 + 48);
    LOBYTE(v5) = *(a2 + 56);
  }

  v20 = v5;
LABEL_15:
  v7 = *(a1 + 8);
  if (!*v7)
  {
    goto LABEL_20;
  }

  if (WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(v7, v15))
  {
    v8 = 1;
    goto LABEL_21;
  }

  v9 = *(a1 + 8);
  if (*v9)
  {
    v8 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::SecurityOriginData>,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(v9, &v18) != 0;
  }

  else
  {
LABEL_20:
    v8 = 0;
  }

LABEL_21:
  if (!v20)
  {
    v10 = *(&v18 + 1);
    *(&v18 + 1) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    v11 = v18;
    *&v18 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }
  }

  v20 = -1;
  if (!v17)
  {
    v12 = v15[1];
    v15[1] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }

    v13 = v15[0];
    v15[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  return v8;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B0D0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B0D0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B0F8;
  WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B0F8;
  WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 56);
  if (*(a1 + 56))
  {
    if (v6 == 255)
    {
      v7 = 0uLL;
    }

    else
    {
      v7 = *(a1 + 32);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v4 = *(a1 + 48);
  }

  v8 = *(a1 + 88);
  v27 = v7;
  if (*(a1 + 88))
  {
    if (v8 == 255)
    {
      v25 = 0uLL;
    }

    else
    {
      v25 = *(a1 + 64);
    }

    v28 = v25;
  }

  else
  {
    v28 = *(a1 + 64);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    v3 = *(a1 + 80);
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = WTF::fastMalloc(a3, 0x48);
  v12 = v11;
  *v11 = &unk_1F110B120;
  *(v11 + 8) = 0;
  *(v11 + 32) = -1;
  if (!v6)
  {
    v26 = 0;
    v13 = 0;
    *(v11 + 1) = v27;
    *(v11 + 6) = v4;
LABEL_7:
    v14 = v28;
    *(v11 + 32) = v6;
    goto LABEL_8;
  }

  v13 = *(&v27 + 1);
  v26 = v27;
  if (v6 != 255)
  {
    *(v11 + 1) = v27;
    goto LABEL_7;
  }

  v14 = v28;
LABEL_8:
  *(v11 + 40) = 0;
  *(v11 + 64) = -1;
  if (!v8)
  {
    v15 = 0;
    v16 = 0;
    *(v11 + 5) = v14;
    *(v11 + 14) = v3;
LABEL_10:
    *(v11 + 64) = v8;
    goto LABEL_11;
  }

  v15 = *(&v14 + 1);
  v16 = v14;
  if (v8 != 255)
  {
    *(v11 + 5) = v14;
    goto LABEL_10;
  }

LABEL_11:
  v29 = v11;
  WebKit::NetworkStorageManager::deleteDataOnDisk(&v30, v9, v10, &v29, -INFINITY);
  if (v30)
  {
    WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v30, v17);
  }

  v29 = 0;
  v18 = (*(*v12 + 8))(v12);
  if (!v8)
  {
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v18 = WTF::StringImpl::destroy(v15, v19);
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    else if (!v16)
    {
      goto LABEL_20;
    }

    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v18 = WTF::StringImpl::destroy(v16, v19);
    }
  }

LABEL_20:
  if (!v6)
  {
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v18 = WTF::StringImpl::destroy(v13, v19);
    }

    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v18 = WTF::StringImpl::destroy(v26, v19);
    }
  }

  WTF::RunLoop::mainSingleton(v18);
  v20 = *(a1 + 16);
  *(a1 + 16) = 0;
  v21 = *(a1 + 96);
  *(a1 + 96) = 0;
  v23 = WTF::fastMalloc(v22, 0x18);
  *v23 = &unk_1F110B148;
  v23[1] = v20;
  v23[2] = v21;
  v29 = v23;
  WTF::RunLoop::dispatch();
  result = v29;
  v29 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager10deleteDataENS_9OptionSetINS2_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEN3__0clEvEUlRT_E_bJSA_EED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B120;
  if (!*(a1 + 64))
  {
    v3 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 64) = -1;
  if (!*(a1 + 32))
  {
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(a1 + 32) = -1;
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager10deleteDataENS_9OptionSetINS2_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEN3__0clEvEUlRT_E_bJSA_EED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110B120;
  if (!*(this + 64))
  {
    v3 = *(this + 6);
    *(this + 6) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 5);
    *(this + 5) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 64) = -1;
  if (!*(this + 32))
  {
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
  }

  *(this + 32) = -1;

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager10deleteDataENS_9OptionSetINS2_15WebsiteDataTypeEEERKN7WebCore12ClientOriginEONS_17CompletionHandlerIFvvEEEEN3__0clEvEUlRT_E_bJSA_EE4callESA_(uint64_t a1, uint64_t a2)
{
  result = WebCore::operator==();
  if (result)
  {

    return WebCore::operator==();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B148;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B148;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataModifiedSince(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B170;
  v3 = a1[5];
  a1[5] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataModifiedSince(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B170;
  v3 = *(this + 5);
  *(this + 5) = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataModifiedSince(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = WTF::fastMalloc(a3, 0x10);
  *v7 = &unk_1F110B198;
  v15 = v7;
  WebKit::NetworkStorageManager::deleteDataOnDisk(&v16, v4, v5, &v15, v6);
  if (v16)
  {
    WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v16, v8);
  }

  v9 = (*(*v7 + 8))(v7);
  WTF::RunLoop::mainSingleton(v9);
  v10 = *(a1 + 16);
  *(a1 + 16) = 0;
  v11 = *(a1 + 40);
  *(a1 + 40) = 0;
  v13 = WTF::fastMalloc(v12, 0x18);
  *v13 = &unk_1F110B1C0;
  v13[1] = v10;
  v13[2] = v11;
  v15 = v13;
  WTF::RunLoop::dispatch();
  result = v15;
  v15 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataModifiedSince(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B1C0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataModifiedSince(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B1C0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataModifiedSince(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B1E8;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110B1E8;
  v3 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), v4);
  }

  return WTF::fastFree(a1, v4);
}

mpark *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void>::call(uint64_t a1, unint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = a1 + 32;
  v6 = WTF::fastMalloc(v42, 0x10);
  *v6 = &unk_1F110B210;
  v6[1] = v5;
  v36[0] = v6;
  WebKit::NetworkStorageManager::deleteDataOnDisk(&v35, v3, v4, v36, -INFINITY);
  (*(*v6 + 8))(v6);
  v34 = 0;
  isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v35);
  v8 = isEmptyOrDeletedBucket;
  v10 = v9;
  v11 = 0;
  if (v35)
  {
    v11 = v35 + 64 * *(v35 - 1);
  }

  if (v11 != isEmptyOrDeletedBucket)
  {
    v12 = MEMORY[0x1E696EBA8];
    do
    {
      LOBYTE(v36[0]) = 0;
      v38 = -1;
      LODWORD(v13) = *(v8 + 24);
      if (*(v8 + 24))
      {
        if (v13 == 255)
        {
          goto LABEL_12;
        }

        *v36 = *v8;
      }

      else
      {
        v14 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v36[0] = v14;
        v13 = *(v8 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        v36[1] = v13;
        LODWORD(v37) = *(v8 + 16);
        LOBYTE(v13) = *(v8 + 24);
      }

      v38 = v13;
LABEL_12:
      LOBYTE(v39) = 0;
      v41 = -1;
      v15 = *(v8 + 56);
      if (*(v8 + 56))
      {
        if (v15 == 255)
        {
          goto LABEL_45;
        }

        v39 = *(v8 + 32);
      }

      else
      {
        v16 = *(v8 + 32);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        *&v39 = v16;
        v17 = *(v8 + 40);
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        *(&v39 + 1) = v17;
        v40 = *(v8 + 48);
        v15 = *(v8 + 56);
      }

      v41 = v15;
      isEmptyOrDeletedBucket = &v39 + 8;
      if (v15)
      {
        isEmptyOrDeletedBucket = v12;
        if (v15 != 1)
        {
LABEL_45:
          mpark::throw_bad_variant_access(isEmptyOrDeletedBucket);
        }
      }

      WebCore::RegistrableDomain::uncheckedCreateFromHost(isEmptyOrDeletedBucket, &v33);
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v34, &v33, v18, &v32);
      isEmptyOrDeletedBucket = v33;
      v33 = 0;
      if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v19);
      }

      if (!v41)
      {
        v20 = *(&v39 + 1);
        *(&v39 + 1) = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

        isEmptyOrDeletedBucket = v39;
        *&v39 = 0;
        if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v19);
        }
      }

      v41 = -1;
      if (!v38)
      {
        v21 = v36[1];
        v36[1] = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v19);
        }

        isEmptyOrDeletedBucket = v36[0];
        v36[0] = 0;
        if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v19);
        }
      }

      do
      {
        v8 += 64;
        if (v8 == v10)
        {
          break;
        }

        isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v8);
      }

      while (isEmptyOrDeletedBucket);
    }

    while (v8 != v11);
  }

  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  v22 = *(a1 + 16);
  *(a1 + 16) = 0;
  v23 = *(a1 + 48);
  *(a1 + 48) = 0;
  v36[0] = v22;
  v36[1] = v23;
  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(&v34, &v37);
  v25 = WTF::fastMalloc(v24, 0x20);
  *v25 = &unk_1F110B238;
  *(v25 + 1) = *v36;
  v36[0] = 0;
  v36[1] = 0;
  v26 = v37;
  v37 = 0;
  v25[3] = v26;
  v32 = v25;
  WTF::RunLoop::dispatch();
  v28 = v32;
  v32 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  if (v37)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37, v27);
  }

  v29 = v36[1];
  v36[1] = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = v36[0];
  v36[0] = 0;
  if (v30)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v30 + 1, v27);
  }

  if (v34)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v34, v27);
  }

  result = v35;
  if (v35)
  {
    return WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v35, v27);
  }

  return result;
}

BOOL _ZN3WTF6Detail15CallableWrapperIZZN6WebKit21NetworkStorageManager31deleteDataForRegistrableDomainsENS_9OptionSetINS2_15WebsiteDataTypeEEERKNS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS_7HashSetIS9_NS_11DefaultHashIS9_EENS_10HashTraitsIS9_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clEvEUlRT_E_bJRKNS8_12ClientOriginEEE4callESY_(mpark *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    if (*(a2 + 56) != 1)
    {
      mpark::throw_bad_variant_access(a1);
    }

    v3 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v3 = (a2 + 40);
  }

  WebCore::RegistrableDomain::uncheckedCreateFromHost(v3, &v10);
  v4 = *(a1 + 1);
  v11 = &v10;
  v7 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(v4, &v11, v5);
  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  return v7 != -1;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B238;
  v3 = a1[3];
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110B238;
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, a1 + 24);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::moveData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::SecurityOriginData &&,WebCore::SecurityOriginData &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B260;
  WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::moveData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::SecurityOriginData &&,WebCore::SecurityOriginData &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B260;
  WebKit::NetworkStorageManager::deleteData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::moveData(WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::SecurityOriginData &&,WebCore::SecurityOriginData &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  LOBYTE(v38[0]) = 0;
  v40 = -1;
  LODWORD(v3) = *(a1 + 56);
  if (*(a1 + 56))
  {
    if (v3 == 255)
    {
      LOBYTE(v41) = 0;
      goto LABEL_13;
    }

    *v38 = *(a1 + 32);
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v38[0] = v4;
    v3 = *(a1 + 40);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    v38[1] = v3;
    v39 = *(a1 + 48);
    LODWORD(v3) = *(a1 + 56);
  }

  v40 = v3;
  LOBYTE(v41) = 0;
  v43 = -1;
  if (!v3)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *&v41 = v5;
    v3 = *(a1 + 40);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    }

    *(&v41 + 1) = v3;
    v42 = *(a1 + 48);
    LOBYTE(v3) = *(a1 + 56);
    goto LABEL_13;
  }

  if (v3 != 255)
  {
    v41 = *(a1 + 32);
LABEL_13:
    v43 = v3;
  }

  LOBYTE(v32[0]) = 0;
  v34 = -1;
  LODWORD(v6) = *(a1 + 88);
  if (*(a1 + 88))
  {
    if (v6 == 255)
    {
      LOBYTE(v35) = 0;
      goto LABEL_26;
    }

    *v32 = *(a1 + 64);
  }

  else
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v32[0] = v7;
    v6 = *(a1 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v32[1] = v6;
    v33 = *(a1 + 80);
    LODWORD(v6) = *(a1 + 88);
  }

  v34 = v6;
  LOBYTE(v35) = 0;
  v37 = -1;
  if (v6)
  {
    if (v6 == 255)
    {
      goto LABEL_27;
    }

    v35 = *(a1 + 64);
  }

  else
  {
    v8 = *(a1 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *&v35 = v8;
    v6 = *(a1 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(&v35 + 1) = v6;
    v36 = *(a1 + 80);
    LOBYTE(v6) = *(a1 + 88);
  }

LABEL_26:
  v37 = v6;
LABEL_27:
  v9 = WebKit::NetworkStorageManager::originStorageManager(v2, v32, 1);
  atomic_fetch_add(v9 + 2, 1u);
  v10 = *(a1 + 24);
  v11 = WebKit::OriginStorageManager::defaultBucket(v9);
  v12.n128_u64[0] = 0xFFF0000000000000;
  WebKit::OriginStorageManager::StorageBucket::deleteData(v11, v10, v12);
  v13 = WebKit::NetworkStorageManager::originStorageManager(v2, v38, 1);
  atomic_fetch_add(v13 + 2, 1u);
  v14 = *(a1 + 24);
  v15 = WebKit::OriginStorageManager::defaultBucket(v9);
  WebKit::OriginStorageManager::StorageBucket::resolvedPath(v15, 32, &v31);
  v16 = WebKit::OriginStorageManager::defaultBucket(v9);
  WebKit::OriginStorageManager::StorageBucket::resolvedPath(v16, 128, &v30);
  v17 = WebKit::OriginStorageManager::defaultBucket(v13);
  WebKit::OriginStorageManager::StorageBucket::moveData(v17, v14, &v31, &v30);
  v19 = v30;
  v30 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v18);
  }

  v20 = v31;
  v31 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v18);
  }

  v21 = atomic_load(v13 + 2);
  if (!v21 || (atomic_fetch_add(v13 + 2, 0xFFFFFFFF), (v22 = atomic_load(v9 + 2)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DE07CC4);
  }

  atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
  WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v2, v32);
  v23 = WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v2, v38);
  WTF::RunLoop::mainSingleton(v23);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 96), &v31);
  WTF::RunLoop::dispatch();
  result = v31;
  v31 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (!v37)
  {
    v26 = *(&v35 + 1);
    *(&v35 + 1) = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v24);
    }

    result = v35;
    *&v35 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v24);
    }
  }

  v37 = -1;
  if (!v34)
  {
    v27 = v32[1];
    v32[1] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v24);
    }

    result = v32[0];
    v32[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v24);
    }
  }

  if (!v43)
  {
    v28 = *(&v41 + 1);
    *(&v41 + 1) = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v24);
    }

    result = v41;
    *&v41 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v24);
    }
  }

  v43 = -1;
  if (!v40)
  {
    v29 = v38[1];
    v38[1] = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v24);
    }

    result = v38[0];
    v38[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v24);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B288;
  WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WebKit::WebsiteDataType::String const&)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B288;
  WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WebKit::WebsiteDataType::String const&)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  WTF::RunLoop::mainSingleton(a1);
  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  v19 = v3;
  v4 = WebKit::NetworkStorageManager::originStorageManager(v2, (a1 + 32), 1);
  atomic_fetch_add(v4 + 2, 1u);
  v5 = *(a1 + 24);
  v6 = WebKit::OriginStorageManager::defaultBucket(v4);
  WebKit::OriginStorageManager::StorageBucket::resolvedPath(v6, v5, &v18);
  WTF::String::isolatedCopy();
  v8 = WTF::fastMalloc(v7, 0x18);
  v9 = v19;
  *v8 = &unk_1F110B2B0;
  v8[1] = v9;
  v10 = v20;
  v19 = 0;
  v20 = 0;
  v8[2] = v10;
  v21 = v8;
  WTF::RunLoop::dispatch();
  v12 = v21;
  v21 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v20;
  v20 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = v19;
  v19 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = v18;
  v18 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
  }

  if (atomic_load(v4 + 2))
  {
    atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
    return WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v2, (a1 + 32));
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B2B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110B2B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::getOriginDirectory(WebCore::ClientOrigin &&,WebKit::WebsiteDataType,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, a1 + 16);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::suspend(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B2D8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::suspend(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B2D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::suspend(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(v1 + 72));
  v3 = result;
  v5 = v4;
  v6 = *(v1 + 72);
  if (v6)
  {
    v7 = v6 + 72 * *(v6 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      v8 = WebKit::OriginStorageManager::defaultBucket(*(v3 + 64))[4];
      if (v8)
      {
        WebKit::LocalStorageManager::syncLocalStorage(*(v8 + 3));
      }

      result = WebKit::OriginStorageManager::defaultBucket(*(v3 + 64));
      v9 = *(result + 64);
      if (v9)
      {
        v10 = *(v9 + 16);
        if (v10)
        {
          if (*(v10 + 4))
          {
            result = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::begin((v9 + 40));
            v11 = result;
            v13 = v12;
            v14 = *(v9 + 40);
            v15 = v14 ? v14 + 88 * *(v14 - 4) : 0;
            if (v15 != result)
            {
              do
              {
                result = v11[10];
                if ((*(result + 88) & 1) == 0)
                {
                  result = WebCore::IDBServer::UniqueIDBDatabase::abortActiveTransactions(result);
                }

                do
                {
                  v11 += 11;
                }

                while (v11 != v13 && (*v11 + 1) <= 1);
              }

              while (v11 != v15);
            }
          }
        }
      }

      do
      {
        v3 += 72;
        if (v3 == v5)
        {
          break;
        }

        result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v3);
      }

      while (result);
    }

    while (v3 != v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::handleLowMemoryWarning(void)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B300;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::handleLowMemoryWarning(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B300;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::handleLowMemoryWarning(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(v1 + 72));
  v3 = result;
  v5 = v4;
  v6 = *(v1 + 72);
  if (v6)
  {
    v7 = v6 + 72 * *(v6 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != result)
  {
    do
    {
      v8 = WebKit::OriginStorageManager::defaultBucket(*(v3 + 64))[4];
      if (v8)
      {
        v9 = *(v8 + 3);
        if (v9)
        {
          (*(*v9 + 80))(v9);
          if ((*(*v9 + 16))(v9))
          {
            (*(*v9 + 88))(v9);
          }

          else
          {
            WebKit::SQLiteStorageArea::handleLowMemoryWarning(v9);
            WTF::RefCounted<WebKit::SQLiteStorageArea>::deref(v9 + 26);
          }
        }
      }

      result = WebKit::OriginStorageManager::defaultBucket(*(v3 + 64));
      v10 = *(result + 64);
      if (v10)
      {
        result = WTF::HashTable<WebCore::IDBDatabaseIdentifier,WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashMap<WebCore::IDBDatabaseIdentifier,std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>,WTF::DefaultHash<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::HashTraits<std::unique_ptr<WebCore::IDBServer::UniqueIDBDatabase>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::IDBDatabaseIdentifier>,WTF::FastMalloc>::begin((v10 + 40));
        v11 = result;
        v13 = v12;
        v14 = *(v10 + 40);
        v15 = v14 ? v14 + 88 * *(v14 - 4) : 0;
        if (v15 != result)
        {
          do
          {
            result = WebCore::IDBServer::UniqueIDBDatabase::handleLowMemoryWarning(*(v11 + 80));
            do
            {
              v11 += 88;
            }

            while (v11 != v13 && (*v11 + 1) <= 1);
          }

          while (v11 != v15);
        }
      }

      do
      {
        v3 += 72;
        if (v3 == v5)
        {
          break;
        }

        result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v3);
      }

      while (result);
    }

    while (v3 != v7);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::syncLocalStorage(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B328;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::syncLocalStorage(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B328;
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

uint64_t WebKit::NetworkStorageManager::syncLocalStorage(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(uint64_t *a1)
{
  v2 = *a1;
  isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(*a1 + 72));
  v4 = isEmptyOrDeletedBucket;
  v6 = v5;
  v7 = *(v2 + 72);
  if (v7)
  {
    v8 = v7 + 72 * *(v7 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != isEmptyOrDeletedBucket)
  {
    do
    {
      isEmptyOrDeletedBucket = WebKit::OriginStorageManager::defaultBucket(*(v4 + 64));
      v9 = *(isEmptyOrDeletedBucket + 32);
      if (v9)
      {
        isEmptyOrDeletedBucket = WebKit::LocalStorageManager::syncLocalStorage(*(v9 + 24));
      }

      do
      {
        v4 += 72;
        if (v4 == v6)
        {
          break;
        }

        isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4);
      }

      while (isEmptyOrDeletedBucket);
    }

    while (v4 != v8);
  }

  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 2, &v11);
  WTF::RunLoop::dispatch();
  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchLocalStorage(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B350;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchLocalStorage(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B350;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchLocalStorage(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v33 = 0;
  WebKit::NetworkStorageManager::getAllOrigins(&v32, v2);
  v4 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v32);
  v5 = v3;
  v6 = 0;
  v7 = v32;
  if (v32)
  {
    v6 = (v32 + 64 * *(v32 - 1));
  }

  if (v6 != v4)
  {
    while (1)
    {
      v8 = WebKit::NetworkStorageManager::originStorageManager(v2, v4, 0);
      v9 = (v8 + 2);
      atomic_fetch_add(v8 + 2, 1u);
      v10 = *(v2 + 14);
      v11 = WebKit::OriginStorageManager::defaultBucket(v8);
      v12 = WebKit::OriginStorageManager::StorageBucket::localStorageManager(v11, v10);
      if (!atomic_load(v9))
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      atomic_fetch_add(v9, 0xFFFFFFFF);
      v14 = *(v12 + 3);
      if (v14)
      {
        break;
      }

      v16 = *(v12 + 2);
      if (v16)
      {
        v18 = *(v16 + 104);
        v17 = v16 + 104;
        *v17 = v18 + 1;
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v31, (*(v17 + 8) + 8));
        WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v17, v19);
        goto LABEL_7;
      }

      do
      {
LABEL_8:
        v4 = (v4 + 64);
      }

      while (v4 != v5 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4));
      if (v4 == v6)
      {
        v7 = v32;
        goto LABEL_17;
      }
    }

    (*(*v14 + 80))(*(v12 + 3));
    (*(*v14 + 48))(&v31, v14);
    (*(*v14 + 88))(v14);
LABEL_7:
    v15 = v31;
    if (v31)
    {
      if (!*(v31 - 3) || (WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v29, &v33, v4, &v31), (v15 = v31) != 0))
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v3);
      }
    }

    goto LABEL_8;
  }

LABEL_17:
  if (v7)
  {
    v7 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v7, v3);
  }

  WTF::RunLoop::mainSingleton(v7);
  v20 = *(a1 + 16);
  *(a1 + 16) = 0u;
  v29 = v20;
  WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v33, &v30);
  v22 = WTF::fastMalloc(v21, 0x20);
  *v22 = &unk_1F110B378;
  *(v22 + 1) = v29;
  v29 = 0u;
  v23 = v30;
  v30 = 0;
  v22[3] = v23;
  v32 = v22;
  WTF::RunLoop::dispatch();
  v25 = v32;
  v32 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if (v30)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v30, v24);
  }

  v26 = *(&v29 + 1);
  *(&v29 + 1) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = v29;
  *&v29 = 0;
  if (v27)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v27 + 8), v24);
  }

  result = v33;
  if (v33)
  {
    return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v33, v24);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchLocalStorage(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B378;
  v3 = a1[3];
  if (v3)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchLocalStorage(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110B378;
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

mpark *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::fetchLocalStorage(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  (*(*v1 + 16))(v1, &v4);
  result = (*(*v1 + 8))(v1);
  if (v5 == 1)
  {
    result = v4;
    if (v4)
    {
      return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, v3);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreLocalStorage(WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B3A0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[3];
  if (v4)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreLocalStorage(WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110B3A0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreLocalStorage(WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void>::call(uint64_t *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(a1 + 3);
  v4 = isEmptyOrDeletedBucket;
  v6 = v5;
  v7 = a1[3];
  if (v7)
  {
    v8 = v7 + 72 * *(v7 - 4);
  }

  else
  {
    v8 = 0;
  }

  v49 = a1;
  if (v8 != isEmptyOrDeletedBucket)
  {
    v9 = 1;
    v50 = v2;
    v51 = v8;
    while (1)
    {
      v10 = WebKit::NetworkStorageManager::originStorageManager(v2, v4, 1);
      v11 = (v10 + 2);
      atomic_fetch_add(v10 + 2, 1u);
      v12 = *(v2 + 14);
      v13 = WebKit::OriginStorageManager::defaultBucket(v10);
      v14 = WebKit::OriginStorageManager::StorageBucket::localStorageManager(v13, v12);
      if (!atomic_load(v11))
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      v16 = v14;
      atomic_fetch_add(v11, 0xFFFFFFFF);
      LOBYTE(v56[0]) = 0;
      v58 = -1;
      LODWORD(v17) = *(v4 + 24);
      if (!*(v4 + 24))
      {
        break;
      }

      if (v17 != 255)
      {
        *v56 = *v4;
LABEL_13:
        v58 = v17;
      }

      LOBYTE(v59) = 0;
      v61 = -1;
      LODWORD(v19) = *(v4 + 56);
      if (*(v4 + 56))
      {
        if (v19 == 255)
        {
          goto LABEL_21;
        }

        v59 = *(v4 + 32);
      }

      else
      {
        v20 = *(v4 + 32);
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        }

        *&v59 = v20;
        v19 = *(v4 + 40);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        *(&v59 + 1) = v19;
        v60 = *(v4 + 48);
        LOBYTE(v19) = *(v4 + 56);
      }

      v61 = v19;
LABEL_21:
      v21 = *(v2 + 4);
      (*(*v21 + 32))(v21);
      v52 = v21;
      if (WebCore::operator==())
      {
        v22 = WebKit::LocalStorageManager::ensureLocalStorageArea(v16, v56, &v52);
        (*(*v22 + 80))(v22);
        v23 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((v4 + 64));
        v24 = v23;
        v26 = v25;
        v27 = *(v4 + 64);
        if (v27)
        {
          v28 = (v27 + 16 * *(v27 - 4));
        }

        else
        {
          v28 = 0;
        }

        v29 = 1;
        if (v28 != v23)
        {
          do
          {
            v53 = 0;
            (*(*v22 + 56))(&v54, v22, 0, 0, 0, 0, v24, v24 + 1, &v53);
            v31 = v55;
            v32 = v53;
            v53 = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v30);
            }

            do
            {
              v24 += 2;
            }

            while (v24 != v26 && (*v24 + 1) <= 1);
            v29 &= v31 ^ 1;
          }

          while (v24 != v28);
        }

        (*(*v22 + 88))(v22);
      }

      else
      {
        v34 = WebKit::LocalStorageManager::ensureTransientLocalStorageArea(v16, v56);
        ++*(v34 + 104);
        v35 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((v4 + 64));
        v37 = v35;
        v38 = v36;
        v39 = *(v4 + 64);
        if (v39)
        {
          v40 = (v39 + 16 * *(v39 - 4));
        }

        else
        {
          v40 = 0;
        }

        v29 = 1;
        if (v40 != v35)
        {
          do
          {
            v53 = 0;
            WebKit::MemoryStorageArea::setItem(v37, (v37 + 8), v34, 0, 0, 0, 0, &v53, &v54);
            v41 = v55;
            v42 = v53;
            v53 = 0;
            if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v36);
            }

            do
            {
              v37 = (v37 + 16);
            }

            while (v37 != v38 && (*v37 + 1) <= 1);
            v29 &= v41 ^ 1;
          }

          while (v37 != v40);
        }

        WTF::RefCounted<WebKit::MemoryStorageArea>::deref(v34 + 104, v36);
        v2 = v50;
      }

      isEmptyOrDeletedBucket = v52;
      v52 = 0;
      if (isEmptyOrDeletedBucket)
      {
        isEmptyOrDeletedBucket = (*(*isEmptyOrDeletedBucket + 40))(isEmptyOrDeletedBucket);
      }

      if (!v61)
      {
        v43 = *(&v59 + 1);
        *(&v59 + 1) = 0;
        if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v43, v33);
        }

        isEmptyOrDeletedBucket = v59;
        *&v59 = 0;
        if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v33);
        }
      }

      v61 = -1;
      if (!v58)
      {
        v44 = v56[1];
        v56[1] = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v33);
        }

        isEmptyOrDeletedBucket = v56[0];
        v56[0] = 0;
        if (isEmptyOrDeletedBucket && atomic_fetch_add_explicit(isEmptyOrDeletedBucket, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          isEmptyOrDeletedBucket = WTF::StringImpl::destroy(isEmptyOrDeletedBucket, v33);
        }
      }

      v58 = -1;
      do
      {
        v4 += 72;
        if (v4 == v6)
        {
          break;
        }

        isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4);
      }

      while (isEmptyOrDeletedBucket);
      v9 &= v29;
      if (v4 == v51)
      {
        goto LABEL_70;
      }
    }

    v18 = *v4;
    if (*v4)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v56[0] = v18;
    v17 = *(v4 + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    v56[1] = v17;
    v57 = *(v4 + 16);
    LOBYTE(v17) = *(v4 + 24);
    goto LABEL_13;
  }

  v9 = 1;
LABEL_70:
  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  v45 = v49[2];
  v49[2] = 0;
  v46 = v49[4];
  v49[4] = 0;
  v47 = WTF::fastMalloc(v49, 0x20);
  *v47 = &unk_1F110B3C8;
  v47[1] = v45;
  v47[2] = v46;
  *(v47 + 24) = v9 & 1;
  v53 = v47;
  WTF::RunLoop::dispatch();
  result = v53;
  v53 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreLocalStorage(WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B3C8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreLocalStorage(WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B3C8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::restoreLocalStorage(WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::registerTemporaryBlobFilePaths(IPC::Connection &,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B3F0;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::registerTemporaryBlobFilePaths(IPC::Connection &,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110B3F0;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), v3);
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::registerTemporaryBlobFilePaths(IPC::Connection &,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>::call(uint64_t result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v5 = *(result + 24);
  if (v5 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE09828);
  }

  v26 = v3;
  v27 = v4;
  v6 = result;
  v7 = *(result + 8);
  v8 = *(v7 + 304);
  if (!v8)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v7 + 304), 0, v5);
    v8 = *(v7 + 304);
    v5 = *(v6 + 24);
  }

  v9 = *(v8 - 8);
  v10 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = (v8 + 16 * v13);
  v15 = *v14;
  if (!*v14)
  {
LABEL_13:
    result = v14[1];
    *v14 = v5;
    v14[1] = 0;
    if (result)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, a2);
    }

    v18 = *(v7 + 304);
    if (v18)
    {
      v19 = *(v18 - 12) + 1;
    }

    else
    {
      v19 = 1;
    }

    *(v18 - 12) = v19;
    v20 = (*(v18 - 16) + v19);
    v21 = *(v18 - 4);
    if (v21 > 0x400)
    {
      if (v21 > 2 * v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 *= 3;
      if (v21 > 4 * v20)
      {
        goto LABEL_21;
      }
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v7 + 304), v14, v21);
    v14 = result;
    goto LABEL_21;
  }

  v16 = 0;
  v17 = 1;
  while (v15 != v5)
  {
    if (v15 == -1)
    {
      v16 = v14;
    }

    v13 = (v13 + v17) & v9;
    v14 = (v8 + 16 * v13);
    v15 = *v14;
    ++v17;
    if (!*v14)
    {
      if (v16)
      {
        *v16 = 0;
        v16[1] = 0;
        --*(*(v7 + 304) - 16);
        v5 = *(v6 + 24);
        v14 = v16;
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  v22 = *(v6 + 44);
  if (v22)
  {
    v23 = *(v6 + 32);
    v24 = 8 * v22;
    do
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v14 + 1, v23++, a3, v25);
      v24 -= 8;
    }

    while (v24);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2, a3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetQuotaForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B418;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetQuotaForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B418;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::resetQuotaForTesting(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(v2 + 72));
  v5 = isEmptyOrDeletedBucket;
  v6 = v4;
  v7 = *(v2 + 72);
  if (v7)
  {
    v8 = v7 + 72 * *(v7 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != isEmptyOrDeletedBucket)
  {
    do
    {
      v9 = *(*(v5 + 64) + 56);
      while (1)
      {
        v10 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v11 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_10;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_10:
      v12 = v9[13];
      v9[10] = 0;
      v9[11] = v12;
      isEmptyOrDeletedBucket = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v9, v4);
      do
      {
        v5 += 72;
        if (v5 == v6)
        {
          break;
        }

        isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5);
      }

      while (isEmptyOrDeletedBucket);
    }

    while (v5 != v8);
  }

  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 24), &v14);
  WTF::RunLoop::dispatch();
  result = v14;
  v14 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setOriginQuotaRatioEnabledForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B440;
  v3 = a1[4];
  a1[4] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setOriginQuotaRatioEnabledForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B440;
  v3 = *(this + 4);
  *(this + 4) = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setOriginQuotaRatioEnabledForTesting(BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t isEmptyOrDeletedBucket)
{
  v1 = isEmptyOrDeletedBucket;
  v2 = *(isEmptyOrDeletedBucket + 8);
  v3 = *(isEmptyOrDeletedBucket + 24);
  if (*(v2 + 184) != v3)
  {
    *(v2 + 184) = v3;
    isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(v2 + 72));
    v4 = isEmptyOrDeletedBucket;
    v6 = v5;
    v7 = *(v2 + 72);
    v8 = v7 ? v7 + 72 * *(v7 - 4) : 0;
    if (v8 != isEmptyOrDeletedBucket)
    {
      do
      {
        v9 = *(v4 + 64);
        atomic_fetch_add((v9 + 8), 1u);
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = *(v9 + 56);
        while (1)
        {
          v11 = *v10;
          if ((*v10 & 1) == 0)
          {
            break;
          }

          v12 = *v10;
          atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v12 == v11)
          {
            goto LABEL_12;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_12:
        WebKit::NetworkStorageManager::originQuotaManagerParameters(v16, v2, v4);
        WebKit::OriginQuotaManager::updateParametersForTesting(v10, v16);
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        isEmptyOrDeletedBucket = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::OriginQuotaManager,(WTF::DestructionThread)0>::deref(v10, v13);
        if (!atomic_load((v9 + 8)))
        {
LABEL_24:
          __break(0xC471u);
          JUMPOUT(0x19DE09DE4);
        }

        atomic_fetch_add((v9 + 8), 0xFFFFFFFF);
        do
        {
          v4 += 72;
          if (v4 == v6)
          {
            break;
          }

          isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v4);
        }

        while (isEmptyOrDeletedBucket);
      }

      while (v4 != v8);
    }
  }

  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((v1 + 32), v16);
  WTF::RunLoop::dispatch();
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setBackupExclusionPeriodForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B468;
  v3 = a1[4];
  a1[4] = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setBackupExclusionPeriodForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B468;
  v3 = *(this + 4);
  *(this + 4) = 0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setBackupExclusionPeriodForTesting(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t *a1)
{
  *(a1[1] + 344) = a1[3];
  WTF::RunLoop::mainSingleton(a1);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 4, &v3);
  WTF::RunLoop::dispatch();
  result = v3;
  v3 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setStorageSiteValidationEnabled(BOOL)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B490;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setStorageSiteValidationEnabled(BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B490;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::setStorageSiteValidationEnabled(BOOL)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 8), &v5);
    result = v5;
    if (v5)
    {
      result = WebKit::NetworkStorageManager::setStorageSiteValidationEnabledInternal(v5, *(a1 + 24));
      v4 = v5;
      v5 = 0;
      if (v4)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v4 + 1, v3);
      }
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2, a3);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::addAllowedSitesForConnection(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F110B4B8;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::addAllowedSitesForConnection(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F110B4B8;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v4 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

WTF::StringImpl **WebKit::NetworkStorageManager::addAllowedSitesForConnection(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0::operator()(uint64_t *a1)
{
  result = a1[1];
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *a1, &v5);
    result = v5;
    if (v5)
    {
      result = WebKit::NetworkStorageManager::addAllowedSitesForConnectionInternal(v5, a1[2], (a1 + 3));
      v4 = v5;
      v5 = 0;
      if (v4)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v4 + 1, v3);
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DE0A2D4);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

void *WTF::Function<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl ***a4)
{
  v4 = *a4;
  *a4 = 0;
  v7 = v4;
  (*(*a1 + 16))(a1, a2, a3, &v7);
  result = v7;
  if (v7)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v5);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseConnection>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB0FF30](result - 2);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebCore::IDBServer::UniqueIDBDatabaseTransaction>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB10060](result - 2);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
  v4 = *a1;
  if (!result)
  {
    if (v4)
    {
      return v4 + 16 * *(v4 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DE0A4F8);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return v2 + 16 * v7;
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return v2 + 16 * v7;
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(WebCore::ClientOrigin const&,WTF::Function<void ()(WebKit::BackgroundFetchStoreManager *)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B4E0;
  WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(WebCore::ClientOrigin const&,WTF::Function<void ()(WebKit::BackgroundFetchStoreManager *)> &&)::$_0::~$_0((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(WebCore::ClientOrigin const&,WTF::Function<void ()(WebKit::BackgroundFetchStoreManager *)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B4E0;
  WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(WebCore::ClientOrigin const&,WTF::Function<void ()(WebKit::BackgroundFetchStoreManager *)> &&)::$_0::~$_0(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(WebCore::ClientOrigin const&,WTF::Function<void ()(WebKit::BackgroundFetchStoreManager *)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = WebKit::NetworkStorageManager::originStorageManager(*(a1 + 8), (a1 + 32), 1);
  atomic_fetch_add((v2 + 8), 1u);
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  v9 = v3;
  Manager = WebKit::OriginStorageManager::backgroundFetchManager(v2, &v9);
  ++*(Manager + 8);
  v5 = v9;
  v9 = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  if (atomic_load((v2 + 8)))
  {
    atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
    (*(**(a1 + 96) + 16))(*(a1 + 96), Manager);
    return WTF::RefCounted<WebKit::BackgroundFetchStoreManager>::deref((Manager + 8), v7);
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::BackgroundFetchStoreManager>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::BackgroundFetchStoreManager::~BackgroundFetchStoreManager((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 546;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::NetworkProcessProxy::NotifyBackgroundFetchChange::encode<IPC::Encoder>(a2, v10);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

uint64_t Messages::NetworkProcessProxy::NotifyBackgroundFetchChange::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B508;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B508;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 352);
  if (v3)
  {
    isEmptyOrDeletedBucket = std::unique_ptr<WebCore::SWRegistrationDatabase>::reset[abi:sn200100]((v3 + 8), 0);
  }

  else
  {
    isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(v2 + 72));
    v5 = isEmptyOrDeletedBucket;
    v7 = v6;
    v8 = *(v2 + 72);
    if (v8)
    {
      v9 = v8 + 72 * *(v8 - 4);
    }

    else
    {
      v9 = 0;
    }

    if (v9 != isEmptyOrDeletedBucket)
    {
      do
      {
        v10 = WebKit::OriginStorageManager::defaultBucket(*(v5 + 64));
        v11 = WebKit::OriginStorageManager::StorageBucket::serviceWorkerStorageManager(v10);
        isEmptyOrDeletedBucket = std::unique_ptr<WebCore::SWRegistrationDatabase>::reset[abi:sn200100]((v11 + 8), 0);
        do
        {
          v5 += 72;
          if (v5 == v7)
          {
            break;
          }

          isEmptyOrDeletedBucket = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::unique_ptr<WebKit::OriginStorageManager>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::unique_ptr<WebKit::OriginStorageManager>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v5);
        }

        while (isEmptyOrDeletedBucket);
      }

      while (v5 != v9);
    }
  }

  WTF::RunLoop::mainSingleton(isEmptyOrDeletedBucket);
  v15 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v13 = WTF::fastMalloc(v12, 0x18);
  *v13 = &unk_1F110B530;
  *(v13 + 1) = v15;
  v16 = v13;
  WTF::RunLoop::dispatch();
  result = v16;
  if (v16)
  {
    return (*(*v16 + 8))(v16);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B530;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B530;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::closeServiceWorkerRegistrationFiles(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B558;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B558;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 44);
  if (v4)
  {
    v5 = WebKit::ServiceWorkerStorageManager::clearAllRegistrations(v4, a2);
LABEL_14:
    WTF::RunLoop::mainSingleton(v5);
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v17 = WTF::fastMalloc(v16, 0x18);
    *v17 = &unk_1F110B580;
    *(v17 + 1) = v19;
    v20 = v17;
    WTF::RunLoop::dispatch();
    result = v20;
    v20 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  WebKit::NetworkStorageManager::getAllOrigins(&v20, v3);
  v7 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v20);
  v8 = v6;
  v5 = v20;
  if (v20)
  {
    v9 = (v20 + 64 * *(v20 - 1));
  }

  else
  {
    v9 = 0;
  }

  if (v9 == v7)
  {
LABEL_12:
    if (v5)
    {
      v5 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v5, v6);
    }

    goto LABEL_14;
  }

  while (1)
  {
    v10 = WebKit::NetworkStorageManager::originStorageManager(v3, v7, 1);
    v11 = (v10 + 2);
    atomic_fetch_add(v10 + 2, 1u);
    v12 = WebKit::OriginStorageManager::defaultBucket(v10);
    v13 = WebKit::OriginStorageManager::StorageBucket::serviceWorkerStorageManager(v12);
    WebKit::ServiceWorkerStorageManager::clearAllRegistrations(v13, v14);
    if (!atomic_load(v11))
    {
      break;
    }

    atomic_fetch_add(v11, 0xFFFFFFFF);
    WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v3, v7);
    do
    {
      v7 = (v7 + 64);
    }

    while (v7 != v8 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v7));
    if (v7 == v9)
    {
      v5 = v20;
      goto LABEL_12;
    }
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B580;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B580;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::clearServiceWorkerRegistrations(WTF::CompletionHandler<void ()(void)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  *a1 = &unk_1F110B5A8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B5A8;
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

uint64_t WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(uint64_t a1, void *a2)
{
  v3 = *a1;
  v32[0] = 0;
  v33 = 0;
  v4 = *(v3 + 44);
  if (v4)
  {
    WebKit::ServiceWorkerStorageManager::importRegistrations(&v26, v4, a2);
    v12 = std::__optional_storage_base<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(v32, &v26);
    if (v28 != 1)
    {
      goto LABEL_12;
    }

    v11 = &v26;
LABEL_11:
    v12 = WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v5);
LABEL_12:
    WTF::RunLoop::mainSingleton(v12);
    v13 = *(a1 + 8);
    *(a1 + 8) = 0;
    v26 = v13;
    WTF::CrossThreadCopierBase<false,false,std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::copy<std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v27, v32);
    v14 = *(a1 + 16);
    *(a1 + 16) = 0;
    v29 = v14;
    WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>(v31, &v26, v14);
    WTF::RunLoop::dispatch();
    v16 = v31[0];
    v31[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1}::~(&v26, v15);
    if (v33 == 1)
    {
      return WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32, v18);
    }

    return result;
  }

  v31[0] = 0;
  v31[1] = 0;
  WebKit::NetworkStorageManager::getAllOrigins(&v30, v3);
  v6 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(&v30);
  v7 = v5;
  v8 = 0;
  v9 = v30;
  if (v30)
  {
    v8 = (v30 + 64 * *(v30 - 1));
  }

  if (v8 == v6)
  {
    v10 = 0;
LABEL_6:
    if (v9)
    {
      WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v9, v5);
    }

    if (v10)
    {
      std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(v32, v31);
    }

    v11 = v31;
    goto LABEL_11;
  }

  v10 = 0;
  while (1)
  {
    v19 = WebKit::NetworkStorageManager::originStorageManager(v3, v6, 1);
    v20 = (v19 + 2);
    atomic_fetch_add(v19 + 2, 1u);
    v21 = WebKit::OriginStorageManager::defaultBucket(v19);
    v22 = WebKit::OriginStorageManager::StorageBucket::serviceWorkerStorageManager(v21);
    WebKit::ServiceWorkerStorageManager::importRegistrations(&v26, v22, v23);
    if (!atomic_load(v20))
    {
      break;
    }

    atomic_fetch_add(v20, 0xFFFFFFFF);
    if (v28 == 1)
    {
      WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(v31, &v26);
      if (v28)
      {
        WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v25);
      }

      v10 = 1;
    }

    WebKit::NetworkStorageManager::removeOriginStorageManagerIfPossible(v3, v6);
    do
    {
      v6 = (v6 + 64);
    }

    while (v6 != v7 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v6));
    if (v6 == v8)
    {
      v9 = v30;
      goto LABEL_6;
    }
  }

  result = 290;
  __break(0xC471u);
  return result;
}

__n128 WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 3);
  v5 = *(a1 + 8);
  v6 = v4 + *(a1 + 12);
  if (v6 > v5)
  {
    v7 = v5 + (v5 >> 1);
    if (v7 <= v5 + 1)
    {
      v7 = v5 + 1;
    }

    if (v7 <= v6)
    {
      v7 = v6;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    LODWORD(v4) = *(a2 + 3);
  }

  if (v4)
  {
    v10 = *a2;
    v11 = &v10[37 * v4];
    v12 = *(a1 + 12);
    do
    {
      v13 = *a1 + 592 * v12;
      v14 = *v10;
      *(v13 + 16) = *(v10 + 2);
      *v13 = v14;
      WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(v13 + 24, v10 + 24);
      *(v13 + 376) = *(v10 + 47);
      v15 = *(v10 + 48);
      *(v10 + 48) = 0;
      *(v13 + 384) = v15;
      v16 = *(v10 + 49);
      *(v10 + 49) = 0;
      *(v13 + 400) = 0;
      *(v13 + 408) = 0;
      *(v13 + 392) = v16;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(v13 + 400, v10 + 100);
      v17 = *(v10 + 104);
      *(v13 + 420) = *(v10 + 420);
      *(v13 + 416) = v17;
      *(v13 + 424) = *(v10 + 212);
      v18 = *(v10 + 54);
      *(v10 + 54) = 0;
      *(v13 + 432) = v18;
      v19 = *(v10 + 55);
      *(v10 + 55) = 0;
      *(v13 + 440) = v19;
      v20 = *(v10 + 56);
      *(v10 + 56) = 0;
      *(v13 + 448) = v20;
      WTF::URL::URL(v13 + 456, v10 + 57);
      *(v13 + 496) = *(v10 + 124);
      *(v13 + 517) = 0;
      *(v13 + 504) = 0;
      *(v13 + 512) = 0;
      v21 = *(v10 + 63);
      *(v10 + 63) = 0;
      *(v13 + 504) = v21;
      LODWORD(v21) = *(v10 + 128);
      *(v10 + 128) = 0;
      *(v13 + 512) = v21;
      LODWORD(v21) = *(v10 + 129);
      *(v10 + 129) = 0;
      *(v13 + 516) = v21;
      LODWORD(v21) = *(v10 + 130);
      *(v10 + 130) = 0;
      *(v13 + 520) = v21;
      LOBYTE(v21) = *(v10 + 524);
      *(v10 + 524) = 0;
      *(v13 + 524) = v21;
      v22 = v10[33];
      result = v10[34];
      v23 = v10[35];
      *(v13 + 544) = result;
      *(v13 + 560) = v23;
      *(v13 + 528) = v22;
      *(v13 + 576) = *(v10 + 576);
      v24 = *(v10 + 73);
      *(v10 + 73) = 0;
      *(v13 + 584) = v24;
      v12 = *(a1 + 12) + 1;
      *(a1 + 12) = v12;
      v10 += 37;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,void>(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 12);
    if (v4)
    {
      v5 = *a1;
      v6 = 592 * v4;
      do
      {
        WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v5, a2);
        v5 = (v7 + 592);
        v6 -= 592;
      }

      while (v6);
    }

    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t **WTF::Function<void ()(void)>::Function<WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x30);
  v6 = *a2;
  *a2 = 0;
  *v5 = &unk_1F110B5D0;
  v5[1] = v6;
  *(v5 + 16) = 0;
  v7 = v5 + 2;
  *(v5 + 32) = 0;
  if (*(a2 + 24) == 1)
  {
    *v7 = 0;
    v5[3] = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v7, (a2 + 8));
    *(v5 + 32) = 1;
  }

  v8 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5[5] = v8;
  *a1 = v5;
  return a1;
}

uint64_t *WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1}::~(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(a1 + 24) == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return a1;
}

WTF *std::__optional_storage_base<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(WTF *result, WTF::StringImpl *a2)
{
  v3 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      v4 = *(result + 3);
      if (v4)
      {
        v5 = *result;
        v6 = 592 * v4;
        do
        {
          WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v5, a2);
          v5 = (v7 + 592);
          v6 -= 592;
        }

        while (v6);
      }

      return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v3, a2);
    }
  }

  else if (*(result + 16))
  {
    result = WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    *(v3 + 16) = 0;
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(result, a2);
    *(v3 + 16) = 1;
  }

  return result;
}

_BYTE *WTF::CrossThreadCopierBase<false,false,std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::copy<std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(_BYTE *result, uint64_t a2)
{
  v2 = result;
  if (*(a2 + 16))
  {
    WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v6, a2);
    *v2 = v6;
    v4 = v7;
    v6 = 0;
    v7 = 0;
    *(v2 + 1) = v4;
    result = WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v5);
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *result = 0;
  }

  v2[16] = v3;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B5D0;
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(a1 + 32) == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110B5D0;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(this + 32) == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::NetworkStorageManager::importServiceWorkerRegistrations(WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)> &&)::$_0::operator()(void)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int *WTF::VectorTypeOperations<WebCore::ServiceWorkerScripts>::destruct(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 2);
      if (v4)
      {
        WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v4, v3[6]);
      }

      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      v3 += 10;
    }

    while (v3 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ServiceWorkerRegistrationKey>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *(v3 + 4);
      *(v3 + 4) = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

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

void *WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B5F8;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 5), a2);
  WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), v4);
  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v6 + 8), v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)> &&)::$_0,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F110B5F8;
  v3 = *(a1 + 7);
  *(a1 + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, a2);
  WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, v4);
  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v6 + 8), v5);
  }

  return WTF::fastFree(a1, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)> &&)::$_0,void>::call(uint64_t a1)
{
  v4 = *(a1 + 8);
  LOBYTE(v103[0]) = 0;
  v104 = 0;
  v5 = *(v4 + 44);
  if (!v5)
  {
    v6 = a1;
    WebKit::NetworkStorageManager::updateServiceWorkerRegistrationsByOrigin(&v114, v4, *(a1 + 24), *(a1 + 36), a1 + 40);
    if (v104 == 1)
    {
      if (HIDWORD(v103[1]))
      {
        WTF::VectorTypeOperations<WebCore::ServiceWorkerScripts>::destruct(v103[0], v103[0] + 10 * HIDWORD(v103[1]));
      }

      if (v103[0])
      {
        WTF::fastFree(v103[0], v8);
      }

      v9 = *(&v114 + 1);
      v103[0] = v114;
      v114 = 0uLL;
      v103[1] = v9;
    }

    else
    {
      v10 = *(&v114 + 1);
      v103[0] = v114;
      v114 = 0uLL;
      v103[1] = v10;
      v104 = 1;
    }

    goto LABEL_13;
  }

  v6 = a1;
  updated = WebKit::ServiceWorkerStorageManager::updateRegistrations(v5, (a1 + 24), &v114);
  if (v104 != v115)
  {
    v11 = *(&v114 + 1);
    v103[0] = v114;
    v114 = 0uLL;
    v103[1] = v11;
    v104 = 1;
  }

  if (v115 == 1)
  {
LABEL_13:
    updated = WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v114, v8);
  }

  WTF::RunLoop::mainSingleton(updated);
  v14 = v6;
  v15 = *(v6 + 16);
  *(v14 + 16) = 0;
  v98 = v15;
  v16 = v104;
  if (v104)
  {
    v88 = v14;
    v17 = v103[0];
    if (HIDWORD(v103[1]))
    {
      v89 = v103[0] + 40 * HIDWORD(v103[1]);
      while (1)
      {
        v18 = WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::begin(v17 + 16);
        v90 = v17;
        v92 = *(v17 + 2) + 48 * *(v17 + 6);
        if (v92 != v18)
        {
          break;
        }

        LOBYTE(v95) = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
LABEL_106:
        v105 = *v90;
        WebCore::ScriptBuffer::isolatedCopy(&v106, v90 + 1);
        v107 = v24;
        v108 = __PAIR64__(v22, v23);
        v109 = v21;
        v110 = v95;
        *v90 = v105;
        v75 = v106;
        v106 = 0;
        v76 = *(v90 + 1);
        *(v90 + 1) = v75;
        if (v76 && atomic_fetch_add(v76 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v76 + 2);
          (*(*v76 + 8))(v76);
        }

        v77 = v107;
        v107 = 0;
        v78 = v109;
        v109 = 0;
        v79 = v110;
        v110 = 0;
        v80 = *(v90 + 2);
        *(v90 + 2) = v77;
        v81 = v108;
        v108 = 0;
        v12 = *(v90 + 6);
        *(v90 + 3) = v81;
        *(v90 + 8) = v78;
        *(v90 + 36) = v79;
        if (v80)
        {
          WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v80, v12);
          if (v107)
          {
            WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v107, v108);
          }
        }

        v82 = v106;
        v106 = 0;
        if (v82 && atomic_fetch_add(v82 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v82 + 2);
          (*(*v82 + 8))(v82, v12);
        }

        v17 = (v90 + 40);
        if (v90 + 40 == v89)
        {
          v17 = v103[0];
          v1 = HIDWORD(v103[1]);
          v15 = v98;
          goto LABEL_119;
        }
      }

      v20 = v18;
      v95 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v91 = v19;
      while (1)
      {
        WTF::URL::isolatedCopy();
        WebCore::ScriptBuffer::isolatedCopy(&v111, v20 + 5);
        v113 = &v111;
        v94 = v20;
        if (10 * v22 >= 9 * v23 || v23 <= 2 * v22 && (v95 & 1) != 0)
        {
          break;
        }

LABEL_55:
        v49 = *(v112[0] + 4);
        if (v49 < 0x100)
        {
          v50 = WTF::StringImpl::hashSlowCase(v112[0]);
        }

        else
        {
          v50 = v49 >> 8;
        }

        v51 = v23 - 1;
        v52 = (v50 ^ v21) & (v23 - 1);
        v53 = (v24 + 48 * v52);
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v53))
        {
LABEL_82:
          WTF::HashMapTranslator<WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>>> WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::URL,WebCore::ScriptBuffer>(WTF::URL &&,WebCore::ScriptBuffer &&)::{lambda(void)#1}>(v53, v112, &v113);
          v20 = v94;
          v67 = v91;
        }

        else
        {
          v55 = 0;
          while (1)
          {
            v56 = *(*v53 + 16);
            v57 = v56 < 0x100 ? WTF::StringImpl::hashSlowCase(*v53) : v56 >> 8;
            v58 = (v52 + v23 - ((v57 ^ v21) & v51)) & v51;
            if (v55 > v58)
            {
              break;
            }

            if (v57 == v50 && (WTF::equal(*v53, v112[0], v54) & 1) != 0)
            {
              v20 = v94;
              v67 = v91;
              goto LABEL_84;
            }

            ++v55;
            v52 = (v52 + 1) & v51;
            v53 = (v24 + 48 * v52);
            if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v53))
            {
              v68 = v95;
              if (v55 > 0x7F)
              {
                v68 = 1;
              }

              v95 = v68;
              goto LABEL_82;
            }
          }

          v60 = v95;
          if (v55 > 0x7F)
          {
            v60 = 1;
          }

          v95 = v60;
          WTF::URL::URL(&v114, v53);
          v116 = v53[5];
          v53[5] = 0;
          v62 = *v53;
          *v53 = 0;
          if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v62, v61);
          }

          *v53 = 0;
          WTF::URL::invalidate(v53);
          v53[5] = 0;
          WTF::HashMapTranslator<WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>>> WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::URL,WebCore::ScriptBuffer>(WTF::URL &&,WebCore::ScriptBuffer &&)::{lambda(void)#1}>(v53, v112, &v113);
          v63 = (v52 + 1) & v51;
          v64 = (v24 + 48 * v63);
          v20 = v94;
          if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v64) & 1) == 0)
          {
            v71 = v24;
            do
            {
              v72 = *(*v64 + 4);
              if (v72 < 0x100)
              {
                v73 = WTF::StringImpl::hashSlowCase(*v64);
              }

              else
              {
                v73 = v72 >> 8;
              }

              ++v58;
              v74 = (v63 + v23 - ((v73 ^ v21) & v51)) & v51;
              if (v58 > v74)
              {
                std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>(&v114, v64);
                v58 = v74;
              }

              v63 = (v63 + 1) & v51;
              v24 = v71;
              v64 = (v71 + 48 * v63);
            }

            while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v64));
          }

          WTF::GenericHashTraits<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>::assignToEmpty<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>(v64, &v114);
          v65 = v116;
          v116 = 0;
          if (v65 && atomic_fetch_add(v65 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v65 + 2);
            (*(*v65 + 8))(v65);
          }

          v66 = v114;
          *&v114 = 0;
          v67 = v91;
          if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v66, v59);
          }
        }

        ++v22;
LABEL_84:
        v69 = v111;
        v111 = 0;
        if (v69 && atomic_fetch_add(v69 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v69 + 2);
          (*(*v69 + 8))(v69);
        }

        v70 = v112[0];
        v112[0] = 0;
        if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v70, v59);
        }

        do
        {
          v20 += 6;
        }

        while (v20 != v67 && WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v20));
        if (v20 == v92)
        {
          goto LABEL_106;
        }
      }

      v25 = 2 * v23;
      if (v23)
      {
        v26 = v25;
      }

      else
      {
        v26 = 8;
      }

      v27 = WTF::fastMalloc((v26 + 2 * v26), (16 * (v26 + 2 * v26)));
      v29 = v27;
      if (v26)
      {
        v30 = v27;
        v31 = v26;
        do
        {
          *v30 = 0;
          WTF::URL::invalidate(v30);
          v30[5] = 0;
          v30 += 6;
          --v31;
        }

        while (v31);
      }

      v93 = v22;
      v32 = (v29 + ~(v29 << 32)) ^ ((v29 + ~(v29 << 32)) >> 22);
      v33 = 9 * ((v32 + ~(v32 << 13)) ^ ((v32 + ~(v32 << 13)) >> 8));
      v34 = (v33 ^ (v33 >> 15)) + ~((v33 ^ (v33 >> 15)) << 27);
      v21 = (v34 >> 31) ^ v34;
      if (v23)
      {
        v35 = 0;
        v36 = v23;
        v37 = v25 - 1;
        v96 = v23;
        v97 = v24;
        do
        {
          v38 = v24 + 48 * v35;
          if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v38) & 1) == 0)
          {
            v39 = *(*v38 + 16);
            if (v39 < 0x100)
            {
              v40 = WTF::StringImpl::hashSlowCase(*v38);
            }

            else
            {
              v40 = v39 >> 8;
            }

            v41 = (v40 ^ v21) & v37;
            v42 = &v29[6 * v41];
            if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v42) & 1) == 0)
            {
              v45 = 0;
              do
              {
                v46 = *(*v42 + 4);
                if (v46 < 0x100)
                {
                  v47 = WTF::StringImpl::hashSlowCase(*v42);
                }

                else
                {
                  v47 = v46 >> 8;
                }

                v48 = (v41 + v26 - ((v47 ^ v21) & v37)) & v37;
                if (v45 > v48)
                {
                  std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>(v38, v42);
                  v45 = v48;
                }

                ++v45;
                v41 = (v41 + 1) & v37;
                v42 = &v29[6 * v41];
              }

              while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v42));
            }

            WTF::GenericHashTraits<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>::assignToEmpty<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>(v42, v38);
            v36 = v96;
            v24 = v97;
          }

          v43 = *(v38 + 5);
          *(v38 + 5) = 0;
          if (v43 && atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v43 + 2);
            (*(*v43 + 8))(v43);
          }

          v44 = *v38;
          *v38 = 0;
          if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v44, v28);
          }

          ++v35;
        }

        while (v35 != v36);
      }

      else if (!v24)
      {
        v95 = 0;
        v23 = 8;
        goto LABEL_54;
      }

      WTF::fastFree(v24, v28);
      v95 = 0;
      v23 = v26;
LABEL_54:
      v24 = v29;
      v22 = v93;
      goto LABEL_55;
    }

    v1 = 0;
LABEL_119:
    *&v13 = 0;
    v2 = v103[1];
    *v103 = v13;
    v114 = v13;
    v99 = v17;
    v100 = __PAIR64__(v1, v2);
    WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v114, v12);
    v83 = 1;
    v14 = v88;
  }

  else
  {
    v83 = 0;
    LOBYTE(v99) = 0;
  }

  v101 = v83;
  v84 = *(v14 + 56);
  *(v14 + 56) = 0;
  v102 = v84;
  v85 = WTF::fastMalloc(v16, 0x30);
  *v85 = &unk_1F110B620;
  v85[1] = v15;
  *(v85 + 16) = 0;
  *(v85 + 32) = 0;
  if (v83)
  {
    v85[2] = v99;
    v99 = 0;
    v100 = 0;
    *(v85 + 6) = v2;
    *(v85 + 7) = v1;
    *(v85 + 32) = 1;
  }

  v85[5] = v84;
  *&v114 = v85;
  WTF::RunLoop::dispatch();
  result = v114;
  *&v114 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v102 = 0;
  if (v83)
  {
    result = WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v99, v86);
  }

  if (v104 == 1)
  {
    return WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v103, v86);
  }

  return result;
}

unsigned int *WebCore::ScriptBuffer::isolatedCopy(WebCore::ScriptBuffer *this, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    WebCore::SharedBufferBuilder::copy(&v6, a2);
    v4 = v6;
    v6 = 0;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  MEMORY[0x19EB087F0](this, &v7);
  result = v7;
  v7 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
    if (!v3)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF **WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::begin(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1 + 48 * v2;
  if (!*(a1 + 12))
  {
    return v3;
  }

  if (v2)
  {
    v4 = 48 * v2;
    while (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v1))
    {
      v1 += 6;
      v4 -= 48;
      if (!v4)
      {
        return v3;
      }
    }
  }

  return v1;
}

unsigned int *WTF::HashMapTranslator<WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>>> WTF::HashMap<WTF::URL,WebCore::ScriptBuffer,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ScriptBuffer>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::URL,WebCore::ScriptBuffer>(WTF::URL &&,WebCore::ScriptBuffer &&)::{lambda(void)#1}>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  WTF::URL::operator=(a1, a2);
  v5 = **a3;
  **a3 = 0;
  result = a1[5];
  a1[5] = v5;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

unsigned int *WTF::GenericHashTraits<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>::assignToEmpty<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>,WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>(uint64_t *a1, uint64_t *a2)
{
  WTF::URL::operator=(a1, a2);
  v4 = a2[5];
  a2[5] = 0;
  result = a1[5];
  a1[5] = v4;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

WTF::StringImpl *std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::URL,WebCore::ScriptBuffer>>(uint64_t *a1, uint64_t *a2)
{
  WTF::URL::URL(v12, a1);
  v4 = a1[5];
  a1[5] = 0;
  v13 = v4;
  WTF::URL::operator=(a1, a2);
  v5 = a2[5];
  a2[5] = 0;
  v6 = a1[5];
  a1[5] = v5;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  WTF::URL::operator=(a2, v12);
  v8 = v13;
  v13 = 0;
  v9 = a2[5];
  a2[5] = v8;
  if (v9)
  {
    if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9 + 2);
      (*(*v9 + 8))(v9);
    }

    v10 = v13;
    v13 = 0;
    if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
      (*(*v10 + 8))(v10);
    }
  }

  result = v12[0];
  v12[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F110B620;
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(a1 + 32) == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F110B620;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(this + 32) == 1)
  {
    WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkStorageManager::updateServiceWorkerRegistrations(WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  LOBYTE(v4[0]) = 0;
  v5 = 0;
  if (*(a1 + 32) == 1)
  {
    v4[0] = *(a1 + 16);
    v1 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4[1] = v1;
    v5 = 1;
  }

  result = WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>)>::operator()((a1 + 40), v4);
  if (v5 == 1)
  {
    return WTF::Vector<WebCore::ServiceWorkerScripts,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v3);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t a2)
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

  v5 = v3 << (6 * v4 >= (2 * v3));
LABEL_4:
  v6 = WTF::fastMalloc((3 * v5), ((96 * v5) | 0x10));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    v10 = v5;
    v11 = (v6 + 80);
    do
    {
      v11[-2] = 0u;
      v11[-1] = 0u;
      v11[-4] = 0u;
      v11[-3] = 0u;
      v6 = WTF::PairHashTraits<WTF::HashTraits<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::emptyValue(v11, v7, 0);
      v11 += 6;
      --v10;
    }

    while (v10);
  }

  *a1 = v9;
  *(v8 + 2) = v5 - 1;
  *(v8 + 3) = v5;
  *v8 = 0;
  *(v8 + 1) = v4;
  if (v3)
  {
    v12 = 0;
    v13 = 0;
    v27 = v2;
    while (1)
    {
      v14 = v2 + 96 * v12;
      if (*(v14 + 24))
      {
        break;
      }

      if (*v14 != -1)
      {
        goto LABEL_11;
      }

LABEL_20:
      if (++v12 == v3)
      {
        goto LABEL_25;
      }
    }

    if (*(v14 + 24) != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

LABEL_11:
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v2 + 96 * v12))
    {
      v6 = WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~KeyValuePair(v2 + 96 * v12, v15);
    }

    else
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

      v18 = WTF::computeHash<WebCore::ClientOrigin>(v2 + 96 * v12);
      v19 = 0;
      do
      {
        v20 = v18 & v17;
        v21 = v16 + 96 * (v18 & v17);
        v23 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v21);
        v18 = ++v19 + v20;
      }

      while (!v23);
      v24 = WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~KeyValuePair(v16 + 96 * v20, v22);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v24, v14);
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v21 + 32), v14 + 32);
      *(v21 + 72) = 0;
      *(v21 + 64) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v21 + 64, (v14 + 64));
      *(v21 + 88) = 0;
      *(v21 + 80) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v21 + 80, (v14 + 80));
      v6 = WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::~KeyValuePair(v14, v25);
      v2 = v27;
      if (v14 == a2)
      {
        v13 = v16 + 96 * v20;
      }
    }

    goto LABEL_20;
  }

  v13 = 0;
  result = 0;
  if (v2)
  {
LABEL_25:
    WTF::fastFree((v2 - 16), v7);
    return v13;
  }

  return result;
}

uint64_t WTF::PairHashTraits<WTF::HashTraits<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::emptyValue(__n128 *a1, WTF::StringImpl *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v5 = a3;
  v6 = a3;
  *a1 = a3;
  a1[1] = a3;
  WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v5, a2);
  return WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v3);
}

WTF *WTF::GenericHashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::assignToEmpty<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = *a1;
    v6 = 592 * v4;
    do
    {
      WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(v5, a2);
      v5 = (v7 + 592);
      v6 -= 592;
    }

    while (v6);
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v8 = *(a1 + 28);
  if (v8)
  {
    WTF::VectorTypeOperations<WebCore::ServiceWorkerRegistrationKey>::destruct(*(a1 + 16), (*(a1 + 16) + 72 * v8));
  }

  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
}

void WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerRegistrationKey>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*a1 + 72 * *(a1 + 12)), v3);
  WTF::URL::URL((v4 + 32), (v3 + 32));
  ++*(a1 + 12);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 - 12))
  {
    return a1 + 96 * *(a1 - 4);
  }

  return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeIterator(a1, a1);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<std::pair<WTF::Vector<WebCore::ServiceWorkerContextData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::ServiceWorkerRegistrationKey,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeIterator(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    v3 = *(a1 - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1 + 96 * v3;
  if (v4 != a2)
  {
    while (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v2))
    {
      v2 += 96;
      if (v2 == v4)
      {
        return v4;
      }
    }
  }

  return v2;
}

WebKit::CcidService *WebKit::CcidService::create@<X0>(WebKit::CcidService *this@<X0>, WebKit::CcidService **a3@<X8>)
{
  v5 = WebKit::FidoService::operatorNewSlow(0x70);
  result = WebKit::CcidService::CcidService(v5, this);
  *a3 = v5;
  return result;
}

WebKit::CcidService *WebKit::CcidService::CcidService(WebKit::CcidService *this, WebKit::AuthenticatorTransportServiceObserver *a2)
{
  *this = &unk_1F10E8570;
  *(this + 1) = 0;
  v4 = WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 1, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 2) = v5;
  *(this + 6) = 1;
  *(this + 4) = 0;
  *this = &unk_1F110B648;
  v6 = WTF::RunLoop::mainSingleton(v4);
  v7 = v6;
  while (1)
  {
    v8 = *(v6 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v6 + 8);
    atomic_compare_exchange_strong_explicit((v6 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_6:
  v10 = WTF::fastMalloc(v8, 0x20);
  *v10 = &unk_1F110B8D0;
  v10[1] = this;
  v10[2] = WebKit::CcidService::platformStartDiscovery;
  v10[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(this + 5) = &unk_1F10E6DC8;
  *(this + 10) = v10;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v7 + 8));
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  return this;
}

void sub_19DE0D250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*v12 + 8))(v12, a2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((a10 + 8));
  }

  *v10 = v11;
  v15 = *(v10 + 32);
  if (v15)
  {
    WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::deallocateTable(v15, v14);
  }

  if (*(v10 + 24) == 1)
  {
    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(v10);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::CcidService::~CcidService(WebKit::CcidService *this)
{
  *this = &unk_1F110B648;
  WebKit::CcidService::removeObservers(this);
  v3 = *(this + 13);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v5, v2);
  }

  *(this + 5) = &unk_1F10E6DC8;
  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 40));
  *this = &unk_1F10E85B8;
  v8 = *(this + 4);
  if (v8)
  {
    WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::deallocateTable(v8, v7);
  }

  if (*(this + 6) == 1)
  {

    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(this);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::CcidService::~CcidService(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19DE0D44C(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v4 = *(v2 + 104);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(v2 + 96);
  *(v2 + 96) = 0;
  if (v5)
  {
  }

  v6 = *(v2 + 88);
  *(v2 + 88) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v6, a2);
  }

  *(v2 + 40) = &unk_1F10E6DC8;
  v7 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  WTF::RunLoop::TimerBase::~TimerBase((v2 + 40));
  *v2 = &unk_1F10E85B8;
  v9 = *(v2 + 32);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::deallocateTable(v9, v8);
  }

  if (*(v2 + 24) == 1)
  {
    WebKit::AuthenticatorTransportService::~AuthenticatorTransportService(v2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::CcidService::removeObservers(WebKit::CcidService *this)
{
  if (*(this + 12))
  {
    [objc_msgSend(MEMORY[0x1E69666E8] "defaultManager")];
    v2 = *(this + 12);
    *(this + 12) = 0;
    if (v2)
    {
    }
  }

  v3 = *(this + 13);
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v3);
  v6 = v4;
  v7 = v5;
  if (v3)
  {
    v8 = &v3[2 * *(v3 - 1)];
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v4)
  {
    do
    {
      v9 = *(v6 + 1);
      if (v9)
      {
        v10 = v9;
      }

      [v9 removeObserver];
      if (v9)
      {
      }

      do
      {
        v6 = (v6 + 16);
      }

      while (v6 != v7 && (*v6 + 1) <= 1);
    }

    while (v6 != v8);
    v3 = *(this + 13);
  }

  if (v3)
  {
    *(this + 13) = 0;

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, v5);
  }
}

void sub_19DE0D644(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::CcidService::didConnectTag(WebKit::CcidService *this)
{
  v2 = *(this + 11);
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
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_6:
  if (*(*(this + 11) + 72))
  {
    v5 = 1;
  }

  else
  {
    v5 = 6;
  }

  NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
  *(NonCompactSlow + 2) = 1;
  *(NonCompactSlow + 24) = v5;
  *(NonCompactSlow + 28) = 0;
  *(NonCompactSlow + 32) = 0;
  *NonCompactSlow = &unk_1F10E79B8;
  *(NonCompactSlow + 1) = 0;
  *(NonCompactSlow + 5) = v2;
  v8 = NonCompactSlow;
  WebKit::FidoService::getInfo(this, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    if (result[4] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[4];
    }
  }

  return result;
}

uint64_t WebKit::CcidService::platformStartDiscovery(WebKit::CcidService *this)
{
  WebKit::CcidService::removeObservers(this);
  v2 = [_WKSmartCardSlotObserver alloc];
  if (this)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v3 = *(this + 1);
    if (v3)
    {
      atomic_fetch_add(v3, 1u);
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = v3;
  v4 = [(_WKSmartCardSlotObserver *)v2 initWithService:&v9];
  v6 = *(this + 12);
  *(this + 12) = v4;
  if (v6)
  {
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v5);
  }

  return [objc_msgSend(MEMORY[0x1E69666E8] "defaultManager")];
}

void sub_19DE0D898(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10);
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::CcidService::onValidCard(unint64_t a1, uint64_t *a2)
{
  WebKit::CcidConnection::create(a2, a1, &v5);
  result = *(a1 + 88);
  *(a1 + 88) = v5;
  if (result)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(result, v3);
  }

  return result;
}

void sub_19DE0DA5C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DE0DCD0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::shouldUseAlternateKeychainAttribute(WebKit *this)
{
  WebKit::getASCWebKitSPISupportClass[0](this);
  v1 = objc_opt_respondsToSelector();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = WebKit::getASCWebKitSPISupportClass[0](v1);

  return [v2 shouldUseAlternateKeychainAttribute];
}

void WebKit::LocalAuthenticator::clearAllCredentials(WebKit::LocalAuthenticator *this)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = *MEMORY[0x1E697ABD0];
  v5[0] = *MEMORY[0x1E697AFF8];
  v5[1] = v2;
  v6[0] = *MEMORY[0x1E697B020];
  v6[1] = @"com.apple.webkit.webauthn";
  v5[2] = *MEMORY[0x1E697B390];
  v6[2] = MEMORY[0x1E695E118];
  v3 = [v1 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, v5, 3)}];
  v4 = WebKit::getASCWebKitSPISupportClass[0](v3);
  if (v4 && [WebKit::getASCWebKitSPISupportClass[0](v4) shouldUseAlternateCredentialStore])
  {
    [v1 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697AEB0]];
  }

  SecItemDelete(v1);
  if (v1)
  {
  }
}

void sub_19DE0DF94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::Authenticator::~Authenticator(WebKit::Authenticator *this)
{
  *this = &unk_1F110BBF0;
  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData((this + 32));
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::LocalAuthenticator::getExistingCredentials(WebKit::LocalAuthenticator *this, const WTF::String *a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  (*(*a2 + 16))(&v94, a2, a3);
  v92 = 0;
  v93 = 0;
  v3 = [v94 count];
  if (v3)
  {
    if (v3 >> 29)
    {
      __break(0xC471u);
LABEL_103:
      JUMPOUT(0x19DE0E820);
    }

    LODWORD(v93) = v3;
    v92 = WTF::fastMalloc(0, (8 * v3));
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v94;
  v4 = [v94 countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (!v4)
  {
LABEL_90:
    *this = v92;
    v70 = v93;
    v92 = 0;
    v93 = 0;
    *(this + 1) = v70;
    *(this + 16) = 1;
    goto LABEL_98;
  }

  v81 = *v89;
  v80 = *MEMORY[0x1E697AC48];
  v75 = *MEMORY[0x1E697AC40];
  v74 = *MEMORY[0x1E697AC38];
  v79 = *MEMORY[0x1E697ABC8];
  v5 = *MEMORY[0x1E697AE90];
  v76 = *MEMORY[0x1E697AEB0];
  v78 = *MEMORY[0x1E697ABD0];
LABEL_6:
  v6 = 0;
  while (1)
  {
    if (*v89 != v81)
    {
      objc_enumerationMutation(obj);
    }

    v7 = *(*(&v88 + 1) + 8 * v6);
    v8 = [v7 objectForKeyedSubscript:v80];
    v9 = v8;
    if (!v8)
    {
      v12 = 0;
LABEL_86:
      v14 = 0;
      goto LABEL_14;
    }

    v10 = [v8 bytes];
    v11 = [v9 length];
    v12 = v11;
    if (!v11)
    {
      goto LABEL_86;
    }

    if (HIDWORD(v11))
    {
      __break(0xC471u);
      goto LABEL_103;
    }

    v13 = WTF::fastMalloc(0, v11);
    v14 = v13;
    v15 = 0;
    do
    {
      *(v15 + v13) = *(v15 + v10);
      v15 = (v15 + 1);
    }

    while (v12 != v15);
LABEL_14:
    v84[0] = v14;
    v84[1] = v12;
    cbor::CBORReader::read();
    if (v14)
    {
      WTF::fastFree(v14, v16);
    }

    if (v87 != 1)
    {
      *this = 0;
      *(this + 16) = 0;
      goto LABEL_98;
    }

    if (LODWORD(v86[0]) != 5)
    {
      *this = 0;
      *(this + 16) = 0;
      goto LABEL_97;
    }

    Map = cbor::CBORValue::getMap(v86);
    v85 = 0;
    cbor::CBORValue::CBORValue();
    v18 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, v84);
    cbor::CBORValue::~CBORValue(v84);
    v19 = Map + 8;
    if (Map + 8 != v18)
    {
      v21 = *(v18 + 64);
      v20 = (v18 + 64);
      if (v21 == 2)
      {
        cbor::CBORValue::getByteString(v20);
        JSC::ArrayBuffer::create();
        v22 = v84[0];
        v84[0] = 0;
        v23 = v85;
        v85 = v22;
        if (v23)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v23);
          v24 = v84[0];
          v84[0] = 0;
          if (v24)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v24);
          }
        }
      }
    }

    cbor::CBORValue::CBORValue();
    v25 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, v84);
    cbor::CBORValue::~CBORValue(v84);
    if (v19 == v25)
    {
      break;
    }

    v27 = *(v25 + 64);
    v26 = (v25 + 64);
    if (v27 != 3)
    {
      break;
    }

    String = cbor::CBORValue::getString(v26);
    if (WebKit::shouldUseAlternateKeychainAttribute(String))
    {
      v29 = [v7 objectForKeyedSubscript:v74];
      v30 = v29;
      if (v29 || (v29 = [v7 objectForKeyedSubscript:v75], (v30 = v29) != 0))
      {
LABEL_29:
        v31 = v29;
        [v30 bytes];
        [v30 length];
        v32 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v29 = [v7 objectForKeyedSubscript:v75];
      v30 = v29;
      if (v29)
      {
        goto LABEL_29;
      }
    }

    v30 = 0;
    v32 = 1;
LABEL_30:
    JSC::ArrayBuffer::create();
    v33 = *String;
    if (*String)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    }

    v82 = v33;
    [v7 objectForKeyedSubscript:v79];
    WebCore::AuthenticatorAssertionResponse::create();
    v35 = v82;
    v82 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v34);
    }

    v36 = v84[0];
    v84[0] = 0;
    if (v36)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v36);
    }

    if ([objc_msgSend(v7 "allKeys")] && (v37 = WTF::dynamic_objc_cast<NSString>(objc_msgSend(v7, "objectForKeyedSubscript:", v5))) != 0)
    {
      MEMORY[0x19EB02040](&v82);
      v38 = v82;
      if (v82)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v38 = *MEMORY[0x1E696EBA0];
      if (*MEMORY[0x1E696EBA0])
      {
        atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
      }

      v82 = v38;
      if (v38)
      {
LABEL_45:
        v42 = v83;
        atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
        v43 = *(v42 + 20);
        *(v42 + 20) = v38;
        if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v43, v37);
        }

        v41 = 1;
        v39 = v83;
        goto LABEL_49;
      }
    }

    if (![objc_msgSend(v7 "allKeys")])
    {
      goto LABEL_50;
    }

    v39 = v83;
    v40 = [v7 objectForKeyedSubscript:v76];
    v41 = [v40 isEqual:MEMORY[0x1E695E118]];
LABEL_49:
    *(v39 + 168) = v41;
LABEL_50:
    cbor::CBORValue::CBORValue();
    v44 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, v84);
    cbor::CBORValue::~CBORValue(v84);
    if (v19 != v44)
    {
      v46 = *(v44 + 64);
      v45 = (v44 + 64);
      if (v46 == 3)
      {
        v47 = v83;
        v48 = cbor::CBORValue::getString(v45);
        WTF::String::operator=(v47 + 19, v48);
      }
    }

    cbor::CBORValue::CBORValue(v84, "largeBlob");
    v49 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, v84);
    cbor::CBORValue::~CBORValue(v84);
    if (v19 != v49)
    {
      v51 = *(v49 + 64);
      v50 = (v49 + 64);
      if (v51 == 2)
      {
        v52 = v83;
        cbor::CBORValue::getByteString(v50);
        JSC::ArrayBuffer::create();
        v53 = v84[0];
        v84[0] = 0;
        v54 = *(v52 + 25);
        *(v52 + 25) = v53;
        if (v54)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v54);
          v55 = v84[0];
          v84[0] = 0;
          if (v55)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v55);
          }
        }
      }
    }

    v56 = v83;
    MEMORY[0x19EB02040](v84, [v7 objectForKeyedSubscript:v78]);
    v58 = v84[0];
    if (v84[0])
    {
      atomic_fetch_add_explicit(v84[0], 2u, memory_order_relaxed);
    }

    v59 = *(v56 + 26);
    *(v56 + 26) = v58;
    if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, v57);
    }

    v60 = v84[0];
    v84[0] = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v57);
    }

    LODWORD(v61) = HIDWORD(v93);
    if (HIDWORD(v93) == v93)
    {
      v62 = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v92, HIDWORD(v93) + 1, &v83);
      v61 = HIDWORD(v93);
      v63 = v92;
      v64 = *v62;
      *v62 = 0;
      v63[v61] = v64;
    }

    else
    {
      v65 = v83;
      v83 = 0;
      v92[HIDWORD(v93)] = v65;
    }

    HIDWORD(v93) = v61 + 1;
    v66 = v82;
    v82 = 0;
    if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v66, v57);
    }

    v67 = v83;
    v83 = 0;
    if (!v67)
    {
      goto LABEL_75;
    }

    if (v67[2] != 1)
    {
      --v67[2];
LABEL_75:
      if (v32)
      {
        goto LABEL_77;
      }

LABEL_76:

      goto LABEL_77;
    }

    (*(*v67 + 8))(v67);
    if ((v32 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_77:
    v68 = v85;
    v85 = 0;
    if (v68)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v68);
    }

    if (v87 == 1)
    {
      cbor::CBORValue::~CBORValue(v86);
    }

    if (++v6 == v4)
    {
      v69 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
      v4 = v69;
      if (!v69)
      {
        goto LABEL_90;
      }

      goto LABEL_6;
    }
  }

  *this = 0;
  *(this + 16) = 0;
  v71 = v85;
  v85 = 0;
  if (v71)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v71);
  }

  if (v87 == 1)
  {
LABEL_97:
    cbor::CBORValue::~CBORValue(v86);
  }

LABEL_98:
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v92);
  v72 = v94;
  v94 = 0;
  if (v72)
  {
  }
}

void sub_19DE0E82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va);
  v41 = *(v39 - 232);
  *(v39 - 232) = 0;
  if (v41)
  {
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *WebKit::LocalAuthenticator::makeCredential(WebKit::LocalAuthenticator *this)
{
  *(this + 208) = 1;
  if (*(this + 336))
  {
    mpark::throw_bad_variant_access(this);
  }

  v2 = *(this + 35);
  if (!v2)
  {
LABEL_7:
    LOBYTE(v32) = 6;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebKit::LocalAuthenticator::receiveException(this, &v32, 5);
    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }

    return result;
  }

  v3 = (*(this + 16) + 8);
  while ((*(v3 - 1) & 1) != 0 || *v3 != -7)
  {
    v3 += 2;
    if (!--v2)
    {
      goto LABEL_7;
    }
  }

  WebKit::LocalAuthenticator::getExistingCredentials(&v32, *(this + 105), this + 64);
  if ((v34 & 1) == 0)
  {
    LOBYTE(v30) = 24;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v31 = v35;
    WebKit::LocalAuthenticator::receiveException(this, &v30, 5);
    result = v31;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v22);
    }

    goto LABEL_54;
  }

  v7 = *(this + 215);
  if (v7)
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::destruct(*(this + 106), (*(this + 106) + 8 * v7));
  }

  v8 = *(this + 106);
  if (v8)
  {
    *(this + 106) = 0;
    *(this + 214) = 0;
    WTF::fastFree(v8, v6);
  }

  *(this + 106) = v32;
  v9 = v33;
  v32 = 0;
  v33 = 0;
  *(this + 107) = v9;
  WebKit::LocalAuthenticatorInternal::produceHashSet(&v29, *(this + 19), *(this + 41));
  if (!v29 || !*(v29 - 3) || !*(this + 215))
  {
LABEL_47:
    v23 = *(this + 3);
    if (v23)
    {
      v24 = *(v23 + 8);
      if (v24)
      {
        (**v24)(v24);
        WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 1, this);
        v25 = *(this + 1);
        v26 = WTF::fastMalloc(atomic_fetch_add(v25, 1u), 0x10);
        *v26 = &unk_1F110B948;
        v26[1] = v25;
        v30 = v26;
        (*(*v24 + 88))(v24, &v30);
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        (*(*v24 + 8))(v24);
      }
    }

    goto LABEL_52;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(*(*(this + 106) + 8 * v11) + 16);
    if (v12)
    {
      *v12 += 2;
    }

    JSC::ArrayBuffer::span(v12);
    WTF::base64EncodeToString();
    v15 = v29;
    v14 = v30;
    if (v29)
    {
      if (v30 == -1 || !v30)
      {
        __break(0xC471u);
        JUMPOUT(0x19DE0EDE8);
      }

      v16 = *(v29 - 2);
      v17 = *(v30 + 4);
      if (v17 < 0x100)
      {
        v18 = WTF::StringImpl::hashSlowCase(v30);
      }

      else
      {
        v18 = v17 >> 8;
      }

      for (i = 0; ; v18 = i + v20)
      {
        v20 = v18 & v16;
        v21 = v15[v18 & v16];
        if (v21 != -1)
        {
          if (!v21)
          {
            LOBYTE(v15) = 0;
            goto LABEL_42;
          }

          if (WTF::equal(v21, v30, v13))
          {
            break;
          }
        }

        ++i;
      }

      LOBYTE(v15) = 1;
LABEL_42:
      v14 = v30;
    }

    v30 = 0;
    if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      if (!v12)
      {
        goto LABEL_26;
      }

LABEL_25:
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v12);
      goto LABEL_26;
    }

    WTF::StringImpl::destroy(v14, v10);
    if (v12)
    {
      goto LABEL_25;
    }

LABEL_26:
    if (v15)
    {
      break;
    }

    if (++v11 >= *(this + 215))
    {
      goto LABEL_47;
    }
  }

  LOBYTE(v30) = 8;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v35;
  WebKit::LocalAuthenticator::receiveException(this, &v30, 6);
  v28 = v31;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v10);
  }

LABEL_52:
  result = v29;
  if (v29)
  {
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v10);
  }

LABEL_54:
  if (v34 == 1)
  {
    return WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32);
  }

  return result;
}

void sub_19DE0EE0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl **a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (v15)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v15);
  }

  if (a10)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a10, a2);
  }

  if (a15 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::LocalAuthenticator::receiveException(WebKit *a1, uint64_t a2, uint64_t a3)
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 108))
  {
    shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(a1);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *MEMORY[0x1E697B020];
    v9 = *MEMORY[0x1E697B390];
    v25[0] = *MEMORY[0x1E697AFF8];
    v25[1] = v9;
    v26[0] = v8;
    v26[1] = MEMORY[0x1E695E118];
    v10 = [v7 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v26, v25, 2)}];
    v11 = WebKit::getASCWebKitSPISupportClass[0](v10);
    if (v11 && [WebKit::getASCWebKitSPISupportClass[0](v11) shouldUseAlternateCredentialStore])
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E697AEB0]];
    }

    v12 = *MEMORY[0x1E697AC38];
    v13 = *MEMORY[0x1E697AC40];
    if (shouldUseAlternateKeychainAttribute)
    {
      v14 = *MEMORY[0x1E697AC38];
    }

    else
    {
      v14 = *MEMORY[0x1E697AC40];
    }

    [v7 setObject:*(a1 + 108) forKey:v14];
    v15 = SecItemDelete(v7);
    if (v15 == -25300)
    {
      v16 = shouldUseAlternateKeychainAttribute;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      [v7 removeObjectForKey:v12];
      [v7 setObject:*(a1 + 108) forKey:v13];
      v15 = SecItemDelete(v7);
    }

    if (v15)
    {
      v17 = qword_1ED641530;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
      {
        v22[0] = 67109120;
        v22[1] = v15;
        _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Couldn't delete provisional credential while handling error: %d", v22, 8u);
        if (!v7)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    if (v7)
    {
LABEL_16:
    }
  }

LABEL_17:
  v18 = *(a1 + 3);
  if (v18)
  {
    v19 = *(v18 + 8);
    if (v19)
    {
      (**v19)(v19);
      (*(*v19 + 48))(v19, a3);
      (*(*v19 + 8))(v19);
    }
  }

  LOBYTE(v22[0]) = *a2;
  v20 = *(a2 + 8);
  *(a2 + 8) = 0;
  v23 = v20;
  v24 = 1;
  WebKit::Authenticator::receiveRespond(a1, v22);
  return mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v22);
}

uint64_t *WebKit::LocalAuthenticatorInternal::produceHashSet(uint64_t *result, uint64_t a2, unsigned int a3)
{
  *result = 0;
  if (a3)
  {
    v3 = a2;
    v4 = result;
    v5 = a2 + 40 * a3;
    do
    {
      v6 = *(v3 + 36);
      if (v6)
      {
        v7 = *(v3 + 24);
        while (1)
        {
          v8 = *v7++;
          if (v8 == 3)
          {
            break;
          }

          if (!--v6)
          {
            goto LABEL_20;
          }
        }
      }

      if ((*v3 & 1) == 0)
      {
        LOBYTE(v16) = 0;
        v17 = -1;
        v9 = *(v3 + 16);
        if (v9 != 255)
        {
          v10 = *(v3 + 8);
          if (v10)
          {
            if (*(v3 + 16))
            {
              v11 = 2;
            }

            else
            {
              v11 = 1;
            }

            *v10 += v11;
          }

          v16 = v10;
          v17 = v9;
        }

        WebCore::BufferSource::span(&v16);
        WTF::base64EncodeToString();
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v4, &v18, v12, &v15);
        v14 = v18;
        v18 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }

        result = mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(&v16);
      }

LABEL_20:
      v3 += 40;
    }

    while (v3 != v5);
  }

  return result;
}

void sub_19DE0F3B0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  v16 = a14;
  a14 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(&a12);
  if (*v14)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v14, v17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs>::operator=[abi:sn200100]<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *a1 = *a2;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  if (v4 == 1)
  {
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    if (v6)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = 1;
  }

  return a1;
}

void WebKit::LocalAuthenticator::processClientExtensions(uint64_t a1, WTF::DeferrableRefCountedBase *a2, void *a3)
{
  v9 = a2;
  v85[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) != 1)
  {
    if (!*(a3 + 8) && !*(a2 + 336))
    {
      if (*(a2 + 328))
      {
        WebCore::AuthenticatorResponse::extensions(&v53, *a3);
        if (*(v9 + 328))
        {
          if (*(v9 + 193) == 1)
          {
            if ((v53 & 0x1000000) == 0)
            {
              BYTE3(v53) = 1;
            }

            BYTE2(v53) = 1;
          }

          if (*(v9 + 240) != 1)
          {
            goto LABEL_101;
          }

          std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_copy_base[abi:sn200100](&v72, v9 + 200);
          if (v77)
          {
            if ((v74 & 1) != 0 || v76 == 1)
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v4 = v85[0];
              v12 = 1;
              v13 = 6;
            }

            else
            {
              v54 = 257;
              if (v57 == 1)
              {
                v18 = v55;
                v55 = 0;
                if (v18)
                {
                  WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v18);
                }

                v13 = 0;
                v12 = 0;
                v56 = 0;
              }

              else
              {
                v13 = 0;
                v12 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 1;
              }
            }

            if (v77 == 1)
            {
              if (v76 == 1)
              {
                mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(&v75);
              }

              v19 = v72;
              v72 = 0;
              if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v11);
              }
            }

            if (v12)
            {
              *a1 = v13;
              *(a1 + 8) = v4;
LABEL_100:
              *(a1 + 16) = 1;
              goto LABEL_102;
            }

            goto LABEL_101;
          }
        }

        goto LABEL_121;
      }

LABEL_22:
      *a1 = 0;
      *(a1 + 16) = 0;
      return;
    }

LABEL_142:
    mpark::throw_bad_variant_access(a1);
  }

  if (*(a2 + 336) != 1)
  {
    goto LABEL_142;
  }

  if ((*(a2 + 248) & 1) == 0)
  {
    goto LABEL_22;
  }

  WebCore::AuthenticatorResponse::extensions(&v53, *a3);
  if (*(v9 + 248) != 1 || *(v9 + 160) != 1)
  {
    goto LABEL_101;
  }

  std::__optional_copy_base<WebCore::AuthenticationExtensionsClientInputs::LargeBlobInputs,false>::__optional_copy_base[abi:sn200100](&v72, v9 + 120);
  if ((v77 & 1) == 0)
  {
LABEL_121:
    __break(1u);
    while (1)
    {
      if ((v77 & 1) == 0)
      {
        goto LABEL_121;
      }

      if (v76)
      {
        cbor::CBORValue::CBORValue(v66, &v75);
        cbor::CBORValue::CBORValue(&v62, "largeBlob");
        v79 = &v62;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v67, &v62, &std::piecewise_construct, &v79, &v78);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v62);
        cbor::CBORValue::~CBORValue(v66);
        cbor::CBORValue::CBORValue();
        cbor::CBORWriter::write();
        cbor::CBORValue::~CBORValue(v66);
        if ((v65 & 1) == 0)
        {
          goto LABEL_121;
        }

        v49 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v62 length:v64];
        v82 = *MEMORY[0x1E697B3C8];
        v83 = [v5 objectForKeyedSubscript:?];
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v80 = v6;
        v81 = v49;
        if (SecItemUpdate(v50, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1]))
        {
          v15 = 256;
        }

        else
        {
          v15 = 257;
        }

        if (v49)
        {
        }

        if (v65 == 1)
        {
          v52 = v62;
          if (v62)
          {
            v62 = 0;
            v63 = 0;
            WTF::fastFree(v52, v51);
          }
        }

        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&v67, v68[0]);
        if (v70 == 1)
        {
          cbor::CBORValue::~CBORValue(v69);
        }

        if (v5)
        {
        }

        if (v4)
        {
        }

        if (v3)
        {
        }

        goto LABEL_76;
      }

      std::__throw_bad_optional_access[abi:sn200100]();
LABEL_144:
      v34 = 0;
LABEL_63:
      v66[0] = v34;
      v66[1] = v7;
      cbor::CBORReader::read();
      if (v34)
      {
        WTF::fastFree(v34, v39);
      }

      v40 = v70 == 1 && LODWORD(v69[0]) == 5;
      if (!v40)
      {
        break;
      }

      v68[0] = 0;
      v68[1] = 0;
      v67 = v68;
      Map = cbor::CBORValue::getMap(v69);
      if (v70 != 1)
      {
        goto LABEL_121;
      }

      v7 = *Map;
      while (v7 != (cbor::CBORValue::getMap(v69) + 8))
      {
        cbor::CBORValue::clone(v66, (v7 + 8));
        cbor::CBORValue::clone(&v62, (v7 + 4));
        v79 = &v62;
        std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__emplace_unique_key_args<cbor::CBORValue,std::piecewise_construct_t const&,std::tuple<cbor::CBORValue&&>,std::tuple<>>(&v67, &v62, &std::piecewise_construct, &v79, &v78);
        cbor::CBORValue::operator=();
        cbor::CBORValue::~CBORValue(&v62);
        cbor::CBORValue::~CBORValue(v66);
        v47 = v7[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v7[2];
            v40 = *v48 == v7;
            v7 = v48;
          }

          while (!v40);
        }

        v7 = v48;
        if ((v70 & 1) == 0)
        {
          goto LABEL_121;
        }
      }
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v15 = v66[0];
    if (v70 == 1)
    {
      cbor::CBORValue::~CBORValue(v69);
    }

    if (v5)
    {
    }

    if (v4)
    {
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  if (v72)
  {
LABEL_21:
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v15 = v69[0];
    v16 = 6;
    v17 = 1;
    goto LABEL_92;
  }

  if (v74 != 1)
  {
    goto LABEL_44;
  }

  if (v76 == 1)
  {
    goto LABEL_21;
  }

  if (v73 == 1)
  {
    v9 = *(*a3 + 200);
    if (v9)
    {
      *v9 += 4;
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
      if ((v77 & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
LABEL_44:
    v9 = 0;
  }

  if (v76 != 1)
  {
    v15 = 0;
LABEL_76:
    v54 = 0;
    if (v57 == 1)
    {
      if (v9)
      {
        *v9 += 2;
      }

      v41 = v55;
      v55 = v9;
      if (v41)
      {
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v41);
      }

      v17 = 0;
      v16 = 0;
      v56 = v15;
    }

    else
    {
      if (v9)
      {
        *v9 += 2;
      }

      v17 = 0;
      v16 = 0;
      v55 = v9;
      v56 = v15;
      v57 = 1;
    }

    goto LABEL_90;
  }

  v20 = JSC::ArrayBuffer::span(*(*a3 + 16));
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:v21];
  shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(v3);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = *MEMORY[0x1E697B020];
  v24 = *MEMORY[0x1E697AEB0];
  v84[0] = *MEMORY[0x1E697AFF8];
  v84[1] = v24;
  v25 = *MEMORY[0x1E697AEB8];
  v85[0] = v23;
  v85[1] = v25;
  v26 = *MEMORY[0x1E697B310];
  v84[2] = *MEMORY[0x1E697B390];
  v84[3] = v26;
  v85[2] = MEMORY[0x1E695E118];
  v85[3] = MEMORY[0x1E695E118];
  v84[4] = *MEMORY[0x1E697B320];
  v85[4] = MEMORY[0x1E695E118];
  [v4 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v85, v84, 5)}];
  v27 = *MEMORY[0x1E697AC38];
  v28 = *MEMORY[0x1E697AC40];
  if (shouldUseAlternateKeychainAttribute)
  {
    v29 = *MEMORY[0x1E697AC38];
  }

  else
  {
    v29 = *MEMORY[0x1E697AC40];
  }

  [v4 setObject:v3 forKey:v29];
  result = 0;
  v30 = SecItemCopyMatching(v4, &result);
  if (v30 == -25300)
  {
    v31 = shouldUseAlternateKeychainAttribute;
  }

  else
  {
    v31 = 0;
  }

  if (v31 == 1)
  {
    [v4 removeObjectForKey:v27];
    [v4 setObject:v3 forKey:v28];
    v30 = SecItemCopyMatching(v4, &result);
  }

  if (v30 == -25300 || !v30)
  {
    v5 = result;
    if (!result || (v32 = CFGetTypeID(result), v32 == CFDictionaryGetTypeID()))
    {
      v6 = *MEMORY[0x1E697AC48];
      v33 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697AC48]];
      v34 = v33;
      if (!v33)
      {
        v7 = 0;
        goto LABEL_63;
      }

      v35 = [(WTF *)v33 bytes];
      v36 = [(WTF *)v34 length];
      v7 = v36;
      if (!v36)
      {
        goto LABEL_144;
      }

      if (!HIDWORD(v36))
      {
        v37 = WTF::fastMalloc(0, v36);
        v34 = v37;
        v38 = 0;
        do
        {
          *(v38 + v37) = *(v38 + v35);
          v38 = (v38 + 1);
        }

        while (v7 != v38);
        goto LABEL_63;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DE0FD98);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v15 = v69[0];
  if (v4)
  {
LABEL_86:
  }

LABEL_87:
  if (v3)
  {
  }

  v16 = 24;
  v17 = 1;
LABEL_90:
  if (v9)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
  }

LABEL_92:
  if (v77 == 1)
  {
    if (v76 == 1)
    {
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(&v75);
    }

    v42 = v72;
    v72 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v14);
    }
  }

  if (v17)
  {
    *a1 = v16;
    *(a1 + 8) = v15;
    goto LABEL_100;
  }

LABEL_101:
  WebCore::AuthenticatorResponse::setExtensions();
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_102:
  if (v61 == 1 && v60 == 1)
  {
    v43 = v59;
    v59 = 0;
    if (v43)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v43);
    }

    v44 = v58;
    v58 = 0;
    if (v44)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v44);
    }
  }

  if (v57 == 1)
  {
    v45 = v55;
    v55 = 0;
    if (v45)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v45);
    }
  }
}

void sub_19DE0FDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::DeferrableRefCountedBase *a12, uint64_t a13, char a14, uint64_t a15, WTF::DeferrableRefCountedBase *a16, WTF::DeferrableRefCountedBase *a17, char a18, int a19, __int16 a20, char a21, char a22, WTF *a23, int a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, WTF *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, WTF::StringImpl *a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, int a46, __int16 a47, char a48, char a49)
{
  cbor::CBORValue::~CBORValue(&a28);
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(&a32, a33);
  if (a39 == 1)
  {
    cbor::CBORValue::~CBORValue(&a35);
  }

  if (v52)
  {
  }

  if (v51)
  {
  }

  if (v50)
  {
  }

  if (v49)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v49);
  }

  if (a47 == 1)
  {
    if (a45 == 1)
    {
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(&a43);
    }

    v55 = a41;
    a41 = 0;
    if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v54);
    }
  }

  if (a20 == 1 && a18 == 1)
  {
    if (a17)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a17);
    }

    if (a16)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a16);
    }
  }

  if (a14 == 1)
  {
    if (a12)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(a12);
    }
  }

  _Unwind_Resume(a1);
}

BOOL WebKit::LocalAuthenticator::validateUserVerification(WebKit *a1, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v3 = *(a1 + 3);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          (**v4)(v4);
          (*(*v4 + 96))(v4);
          (*(*v4 + 8))(v4);
        }
      }

      return 0;
    }

    return 1;
  }

  else
  {
    v9[0] = 31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebKit::LocalAuthenticator::receiveException(a1, v9, 5);
    v7 = v10;
    v10 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = qword_1ED641530;
    result = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v9 = 0;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Could not verify user.", v9, 2u);
      return 0;
    }
  }

  return result;
}

WTF *WebKit::LocalAuthenticator::finishMakeCredential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a4 + 16) == 1)
  {

    return WebKit::LocalAuthenticator::receiveException(a1, a4, 5);
  }

  if (*(a1 + 336))
  {
    mpark::throw_bad_variant_access(a1);
  }

  WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(&v55, (a1 + 48));
  if (*(a1 + 860))
  {
    v6 = 0;
    v51 = *MEMORY[0x1E697AFF8];
    v50 = *MEMORY[0x1E697B020];
    v7 = *MEMORY[0x1E697AC38];
    v49 = *MEMORY[0x1E697AEB0];
    v48 = *MEMORY[0x1E697AEB8];
    v47 = *MEMORY[0x1E697B390];
    v52 = *MEMORY[0x1E697AC40];
    while (1)
    {
      v8 = *(a1 + 848);
      v9 = *(*(v8 + 8 * v6) + 136);
      if (v9)
      {
        *v9 += 2;
      }

      v10 = JSC::ArrayBuffer::span(v9);
      v12 = v11;
      LOBYTE(v63) = 0;
      LOBYTE(v64) = -1;
      v13 = v59;
      if (v59 != 255)
      {
        v14 = v58;
        if (v58)
        {
          if (v59)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          *v58 += v15;
        }

        v63 = v14;
        LOBYTE(v64) = v13;
      }

      v16 = WebCore::BufferSource::span(&v63);
      if (v12 != v17)
      {
        mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(&v63);
LABEL_19:
        v20 = 0;
        if (!v9)
        {
          goto LABEL_21;
        }

LABEL_20:
        WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v9);
        goto LABEL_21;
      }

      v18 = memcmp(v10, v16, v12);
      v19 = mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::~copy_constructor(&v63);
      if (v18)
      {
        goto LABEL_19;
      }

      shouldUseAlternateKeychainAttribute = WebKit::shouldUseAlternateKeychainAttribute(v19);
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v63 = v50;
      v62[0] = v51;
      v62[1] = v7;
      v23 = JSC::ArrayBuffer::span(*(*(v8 + 8 * v6) + 16));
      v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v23 length:v24];
      v64 = v25;
      v65 = v48;
      v62[2] = v49;
      v62[3] = v47;
      v66 = MEMORY[0x1E695E118];
      [v22 setDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v63, v62, 4)}];
      if (v25)
      {
      }

      if (shouldUseAlternateKeychainAttribute)
      {
        v26 = v7;
      }

      else
      {
        v26 = v52;
      }

      v27 = JSC::ArrayBuffer::span(*(*(v8 + 8 * v6) + 16));
      v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v27 length:v28];
      [v22 setObject:v29 forKey:v26];
      if (v29)
      {
      }

      v30 = SecItemDelete(v22);
      if (v30 == -25300)
      {
        v31 = shouldUseAlternateKeychainAttribute;
      }

      else
      {
        v31 = 0;
      }

      if (v31 == 1)
      {
        [v22 removeObjectForKey:v7];
        v32 = JSC::ArrayBuffer::span(*(*(v8 + 8 * v6) + 16));
        v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v32 length:v33];
        [v22 setObject:v34 forKey:v52];
        if (v34)
        {
        }

        v30 = SecItemDelete(v22);
      }

      if (v30 == -25300)
      {
        break;
      }

      if (!v30)
      {
        break;
      }

      v35 = qword_1ED641530;
      if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
      {
        break;
      }

      *buf = 67109120;
      v61 = v30;
      _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Couldn't delete older credential: %d", buf, 8u);
      if (v22)
      {
        goto LABEL_42;
      }

LABEL_43:
      v20 = 1;
      if (v9)
      {
        goto LABEL_20;
      }

LABEL_21:
      if ((v20 & 1) == 0 && ++v6 < *(a1 + 860))
      {
        continue;
      }

      goto LABEL_48;
    }

    if (!v22)
    {
      goto LABEL_43;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_48:
  WebCore::PublicKeyCredentialCreationOptions::~PublicKeyCredentialCreationOptions(&v55);
  LOWORD(v62[0]) = 773;
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v55, v62, 2);
  WebCore::AuthenticatorAttestationResponse::create();
  v37 = v55;
  if (v55)
  {
    v55 = 0;
    LODWORD(v56) = 0;
    WTF::fastFree(v37, v36);
  }

  v38 = v63;
  ++*(v63 + 2);
  v53 = v38;
  v54 = 0;
  WebKit::LocalAuthenticator::processClientExtensions(&v55, a1, &v53);
  v40 = v57;
  if (*(a4 + 16) != v57)
  {
    if (!*(a4 + 16))
    {
      *a4 = v55;
      v44 = v56;
      v56 = 0;
      *(a4 + 8) = v44;
      *(a4 + 16) = 1;
      if (!v40)
      {
        goto LABEL_63;
      }

LABEL_59:
      v43 = v56;
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v39);
      }

      goto LABEL_63;
    }

    std::__optional_destruct_base<WebCore::ExceptionData,false>::reset[abi:sn200100](a4, v39);
LABEL_58:
    if (!v40)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  if (!*(a4 + 16))
  {
    goto LABEL_58;
  }

  *a4 = v55;
  v41 = v56;
  v56 = 0;
  v42 = *(a4 + 8);
  *(a4 + 8) = v41;
  if (!v42 || atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_58;
  }

  WTF::StringImpl::destroy(v42, v39);
  if (v40)
  {
    goto LABEL_59;
  }

LABEL_63:
  mpark::variant<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::~variant(&v53);
  if (*(a4 + 16) == 1)
  {
    WebKit::LocalAuthenticator::receiveException(a1, a4, 5);
  }

  else
  {
    v45 = v63;
    v63 = 0;
    v55 = v45;
    v57 = 0;
    WebKit::Authenticator::receiveRespond(a1, &v55);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(&v55);
  }

  result = v63;
  v63 = 0;
  if (result)
  {
    if (*(result + 2) == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --*(result + 2);
    }
  }

  return result;
}

void sub_19DE10730(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, WTF *a23, int a24)
{
  v26 = *(v24 - 128);
  *(v24 - 128) = 0;
  if (v26)
  {
    if (v26[2] == 1)
    {
      (*(*v26 + 8))(v26, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      --v26[2];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::variant<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::~variant(uint64_t a1)
{
  if (*(a1 + 8) != 255)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      if (v2[2] == 1)
      {
        (*(*v2 + 8))(v2);
      }

      else
      {
        --v2[2];
      }
    }
  }

  *(a1 + 8) = -1;
  return a1;
}

WTF::StringImpl **WebKit::LocalAuthenticator::getAssertion(WebKit::LocalAuthenticator *this)
{
  *(this + 208) = 1;
  if (*(this + 336) != 1)
  {
    mpark::throw_bad_variant_access(this);
  }

  WebKit::LocalAuthenticatorInternal::produceHashSet(v50, *(this + 10), *(this + 23));
  if (!*(this + 23) || v50[0] && *(v50[0] - 3))
  {
    WebKit::LocalAuthenticator::getExistingCredentials(v47, *(this + 105), this + 72);
    if (v49)
    {
      v4 = *(this + 215);
      if (v4)
      {
        WTF::VectorDestructor<true,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::destruct(*(this + 106), (*(this + 106) + 8 * v4));
      }

      v5 = *(this + 106);
      if (v5)
      {
        *(this + 106) = 0;
        *(this + 214) = 0;
        WTF::fastFree(v5, v2);
      }

      *(this + 106) = *v47;
      v6 = HIDWORD(v48);
      *(this + 214) = v48;
      *v47 = 0;
      v48 = 0;
      *(this + 215) = v6;
      *buf = 0;
      v46 = 0;
      if (v6)
      {
        v7 = (v6 >> 29);
        if (v7)
        {
          __break(0xC471u);
LABEL_82:
          JUMPOUT(0x19DE10EB4);
        }

        LODWORD(v46) = v6;
        *buf = WTF::fastMalloc(v7, (8 * v6));
        v8 = *(this + 215);
        if (v8)
        {
          v9 = *(this + 106);
          v10 = &v9[v8];
          while (!v50[0] || !*(v50[0] - 3))
          {
            v15 = *v9;
            ++*(*v9 + 2);
LABEL_29:
            v43 = v15;
            LODWORD(v16) = HIDWORD(v46);
            if (HIDWORD(v46) == v46)
            {
              v17 = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(buf, HIDWORD(v46) + 1, &v43);
              v16 = HIDWORD(v46);
              v18 = *buf;
              v19 = *v17;
              *v17 = 0;
              *(v18 + v16) = v19;
            }

            else
            {
              v43 = 0;
              *(*buf + 8 * HIDWORD(v46)) = v15;
            }

            HIDWORD(v46) = v16 + 1;
            v20 = v43;
            v43 = 0;
            if (v20)
            {
              if (*(v20 + 2) == 1)
              {
                (*(*v20 + 8))(v20);
              }

              else
              {
                --*(v20 + 2);
              }
            }

LABEL_35:
            if (++v9 == v10)
            {
              goto LABEL_56;
            }
          }

          v11 = *(*v9 + 2);
          if (v11)
          {
            *v11 += 2;
          }

          JSC::ArrayBuffer::span(v11);
          WTF::base64EncodeToString();
          v13 = v50[0];
          v14 = v43;
          if (v50[0])
          {
            if (v43 == -1)
            {
              __break(0xC471u);
              goto LABEL_82;
            }

            if (!v43)
            {
              __break(0xC471u);
              JUMPOUT(0x19DE10ED4);
            }

            v21 = *(v50[0] - 2);
            v22 = *(v43 + 4);
            if (v22 < 0x100)
            {
              v23 = WTF::StringImpl::hashSlowCase(v43);
            }

            else
            {
              v23 = v22 >> 8;
            }

            for (i = 0; ; v23 = i + v25)
            {
              v25 = v23 & v21;
              v26 = v13[v23 & v21];
              if (v26 != -1)
              {
                if (!v26)
                {
                  LODWORD(v13) = 0;
                  goto LABEL_49;
                }

                if (WTF::equal(v26, v43, v3))
                {
                  break;
                }
              }

              ++i;
            }

            LODWORD(v13) = 1;
LABEL_49:
            v14 = v43;
          }

          v43 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v12);
            if (v13)
            {
              goto LABEL_22;
            }
          }

          else if (v13)
          {
LABEL_22:
            v15 = *v9;
            ++*(*v9 + 2);
            goto LABEL_26;
          }

          v15 = 0;
LABEL_26:
          if (v11)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v11);
          }

          if (!v15)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }
      }

LABEL_56:
      WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(buf, HIDWORD(v46), v3);
      if (HIDWORD(v46))
      {
        (*(**(this + 105) + 48))(*(this + 105), buf);
        v31 = *(this + 3);
        if (v31)
        {
          v32 = *(v31 + 8);
          if (v32)
          {
            (**v32)(v32);
            WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 1, this);
            v33 = *(this + 1);
            v34 = WTF::fastMalloc(atomic_fetch_add(v33, 1u), 0x10);
            *v34 = &unk_1F110B9C0;
            v34[1] = v33;
            v43 = v34;
            (*(*v32 + 72))(v32, buf, 0, &v43);
            v35 = v43;
            v43 = 0;
            if (v35)
            {
              (*(*v35 + 8))(v35);
            }

            (*(*v32 + 8))(v32);
          }
        }
      }

      else
      {
        LOBYTE(v43) = 31;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v44 = v50[1];
        WebKit::LocalAuthenticator::receiveException(this, &v43, 7);
        v40 = v44;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v39);
        }

        v41 = qword_1ED641530;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v43) = 0;
          _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "No matched credentials are found in the platform attached authenticator.", &v43, 2u);
        }
      }

      WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf);
    }

    else
    {
      buf[0] = 24;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v46 = v43;
      WebKit::LocalAuthenticator::receiveException(this, buf, 5);
      v28 = v46;
      if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v27);
      }

      v29 = qword_1ED641530;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Couldn't get existing credentials", buf, 2u);
      }
    }

    if (v49 == 1)
    {
      WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47);
    }
  }

  else
  {
    v47[0] = 31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v48 = *buf;
    WebKit::LocalAuthenticator::receiveException(this, v47, 7);
    v37 = v48;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v36);
    }

    v38 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      _os_log_error_impl(&dword_19D52D000, v38, OS_LOG_TYPE_ERROR, "No matched credentials are found in the platform attached authenticator.", v47, 2u);
    }
  }

  result = v50[0];
  if (v50[0])
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v50[0], v30);
  }

  return result;
}

void sub_19DE10EE0(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, uint64_t a16, WTF::StringImpl **a17)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (v17)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v17);
  }

  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11);
  if (a15 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13);
  }

  if (a17)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a17, v19);
  }

  _Unwind_Resume(a1);
}

void WebKit::LocalConnection::~LocalConnection(id *this)
{
  *this = &unk_1F110B6C8;
  [this[2] invalidate];
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::LocalConnection::~LocalConnection(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19DE1115C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
  }

  if (*(v1 + 8) == 1)
  {
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

WTF::StringImpl *WebKit::LocalConnection::verifyUser(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v10 = WebCore::genericTouchIDPromptTitle(&v30, a1);
  v11 = [objc_alloc(WebKit::getLAContextClass[0](v10)) init];
  v12 = a1[2];
  a1[2] = v11;
  if (v12)
  {
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a1[2] biometryType] == 1)
  {
    v14 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v29, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v29 = &stru_1F1147748;
      v16 = &stru_1F1147748;
    }

    [v13 setObject:v29 forKey:{&unk_1F11848F0, v29}];
    v17 = v29;
    v29 = 0;
    if (v17)
    {
    }

    [v13 setObject:MEMORY[0x1E695E110] forKey:{&unk_1F1184908, v29}];
  }

  v18 = a1[2];
  if (v18)
  {
    v19 = v18;
  }

  v20 = *a6;
  *a6 = 0;
  v21 = malloc_type_malloc(0x30uLL, 0x10E00409BB9573DuLL);
  *v21 = MEMORY[0x1E69E9818];
  *(v21 + 1) = 50331650;
  *(v21 + 2) = WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0>(WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0)::{lambda(void *,NSDictionary *,NSError *)#1}::__invoke;
  *(v21 + 3) = &WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0>(WebKit::LocalConnection::verifyUser(WTF::String const&,WebCore::ClientDataType,__SecAccessControl *,WebCore::UserVerificationRequirement,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification,LAContext *)> &&)::$_0)::descriptor;
  *(v21 + 4) = v18;
  *(v21 + 5) = v20;
  v22 = WebKit::getASCWebKitSPISupportClass[0](v21);
  if (v22 && [WebKit::getASCWebKitSPISupportClass[0](v22) shouldUseAlternateCredentialStore])
  {
    v29 = 0;
    v23 = [a1[2] canEvaluatePolicy:1 error:&v29];
    v24 = [(__CFString *)v29 code];
    if (a5)
    {
      v25 = v24 == -8;
    }

    else
    {
      v25 = 1;
    }

    v26 = v25;
    if ((v26 | v23))
    {
      [a1[2] evaluatePolicy:2 options:v13 reply:v21];
    }

    else
    {
      (*(v21 + 2))(v21, &unk_1F1184E40, 0);
    }
  }

  else
  {
    [a1[2] evaluateAccessControl:a4 operation:3 options:v13 reply:v21];
  }

  _Block_release(v21);
  if (v13)
  {
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v27);
    }
  }

  return result;
}

void sub_19DE11430(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10)
  {
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LocalConnection::verifyUser(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:MEMORY[0x1E695E118] forKey:&unk_1F1184920];
  v7 = *a4;
  *a4 = 0;
  v8 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v8 = MEMORY[0x1E69E9818];
  *(v8 + 1) = 50331650;
  *(v8 + 2) = WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0>(WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0)::{lambda(void *,NSDictionary *,NSError *)#1}::__invoke;
  *(v8 + 3) = &WTF::BlockPtr<void ()(NSDictionary *,NSError *)>::fromCallable<WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0>(WebKit::LocalConnection::verifyUser(__SecAccessControl *,LAContext *,WTF::CompletionHandler<void ()(WebKit::LocalConnection::UserVerification)> &&)::$_0)::descriptor;
  *(v8 + 4) = v7;
  v9 = WebKit::getASCWebKitSPISupportClass[0](v8);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [WebKit::getASCWebKitSPISupportClass[0](v9) shouldUseAlternateCredentialStore] ^ 1;
  if (a3)
  {
    LOBYTE(v10) = 1;
  }

  if (v10)
  {
LABEL_6:
    [a3 evaluateAccessControl:a2 operation:3 options:v11 reply:v8];
  }

  else
  {
    (*(v8 + 2))(v8, &unk_1F1184E68, 0);
  }

  _Block_release(v8);
  if (v11)
  {
  }
}

void sub_19DE11664(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  if (v10)
  {
    (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LocalConnection::createCredentialPrivateKey(LAContext *a1@<X1>, __SecAccessControl *a2@<X2>, atomic_uint **a3@<X3>, NSData *a4@<X4>, SecKeyRef *a5@<X8>)
{
  error[4] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E697AD18];
  v44[0] = *MEMORY[0x1E697ABC8];
  v44[1] = v9;
  v10 = MEMORY[0x1E695E118];
  v45[0] = a2;
  v45[1] = MEMORY[0x1E695E118];
  v11 = *MEMORY[0x1E697ABD0];
  v45[2] = @"com.apple.webkit.webauthn";
  v12 = *MEMORY[0x1E697ADC8];
  v44[2] = v11;
  v44[3] = v12;
  v13 = *a3;
  v39 = v12;
  if (*a3)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](error, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }
  }

  else
  {
    error[0] = &stru_1F1147748;
    v15 = &stru_1F1147748;
  }

  v38 = *MEMORY[0x1E697AC48];
  v44[4] = *MEMORY[0x1E697AC48];
  v45[3] = error[0];
  v45[4] = a4;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:5];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  v19 = error[0];
  error[0] = 0;
  if (v19)
  {
  }

  v40 = a5;
  v35 = a4;
  v36 = v11;
  v37 = a3;
  if (a1)
  {
    v20 = [v17 mutableCopy];
    [v20 setObject:a1 forKeyedSubscript:*MEMORY[0x1E697B378]];
    v21 = v9;
    if (v17)
    {
    }
  }

  else
  {
    v21 = v9;
    v20 = v17;
  }

  v22 = *MEMORY[0x1E697AEE0];
  v23 = *MEMORY[0x1E697AD68];
  v42[0] = *MEMORY[0x1E697AEC8];
  v42[1] = v23;
  v24 = *MEMORY[0x1E697AD78];
  v43[0] = v22;
  v43[1] = v24;
  v25 = *MEMORY[0x1E697AD50];
  v26 = *MEMORY[0x1E697B2D0];
  v42[2] = *MEMORY[0x1E697AD50];
  v42[3] = v26;
  v43[2] = &unk_1F1184938;
  v43[3] = v20;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v28 = WebKit::getASCWebKitSPISupportClass[0](v27);
  if (v28 && [WebKit::getASCWebKitSPISupportClass[0](v28) shouldUseAlternateCredentialStore])
  {
    v48[0] = *MEMORY[0x1E697AEB0];
    v48[1] = v23;
    error[0] = v10;
    error[1] = v24;
    error[2] = &unk_1F1184938;
    v48[2] = v25;
    v48[3] = v26;
    v46[0] = v21;
    v46[1] = v36;
    v47[0] = v10;
    v47[1] = @"com.apple.webkit.webauthn";
    v46[2] = v39;
    v29 = *v37;
    if (*v37)
    {
      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v41, v29);
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v30);
      }
    }

    else
    {
      v41 = &stru_1F1147748;
      v31 = &stru_1F1147748;
    }

    v46[3] = v38;
    v47[2] = v41;
    v47[3] = v35;
    error[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:error forKeys:v48 count:4];
    v32 = v41;
    v41 = 0;
    if (v32)
    {
    }
  }

  error[0] = 0;
  RandomKey = SecKeyCreateRandomKey(v27, error);
  v34 = error[0];
  if (error[0])
  {
    *v40 = 0;
    CFRelease(v34);
    if (RandomKey)
    {
      CFRelease(RandomKey);
    }
  }

  else
  {
    *v40 = RandomKey;
  }

  if (v20)
  {
  }
}