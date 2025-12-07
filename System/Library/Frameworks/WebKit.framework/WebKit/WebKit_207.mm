atomic_uint **WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<void,WebCore::ExceptionData,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref(atomic_ullong *result, unint64_t a2)
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
        v5 = WTF::fastMalloc(3, 0x10);
        *v5 = &unk_1F112F470;
        v5[1] = v2;
        v7 = v5;
        WTF::ensureOnMainThread();
        result = v7;
        if (v7)
        {
          return (*(*v7 + 8))(v7);
        }
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>(v6, a2);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>(atomic_uchar *this, unint64_t a2)
{
  v2 = this;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this, a2);
  }

  v4 = (*(v2 + 1) - 1);
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
    v8 = v4;
    this = WTF::Lock::unlockSlow(v2);
    v4 = v8;
    if (v8)
    {
      return this;
    }
  }

  v7 = WTF::fastMalloc(v4, 0x18);
  *v7 = &unk_1F112F498;
  v7[1] = v2;
  v7[2] = v5;
  v9 = v7;
  WTF::ensureOnMainThread();
  this = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result, a2);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3, a2);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

_DWORD **WTF::Ref<WebKit::WebUserContentController,WTF::RawPtrTraits<WebKit::WebUserContentController>,WTF::DefaultRefDerefTraits<WebKit::WebUserContentController>>::~Ref(_DWORD **a1)
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

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::EstablishSWContextConnection,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F4C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::EstablishSWContextConnection,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F4C0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkConnectionToWebProcess::EstablishSWContextConnection,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::updatePreferencesStore(WebKit::WebPreferencesStore &&)::$_0,void>::~CallableWrapper(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F112F4E8;
  v3 = *(a1 + 40);
  if (v3)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v3, *(a1 + 48));
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v4, *(a1 + 24));
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 24), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::updatePreferencesStore(WebKit::WebPreferencesStore &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F4E8;
  v3 = *(this + 5);
  if (v3)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v3, *(this + 12));
  }

  v4 = *(this + 2);
  if (v4)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v4, *(this + 6));
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v5 + 24), a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::updateAppInitiatedValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::LastNavigationWasAppInitiated)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112F510;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::updateAppInitiatedValue(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::LastNavigationWasAppInitiated)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F510;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(atomic_ullong *result, unint64_t a2)
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
        v5 = WTF::fastMalloc(3, 0x10);
        *v5 = &unk_1F112F538;
        v5[1] = v2;
        v7 = v5;
        WTF::ensureOnMainThread();
        result = v7;
        if (v7)
        {
          return (*(*v7 + 8))(v7);
        }
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>(v6, a2);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>(atomic_uchar *this, unint64_t a2)
{
  v2 = this;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this, a2);
  }

  v4 = (*(v2 + 1) - 1);
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
    v8 = v4;
    this = WTF::Lock::unlockSlow(v2);
    v4 = v8;
    if (v8)
    {
      return this;
    }
  }

  v7 = WTF::fastMalloc(v4, 0x18);
  *v7 = &unk_1F112F560;
  v7[1] = v2;
  v7[2] = v5;
  v9 = v7;
  WTF::ensureOnMainThread();
  this = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result, a2);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3, a2);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::installServiceWorker(WebCore::ServiceWorkerContextData &&,WebCore::ServiceWorkerData &&,WTF::String &&,WebCore::WorkerThreadMode,WebCore::ServiceWorkerIsInspectable,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F588;
  v3 = a1[86];
  a1[86] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[80];
  a1[80] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WebCore::ServiceWorkerContextData::~ServiceWorkerContextData((a1 + 4), a2);
  v6 = a1[3];
  a1[3] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v6 + 24), v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::installServiceWorker(WebCore::ServiceWorkerContextData &&,WebCore::ServiceWorkerData &&,WTF::String &&,WebCore::WorkerThreadMode,WebCore::ServiceWorkerIsInspectable,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F588;
  v3 = a1[86];
  a1[86] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[80];
  a1[80] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WebCore::ServiceWorkerContextData::~ServiceWorkerContextData((a1 + 4), a2);
  v6 = a1[3];
  a1[3] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v6 + 24), v5);
  }

  return WTF::fastFree(a1, v5);
}

void WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::installServiceWorker(WebCore::ServiceWorkerContextData &&,WebCore::ServiceWorkerData &&,WTF::String &&,WebCore::WorkerThreadMode,WebCore::ServiceWorkerIsInspectable,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::call(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  if (*(v3 + 712))
  {
    WebCore::pageConfigurationWithEmptyClients();
    v5 = WTF::fastMalloc(v4, 0x10);
    *(v5 + 2) = 1;
    *v5 = &unk_1F1130C78;
    v3 = v26;
    v26 = v5;
    if (!v3)
    {
      goto LABEL_5;
    }

    if (*(v3 + 2) != 1)
    {
      --*(v3 + 2);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  (*(*v3 + 8))(v3, a2);
LABEL_5:
  WebKit::WebDatabaseProvider::getOrCreate(*(v2 + 112), buf);
  v6 = *buf;
  *buf = 0;
  v7 = v23;
  v23 = v6;
  if (v7)
  {
    v6 = (*(v7 + 2) - 1);
    if (*(v7 + 2) == 1)
    {
      (*(*v7 + 8))(v7);
      v7 = *buf;
      *buf = 0;
      if (!v7)
      {
        goto LABEL_6;
      }

      v6 = (*(v7 + 2) - 1);
      if (*(v7 + 2) == 1)
      {
        (*(*v7 + 8))(v7);
        goto LABEL_6;
      }
    }

    *(v7 + 2) = v6;
  }

LABEL_6:
  v8 = *(v2 + 120);
  v10 = WTF::fastMalloc(v6, 0x18);
  *(v10 + 2) = 1;
  *v10 = &unk_1F112DB08;
  v10[2] = v8;
  v11 = v22;
  v22 = v10;
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    (*(*v11 + 24))(v11);
  }

  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = WebKit::WebProcess::operator new(0x370, v9);
    v12 = WebKit::WebProcess::WebProcess(v20);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  v13 = *(v12 + 53);
  ++v13[2];
  v14 = v25;
  v25 = v13;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      --v14[2];
    }
  }

  v15 = *(v2 + 160);
  ++*(v15 + 8);
  v16 = v24;
  v24 = v15;
  if (v16)
  {
    v15 = (v16[2] - 1);
    if (v16[2] == 1)
    {
      (*(*v16 + 8))(v16);
    }

    else
    {
      v16[2] = v15;
    }
  }

  v17 = WTF::fastMalloc(v15, 0x38);
  WebKit::WebCookieJar::WebCookieJar(v17, v18);
}

uint64_t WebKit::WebCryptoClient::operator new(WebKit::WebCryptoClient *this, void *a2)
{
  if (this == 24 && WebKit::WebCryptoClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebCryptoClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebCryptoClient::operatorNewSlow(this);
  }
}

uint64_t WebCore::LibWebRTCProvider::operator new(WebCore::LibWebRTCProvider *this, void *a2)
{
  if (this == 216 && *MEMORY[0x1E69E25E0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25E0], a2);
  }

  else
  {
    return MEMORY[0x1EEE56C80]();
  }
}

void WebKit::RemoteWorkerLibWebRTCProvider::~RemoteWorkerLibWebRTCProvider(WebKit::RemoteWorkerLibWebRTCProvider *this)
{
  WebCore::LibWebRTCProvider::~LibWebRTCProvider(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::RemoteWorkerLibWebRTCProvider::createRTCDataChannelRemoteHandlerConnection@<X0>(WebKit::RemoteWorkerLibWebRTCProvider *this@<X0>, void *a2@<X8>)
{
  v3 = WebKit::RTCDataChannelRemoteManager::singleton(this);
  result = WebKit::RTCDataChannelRemoteManager::remoteHandlerConnection(v3);
  atomic_fetch_add((result + 8), 1u);
  *a2 = result;
  return result;
}

uint64_t WebCore::LibWebRTCProvider::isSupportingVP9HardwareDecoder(WebCore::LibWebRTCProvider *this)
{
  if (*(this + 210) == 1)
  {
    v1 = *(this + 209);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t WebKit::WebStorageProvider::operator new(WebKit::WebStorageProvider *this, void *a2)
{
  if (this == 32 && WebKit::WebStorageProvider::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebStorageProvider::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

void WebKit::WebStorageProvider::~WebStorageProvider(WebKit::WebStorageProvider *this, WTF::StringImpl *a2)
{
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
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4, a2);
    }
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

uint64_t WebKit::WebStorageProvider::storageConnection@<X0>(WebKit::WebStorageProvider *this@<X0>, uint64_t *a3@<X8>)
{
  result = *(this + 1);
  if (!result)
  {
    v5 = WTF::fastMalloc(a3, 0x10);
    *(v5 + 2) = 1;
    *v5 = &unk_1F1132B88;
    v6 = *(this + 1);
    *(this + 1) = v5;
    if (v6)
    {
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        (*(*v6 + 8))(v6);
      }
    }

    return *(this + 1);
  }

  return result;
}

WTF::StringImpl *WebKit::WebStorageProvider::ensureMediaKeysStorageDirectoryForOrigin@<X0>(WTF::StringImpl *this@<X0>, atomic_uint **a2@<X1>, atomic_uint **a3@<X8>)
{
  v4 = *(this + 2);
  if (v4 && *(v4 + 4))
  {
    WebCore::StorageUtilities::encodeSecurityOriginForFileName();
    WTF::FileSystemImpl::pathByAppendingComponent();
    WTF::FileSystemImpl::pathByAppendingComponent();
    LOBYTE(v13[0]) = 0;
    v14 = -1;
    LODWORD(v6) = *(a2 + 24);
    if (*(a2 + 24))
    {
      if (v6 == 255)
      {
        LOBYTE(v15) = 0;
        goto LABEL_15;
      }

      *v13 = *a2;
    }

    else
    {
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v13[0] = v7;
      v6 = a2[1];
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      v13[1] = v6;
      LODWORD(v6) = *(a2 + 24);
    }

    v14 = v6;
    LOBYTE(v15) = 0;
    v16 = -1;
    if (v6)
    {
      if (v6 == 255)
      {
        goto LABEL_16;
      }

      v15 = *a2;
    }

    else
    {
      v8 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      }

      *&v15 = v8;
      v6 = a2[1];
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      *(&v15 + 1) = v6;
      LOBYTE(v6) = *(a2 + 24);
    }

LABEL_15:
    v16 = v6;
LABEL_16:
    WebCore::StorageUtilities::writeOriginToFile();
    if (!v16)
    {
      if (*(&v15 + 1) && atomic_fetch_add_explicit(*(&v15 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(*(&v15 + 1), v9);
      }

      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v9);
      }
    }

    if (!v14)
    {
      if (v13[1] && atomic_fetch_add_explicit(v13[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13[1], v9);
      }

      if (v13[0] && atomic_fetch_add_explicit(v13[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13[0], v9);
      }
    }

    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    this = v12;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v12, v9);
      }
    }

    return this;
  }

  v10 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *a3 = v10;
  return this;
}

WTF::StringImpl *WTF::Vector<WebCore::UserContentURLPattern,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(WTF::StringImpl *result, WTF::StringImpl *a2)
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
      v5 = 32 * v2 - 32 * a2;
      v6 = (*result + 32 * a2 + 16);
      do
      {
        v7 = *v6;
        *v6 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v6 - 1);
        *(v6 - 1) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }

        result = *(v6 - 2);
        *(v6 - 2) = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }
        }

        v6 += 4;
        v5 -= 32;
      }

      while (v5);
    }

    *(v4 + 3) = v3;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit29WebSWContextManagerConnection20installServiceWorkerEON7WebCore24ServiceWorkerContextDataEONS4_17ServiceWorkerDataEONS_6StringENS4_16WorkerThreadModeENS4_26ServiceWorkerIsInspectableENS_9OptionSetINS4_26AdvancedPrivacyProtectionsEEEEN3__0clEvEUlRT_RT0_E_NS_9UniqueRefINS4_22LocalFrameLoaderClientEEEJRNS4_10LocalFrameERNS4_11FrameLoaderEEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F5B0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit29WebSWContextManagerConnection20installServiceWorkerEON7WebCore24ServiceWorkerContextDataEONS4_17ServiceWorkerDataEONS_6StringENS4_16WorkerThreadModeENS4_26ServiceWorkerIsInspectableENS_9OptionSetINS4_26AdvancedPrivacyProtectionsEEEEN3__0clEvEUlRT_RT0_E_NS_9UniqueRefINS4_22LocalFrameLoaderClientEEEJRNS4_10LocalFrameERNS4_11FrameLoaderEEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112F5B0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **_ZN3WTF6Detail15CallableWrapperIZZN6WebKit29WebSWContextManagerConnection20installServiceWorkerEON7WebCore24ServiceWorkerContextDataEONS4_17ServiceWorkerDataEONS_6StringENS4_16WorkerThreadModeENS4_26ServiceWorkerIsInspectableENS_9OptionSetINS4_26AdvancedPrivacyProtectionsEEEEN3__0clEvEUlRT_RT0_E_NS_9UniqueRefINS4_22LocalFrameLoaderClientEEEJRNS4_10LocalFrameERNS4_11FrameLoaderEEE4callESQ_SS_@<X0>(uint64_t a1@<X0>, WebCore::FrameLoader *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = WTF::fastMalloc(a4, 0x50);
  WebKit::RemoteWorkerFrameLoaderClient::RemoteWorkerFrameLoaderClient(v7, a3, *(a1 + 16), *(a1 + 24), (a1 + 32));
  if (*(a1 + 80) == 1)
  {
    if (*(v7 + 64) == 1)
    {
      v8 = *(a1 + 48);
      v7[6] = *(a1 + 64);
      *(v7 + 2) = v8;
    }

    else
    {
      v9 = *(a1 + 64);
      *(v7 + 2) = *(a1 + 48);
      *(v7 + 3) = v9;
      *(v7 + 64) = 1;
    }
  }

  v11 = 0;
  std::unique_ptr<WebKit::RemoteWorkerFrameLoaderClient>::reset[abi:sn200100](&v11, 0);
  v11 = 0;
  *a4 = v7;
  return std::unique_ptr<WebKit::RemoteWorkerFrameLoaderClient>::reset[abi:sn200100](&v11, 0);
}

uint64_t WebKit::WebNotificationClient::operator new(WebKit::WebNotificationClient *this, void *a2)
{
  if (this == 24 && WebKit::WebNotificationClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebNotificationClient::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebNotificationClient::operatorNewSlow(this);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::installServiceWorker(WebCore::ServiceWorkerContextData &&,WebCore::ServiceWorkerData &&,WTF::String &&,WebCore::WorkerThreadMode,WebCore::ServiceWorkerIsInspectable,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F5D8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::installServiceWorker(WebCore::ServiceWorkerContextData &&,WebCore::ServiceWorkerData &&,WTF::String &&,WebCore::WorkerThreadMode,WebCore::ServiceWorkerIsInspectable,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112F5D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::installServiceWorker(WebCore::ServiceWorkerContextData &&,WebCore::ServiceWorkerData &&,WTF::String &&,WebCore::WorkerThreadMode,WebCore::ServiceWorkerIsInspectable,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::operator()(void)::{lambda(void)#1},void>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v6 = WTF::fastMalloc(a3, 0x10);
  *v6 = &unk_1F112F600;
  v6[1] = v4;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, v5);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v7);
  }

  v9 = *(v7 + 3);
  v8 = (v7 + 24);
  v10 = *(a1 + 56);
  v11 = (*(v9 + 56))(v8);
  v13 = IPC::Encoder::operator new(0x238, v12);
  *v13 = 2903;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = v11;
  *(v13 + 68) = 0;
  *(v13 + 70) = 0;
  *(v13 + 69) = 0;
  IPC::Encoder::encodeHeader(v13);
  v24 = v13;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, *(a1 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v13, (a1 + 16));
  v14 = IPC::Encoder::grow(v13, 1uLL, 1);
  if (!v16 || (*v14 = v10, v17 = WTF::fastMalloc(v15, 0x10), *v17 = &unk_1F112F628, v17[1] = v6, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E358DB0);
  }

  v23[0] = v17;
  v23[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*v8 + 40))(v8, &v24, v23, 0);
  v19 = v23[0];
  v23[0] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v18);
    return bmalloc::api::tzoneFree(v21, v22);
  }

  return result;
}

WebCore::SWContextManager *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::installServiceWorker(WebCore::ServiceWorkerContextData &&,WebCore::ServiceWorkerData &&,WTF::String &&,WebCore::WorkerThreadMode,WebCore::ServiceWorkerIsInspectable,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0::operator()(void)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#1},void,BOOL>::call(WebCore::SWContextManager *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    WebCore::SWContextManager::singleton(result);

    return WebCore::SWContextManager::stopRunningDebuggerTasksOnServiceWorker();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessProxy::CreateServiceWorkerDebuggable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F628;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessProxy::CreateServiceWorkerDebuggable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F628;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessProxy::CreateServiceWorkerDebuggable,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
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

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::setUserAgent(WTF::String &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F650;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 24), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::setUserAgent(WTF::String &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112F650;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 24), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(atomic_ullong *result, void *a2)
{
  v2 = result;
  *a2 = -1;
  v3 = a2[2];
  a2[2] = 0;
  if (v3)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v3 + 8), a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash( v2,  v6 >> 1,  0);
  }

  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
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

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *a1 = (v8 + 4);
  v8[2] = v3 - 1;
  v8[3] = v3;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = v6;
    do
    {
      v13 = (v5 + 24 * v10);
      v14 = *v13;
      if (*v13 != -1)
      {
        v9 = v13[1];
        if (v14 | v9)
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

          v18 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v14, v9);
          v19 = 0;
          do
          {
            v20 = v16 + 24 * (v18 & v17);
            v18 = ++v19 + (v18 & v17);
          }

          while (*v20 != 0);
          v21 = *(v20 + 16);
          *(v20 + 16) = 0;
          if (v21)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v21 + 8), v9);
          }

          *v20 = *v13;
          v22 = v13[2];
          v13[2] = 0;
          *(v20 + 16) = v22;
          v23 = v13[2];
          v13[2] = 0;
          if (v23)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v23 + 8), v9);
          }

          if (v13 == a3)
          {
            v11 = v20;
          }
        }

        else
        {
          v15 = v13[2];
          v13[2] = 0;
          if (v15)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v15 + 8), v9);
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

uint64_t *WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  if (*a2 == 0 || v3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E3593A8);
  }

  v5 = *(v2 - 8);
  v6 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(*a2, a2[1]) & v5;
  result = (v2 + 24 * v6);
  v8 = *result;
  v9 = result[1];
  if (*result != v3 || v9 != v4)
  {
    v11 = 1;
    while (v8 | v9)
    {
      v6 = (v6 + v11) & v5;
      result = (v2 + 24 * v6);
      v8 = *result;
      v9 = result[1];
      ++v11;
      if (*result == v3 && v9 == v4)
      {
        return result;
      }
    }

    return (v2 + 24 * *(v2 - 4));
  }

  return result;
}

atomic_ullong *WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(atomic_ullong *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = (v3 + 24 * *(v3 - 4));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return result;
  }

  v5 = a2[2];
  if (v5)
  {
    a2[2] = 0;
    v3 = *result;
  }

  *a3 = v5;
  if (v3)
  {
    v6 = (v3 + 24 * *(v3 - 4));
    if (v6 == a2)
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

    v6 = 0;
  }

  if (v6 != a2)
  {
    return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove( result,  a2);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::ServiceWorkerFetchTask::DidNotHandle>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1722;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::startFetch(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::FetchOptions &&,IPC::FormDataReference &&,WTF::String &&,BOOL,IPC::FormDataReference &,IPC::FormDataReference &)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112F678;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::startFetch(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::FetchOptions &&,IPC::FormDataReference &&,WTF::String &&,BOOL,IPC::FormDataReference &,IPC::FormDataReference &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F678;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash( a1,  v5,  a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F6A0;
  WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_1::~$_1((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_1,void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F6A0;
  WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_1::~$_1(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_1,void>::call(uint64_t a1)
{
  WebCore::SWContextManager::singleton(a1);
  v3 = WTF::fastMalloc(v2, 0x18);
  *v3 = &unk_1F112F6C8;
  v4 = *(a1 + 184);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(v3 + 1) = v4;
  v6 = v3;
  WebCore::SWContextManager::firePushEvent();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_0,void,BOOL,std::optional<WebCore::NotificationPayload> &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F6C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_0,void,BOOL,std::optional<WebCore::NotificationPayload> &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F6C8;
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
    (*(*v4 + 40))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_0,void,BOOL,std::optional<WebCore::NotificationPayload> &>::call(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  WTF::CrossThreadCopierBase<false,false,std::optional<WebCore::NotificationPayload>>::copy<std::optional<WebCore::NotificationPayload>>(v18, a3);
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  v27 = v5;
  v6 = WTF::fastMalloc(v5, 0xA8);
  *v6 = &unk_1F112F6F0;
  *(v6 + 8) = a2;
  std::optional<WebCore::NotificationPayload>::optional[abi:sn200100](v6 + 16, v18);
  v7 = v27;
  v27 = 0;
  v6[20] = v7;
  v28 = v6;
  (*(*v4 + 48))(v4, &v28);
  v9 = v28;
  v28 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v26 == 1)
  {
    if (v25 == 1)
    {
      v11 = v24;
      v24 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }

      v12 = v23;
      v23 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
      }

      v13 = v22;
      v22 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      v14 = v21;
      v21 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v8);
      }

      v15 = v20;
      v20 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v8);
      }
    }

    v16 = v19;
    v19 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v8);
    }

    result = v18[0];
    v18[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_0::operator()(BOOL,std::optional<WebCore::NotificationPayload> &)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F6F0;
  v3 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(a1 + 152) == 1)
  {
    std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(a1 + 80, a2);
    v5 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_0::operator()(BOOL,std::optional<WebCore::NotificationPayload> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112F6F0;
  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(this + 152) == 1)
  {
    std::__optional_storage_base<WebCore::NotificationOptionsPayload,false>::~__optional_storage_base(this + 80, a2);
    v4 = *(this + 7);
    *(this + 7) = 0;
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
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::firePushEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<std::span<unsigned char const,18446744073709551615ul>>,std::optional<WebCore::NotificationPayload> &&,WTF::CompletionHandler<void ()(BOOL,std::optional<WebCore::NotificationPayload> &)> &&)::$_0::operator()(BOOL,std::optional<WebCore::NotificationPayload> &)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 160);
  *(a1 + 160) = 0;
  (*(*v2 + 16))(v2, v1, a1 + 16);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112F718;
  v3 = a1[38];
  a1[38] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[37];
  a1[37] = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  WebCore::NotificationData::~NotificationData((a1 + 4), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112F718;
  v3 = a1[38];
  a1[38] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[37];
  a1[37] = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  WebCore::NotificationData::~NotificationData((a1 + 4), a2);

  return WTF::fastFree(a1, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::call(uint64_t a1)
{
  WebCore::SWContextManager::singleton(a1);
  v3 = WTF::fastMalloc(v2, 0x18);
  *v3 = &unk_1F112F740;
  v4 = *(a1 + 296);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(v3 + 1) = v4;
  v6 = v3;
  WebCore::SWContextManager::fireNotificationEvent();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F740;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F740;
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
    (*(*v4 + 40))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  v6 = WTF::fastMalloc(a3, 0x18);
  *v6 = &unk_1F112F768;
  *(v6 + 8) = v3;
  v6[2] = v5;
  v8 = v6;
  (*(*v4 + 48))(v4, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F768;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F768;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireNotificationEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F790;
  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112F790;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::call(uint64_t a1)
{
  WebCore::SWContextManager::singleton(a1);
  v3 = WTF::fastMalloc(v2, 0x18);
  *v3 = &unk_1F112F7B8;
  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(v3 + 1) = v4;
  v6 = v3;
  WebCore::SWContextManager::fireBackgroundFetchEvent();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F7B8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F7B8;
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
    (*(*v4 + 40))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  v6 = WTF::fastMalloc(a3, 0x18);
  *v6 = &unk_1F112F7E0;
  *(v6 + 8) = v3;
  v6[2] = v5;
  v8 = v6;
  (*(*v4 + 48))(v4, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F7E0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F7E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112F808;
  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112F808;
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1,void>::call(uint64_t a1)
{
  WebCore::SWContextManager::singleton(a1);
  v3 = WTF::fastMalloc(v2, 0x18);
  *v3 = &unk_1F112F830;
  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(v3 + 1) = v4;
  v6 = v3;
  WebCore::SWContextManager::fireBackgroundFetchClickEvent();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F830;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F830;
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
    (*(*v4 + 40))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  v6 = WTF::fastMalloc(a3, 0x18);
  *v6 = &unk_1F112F858;
  *(v6 + 8) = v3;
  v6[2] = v5;
  v8 = v6;
  (*(*v4 + 48))(v4, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112F858;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112F858;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::fireBackgroundFetchClickEvent(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::BackgroundFetchInformation &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(BOOL)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::terminateWorker(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(WebCore::SWContextManager *a1)
{
  WebCore::SWContextManager::singleton(a1);
  WebCore::SWContextManager::terminateWorker();
  return 0;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::SkipWaiting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F8A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::SkipWaiting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F8A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::SkipWaiting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F8D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F8D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerClientData>>>(v10, a3);
    if (v14 == 1)
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, v10);
      result = (*(*v4 + 8))(v4);
      if ((v14 & 1) != 0 && v13[24] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v6);
        v8 = v12;
        v12 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        result = v11;
        v11 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v7);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>((a1 + 8));
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(v9);
  }

  return result;
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v19 = 0;
  std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](v11, v15);
  if (v19 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v2);
    v4 = v17;
    v17 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }

    v5 = v16;
    v16 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }
  }

  v6 = *a1;
  *a1 = 0;
  (*(*v6 + 16))(v6, v11);
  result = (*(*v6 + 8))(v6);
  if (v14[24] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v8);
    v10 = v13;
    v13 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerClientData>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<std::optional<WebCore::ServiceWorkerClientData>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[208] & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<std::optional<WebCore::ServiceWorkerClientData>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerClientData>>(v8, a1);
  if (v12 == 1)
  {
    result = std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](a2, v8);
    v5 = v12;
    a2[208] = 1;
    if ((v5 & 1) != 0 && v11[24] == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11, v4);
      v7 = v10;
      v10 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }

      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[208] = 0;
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerClientData>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerClientData>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[208] & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerClientData>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_23;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_23:
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v4)
      {
        (*(*v16 + 16))(v16);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_26;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_26:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v4)
    {
      result = (*(*result + 16))(result, v6);
    }

    goto LABEL_17;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_26;
  }

  if (!v7)
  {
    LOBYTE(v17[0]) = 0;
    v21 = 0;
    result = std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](a2, v17);
    a2[208] = 1;
    if (v21 != 1)
    {
      return result;
    }

    goto LABEL_9;
  }

  IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode(a1, v17);
  if ((v21 & 1) == 0)
  {
    v13 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v14 || (result = (*(*result + 16))(result, v13), (v21 & 1) == 0))
    {
LABEL_17:
      *a2 = 0;
      a2[208] = 0;
      return result;
    }
  }

  result = std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100]<WebCore::ServiceWorkerClientData,0>(a2, v17);
  v10 = v21;
  a2[208] = 1;
  if (v10)
  {
LABEL_9:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v9);
    v12 = v19;
    v19 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

uint64_t std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    *(a1 + 32) = *(a2 + 16);
    *a1 = v4;
    *(a1 + 16) = v5;
    WTF::URL::URL(a1 + 40, a2 + 5);
    WTF::URL::URL(a1 + 80, a2 + 10);
    v6 = *(a2 + 120);
    v7 = *(a2 + 136);
    v8 = *(a2 + 152);
    *(a1 + 168) = 0;
    *(a1 + 136) = v7;
    *(a1 + 152) = v8;
    *(a1 + 120) = v6;
    *(a1 + 176) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 168, a2 + 42);
    *(a1 + 192) = 1;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::MatchAll,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F8F8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::MatchAll,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F8F8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::MatchAll,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, unsigned __int8 *a2, unsigned __int8 **a3, __n128 a4)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = a3[1];
    v7 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      a3[1] = 0;
      v47 = a3[3];
      if (v47)
      {
        if (v6)
        {
          (*(*v47 + 16))(v47);
          a2 = *a3;
          v6 = a3[1];
          goto LABEL_80;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_80:
      *a3 = 0;
      a3[1] = 0;
      v48 = a3[3];
      if (v48 && v6)
      {
        (*(*v48 + 16))(v48, a2);
      }

      goto LABEL_60;
    }

    a3[2] = (v7 + 1);
    if (!v7)
    {
      goto LABEL_80;
    }

    v9 = *v7;
    v55 = 0;
    v56 = 0;
    if (v9 >= 0x1555)
    {
      while (1)
      {
        IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode(a3, &v57);
        if (v68 & 1) != 0 || (a2 = *a3, v38 = a3[1], *a3 = 0, a3[1] = 0, (v39 = a3[3]) != 0) && v38 && ((*(*v39 + 16))(v39, a2), (v68))
        {
          v28 = HIDWORD(v56);
          if (HIDWORD(v56) == v56)
          {
            WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerClientData>(&v55, &v57);
          }

          else
          {
            v29 = v55 + 192 * HIDWORD(v56);
            v30 = v57;
            v31 = v58;
            *(v29 + 16) = v59;
            *v29 = v30;
            *(v29 + 1) = v31;
            WTF::URL::URL((v29 + 40), v60);
            WTF::URL::URL((v29 + 80), v61);
            v32 = v62;
            v33 = v63;
            *(v29 + 152) = v64;
            *(v29 + 136) = v33;
            *(v29 + 120) = v32;
            *(v29 + 21) = 0;
            *(v29 + 22) = 0;
            v34 = v65;
            v65 = 0;
            *(v29 + 21) = v34;
            LODWORD(v34) = v66;
            v66 = 0;
            *(v29 + 44) = v34;
            LODWORD(v34) = v67;
            v67 = 0;
            *(v29 + 45) = v34;
            HIDWORD(v56) = v28 + 1;
          }

          v35 = 1;
        }

        else
        {
          v35 = 0;
        }

        if (v68 == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, a2);
          v36 = v61[0];
          v61[0] = 0;
          if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, a2);
          }

          v37 = v60[0];
          v60[0] = 0;
          if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, a2);
          }
        }

        if ((v35 & 1) == 0)
        {
          goto LABEL_59;
        }

        if (!--v9)
        {
          LODWORD(v9) = v56;
          v24 = HIDWORD(v56);
          v23 = v55;
          if (v56 <= HIDWORD(v56))
          {
            goto LABEL_36;
          }

          v43 = v55;
          if (HIDWORD(v56))
          {
            if (HIDWORD(v56) >= 0x1555556)
            {
              __break(0xC471u);
              return;
            }

            v44 = 192 * HIDWORD(v56);
            v43 = WTF::fastMalloc((3 * HIDWORD(v56)), (192 * HIDWORD(v56)));
            LODWORD(v9) = v44 / 0xC0;
            if (v43 != v23)
            {
              WTF::VectorMover<false,WebCore::ServiceWorkerClientData>::move(v23, (v23 + 192 * v24), v43);
            }
          }

          if (v23)
          {
            if (v43 == v23)
            {
              LODWORD(v9) = 0;
              v43 = 0;
              v55 = 0;
              LODWORD(v56) = 0;
            }

            WTF::fastFree(v23, a2);
          }

          v23 = v43;
          goto LABEL_36;
        }
      }
    }

    if (v9)
    {
      LODWORD(v56) = 192 * v9 / 0xC0u;
      v55 = WTF::fastMalloc((3 * v9), (192 * v9));
      while (1)
      {
        IPC::ArgumentCoder<WebCore::ServiceWorkerClientData,void>::decode(a3, &v57);
        if (v68 & 1) != 0 || (a2 = *a3, v20 = a3[1], *a3 = 0, a3[1] = 0, (v21 = a3[3]) != 0) && v20 && ((*(*v21 + 16))(v21, a2), (v68))
        {
          v10 = HIDWORD(v56);
          if (HIDWORD(v56) == v56)
          {
            WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerClientData>(&v55, &v57);
          }

          else
          {
            v11 = v55 + 192 * HIDWORD(v56);
            v12 = v57;
            v13 = v58;
            *(v11 + 16) = v59;
            *v11 = v12;
            *(v11 + 1) = v13;
            WTF::URL::URL((v11 + 40), v60);
            WTF::URL::URL((v11 + 80), v61);
            v14 = v62;
            v15 = v63;
            *(v11 + 152) = v64;
            *(v11 + 136) = v15;
            *(v11 + 120) = v14;
            *(v11 + 21) = 0;
            *(v11 + 22) = 0;
            v16 = v65;
            v65 = 0;
            *(v11 + 21) = v16;
            LODWORD(v16) = v66;
            v66 = 0;
            *(v11 + 44) = v16;
            LODWORD(v16) = v67;
            v67 = 0;
            *(v11 + 45) = v16;
            HIDWORD(v56) = v10 + 1;
          }

          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        if (v68 == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, a2);
          v18 = v61[0];
          v61[0] = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, a2);
          }

          v19 = v60[0];
          v60[0] = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, a2);
          }
        }

        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!--v9)
        {
          v23 = v55;
          LODWORD(v9) = v56;
          v24 = HIDWORD(v56);
          goto LABEL_36;
        }
      }

LABEL_59:
      WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, a2);
LABEL_60:
      v40 = *a3;
      v41 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v42 = a3[3];
      if (v42 && v41)
      {
        (*(*v42 + 16))(v42, v40);
        v45 = a3[3];
        v40 = *a3;
        v46 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        if (v45)
        {
          if (v46)
          {
            (*(*v45 + 16))(v45, v40);
          }
        }
      }

      else
      {
        *a3 = 0;
        a3[1] = 0;
      }

      IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::MatchAll,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), a4, v40);
      return;
    }

    v24 = 0;
    v23 = 0;
LABEL_36:
    v55 = 0;
    v56 = 0;
    v54 = 1;
    WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, a2);
    v53[0] = 0;
    v53[1] = 0;
    v49 = v23;
    v50 = v9;
    v51 = v24;
    v52 = 1;
    WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v53, v25);
    v26 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v26 + 16))(v26, &v49);
    (*(*v26 + 8))(v26);
    if (v52)
    {
      WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v27);
    }
  }

  else
  {
    v22 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::MatchAll,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v22, a4, a2);
  }
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::MatchAll,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, __n128 a2, void *a3)
{
  a2.n128_u64[0] = 0;
  v7 = a2;
  v8 = a2;
  WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a3);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

WTF *WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ServiceWorkerClientData>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 192 * a1[3];
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  WTF::URL::URL(v4 + 40, (v3 + 40));
  WTF::URL::URL(v4 + 80, (v3 + 80));
  v7 = *(v3 + 120);
  v8 = *(v3 + 136);
  v9 = *(v3 + 152);
  *(v4 + 168) = 0;
  v4 += 168;
  *(v4 - 32) = v8;
  *(v4 - 16) = v9;
  *(v4 - 48) = v7;
  *(v4 + 8) = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 168));
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(WTF::StringImpl *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 192 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x1555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19E35C2D4);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 192 * *(result + 3));
    v5 = 192 * a2;
    v6 = WTF::fastMalloc((3 * a2), (192 * a2));
    *(v2 + 8) = v5 / 0xC0;
    *v2 = v6;
    result = WTF::VectorMover<false,WebCore::ServiceWorkerClientData>::move(v3, v4, v6);
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

WTF::StringImpl *WTF::VectorMover<false,WebCore::ServiceWorkerClientData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 40;
    v5 = (result + 168);
    do
    {
      v6 = *(v5 - 42);
      v7 = *(v5 - 38);
      *(v4 - 8) = *(v5 - 68);
      *(v4 - 24) = v7;
      *(v4 - 40) = v6;
      WTF::URL::URL(v4, v5 - 16);
      WTF::URL::URL(v4 + 40, v5 - 11);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      *(v4 + 128) = 0;
      *(v4 + 96) = v9;
      *(v4 + 112) = v10;
      *(v4 + 80) = v8;
      *(v4 + 136) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v4 + 128, v5);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v11);
      v13 = *(v5 - 11);
      *(v5 - 11) = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      result = *(v5 - 16);
      *(v5 - 16) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v12);
        }
      }

      v4 += 192;
      v14 = (v5 + 6);
      v5 += 48;
    }

    while (v14 != a2);
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::ServiceWorkerClientData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 168, a2);
      v4 = *(v3 + 10);
      *(v3 + 10) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      result = *(v3 + 5);
      *(v3 + 5) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 192);
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::ServiceWorkerClientData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::ServiceWorkerClientData>::destruct(*a1, (*a1 + 192 * v3));
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

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::OpenWindow,WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F920;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::OpenWindow,WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F920;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::OpenWindow,WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(v8, a3);
    v4 = (a1 + 8);
    if (v9 == 1)
    {
      result = std::apply[abi:sn200100]<WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(v4, v8);
      if (v9)
      {
        return std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(v8, v6);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::OpenWindow,WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(v4);
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::OpenWindow,WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(v7);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::OpenWindow,WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(mpark *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v7 = 0;
  v8 = 1;
  std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>,0>(v5, v6);
  std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(v6, v2);
  std::apply[abi:sn200100]<WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(v5, v3);
}

uint64_t IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(_BYTE *a1, IPC::Decoder *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_24:
    *a2 = 0;
    *(a2 + 1) = 0;
    v16 = *(a2 + 3);
    if (v16)
    {
      if (v6)
      {
        (*(*v16 + 16))(v16, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_27:
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17 && v6)
    {
      (*(*v17 + 16))(v17, v5);
    }

LABEL_28:
    v23[0] = 0;
    v26 = 0;
    goto LABEL_29;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_24;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_27;
  }

  if (!v7)
  {
    IPC::Decoder::decode<WebCore::ExceptionData>(a2, &v27);
    if (v28 == 1)
    {
      v23[0] = v27;
      v24 = *(&v27 + 1);
      v25 = 1;
      v26 = 1;
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerClientData>>(&v27, a2);
  if (v32 == 1)
  {
    std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](v23, &v27);
    v25 = 0;
    v26 = 1;
    if ((v32 & 1) != 0 && v31[24] == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v8);
      v10 = v30;
      v30 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      v11 = v29;
      v29 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }
    }
  }

  else
  {
    v23[0] = 0;
    v26 = 0;
  }

  if (v26)
  {
LABEL_18:
    result = std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>,0>(a1, v23);
    v14 = v26;
    a1[224] = 1;
    if ((v14 & 1) == 0)
    {
      return result;
    }

    result = std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(v23, v13);
    if (a1[224])
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_29:
  v18 = *a2;
  v19 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v20 = *(a2 + 3);
  if (v20)
  {
    if (v19)
    {
      (*(*v20 + 16))(v20, v18);
      if (v26)
      {
        goto LABEL_18;
      }
    }
  }

  *a1 = 0;
  a1[224] = 0;
LABEL_31:
  v21 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v21)
  {
    v22 = *(*result + 16);

    return v22();
  }

  return result;
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebSWContextManagerConnection::openWindow(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(mpark *a1, char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2[208])
  {
    std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](v10, a2);
    v15 = 0;
    v9 = *a1;
    *a1 = 0;
    (*(*v9 + 16))(v9, v10);
    result = (*(*v9 + 8))(v9);
    if (v15 == 255)
    {
      return result;
    }

    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_15:
    result = v11;
    v11 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (a2[208] != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v10[0] = v3;
  v11 = v4;
  v15 = 1;
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, v10);
  result = (*(*v5 + 8))(v5);
  if (v15 == 255)
  {
    return result;
  }

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v14[24] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v7);
    v8 = v13;
    v13 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    result = v12;
    v12 = 0;
    if (result)
    {
LABEL_16:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

uint64_t std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>,0>(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 208) = -1;
  v2 = *(a2 + 208);
  if (v2 != 255)
  {
    if (*(a2 + 208))
    {
      *result = *a2;
      v4 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(result + 8) = v4;
    }

    else
    {
      result = std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](result, a2);
      LOBYTE(v2) = *(a2 + 208);
    }

    *(result + 208) = v2;
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(uint64_t a1, void *a2)
{
  if (*(a1 + 208) == 255)
  {
    goto LABEL_12;
  }

  if (*(a1 + 208))
  {
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (*(a1 + 192) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 168, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v4)
    {
LABEL_10:
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

LABEL_12:
  *(a1 + 208) = -1;
  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Claim,WebKit::WebSWContextManagerConnection::claim(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::claim(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F948;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Claim,WebKit::WebSWContextManagerConnection::claim(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::claim(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F948;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Claim,WebKit::WebSWContextManagerConnection::claim(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::claim(WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<void> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, WTF::StringImpl *a3)
{
  if (!a3 || !*a3 || (IPC::Decoder::decode<std::tuple<std::optional<WebCore::ExceptionData>>>(a3, &v10), v13 != 1))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = 0;
    (*(*v6 + 16))(v6, &v10);
    result = (*(*v6 + 8))(v6);
LABEL_9:
    if (v12 == 1)
    {
      result = v11;
      v11 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }

    return result;
  }

  if (v12 == 1)
  {
    v4 = v10;
    v5 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    LOBYTE(v14) = v4;
    v15 = v5;
    LOBYTE(v16) = 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v9 + 16))(v9, &v14);
  result = (*(*v9 + 8))(v9);
  if (v16 == 1)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v13)
  {
    goto LABEL_9;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Navigate,WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F970;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Navigate,WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F970;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Navigate,WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*)#1},void,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&,IPC::Connection*>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(v8, a3);
    v4 = (a1 + 8);
    if (v9 == 1)
    {
      result = std::apply[abi:sn200100]<WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(v4, v8);
      if (v9)
      {
        return std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(v8, v6);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::Navigate,WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(v4);
    }
  }

  else
  {
    v7 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::Navigate,WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(v7);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::Navigate,WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0>(mpark *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v7 = 0;
  v8 = 1;
  std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>,0>(v5, v6);
  std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(v6, v2);
  std::apply[abi:sn200100]<WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(a1, v5);
  return std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>::~expected(v5, v3);
}

WTF::StringImpl *std::apply[abi:sn200100]<WebKit::WebSWContextManagerConnection::navigate(WebCore::ProcessQualified<WTF::UUID>,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ExceptionOr<std::optional<WebCore::ServiceWorkerClientData>> &&)> &&)::$_0,std::tuple<std::experimental::fundamentals_v3::expected<std::optional<WebCore::ServiceWorkerClientData>,WebCore::ExceptionData>>>(mpark *a1, char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2[208])
  {
    std::optional<WebCore::ServiceWorkerClientData>::optional[abi:sn200100](v10, a2);
    v15 = 0;
    v9 = *a1;
    *a1 = 0;
    (*(*v9 + 16))(v9, v10);
    result = (*(*v9 + 8))(v9);
    if (v15 == 255)
    {
      return result;
    }

    if (!v15)
    {
      goto LABEL_5;
    }

LABEL_13:
    result = v11;
    v11 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a2[208] != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  *(a2 + 1) = 0;
  v10[0] = v3;
  v11 = v4;
  v15 = 1;
  v5 = *a1;
  *a1 = 0;
  (*(*v5 + 16))(v5, v10);
  result = (*(*v5 + 8))(v5);
  if (v15 == 255)
  {
    return result;
  }

  if (v15)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v14[24] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v7);
    v8 = v13;
    v13 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    result = v12;
    v12 = 0;
    if (result)
    {
LABEL_14:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Focus,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112F998;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Focus,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F998;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebSWServerToContextConnection::Focus,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<std::optional<WebCore::ServiceWorkerClientData>>>(v10, a3);
    if (v14 == 1)
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v4 + 16))(v4, v10);
      result = (*(*v4 + 8))(v4);
      if ((v14 & 1) != 0 && v13[24] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v6);
        v8 = v12;
        v12 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        result = v11;
        v11 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v7);
          }
        }
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>((a1 + 8));
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::WebSWServerToContextConnection::FindClientByVisibleIdentifier,WTF::CompletionHandler<void ()(std::optional<WebCore::ServiceWorkerClientData> &&)>>(v9);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::close(void)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112F9C0;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::close(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F9C0;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::setThrottleState(BOOL)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112F9E8;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::setThrottleState(BOOL)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112F9E8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::setThrottleState(BOOL)::$_0,void>::call(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641288;
  if (os_log_type_enabled(qword_1ED641288, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 16);
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "Service worker throttleable state is set to %d", v9, 8u);
  }

  v5 = *(a1 + 16);
  *(*(a1 + 8) + 152) = v5;
  {
    v6 = WebKit::WebProcess::singleton(void)::process + 64;
    if ((v5 & 1) == 0)
    {
      return PAL::HysteresisActivity::start(v6);
    }
  }

  else
  {
    v8 = WebKit::WebProcess::operator new(0x370, v3);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v8);
    v6 = WebKit::WebProcess::singleton(void)::process + 64;
    if ((*(a1 + 16) & 1) == 0)
    {
      return PAL::HysteresisActivity::start(v6);
    }
  }

  return PAL::HysteresisActivity::stop(v6);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::setInspectable(WebCore::ServiceWorkerIsInspectable)::$_0,void>::call(WebCore::SWContextManager *a1)
{
  v2 = WebCore::SWContextManager::singleton(a1);
  v3 = *(a1 + 8);

  return MEMORY[0x1EEE567E0](v2, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::removeNavigationFetch(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F112FA38;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::removeNavigationFetch(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112FA38;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 24), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::WebSWContextManagerConnection::removeNavigationFetch(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v5 = *(a1 + 16);
  result = WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( (v1 + 232),  &v5);
  v3 = *(v1 + 232);
  if (v3)
  {
    v4 = (v3 + 24 * *(v3 - 4));
    if (v4 == result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v4 = 0;
  }

  if (v4 != result)
  {
    return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::WebServiceWorkerFetchTaskClient,WTF::RawPtrTraits<WebKit::WebServiceWorkerFetchTaskClient>,WTF::DefaultRefDerefTraits<WebKit::WebServiceWorkerFetchTaskClient>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove( (v1 + 232),  result);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
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
    v13 = v7;
    do
    {
      v14 = (v6 + 16 * v11);
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

          v19 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = v22;
            v25 = *(v17 + 16 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (v25);
          v26 = (v17 + 16 * v24);
          v27 = v26[1];
          v26[1] = 0;
          if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27 + 2);
            bmalloc::api::tzoneFree(v27, v10);
          }

          *v26 = *v14;
          v28 = v14[1];
          v14[1] = 0;
          v26[1] = v28;
          v29 = v14[1];
          v14[1] = 0;
          if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v29 + 2);
            bmalloc::api::tzoneFree(v29, v10);
          }

          if (v14 == a3)
          {
            v12 = v26;
          }
        }

        else
        {
          v16 = v14[1];
          v14[1] = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16 + 2);
              bmalloc::api::tzoneFree(v16, v10);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v13);
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

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = (v3 + 16 * *(v3 - 4));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return result;
  }

  v5 = a2[1];
  if (v5)
  {
    a2[1] = 0;
    v3 = *result;
  }

  *a3 = v5;
  if (v3)
  {
    v6 = (v3 + 16 * *(v3 - 4));
    if (v6 == a2)
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

    v6 = 0;
  }

  if (v6 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(result, a2);
  }

  return result;
}

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = bmalloc::api::tzoneFree(result, a2);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::ServiceWorkerDebuggableFrontendChannel,WTF::RawPtrTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>,WTF::DefaultRefDerefTraits<WebKit::ServiceWorkerDebuggableFrontendChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ServiceWorkerIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E35DDE8);
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

IPC::Encoder *IPC::Connection::send<Messages::ServiceWorkerDownloadTask::DidReceiveData>(uint64_t *a1, IPC::SharedBufferReference **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1718;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v6, *a2);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::ServiceWorkerFetchTask::DidReceiveData>(uint64_t *a1, IPC::SharedBufferReference **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1723;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v6, *a2);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebServiceWorkerFetchTaskClient::didReceiveFormDataAndFinishInternal(WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112FA60;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebServiceWorkerFetchTaskClient::didReceiveFormDataAndFinishInternal(WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112FA60;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerFetch::Client,(WTF::DestructionThread)1>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebServiceWorkerFetchTaskClient::didReceiveFormDataAndFinishInternal(WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>> &&)::$_0,void>::call(WebCore::SWContextManager *a1)
{
  v1 = *(a1 + 1);
  WebCore::SWContextManager::singleton(a1);
  v2 = WebCore::SWContextManager::serviceWorkerThreadProxy();
  if (v2)
  {
    v4 = (v2 + 8);
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    if (WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::s_heapRef, v3);
    }

    else
    {
      NonCompact = WebKit::WebServiceWorkerFetchTaskClient::BlobLoader::operatorNewSlow(0);
    }

    v8 = NonCompact;
    *(NonCompact + 16) = 1;
    v9 = (NonCompact + 16);
    *NonCompact = &unk_1F112EC98;
    *(NonCompact + 8) = 0;
    *(NonCompact + 24) = 0;
    *(NonCompact + 32) = v1;
    v10 = *(v1 + 8);
    if (v10)
    {
      v10 = WTF::fastMalloc(1, 0x20);
      *v10 = 0;
      *(v10 + 8) = xmmword_19E7014F0;
      *(v10 + 24) = v1;
      while (1)
      {
        v27 = *(v1 + 8);
        if ((v27 & 1) == 0)
        {
          break;
        }

        *(v10 + 8) = v27 >> 1;
        v28 = v27;
        atomic_compare_exchange_strong_explicit((v1 + 8), &v28, v10, memory_order_release, memory_order_relaxed);
        if (v28 == v27)
        {
          goto LABEL_10;
        }
      }

      WTF::fastFree(v10, v26);
      v10 = *(v1 + 8);
    }

LABEL_10:
    *(v8 + 40) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
    ++*(v8 + 16);
    v12 = *(v1 + 56);
    *(v1 + 56) = v8;
    if (v12)
    {
      WTF::RefCounted<WebKit::WebServiceWorkerFetchTaskClient::BlobLoader>::deref((v12 + 16), v11);
    }

    WebCore::ServiceWorkerThreadProxy::createBlobLoader();
    v14 = *(v1 + 56);
    if (v29)
    {
      v15 = *(v14 + 24);
      *(v14 + 24) = v29;
      if (v15)
      {
        if (v15[5] == 1)
        {
          (*(*v15 + 64))(v15);
        }

        else
        {
          --v15[5];
        }
      }
    }

    else
    {
      *(v1 + 56) = 0;
      if (v14)
      {
        WTF::RefCounted<WebKit::WebServiceWorkerFetchTaskClient::BlobLoader>::deref((v14 + 16), v13);
      }

      WebCore::internalError();
      WebKit::WebServiceWorkerFetchTaskClient::didFail(v1, &v30);
      v16 = cf;
      cf = 0;
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = v32;
      v32 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v13);
      }

      v18 = v31;
      v31 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v13);
      }

      v19 = v30;
      v30 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v13);
      }
    }

    WTF::RefCounted<WebKit::WebServiceWorkerFetchTaskClient::BlobLoader>::deref(v9, v13);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ServiceWorkerThreadProxy,(WTF::DestructionThread)1>::deref(v4, v20);
  }

  else
  {
    WebCore::internalError();
    WebKit::WebServiceWorkerFetchTaskClient::didFail(v1, &v30);
    v23 = cf;
    cf = 0;
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = v32;
    v32 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v22);
    }

    v25 = v31;
    v31 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v22);
    }

    result = v30;
    v30 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v22);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebServiceWorkerFetchTaskClient::cleanup(void)::$_0,void>::call(uint64_t a1)
{
  v2 = WebCore::SWContextManager::singleton(a1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);

  return MEMORY[0x1EEE567C8](v2, v3, v4, v5, v6);
}

uint64_t *WebKit::WebServiceWorkerProvider::singleton(WebKit::WebServiceWorkerProvider *this)
{
  {
    byte_1ED643870 = 0;
    WebKit::WebServiceWorkerProvider::singleton(void)::provider = &unk_1F112FBD8;
  }

  return &WebKit::WebServiceWorkerProvider::singleton(void)::provider;
}

WebKit::WebSWClientConnection *WebKit::WebServiceWorkerProvider::serviceWorkerConnection(WebKit::WebServiceWorkerProvider *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = WebKit::WebProcess::ensureNetworkProcessConnection(v2);
  v4 = (*(v3 + 5) + 1);
  *(v3 + 5) = v4;
  v5 = WebKit::NetworkProcessConnection::serviceWorkerConnection(v3, v4);
  if (*(v3 + 5) == 1)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    --*(v3 + 5);
  }

  return v5;
}

WebKit::WebSWClientConnection *WebKit::WebServiceWorkerProvider::existingServiceWorkerConnection(WebKit::WebServiceWorkerProvider *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = *(v2 + 42);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(v3 + 5) + 1);
  *(v3 + 5) = v4;
  v5 = WebKit::NetworkProcessConnection::serviceWorkerConnection(v3, v4);
  if (*(v3 + 5) == 1)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    --*(v3 + 5);
  }

  return v5;
}

WebKit::WebProcess *WebKit::WebServiceWorkerProvider::updateThrottleState(WebKit::WebServiceWorkerProvider *this, void *a2)
{
  v2 = a2;
  {
    result = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v10 = WebKit::WebProcess::operator new(0x370, a2);
    result = WebKit::WebProcess::WebProcess(v10);
    WebKit::WebProcess::singleton(void)::process = result;
  }

  v4 = *(result + 42);
  if (v4)
  {
    v5 = (*(v4 + 5) + 1);
    *(v4 + 5) = v5;
    result = WebKit::NetworkProcessConnection::serviceWorkerConnection(v4, v5);
    v7 = result;
    v8 = *(result + 2);
    *(result + 2) = v8 + 1;
    if (*(result + 96) != v2)
    {
      result = WebKit::WebSWClientConnection::updateThrottleState(result, v6);
      v8 = *(v7 + 2) - 1;
    }

    if (v8)
    {
      *(v7 + 2) = v8;
    }

    else
    {
      result = (*(*v7 + 8))(v7);
    }

    if (*(v4 + 5) == 1)
    {
      v9 = *(*v4 + 24);

      return v9(v4);
    }

    else
    {
      --*(v4 + 5);
    }
  }

  return result;
}

uint64_t WebKit::WebServiceWorkerProvider::terminateWorkerForTesting(uint64_t a1, void *a2, uint64_t *a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureNetworkProcessConnection(v5);
  v7 = (*(v6 + 5) + 1);
  *(v6 + 5) = v7;
  v8 = WebKit::NetworkProcessConnection::serviceWorkerConnection(v6, v7);
  ++*(v8 + 2);
  v12 = &v13;
  v13 = a2;
  v9 = (*(*(v8 + 3) + 56))(v8 + 24);
  result = IPC::MessageSender::sendWithAsyncReply<Messages::WebSWServerConnection::TerminateWorkerFromClient,WTF::CompletionHandler<void ()(void)>>(v8 + 24, &v12, a3, v9, 0);
  if (*(v8 + 2) == 1)
  {
    result = (*(*v8 + 8))(v8);
  }

  else
  {
    --*(v8 + 2);
  }

  if (*(v6 + 5) == 1)
  {
    return (*(*v6 + 24))(v6);
  }

  --*(v6 + 5);
  return result;
}

uint64_t WebKit::WebSharedWorkerContextManagerConnection::operator new(WebKit::WebSharedWorkerContextManagerConnection *this, void *a2)
{
  if (this == 160 && WebKit::WebSharedWorkerContextManagerConnection::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebSharedWorkerContextManagerConnection::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebSharedWorkerContextManagerConnection::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebSharedWorkerContextManagerConnection::WebSharedWorkerContextManagerConnection(uint64_t a1, uint64_t *a2, atomic_uint **a3, uint64_t a4, uint64_t a5, uint64_t a6, WebKit::WebPage *a7, unsigned int *a8)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 1;
  *a1 = &unk_1F112FC10;
  *(a1 + 16) = &unk_1F112FC68;
  *(a1 + 24) = 0;
  v11 = *a2;
  *a2 = 0;
  *(a1 + 40) = v11;
  v12 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *(a1 + 48) = v12;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *(a1 + 56) = v13;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  WebCore::standardUserAgentWithApplicationName();
  WebKit::WebUserContentController::getOrCreate(*a8, (a1 + 96));
  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  WebKit::WebUserContentController::addContentRuleLists(*(a1 + 96), a8 + 2);
  WebKit::WebPage::updatePreferencesGenerated(a7, v14, v15);
  std::optional<WebKit::WebPreferencesStore>::operator=[abi:sn200100]<WebKit::WebPreferencesStore const&,void>(a1 + 104, a7);
  {
    v17 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, v16);
    v17 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v17;
  }

  ++*(v17 + 8);
  return a1;
}

unsigned int *WebKit::WebUserContentController::getOrCreate@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v11 = a1;
  {
    WebKit::userContentControllers(void)::userContentControllers = 0;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(&WebKit::userContentControllers(void)::userContentControllers, &v11, v10);
  v4 = v10[0];
  v5 = *(v10[0] + 8);
  if (v5 && (v5 = v5[1]) != 0)
  {
    v6 = v5 - 6;
    ++*(v5 - 10);
  }

  else
  {
    v6 = WTF::fastMalloc(v5, 0x68);
    v7 = WebKit::WebUserContentController::WebUserContentController(v6, v11);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v7 + 14, (v6 + 6));
    v9 = v6[7];
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }

    result = *(v4 + 8);
    *(v4 + 8) = v9;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v8);
    }
  }

  *a2 = v6;
  return result;
}

void WebKit::WebUserContentController::addContentRuleLists(WTF::StringImpl *result, unsigned int *a2)
{
  v4 = a2[3];
  if (v4)
  {
    v14 = v2;
    v15 = v3;
    v5 = 120 * v4;
    v6 = *a2;
    do
    {
      v7 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v13 = v7;
      WebKit::WebCompiledContentRuleList::create(v6, &v12);
      if (v12)
      {
        v11 = v12;
        v12 = 0;
        WebCore::ContentExtensions::ContentExtensionsBackend::addContentExtension();
        if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v11 + 2);
          (*(*v11 + 8))(v11);
        }

        v9 = v12;
        v12 = 0;
        if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9 + 2);
          (*(*v9 + 8))(v9);
        }
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }
      }

      v6 += 15;
      v5 -= 120;
    }

    while (v5);
  }
}

uint64_t WebKit::WebSharedWorkerContextManagerConnection::updatePreferencesStore(WebKit::WebSharedWorkerContextManagerConnection *this, const WebKit::WebPreferencesStore *a2, const WTF::StringImpl *a3)
{
  WebKit::WebPage::updatePreferencesGenerated(a2, a2, a3);

  return std::optional<WebKit::WebPreferencesStore>::operator=[abi:sn200100]<WebKit::WebPreferencesStore const&,void>(this + 104, a2);
}

void WebKit::WebSharedWorkerContextManagerConnection::~WebSharedWorkerContextManagerConnection(WebKit::WebSharedWorkerContextManagerConnection *this)
{
  if (*(this + 152) == 1)
  {
    v2 = *(this + 16);
    if (v2)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v2, *(this + 34));
    }

    v3 = *(this + 13);
    if (v3)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v3, *(this + 28));
    }
  }

  WTF::Ref<WebKit::WebUserContentController,WTF::RawPtrTraits<WebKit::WebUserContentController>,WTF::DefaultRefDerefTraits<WebKit::WebUserContentController>>::~Ref(this + 12);
  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8, v4);
  }

  if (*(this + 8) == 1)
  {
    *(this + 2) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebSharedWorkerContextManagerConnection::~WebSharedWorkerContextManagerConnection(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebKit::WebSharedWorkerContextManagerConnection::~WebSharedWorkerContextManagerConnection(WebKit::WebSharedWorkerContextManagerConnection *this)
{
  WebKit::WebSharedWorkerContextManagerConnection::~WebSharedWorkerContextManagerConnection((this - 16));
}

{
  WebKit::WebSharedWorkerContextManagerConnection::~WebSharedWorkerContextManagerConnection((this - 16));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebSharedWorkerContextManagerConnection::establishConnection@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[5];
  v5 = *a2;
  *a2 = 0;
  v6 = WTF::fastMalloc(a3, 0x10);
  *v6 = &unk_1F112FFD8;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v7 = v6;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 447;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, a1[9]);
    IPC::ArgumentCoder<WebCore::Site,void>::encode(v10, (a1 + 6));
    v16[0] = v7;
    v16[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v17, v16, 0, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

IPC::Encoder *WebKit::WebSharedWorkerContextManagerConnection::postErrorToWorkerObject(uint64_t a1, void *a2, uint64_t *a3, int a4, int a5, uint64_t *a6, char a7)
{
  v18 = a2;
  v16 = a5;
  v17 = a4;
  v9 = *(a1 + 40);
  v15[0] = a7;
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3164;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = 0;
  IPC::Encoder::encodeHeader(v10);
  v19 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v18);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, v17);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, v16);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a6);
  IPC::Encoder::operator<<<BOOL &>(v10, v15);
  IPC::Connection::sendMessageImpl(v9, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

uint64_t WebKit::WebSharedWorkerContextManagerConnection::launchSharedWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, atomic_ullong a6)
{
  v98 = *MEMORY[0x1E69E9840];
  v12 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v87 = a3;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerContextManagerConnection::launchSharedWorker: sharedWorkerIdentifier=%llu", buf, 0xCu);
  }

  {
    v14 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v76 = WebKit::WebProcess::operator new(0x370, v13);
    v14 = WebKit::WebProcess::WebProcess(v76);
    WebKit::WebProcess::singleton(void)::process = v14;
  }

  if ((*(v14 + 712) & 1) == 0)
  {
    goto LABEL_93;
  }

  v82 = a4;
  WebCore::pageConfigurationWithEmptyClients();
  v16 = WTF::fastMalloc(v15, 0x10);
  *(v16 + 2) = 1;
  *v16 = &unk_1F1130C78;
  v17 = v97;
  v97 = v16;
  if (v17)
  {
    if (*(v17 + 2) == 1)
    {
      (*(*v17 + 8))(v17);
    }

    else
    {
      --*(v17 + 2);
    }
  }

  WebKit::WebDatabaseProvider::getOrCreate(*(a1 + 64), &v85);
  v18 = v85;
  v85 = 0;
  v19 = v93;
  v93 = v18;
  if (!v19)
  {
    goto LABEL_8;
  }

  v18 = (*(v19 + 2) - 1);
  if (*(v19 + 2) == 1)
  {
    (*(*v19 + 8))(v19);
    v19 = v85;
    v85 = 0;
    if (!v19)
    {
      goto LABEL_8;
    }

    v18 = (*(v19 + 2) - 1);
    if (*(v19 + 2) == 1)
    {
      (*(*v19 + 8))(v19);
      goto LABEL_8;
    }
  }

  *(v19 + 2) = v18;
LABEL_8:
  v20 = *(a1 + 72);
  v22 = WTF::fastMalloc(v18, 0x18);
  *(v22 + 2) = 1;
  *v22 = &unk_1F112DB08;
  v22[2] = v20;
  v23 = v88;
  v88 = v22;
  if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23 + 2);
    (*(*v23 + 24))(v23);
  }

  {
    v24 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v77 = WebKit::WebProcess::operator new(0x370, v21);
    v24 = WebKit::WebProcess::WebProcess(v77);
    WebKit::WebProcess::singleton(void)::process = v24;
  }

  v25 = *(v24 + 53);
  ++v25[2];
  v26 = v95;
  v95 = v25;
  if (v26)
  {
    if (v26[2] == 1)
    {
      (*(*v26 + 8))(v26);
    }

    else
    {
      --v26[2];
    }
  }

  v27 = *(a1 + 96);
  ++v27[2];
  v28 = v94;
  v94 = v27;
  if (v28)
  {
    if (v28[2] == 1)
    {
      (*(*v28 + 8))(v28);
    }

    else
    {
      --v28[2];
    }
  }

  v29 = WebCore::LibWebRTCProvider::operator new(0xD8, v21);
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 0u;
  *(v29 + 96) = 0u;
  *(v29 + 112) = 0u;
  *(v29 + 128) = 0u;
  *(v29 + 144) = 0u;
  *(v29 + 160) = 0u;
  *(v29 + 176) = 0u;
  *(v29 + 192) = 0u;
  *(v29 + 208) = 0;
  *WebCore::LibWebRTCProvider::LibWebRTCProvider(v29) = &unk_1F112FAB0;
  v31 = v89;
  v89 = v29;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v81 = a3;
  {
    v32 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v78 = WebKit::WebProcess::operator new(0x370, v30);
    v32 = WebKit::WebProcess::WebProcess(v78);
    WebKit::WebProcess::singleton(void)::process = v32;
  }

  v33 = *(v32 + 103);
  if (v33)
  {
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  v34 = *(WebKit::WebProcess::singleton(void)::process + 832);
  v35 = WebKit::WebStorageProvider::operator new(0x20, v30);
  *v35 = &unk_1F112FBA0;
  v35[1] = 0;
  if (v33)
  {
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  v35[2] = v33;
  v35[3] = v34;
  add_explicit = v96;
  v96 = v35;
  if (add_explicit)
  {
    (*(*add_explicit + 8))(add_explicit);
  }

  if (v33)
  {
    add_explicit = atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed);
    if (add_explicit == 2)
    {
      WTF::StringImpl::destroy(v33, v36);
    }
  }

  v38 = *(a1 + 88);
  v40 = *(a1 + 72);
  v39 = *(a1 + 80);
  if (v38)
  {
    add_explicit = atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
  }

  v41 = WTF::fastMalloc(add_explicit, 0x20);
  *v41 = &unk_1F1130000;
  v41[1] = v40;
  v41[2] = v39;
  v41[3] = v38;
  if (v92)
  {
    if (v92 != 255)
    {
      v43 = v90;
      v90 = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }
    }

    v90 = v41;
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v42 = v90;
    v90 = v41;
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    v91 = 0;
  }

  WebCore::Page::create();
  if (*(a1 + 152) == 1)
  {
    WebKit::WebPage::updateSettingsGenerated((a1 + 104), *(v84 + 120), v45);
    if (*(a1 + 152))
    {
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
      }

      WebKit::valueForKey<unsigned int>(a1 + 104, a1 + 128, &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key);
      WebCore::Settings::setStorageBlockingPolicy();
      goto LABEL_41;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    v72 = *(a6 + 24);
    ++*(a6 + 16);
    *(a6 + 24) = 0;
    goto LABEL_75;
  }

LABEL_41:
  {
    v46 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v79 = WebKit::WebProcess::operator new(0x370, v44);
    v46 = WebKit::WebProcess::WebProcess(v79);
    WebKit::WebProcess::singleton(void)::process = v46;
  }

  if (*(v46 + 659))
  {
    if (*(v46 + 658) == 1)
    {
      if (*(a1 + 152))
      {
        v47 = (a1 + 104);
      }

      else
      {
        v47 = 0;
      }

      WebKit::WebPage::adjustSettingsForLockdownMode(*(v84 + 120), v47, v45);
    }

    v48 = (a6 + 136);
    v49 = *(a6 + 136);
    if (v49 && *(v49 + 4))
    {
      v48 = WTF::String::operator=(v48, (a1 + 88));
    }

    if ((*(a6 + 112) & 1) == 0)
    {
      WeakRandomUUIDVersion4 = WTF::UUID::generateWeakRandomUUIDVersion4(v48);
      v52 = v51;
      v53 = WebCore::Process::identifier(WeakRandomUUIDVersion4);
      v54 = *(a6 + 112);
      *(a6 + 80) = WeakRandomUUIDVersion4;
      *(a6 + 88) = v52;
      *(a6 + 96) = v53;
      if ((v54 & 1) == 0)
      {
        *(a6 + 112) = 1;
      }
    }

    WebCore::Page::setupForRemoteWorker();
    ++*(v84 + 8);
    v85 = v84;
    {
      v57 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v80 = WebKit::WebProcess::operator new(0x370, v55);
      v57 = WebKit::WebProcess::WebProcess(v80);
      WebKit::WebProcess::singleton(void)::process = v57;
      v56 = 1;
    }

    v58 = *(v57 + 49);
    v59 = WTF::fastMalloc(v56, 0xD0);
    v83 = MEMORY[0x19EB0B5B0](v59, &v85, v81, a2, a5, v82, a6, v58);
    v60 = v85;
    v85 = 0;
    if (v60)
    {
      WTF::RefCounted<WebCore::Page>::deref((v60 + 8));
    }

    v61 = v59[14];
    v62 = v61 + 1;
    while (1)
    {
      v63 = *v62;
      if ((*v62 & 1) == 0)
      {
        break;
      }

      v64 = *v62;
      atomic_compare_exchange_strong_explicit(v62, &v64, v63 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v64 == v63)
      {
        goto LABEL_64;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v62);
LABEL_64:
    WebKit::WebWorkerClient::create(v84, v61, &v85);
    v65 = v61[15];
    v61[15] = v85;
    if (v65)
    {
      v65 = (*(*v65 + 8))(v65);
    }

    WebCore::SharedWorkerContextManager::singleton(v65);
    WebCore::SharedWorkerContextManager::registerSharedWorkerThread();
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v61 + 1);
    if (!v83)
    {
      goto LABEL_80;
    }

    v66 = (v83 + 16);
    while (1)
    {
      v67 = *v66;
      if ((*v66 & 1) == 0)
      {
        break;
      }

      v68 = *v66;
      atomic_compare_exchange_strong_explicit(v66, &v68, v67 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v68 == v67)
      {
        if (v67 != 3)
        {
          goto LABEL_80;
        }

        v69 = WTF::fastMalloc(3, 0x10);
        *v69 = &unk_1F1130028;
        v69[1] = v66;
        goto LABEL_78;
      }
    }

    v70 = 0;
    a6 = *v66;
    atomic_compare_exchange_strong_explicit(a6, &v70, 1u, memory_order_acquire, memory_order_acquire);
    if (v70)
    {
      goto LABEL_102;
    }
  }

  else
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_102:
    MEMORY[0x19EB01E30](a6);
  }

  v71 = *(a6 + 8);
  a5 = v71 - 1;
  *(a6 + 8) = v71 - 1;
  if (v71 == 1)
  {
    goto LABEL_94;
  }

  v72 = 0;
LABEL_75:
  v73 = 1;
  atomic_compare_exchange_strong_explicit(a6, &v73, 0, memory_order_release, memory_order_relaxed);
  if (v73 == 1)
  {
    if (a5)
    {
      goto LABEL_80;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(a6);
    if (a5)
    {
      goto LABEL_80;
    }
  }

  v69 = WTF::fastMalloc(v73, 0x18);
  *v69 = &unk_1F1130050;
  v69[1] = a6;
  v69[2] = v72;
LABEL_78:
  v85 = v69;
  WTF::ensureOnMainThread();
  v74 = v85;
  v85 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

LABEL_80:
  if (v84)
  {
    WTF::RefCounted<WebCore::Page>::deref((v84 + 8));
  }

  return MEMORY[0x19EB076A0](buf);
}

void WebKit::WebSharedWorkerContextManagerConnection::close(WebKit::WebSharedWorkerContextManagerConnection *this)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 8);
    LODWORD(v15[0]) = 67109120;
    HIDWORD(v15[0]) = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerContextManagerConnection::close: Shared worker process is requested to stop all shared workers (already stopped = %d)", v15, 8u);
  }

  if ((*(this + 8) & 1) == 0)
  {
    *(this + 8) = 1;
    v5 = *(this + 5);
    v6 = IPC::Encoder::operator new(0x238, v3);
    *v6 = 434;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    IPC::Encoder::encodeHeader(v6);
    v15[0] = v6;
    IPC::Connection::sendMessageImpl(v5, v15, 0, 0);
    v8 = v15[0];
    v15[0] = 0;
    if (v8)
    {
      IPC::Encoder::~Encoder(v8, v7);
      v8 = bmalloc::api::tzoneFree(v12, v13);
    }

    v9 = WebCore::SharedWorkerContextManager::singleton(v8);
    WebCore::SharedWorkerContextManager::stopAllSharedWorkers(v9);
    {
      v11 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v14 = WebKit::WebProcess::operator new(0x370, v10);
      v11 = WebKit::WebProcess::WebProcess(v14);
      WebKit::WebProcess::singleton(void)::process = v11;
    }

    WebKit::AuxiliaryProcess::enableTermination(v11);
  }
}

IPC::Encoder *WebKit::WebSharedWorkerContextManagerConnection::sharedWorkerTerminated(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 134217984;
    *&v12[4] = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "WebSharedWorkerContextManagerConnection::sharedWorkerTerminated: sharedWorkerIdentifier=%llu", v12, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = IPC::Encoder::operator new(0x238, v5);
  *v7 = 3165;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  *v12 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
  IPC::Connection::sendMessageImpl(v6, v12, 0, 0);
  result = *v12;
  *v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

WebKit::WebSharedWorkerObjectConnection *WebKit::WebSharedWorkerObjectConnection::WebSharedWorkerObjectConnection(WebKit::WebSharedWorkerObjectConnection *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = WebCore::SharedWorkerObjectConnection::SharedWorkerObjectConnection(this);
  *v2 = &unk_1F112FCB0;
  v2[3] = &unk_1F112FD18;
  v2[4] = &unk_1F112FD68;
  v2[5] = 0;
  v3 = qword_1ED641300;
  v4 = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v6 = 134218240;
    v7 = this;
    v8 = 2048;
    v9 = WebCore::Process::identifier(v4);
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerObjectConnection::WebSharedWorkerObjectConnection:", &v6, 0x16u);
  }

  return this;
}

void WebKit::WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection(unsigned int **this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641300;
  v3 = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v5 = 134218240;
    v6 = this;
    v7 = 2048;
    v8 = WebCore::Process::identifier(v3);
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection:", &v5, 0x16u);
  }

  this[4] = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 5, v4);
  WebCore::SharedWorkerObjectConnection::~SharedWorkerObjectConnection(this);
}

{
  WebKit::WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection(this);

  WTF::fastFree(v1, v2);
}

void non-virtual thunk toWebKit::WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection(unsigned int **this)
{
  WebKit::WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection(this - 3);
}

{
  WebKit::WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection(this - 4);
}

{
  WebKit::WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection(this - 3);

  WTF::fastFree(v1, v2);
}

{
  WebKit::WebSharedWorkerObjectConnection::~WebSharedWorkerObjectConnection(this - 4);

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::WebSharedWorkerObjectConnection::messageSenderConnection(WebKit::WebSharedWorkerObjectConnection *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return *(WebKit::WebProcess::ensureNetworkProcessConnection(v2) + 24);
}

uint64_t non-virtual thunk toWebKit::WebSharedWorkerObjectConnection::messageSenderConnection(WebKit::WebSharedWorkerObjectConnection *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v4);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  return *(WebKit::WebProcess::ensureNetworkProcessConnection(v2) + 24);
}

IPC::Encoder *WebKit::WebSharedWorkerObjectConnection::requestSharedWorker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = qword_1ED641300;
  v13 = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v15 = WebCore::Process::identifier(v13);
    WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v28);
    WTF::String::utf8();
    if (v29)
    {
      v16 = v29 + 16;
    }

    else
    {
      v16 = 0;
    }

    *buf = 134218498;
    *&buf[4] = a1;
    v31 = 2048;
    v32 = v15;
    v33 = 2082;
    v34 = v16;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerObjectConnection::requestSharedWorker: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
    v17 = v29;
    v29 = 0;
    if (v17)
    {
      if (*v17 == 1)
      {
        WTF::fastFree(v17, v14);
      }

      else
      {
        --*v17;
      }
    }

    v13 = v28;
    v28 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v13 = WTF::StringImpl::destroy(v13, v14);
    }
  }

  v18 = WebKit::WebMessagePortChannelProvider::singleton(v13, v14);
  WebKit::WebMessagePortChannelProvider::messagePortSentToRemote(v18, a5);
  v20 = *(a1 + 24);
  v19 = a1 + 24;
  v21 = (*(v20 + 56))(v19);
  v23 = IPC::Encoder::operator new(0x238, v22);
  *v23 = 3160;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = v21;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  *buf = v23;
  IPC::ArgumentCoder<WebCore::SharedWorkerKey,void>::encode(v23, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v23, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v23, a4);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v23, a5);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v23, a5 + 2);
  IPC::ArgumentCoder<WebCore::WorkerOptions,void>::encode(v23, a6);
  (*(*v19 + 32))(v19, buf, 0);
  result = *buf;
  *buf = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v24);
    return bmalloc::api::tzoneFree(v26, v27);
  }

  return result;
}

IPC::Encoder *WebKit::WebSharedWorkerObjectConnection::sharedWorkerObjectIsGoingAway(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641300;
  v9 = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = WebCore::Process::identifier(v9);
    WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v24);
    WTF::String::utf8();
    if (v25)
    {
      v11 = v25 + 16;
    }

    else
    {
      v11 = 0;
    }

    *buf = 134218498;
    *&buf[4] = a1;
    v27 = 2048;
    v28 = v10;
    v29 = 2082;
    v30 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerObjectConnection::sharedWorkerObjectIsGoingAway: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
    v13 = v25;
    v25 = 0;
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

    v14 = v24;
    v24 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }

  v16 = *(a1 + 24);
  v15 = a1 + 24;
  v17 = (*(v16 + 56))(v15);
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 3162;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v17;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  *buf = v19;
  IPC::ArgumentCoder<WebCore::SharedWorkerKey,void>::encode(v19, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a4);
  (*(*v15 + 32))(v15, buf, 0);
  result = *buf;
  *buf = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v20);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

IPC::Encoder *WebKit::WebSharedWorkerObjectConnection::suspendForBackForwardCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641300;
  v9 = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = WebCore::Process::identifier(v9);
    WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v24);
    WTF::String::utf8();
    if (v25)
    {
      v11 = v25 + 16;
    }

    else
    {
      v11 = 0;
    }

    *buf = 134218498;
    *&buf[4] = a1;
    v27 = 2048;
    v28 = v10;
    v29 = 2082;
    v30 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerObjectConnection::suspendForBackForwardCache: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
    v13 = v25;
    v25 = 0;
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

    v14 = v24;
    v24 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }

  v16 = *(a1 + 24);
  v15 = a1 + 24;
  v17 = (*(v16 + 56))(v15);
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 3163;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v17;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  *buf = v19;
  IPC::ArgumentCoder<WebCore::SharedWorkerKey,void>::encode(v19, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a4);
  (*(*v15 + 32))(v15, buf, 0);
  result = *buf;
  *buf = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v20);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

IPC::Encoder *WebKit::WebSharedWorkerObjectConnection::resumeForBackForwardCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641300;
  v9 = os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = WebCore::Process::identifier(v9);
    WTF::makeString<unsigned long long,char,unsigned long long>(a4, 45, a3, &v24);
    WTF::String::utf8();
    if (v25)
    {
      v11 = v25 + 16;
    }

    else
    {
      v11 = 0;
    }

    *buf = 134218498;
    *&buf[4] = a1;
    v27 = 2048;
    v28 = v10;
    v29 = 2082;
    v30 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] WebSharedWorkerObjectConnection::resumeForBackForwardCache: sharedWorkerObjectIdentifier=%{public}s", buf, 0x20u);
    v13 = v25;
    v25 = 0;
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

    v14 = v24;
    v24 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }
  }

  v16 = *(a1 + 24);
  v15 = a1 + 24;
  v17 = (*(v16 + 56))(v15);
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 3161;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v17;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  *buf = v19;
  IPC::ArgumentCoder<WebCore::SharedWorkerKey,void>::encode(v19, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a4);
  (*(*v15 + 32))(v15, buf, 0);
  result = *buf;
  *buf = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v20);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

uint64_t *WebKit::WebSharedWorkerProvider::singleton(WebKit::WebSharedWorkerProvider *this)
{
  if ((_MergedGlobals_113 & 1) == 0)
  {
    qword_1ED642C50 = &unk_1F112FDB0;
    _MergedGlobals_113 = 1;
  }

  return &qword_1ED642C50;
}

WebKit::WebSharedWorkerObjectConnection *WebKit::WebSharedWorkerProvider::sharedWorkerConnection(WebKit::WebSharedWorkerProvider *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = WebKit::WebProcess::ensureNetworkProcessConnection(v2);
  v4 = (*(v3 + 5) + 1);
  *(v3 + 5) = v4;
  v5 = WebKit::NetworkProcessConnection::sharedWorkerConnection(v3, v4);
  if (*(v3 + 5) == 1)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    --*(v3 + 5);
  }

  return v5;
}

uint64_t **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>@<X0>(uint64_t **result@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E360AFCLL);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E360B1CLL);
  }

  v6 = result;
  v7 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0, v4);
    v7 = *v6;
    v4 = *a2;
  }

  v8 = *(v7 - 2);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = &v7[2 * v12];
  v14 = *v13;
  if (*v13)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (v14 == v4)
      {
        v20 = 0;
        v19 = &v7[2 * *(v7 - 1)];
        goto LABEL_14;
      }

      if (v14 == -1)
      {
        v21 = v13;
      }

      v12 = (v12 + v22) & v8;
      v13 = &v7[2 * v12];
      v14 = *v13;
      ++v22;
    }

    while (*v13);
    if (v21)
    {
      *v21 = 0;
      v21[1] = 0;
      --*(*v6 - 4);
      v4 = *a2;
      v13 = v21;
    }
  }

  result = v13[1];
  *v13 = v4;
  v13[1] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v15 = *v6;
  if (*v6)
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
      goto LABEL_13;
    }

LABEL_17:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v6, v13, v15);
    v13 = result;
    v15 = *v6;
    if (*v6)
    {
      v18 = *(v15 - 1);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_13;
  }

  if (3 * v18 <= 4 * v17)
  {
    goto LABEL_17;
  }

LABEL_13:
  v19 = &v15[2 * v18];
  v20 = 1;
LABEL_14:
  *a3 = v13;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  return result;
}

WebCore::UserContentProvider *WebKit::WebUserContentController::WebUserContentController(WebCore::UserContentProvider *a1, uint64_t a2)
{
  v4 = WebCore::UserContentProvider::UserContentProvider(a1);
  v6 = v4 + 48;
  *v4 = &unk_1F112FDD8;
  *(v4 + 48) = &unk_1F112FE30;
  *(v4 + 56) = 0;
  *(v4 + 64) = a2;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = v4 + 48;
    v10 = WebKit::WebProcess::operator new(0x370, v5);
    v7 = WebKit::WebProcess::WebProcess(v10);
    v6 = v9;
    WebKit::WebProcess::singleton(void)::process = v7;
    a2 = *(a1 + 8);
  }

  v12[0] = 211;
  v12[1] = a2;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(v7 + 7, v12, v6, v11);
  return a1;
}

void WebKit::WebUserContentController::~WebUserContentController(WebKit::WebUserContentController *this, void *a2)
{
  v3 = WebKit::WebProcess::singleton(this, a2);
  WebKit::AuxiliaryProcess::removeMessageReceiver(v3, 0xD3u, *(this + 8));
  {
    WebKit::userContentControllers(void)::userContentControllers = 0;
  }

  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 8);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebUserContentController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v4, v5);
  v7 = *(this + 12);
  if (v7)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebCore::ContentExtensions::ContentExtension,WTF::RawPtrTraits<WebCore::ContentExtensions::ContentExtension>,WTF::DefaultRefDerefTraits<WebCore::ContentExtensions::ContentExtension>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v6);
  }

  v8 = *(this + 11);
  if (v8)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable( v8,  v6);
  }

  v9 = *(this + 10);
  if (v9)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable(v9, v6);
  }

  v10 = *(this + 9);
  if (v10)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable(v10, v6);
  }

  *(this + 6) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 7, v6);

  MEMORY[0x1EEE57748](this);
}

{
  WebKit::WebUserContentController::~WebUserContentController(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::WebUserContentController::~WebUserContentController(WebKit::WebUserContentController *this, void *a2)
{
  WebKit::WebUserContentController::~WebUserContentController((this - 48), a2);
}

{
  WebKit::WebUserContentController::~WebUserContentController((this - 48), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::WebUserContentController::worldForIdentifier(WebKit *a1, uint64_t a2)
{
  v5 = a2;
  WebKit::worldMap(a1);
  v2 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  &v5);
  WebKit::worldMap(v2);
  v3 = qword_1ED642C58;
  if (qword_1ED642C58)
  {
    v3 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
  }

  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return v2[1];
  }
}

uint64_t *WebKit::worldMap(WebKit *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((byte_1ED642C49 & 1) == 0)
  {
    {
      v2 = WebKit::pageContentWorldIdentifier(void)::identifier;
    }

    else
    {
      v2 = 1;
      WebKit::pageContentWorldIdentifier(void)::identifier = 1;
    }

    v3 = WebKit::InjectedBundleScriptWorld::normalWorldSingleton(this);
    CFRetain(*(v3 + 1));
    v5 = v2;
    v6 = v3;
    v7 = 1;
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(&v5, 1);
    v4 = v6;
    v6 = 0;
    if (v4)
    {
      CFRelease(*(v4 + 1));
    }

    byte_1ED642C49 = 1;
  }

  return &qword_1ED642C58;
}

uint64_t WebKit::WebUserContentController::addContentWorld(WebKit *a1, uint64_t a2)
{
  {
    v3 = WebKit::pageContentWorldIdentifier(void)::identifier;
  }

  else
  {
    v3 = 1;
    WebKit::pageContentWorldIdentifier(void)::identifier = 1;
  }

  if (*a2 == v3)
  {
    return 0;
  }

  WebKit::worldMap(a1);
  v7 = a2;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::WebUserContentController::addContentWorld(WebKit::ContentWorldData const&)::$_0>(&v8, a2, &v7);
  if (v9 != 1)
  {
    return 0;
  }

  v4 = *(v8 + 8);
  CFRetain(*(v4 + 8));
  v6 = *(a2 + 16);
  if (v6)
  {
    WebKit::InjectedBundleScriptWorld::makeAllShadowRootsOpen(v4);
    v6 = *(a2 + 16);
  }

  if ((v6 & 2) != 0)
  {
    WebKit::InjectedBundleScriptWorld::setAllowAutofill(v4);
    v6 = *(a2 + 16);
  }

  if ((v6 & 4) != 0)
  {
    WebKit::InjectedBundleScriptWorld::setAllowElementUserInfo(v4);
    v6 = *(a2 + 16);
  }

  if ((v6 & 8) != 0)
  {
    WebKit::InjectedBundleScriptWorld::disableOverrideBuiltinsBehavior(v4);
  }

  CFRelease(*(v4 + 8));
  return v4;
}

void WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::WebUserContentController::addContentWorld(WebKit::ContentWorldData const&)::$_0>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E361164);
  }

  v26[7] = v3;
  v26[8] = v4;
  v9 = qword_1ED642C58;
  if (!qword_1ED642C58)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(0);
    v9 = qword_1ED642C58;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = v9 + 24 * v14;
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v25 = 0;
        v24 = v9 + 24 * *(v9 - 4);
        goto LABEL_23;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = v9 + 24 * v14;
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      --*(v9 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  WebKit::InjectedBundleScriptWorld::create((*a3 + 8), v26);
  v19 = *(v15 + 8);
  *(v15 + 8) = v26[0];
  if (v19)
  {
    CFRelease(*(v19 + 8));
  }

  v20 = 1;
  *(v15 + 16) = 1;
  v21 = qword_1ED642C58;
  if (qword_1ED642C58)
  {
    v20 = *(qword_1ED642C58 - 12) + 1;
  }

  *(qword_1ED642C58 - 12) = v20;
  v22 = (*(v21 - 16) + v20);
  v23 = *(v21 - 4);
  if (v23 > 0x400)
  {
    if (v23 <= 2 * v22)
    {
LABEL_19:
      v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v15);
      v21 = qword_1ED642C58;
      if (qword_1ED642C58)
      {
        LODWORD(v23) = *(qword_1ED642C58 - 4);
      }

      else
      {
        LODWORD(v23) = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_19;
  }

  v24 = v21 + 24 * v23;
  v25 = 1;
LABEL_23:
  *a1 = v15;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
}

void WebKit::WebUserContentController::addContentWorlds(CFTypeRef *a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (v4)
  {
    v13[7] = v2;
    v13[8] = v3;
    v5 = a1;
    v6 = *a2;
    v7 = 24 * v4;
    do
    {
      a1 = WebKit::WebUserContentController::addContentWorld(a1, v6);
      if (a1)
      {
        v8 = a1;
        CFRetain(a1[1]);
        v13[0] = v8;
        v10 = WTF::fastMalloc(v9, 0x18);
        *v10 = &unk_1F1130078;
        v10[1] = v5;
        v10[2] = v13;
        v12 = v10;
        WebCore::Page::forEachPage();
        a1 = v12;
        if (v12)
        {
          a1 = (*(*v12 + 1))(v12);
        }

        v11 = v13[0];
        v13[0] = 0;
        if (v11)
        {
          CFRelease(*(v11 + 8));
        }
      }

      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }
}

void WebKit::WebUserContentController::removeContentWorlds(WebKit *a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v3 = *a2;
    for (i = 8 * v2; i; i -= 8)
    {
      WebKit::worldMap(a1);
      v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  v3);
      a1 = WebKit::worldMap(v5);
      v6 = qword_1ED642C58;
      if (qword_1ED642C58)
      {
        v6 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
      }

      if (v6 == v5)
      {
        WTFLogAlways("Trying to remove a ContentWorld (id=%llu) that does not exist.", *v3);
        return;
      }

      v7 = *(v5 + 4) - 1;
      *(v5 + 4) = v7;
      if (!v7)
      {
        a1 = WebKit::worldMap(a1);
        v8 = qword_1ED642C58;
        if (qword_1ED642C58)
        {
          v9 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
          if (v9 != v5)
          {
            goto LABEL_11;
          }
        }

        else if (v5)
        {
          v9 = 0;
LABEL_11:
          if (v9 != v5)
          {
            v10 = v5[1];
            *v5 = -1;
            v5[1] = 0;
            if (v10)
            {
              CFRelease(*(v10 + 8));
              v8 = qword_1ED642C58;
            }

            v11 = vadd_s32(*(v8 - 16), 0xFFFFFFFF00000001);
            *(v8 - 16) = v11;
            v12 = *(v8 - 4);
            if (6 * v11.i32[1] < v12 && v12 >= 9)
            {
              a1 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v12 >> 1, 0);
            }
          }
        }
      }

      ++v3;
    }
  }
}

void WebKit::WebUserContentController::addUserScripts(WebKit *a1, _DWORD *a2, uint64_t a3)
{
  v5 = a2[3];
  if (v5)
  {
    v15[21] = v3;
    v15[22] = v4;
    v6 = a3;
    v8 = 104 * v5;
    v9 = (*a2 + 8);
    do
    {
      WebKit::worldMap(a1);
      v10 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  v9);
      WebKit::worldMap(v10);
      v11 = qword_1ED642C58;
      if (qword_1ED642C58)
      {
        v11 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
      }

      if (v11 == v10)
      {
        WTFLogAlways("Trying to add a UserScript to a ContentWorld (id=%llu) that does not exist.", *v9);
      }

      else
      {
        WebCore::UserScript::UserScript(v15, (v9 + 1));
        v12 = v10[1];
        CFRetain(*(v12 + 8));
        *&v14 = *(v9 - 1);
        BYTE8(v14) = 1;
        WebKit::WebUserContentController::addUserScriptInternal(a1, v12, &v14, v15, v6, v14);
        CFRelease(*(v12 + 8));
        WebCore::UserScript::~UserScript(v15, v13);
      }

      v9 += 13;
      v8 -= 104;
    }

    while (v8);
  }
}

void WebKit::WebUserContentController::addUserScriptInternal(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (a5)
  {
    v10 = WTF::fastMalloc(a6, 0x20);
    *v10 = &unk_1F11300A0;
    v10[1] = a1;
    v10[2] = a4;
    v10[3] = a2;
    *&v43 = v10;
    WebCore::Page::forEachPage();
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }
  }

  CFRetain(*(a2 + 8));
  v15 = *(a1 + 72);
  v14 = (a1 + 72);
  v13 = v15;
  if (!v15)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand(v14, 0);
    v13 = *v14;
  }

  v16 = *(v13 - 8);
  v17 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
  v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
  v20 = v16 & ((v19 >> 31) ^ v19);
  v21 = (v13 + 24 * v20);
  v22 = *v21;
  if (*v21)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (v22 == a2)
      {
        CFRelease(*(a2 + 8));
        goto LABEL_25;
      }

      if (v22 == -1)
      {
        v23 = v21;
      }

      v20 = (v20 + v24) & v16;
      v21 = (v13 + 24 * v20);
      v22 = *v21;
      ++v24;
    }

    while (*v21);
    if (v23)
    {
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
      --*(*v14 - 16);
      v21 = v23;
    }
  }

  *v21 = a2;
  v43 = 0uLL;
  v25 = *(v21 + 5);
  if (v25)
  {
    v26 = 104 * v25;
    v27 = (v21[1] + 16);
    do
    {
      WebCore::UserScript::~UserScript(v27, v11);
      v27 = (v28 + 104);
      v26 -= 104;
    }

    while (v26);
  }

  v29 = v21[1];
  if (v29)
  {
    v21[1] = 0;
    *(v21 + 4) = 0;
    WTF::fastFree(v29, v11);
  }

  *&v12 = 0;
  v43 = v12;
  v21[1] = 0;
  v21[2] = 0;
  WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v11);
  v30 = *v14;
  if (*v14)
  {
    v31 = *(v30 - 12) + 1;
  }

  else
  {
    v31 = 1;
  }

  *(v30 - 12) = v31;
  v32 = (*(v30 - 16) + v31);
  v33 = *(v30 - 4);
  if (v33 > 0x400)
  {
    if (v33 > 2 * v32)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (3 * v33 <= 4 * v32)
  {
LABEL_23:
    v21 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand(v14, v21);
  }

LABEL_25:
  if (*(a3 + 8) == 1 && (v34 = *(v21 + 5), v34))
  {
    v35 = (v21[1] + 8);
    while (*v35 != 1 || *(v35 - 1) != *a3)
    {
      v35 += 104;
      if (!--v34)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    v43 = *a3;
    WebCore::UserScript::UserScript(v44, a4);
    v36 = *(v21 + 5);
    if (v36 == *(v21 + 4))
    {
      v37 = WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v21 + 1, v36 + 1, &v43);
      v38 = (v21[1] + 104 * *(v21 + 5));
      *v38 = *v37;
      v39 = (v38 + 1);
      v40 = (v37 + 1);
    }

    else
    {
      v41 = (v21[1] + 104 * v36);
      *v41 = v43;
      v39 = (v41 + 1);
      v40 = v44;
    }

    WebCore::UserScript::UserScript(v39, v40);
    ++*(v21 + 5);
    WebCore::UserScript::~UserScript(v44, v42);
  }
}

void WebKit::WebUserContentController::removeUserScript(WebKit *a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  WebKit::worldMap(a1);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  &v20);
  WebKit::worldMap(v5);
  v6 = qword_1ED642C58;
  if (qword_1ED642C58)
  {
    v6 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
  }

  if (v6 == v5)
  {
    WTFLogAlways("Trying to remove a UserScript from a ContentWorld (id=%llu) that does not exist.", v20);
    return;
  }

  v7 = v5[1];
  CFRetain(*(v7 + 8));
  v9 = *(a1 + 9);
  v8 = (a1 + 72);
  v10 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>( v9,  v7);
  v12 = v10;
  v13 = *v8;
  if (*v8)
  {
    v14 = (v13 + 24 * *(v13 - 4));
  }

  else
  {
    v14 = 0;
  }

  if (v14 != v10)
  {
    v15 = *(v10 + 5);
    if (v15)
    {
      v16 = v10[1];
      while (*(v16 + 8) != 1 || *v16 != a3)
      {
        v16 += 104;
        if (!--v15)
        {
          goto LABEL_23;
        }
      }

      WebCore::UserScript::~UserScript((v16 + 16), v11);
      WTF::VectorMover<false,WebKit::WebUserScriptData>::move(v16 + 104, v12[1] + 104 * *(v12 + 5), v16);
      v18 = *(v12 + 5) - 1;
      *(v12 + 5) = v18;
      if (v18)
      {
        goto LABEL_23;
      }

      v13 = *v8;
    }

    if (v13)
    {
      v19 = v13 + 24 * *(v13 - 4);
      if (v19 != v12)
      {
LABEL_21:
        if (v19 != v12)
        {
          WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove(v8, v12);
        }
      }
    }

    else if (v12)
    {
      v19 = 0;
      goto LABEL_21;
    }
  }

LABEL_23:
  CFRelease(*(v7 + 8));
}

double WebKit::WebUserContentController::removeAllUserScripts(WebKit *a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2)
  {
    v4 = *a2;
    for (i = 8 * v2; i; i -= 8)
    {
      WebKit::worldMap(a1);
      v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  v4);
      WebKit::worldMap(v6);
      v7 = qword_1ED642C58;
      if (qword_1ED642C58)
      {
        v7 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
      }

      if (v7 == v6)
      {
        return WTFLogAlways("Trying to remove all UserScripts from a ContentWorld (id=%llu) that does not exist.", *v4);
      }

      v8 = v6[1];
      CFRetain(*(v8 + 8));
      v9 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>( *(a1 + 9),  v8);
      v10 = *(a1 + 9);
      if (v10)
      {
        v11 = (v10 + 24 * *(v10 - 4));
        if (v11 != v9)
        {
          goto LABEL_9;
        }
      }

      else if (v9)
      {
        v11 = 0;
LABEL_9:
        if (v11 != v9)
        {
          WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove(a1 + 9, v9);
        }
      }

      CFRelease(*(v8 + 8));
      ++v4;
    }
  }

  return result;
}

uint64_t WebKit::WebUserContentController::addUserStyleSheets(WebCore::UserContentProvider *this, unsigned int *a2)
{
  v3 = a2[3];
  if (v3)
  {
    v5 = 120 * v3;
    v6 = (*a2 + 8);
    do
    {
      WebKit::worldMap(this);
      v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  v6);
      WebKit::worldMap(v7);
      v8 = qword_1ED642C58;
      if (qword_1ED642C58)
      {
        v8 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
      }

      if (v8 == v7)
      {
        WTFLogAlways("Trying to add a UserStyleSheet to a ContentWorld (id=%llu) that does not exist.", *v6);
      }

      else
      {
        WebCore::UserStyleSheet::UserStyleSheet(v12, (v6 + 1));
        v9 = v7[1];
        CFRetain(*(v9 + 8));
        *&v11 = *(v6 - 1);
        BYTE8(v11) = 1;
        WebKit::WebUserContentController::addUserStyleSheetInternal(this, v9, &v11, v12);
        CFRelease(*(v9 + 8));
        WebCore::UserScript::~UserScript(v12, v10);
      }

      v6 += 15;
      v5 -= 120;
    }

    while (v5);
  }

  return WebCore::UserContentProvider::invalidateInjectedStyleSheetCacheInAllFramesInAllPages(this);
}

void WebKit::WebUserContentController::addUserStyleSheetInternal(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  CFRetain(*(a2 + 8));
  v12 = *(a1 + 80);
  v11 = (a1 + 80);
  v10 = v12;
  if (!v12)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand(v11, 0);
    v10 = *v11;
  }

  v13 = *(v10 - 8);
  v14 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = v13 & ((v16 >> 31) ^ v16);
  v18 = (v10 + 24 * v17);
  v19 = *v18;
  if (*v18)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v19 == a2)
      {
        CFRelease(*(a2 + 8));
        goto LABEL_21;
      }

      if (v19 == -1)
      {
        v20 = v18;
      }

      v17 = (v17 + v21) & v13;
      v18 = (v10 + 24 * v17);
      v19 = *v18;
      ++v21;
    }

    while (*v18);
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
      --*(*v11 - 16);
      v18 = v20;
    }
  }

  *v18 = a2;
  v51 = 0uLL;
  v22 = *(v18 + 5);
  if (v22)
  {
    WTF::VectorTypeOperations<WebKit::WebUserStyleSheetData>::destruct(v18[1], (v18[1] + 120 * v22));
  }

  v23 = v18[1];
  if (v23)
  {
    v18[1] = 0;
    *(v18 + 4) = 0;
    WTF::fastFree(v23, v8);
  }

  *&v9 = 0;
  v51 = v9;
  v18[1] = 0;
  v18[2] = 0;
  WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51, v8);
  v25 = *v11;
  if (*v11)
  {
    v26 = *(v25 - 12) + 1;
  }

  else
  {
    v26 = 1;
  }

  *(v25 - 12) = v26;
  v27 = (*(v25 - 16) + v26);
  v28 = *(v25 - 4);
  if (v28 > 0x400)
  {
    if (v28 > 2 * v27)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (3 * v28 <= 4 * v27)
  {
LABEL_19:
    v18 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand(v11, v18);
  }

LABEL_21:
  if (*(a3 + 8) == 1 && (v29 = *(v18 + 5), v29))
  {
    v30 = (v18[1] + 8);
    while (*v30 != 1 || *(v30 - 1) != *a3)
    {
      v30 += 120;
      if (!--v29)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    if (*(a4 + 96))
    {
      v31 = *(a4 + 88);
      {
        v32 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v50 = WebKit::WebProcess::operator new(0x370, v24);
        v32 = WebKit::WebProcess::WebProcess(v50);
        WebKit::WebProcess::singleton(void)::process = v32;
      }

      *&v51 = v31;
      v33 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v32 + 17, &v51);
      if (v33)
      {
        v34 = v33;
        CFRetain(*(v33 + 8));
        v35 = *(v34 + 56);
        if (v35)
        {
          v36 = (v35 + 8);
          ++*(v35 + 8);
          WebCore::Page::injectUserStyleSheet();
          WTF::RefCounted<WebCore::Page>::deref(v36);
        }

        CFRelease(*(v34 + 8));
      }
    }

    v51 = *a3;
    v37 = *a4;
    *a4 = 0;
    v52 = v37;
    WTF::URL::URL(&v53, (a4 + 8));
    *&v38 = 0;
    v39 = *(a4 + 56);
    v54[0] = *(a4 + 48);
    v54[1] = v39;
    v40 = *(a4 + 64);
    v41 = *(a4 + 72);
    *(a4 + 48) = v38;
    *(a4 + 64) = 0u;
    v55[0] = v40;
    v55[1] = v41;
    v56 = *(a4 + 80);
    v57 = *(a4 + 96);
    v42 = *(v18 + 5);
    if (v42 == *(v18 + 4))
    {
      v43 = WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v18 + 1), v42 + 1, &v51);
      v44 = v18[1] + 120 * *(v18 + 5);
    }

    else
    {
      v44 = v18[1] + 120 * v42;
      v43 = &v51;
    }

    std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>::pair[abi:sn200100](v44, v43);
    ++*(v18 + 5);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v55, v45);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v54, v46);
    v48 = v53;
    v53 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v47);
    }

    v49 = v52;
    v52 = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v47);
      }
    }
  }
}

void WebKit::WebUserContentController::removeUserStyleSheet(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  WebKit::worldMap(a1);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  &v28);
  WebKit::worldMap(v5);
  v6 = qword_1ED642C58;
  if (qword_1ED642C58)
  {
    v6 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
  }

  if (v6 == v5)
  {
    WTFLogAlways("Trying to remove a UserStyleSheet from a ContentWorld (id=%llu) that does not exist.", v28);
  }

  else
  {
    v7 = v5[1];
    CFRetain(*(v7 + 8));
    v8 = a1 + 10;
    v10 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>( a1[10],  v7);
    v11 = a1[10];
    if (v11)
    {
      goto LABEL_38;
    }

    while (1)
    {
      if (v11 == v10)
      {
        goto LABEL_31;
      }

      v12 = *(v10 + 5);
      if (!v12)
      {
        goto LABEL_31;
      }

      v13 = v10[1];
      v14 = 0;
      if (*(v13 + 8) != 1 || *v13 != a3)
      {
        break;
      }

      v19 = 1;
LABEL_20:
      if (*(v13 + 112))
      {
        a3 = *(v13 + 104);
        {
          v20 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v27 = WebKit::WebProcess::operator new(0x370, v9);
          v20 = WebKit::WebProcess::WebProcess(v27);
          WebKit::WebProcess::singleton(void)::process = v20;
        }

        v29 = a3;
        v21 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v20 + 17, &v29);
        if (v21)
        {
          a3 = v21;
          CFRetain(*(v21 + 8));
          v22 = *(a3 + 56);
          if (v22)
          {
            v23 = (v22 + 8);
            ++*(v22 + 8);
            WebCore::Page::removeInjectedUserStyleSheet();
            WTF::RefCounted<WebCore::Page>::deref(v23);
          }

          CFRelease(*(a3 + 8));
        }
      }

      v11 = *(v10 + 5);
      if (v14 < v11)
      {
        v24 = v10[1] + 120 * v14;
        WTF::VectorTypeOperations<WebKit::WebUserStyleSheetData>::destruct(v24, (v24 + 120));
        WTF::VectorMover<false,std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>>::move((v24 + 120), (v10[1] + 120 * *(v10 + 5)), v24);
        v25 = *(v10 + 5) - 1;
        *(v10 + 5) = v25;
        if (!v19)
        {
          goto LABEL_31;
        }

        if (v25)
        {
          goto LABEL_30;
        }

        if (*v8)
        {
          v26 = *v8 + 24 * *(*v8 - 4);
          if (v26 != v10)
          {
            goto LABEL_35;
          }
        }

        else if (v10)
        {
          v26 = 0;
LABEL_35:
          if (v26 != v10)
          {
            WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove(a1 + 10, v10);
          }
        }

LABEL_30:
        WebCore::UserContentProvider::invalidateInjectedStyleSheetCacheInAllFramesInAllPages(a1);
        goto LABEL_31;
      }

      __break(1u);
LABEL_38:
      v11 += 3 * *(v11 - 1);
    }

    while (v12 - 1 != v14)
    {
      v17 = *(v13 + 120);
      v13 += 120;
      v16 = v17;
      ++v14;
      if (*(v13 + 8) == 1 && v16 == a3)
      {
        v19 = v14 < v12;
        goto LABEL_20;
      }
    }

LABEL_31:
    CFRelease(*(v7 + 8));
  }
}

void WebKit::WebUserContentController::removeAllUserStyleSheets(WebKit *a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return;
  }

  v4 = 0;
  v5 = *a2;
  v6 = 8 * v2;
  do
  {
    WebKit::worldMap(a1);
    v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  v5);
    WebKit::worldMap(v7);
    v8 = qword_1ED642C58;
    if (qword_1ED642C58)
    {
      v8 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
    }

    if (v8 == v7)
    {
      WTFLogAlways("Trying to remove all UserStyleSheets from a ContentWorld (id=%llu) that does not exist.", *v5);
      return;
    }

    v9 = v7[1];
    CFRetain(*(v9 + 8));
    v10 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>( *(a1 + 10),  v9);
    v11 = *(a1 + 10);
    if (v11)
    {
      v12 = (v11 + 24 * *(v11 - 4));
      if (v12 == v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      v12 = 0;
    }

    if (v12 != v10)
    {
      WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove(a1 + 10, v10);
    }

    v4 = 1;
LABEL_12:
    CFRelease(*(v9 + 8));
    ++v5;
    v6 -= 8;
  }

  while (v6);
  if (v4)
  {

    WebCore::UserContentProvider::invalidateInjectedStyleSheetCacheInAllFramesInAllPages(a1);
  }
}

void WebKit::WebUserContentController::addUserScriptMessageHandlers(WebKit *a1, unsigned int *a2)
{
  v4 = a2[3];
  if (v4)
  {
    v14[11] = v2;
    v14[12] = v3;
    v6 = 24 * v4;
    v7 = (*a2 + 8);
    do
    {
      WebKit::worldMap(a1);
      v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  v7);
      WebKit::worldMap(v8);
      v9 = qword_1ED642C58;
      if (qword_1ED642C58)
      {
        v9 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
      }

      if (v9 == v8)
      {
        WTFLogAlways("Trying to add a UserScriptMessageHandler to a ContentWorld (id=%llu) that does not exist.", *v7);
      }

      else
      {
        v10 = v8[1];
        CFRetain(*(v10 + 8));
        v11 = *(v7 - 1);
        WTF::AtomString::AtomString(v14, (v7 + 1));
        WebKit::WebUserContentController::addUserScriptMessageHandlerInternal(a1, v10, v11, v14);
        v13 = v14[0];
        v14[0] = 0;
        if (v13)
        {
          if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v12);
          }
        }

        CFRelease(*(v10 + 8));
      }

      v7 += 3;
      v6 -= 24;
    }

    while (v6);
  }
}

void WebKit::WebUserContentController::addUserScriptMessageHandlerInternal(uint64_t a1, uint64_t a2, uint64_t a3, const AtomString *a4)
{
  CFRetain(*(a2 + 8));
  v11 = (a1 + 88);
  v10 = *(a1 + 88);
  if (!v10)
  {
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand( (a1 + 88),  0);
    v10 = *v11;
  }

  v12 = *(v10 - 8);
  v13 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = (v10 + 24 * v16);
  v18 = *v17;
  if (*v17)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v18 == a2)
      {
        CFRelease(*(a2 + 8));
        goto LABEL_22;
      }

      if (v18 == -1)
      {
        v19 = v17;
      }

      v16 = (v16 + v20) & v12;
      v17 = (v10 + 24 * v16);
      v18 = *v17;
      ++v20;
    }

    while (*v17);
    if (v19)
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 0;
      --*(*v11 - 16);
      v17 = v19;
    }
  }

  *v17 = a2;
  v39 = 0uLL;
  v21 = *(v17 + 5);
  if (v21)
  {
    WTF::VectorDestructor<true,std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>>::destruct(v17[1], (v17[1] + 16 * v21));
  }

  v22 = v17[1];
  if (v22)
  {
    v17[1] = 0;
    *(v17 + 4) = 0;
    WTF::fastFree(v22, v8);
  }

  *&v9 = 0;
  v39 = v9;
  v17[1] = 0;
  v17[2] = 0;
  WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v8);
  v23 = *v11;
  if (*v11)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v25 = (*(v23 - 16) + v24);
  v26 = *(v23 - 4);
  if (v26 <= 0x400)
  {
    if (3 * v26 > 4 * v25)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v26 <= 2 * v25)
  {
LABEL_21:
    v17 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::expand( (a1 + 88),  v17);
  }

LABEL_22:
  v27 = *(v17 + 5);
  if (v27)
  {
    v28 = v17[1];
    while (1)
    {
      v29 = *v28;
      v28 += 2;
      if (v29 == a3)
      {
        break;
      }

      v27 = (v27 - 1);
      if (!v27)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    v30 = WTF::fastMalloc(v27, 0x30);
    *WebCore::UserMessageHandlerDescriptor::UserMessageHandlerDescriptor(v30, a4, *(a2 + 24)) = &unk_1F112FF88;
    if (a1)
    {
      ++*(a1 + 8);
    }

    v30[4] = a1;
    v30[5] = a3;
    v31 = *(v17 + 5);
    if (v31 == *(v17 + 4))
    {
      if (v31 + (v31 >> 1) <= v31 + 1)
      {
        v32 = v31 + 1;
      }

      else
      {
        v32 = v31 + (v31 >> 1);
      }

      if (v32 >> 28)
      {
        __break(0xC471u);
        return;
      }

      v33 = v17[1];
      if (v32 <= 0x10)
      {
        v34 = 16;
      }

      else
      {
        v34 = v32;
      }

      v35 = (v33 + 16 * v31);
      v36 = WTF::fastMalloc(v31, (16 * v34));
      *(v17 + 4) = v34;
      v17[1] = v36;
      WTF::VectorMover<false,std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>>::move(v33, v35, v36);
      if (v33)
      {
        if (v17[1] == v33)
        {
          v17[1] = 0;
          *(v17 + 4) = 0;
        }

        WTF::fastFree(v33, v37);
      }

      v31 = *(v17 + 5);
    }

    v38 = (v17[1] + 16 * v31);
    *v38 = a3;
    v38[1] = v30;
    ++*(v17 + 5);
  }
}

void WebKit::WebUserContentController::removeUserScriptMessageHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  WebKit::worldMap(a1);
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  &v22);
  WebKit::worldMap(v5);
  v6 = qword_1ED642C58;
  if (qword_1ED642C58)
  {
    v6 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
  }

  if (v6 == v5)
  {
    WTFLogAlways("Trying to remove a UserScriptMessageHandler from a ContentWorld (id=%llu) that does not exist.", v22);
    return;
  }

  v7 = v5[1];
  CFRetain(*(v7 + 8));
  v8 = (a1 + 88);
  v9 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>( *(a1 + 88),  v7);
  v10 = v9;
  v11 = *(a1 + 88);
  if (v11)
  {
    v11 += 3 * *(v11 - 1);
  }

  if (v11 == v9)
  {
    goto LABEL_22;
  }

  v12 = *(a1 + 8);
  *(a1 + 8) = v12 + 1;
  v13 = *(v9 + 5);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v9[1];
  if (*v14 == a3)
  {
    v15 = 0;
    v16 = 1;
LABEL_15:
    v19 = &v14[2 * v15];
    WTF::VectorDestructor<true,std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>>::destruct(v19, v19 + 4);
    WTF::VectorMover<false,std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>>::move(v19 + 4, (v10[1] + 16 * *(v10 + 5)), v19);
    v20 = *(v10 + 5) - 1;
    *(v10 + 5) = v20;
    if (v16)
    {
      if (v20)
      {
LABEL_17:
        WebCore::UserContentProvider::invalidateAllRegisteredUserMessageHandlerInvalidationClients(a1);
        goto LABEL_18;
      }

      if (*v8)
      {
        v21 = *v8 + 24 * *(*v8 - 4);
        if (v21 == v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_17;
        }

        v21 = 0;
      }

      if (v21 != v10)
      {
        WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove( (a1 + 88),  v10);
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v17 = v14 + 2;
    while (v13 - 1 != v15)
    {
      v18 = *v17;
      v17 += 2;
      ++v15;
      if (v18 == a3)
      {
        v16 = v15 < v13;
        goto LABEL_15;
      }
    }
  }

LABEL_18:
  if (a1)
  {
    v12 = *(a1 + 8) - 1;
LABEL_20:
    if (v12)
    {
      *(a1 + 8) = v12;
    }

    else
    {
      (*(*a1 + 8))(a1);
    }
  }

LABEL_22:
  CFRelease(*(v7 + 8));
}

uint64_t WebKit::WebUserContentController::removeAllUserScriptMessageHandlers(WebKit::WebUserContentController *this, void *a2)
{
  result = *(this + 11);
  if (result && *(result - 12))
  {
    *(this + 11) = 0;
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable( result,  a2);

    return WebCore::UserContentProvider::invalidateAllRegisteredUserMessageHandlerInvalidationClients(this);
  }

  return result;
}

double WebKit::WebUserContentController::removeAllUserScriptMessageHandlersForWorlds(WebKit *a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return result;
  }

  v4 = 0;
  v5 = *a2;
  v6 = 8 * v2;
  do
  {
    WebKit::worldMap(a1);
    v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,unsigned int>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( &qword_1ED642C58,  v5);
    WebKit::worldMap(v7);
    v8 = qword_1ED642C58;
    if (qword_1ED642C58)
    {
      v8 = qword_1ED642C58 + 24 * *(qword_1ED642C58 - 4);
    }

    if (v8 == v7)
    {
      return WTFLogAlways("Trying to remove all UserScriptMessageHandler from a ContentWorld (id=%llu) that does not exist.", *v5);
    }

    v9 = v7[1];
    CFRetain(*(v9 + 8));
    v10 = WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>>,(WTF::ShouldValidateKey)1,WebKit::InjectedBundleScriptWorld const*>( *(a1 + 11),  v9);
    v11 = *(a1 + 11);
    if (v11)
    {
      v12 = (v11 + 24 * *(v11 - 4));
      if (v12 == v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_14;
      }

      v12 = 0;
    }

    if (v12 != v10)
    {
      WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebUserMessageHandlerDescriptorProxy,WTF::RawPtrTraits<WebKit::WebUserMessageHandlerDescriptorProxy>,WTF::DefaultRefDerefTraits<WebKit::WebUserMessageHandlerDescriptorProxy>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::remove( a1 + 11,  v10);
    }

    v4 = 1;
LABEL_14:
    CFRelease(*(v9 + 8));
    ++v5;
    v6 -= 8;
  }

  while (v6);
  if (v4)
  {

    WebCore::UserContentProvider::invalidateAllRegisteredUserMessageHandlerInvalidationClients(a1);
  }

  return result;
}

uint64_t WebKit::WebUserContentController::removeAllUserContent(WebKit::WebUserContentController *this, void *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 9) = 0;
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserScriptIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserScript>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  result = *(this + 10);
  if (result && *(result - 12))
  {
    *(this + 10) = 0;
    WTF::HashTable<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashMap<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>,WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::HashTraits<WTF::Vector<std::pair<std::optional<WTF::ObjectIdentifierGeneric<WebKit::UserStyleSheetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::UserStyleSheet>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WebKit::InjectedBundleScriptWorld,WTF::RawPtrTraits<WebKit::InjectedBundleScriptWorld>,WTF::DefaultRefDerefTraits<WebKit::InjectedBundleScriptWorld>>>,WTF::FastMalloc>::deallocateTable(result, a2);

    return WebCore::UserContentProvider::invalidateInjectedStyleSheetCacheInAllFramesInAllPages(this);
  }

  return result;
}

void WebKit::WebUserContentController::forEachUserScript(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    LODWORD(v5) = 0;
LABEL_3:
    v6 = v4;
    v4 = (v3 + 24 * v5);
    goto LABEL_4;
  }

  v5 = *(v3 - 4);
  v4 = (v3 + 24 * v5);
  if (!*(v3 - 12))
  {
    goto LABEL_3;
  }

  if (!v5)
  {
    v6 = *(a1 + 72);
    goto LABEL_28;
  }

  v13 = 24 * v5;
  v6 = *(a1 + 72);
  while ((*v6 + 1) <= 1)
  {
    v6 += 3;
    v13 -= 24;
    if (!v13)
    {
      v6 = v4;
      break;
    }
  }

LABEL_4:
  if (!v3)
  {
    v7 = 0;
    goto LABEL_6;
  }

LABEL_28:
  v7 = (v3 + 24 * *(v3 - 4));
LABEL_6:
  while (v6 != v7)
  {
    v8 = *v6;
    if (*v6)
    {
      CFRetain(*(v8 + 8));
    }

    v9 = *(v8 + 24);
    ++*v9;
    v10 = *(v6 + 5);
    if (v10)
    {
      v11 = 104 * v10;
      v12 = v6[1] + 16;
      do
      {
        (*(**a2 + 16))(*a2, v9, v12);
        v12 += 104;
        v11 -= 104;
      }

      while (v11);
      WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(v9);
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      WTF::RefCounted<WebCore::DOMWrapperWorld>::deref(v9);
    }

    CFRelease(*(v8 + 8));
    do
    {
LABEL_17:
      v6 += 3;
    }

    while (v6 != v4 && (*v6 + 1) <= 1);
  }
}

uint64_t WebKit::WebUserContentController::forEachUserStyleSheet(uint64_t result, void *a2)
{
  v3 = *(result + 80);
  if (!v3)
  {
    v4 = 0;
    LODWORD(v5) = 0;
LABEL_3:
    v6 = v4;
    v4 = v3 + 24 * v5;
    goto LABEL_4;
  }

  v5 = *(v3 - 4);
  v4 = v3 + 24 * v5;
  if (!*(v3 - 12))
  {
    goto LABEL_3;
  }

  if (!v5)
  {
    v6 = *(result + 80);
    goto LABEL_22;
  }

  v11 = 24 * v5;
  v6 = *(result + 80);
  while ((*v6 + 1) <= 1)
  {
    v6 += 24;
    v11 -= 24;
    if (!v11)
    {
      v6 = v4;
      break;
    }
  }

LABEL_4:
  if (!v3)
  {
    v7 = 0;
    goto LABEL_6;
  }

LABEL_22:
  v7 = v3 + 24 * *(v3 - 4);
LABEL_6:
  while (v6 != v7)
  {
    v8 = *(v6 + 20);
    if (v8)
    {
      v9 = 120 * v8;
      v10 = *(v6 + 8) + 16;
      do
      {
        result = (*(**a2 + 16))(*a2, v10);
        v10 += 120;
        v9 -= 120;
      }

      while (v9);
    }

    do
    {
      v6 += 24;
    }

    while (v6 != v4 && (*v6 + 1) <= 1);
  }

  return result;
}

uint64_t WebKit::WebUserContentController::forEachUserMessageHandler(uint64_t result, void *a2)
{
  v3 = *(result + 88);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = v3 + 24 * v4;
    if (*(v3 - 12))
    {
      if (v4)
      {
        v6 = 24 * v4;
        v7 = *(result + 88);
        while ((*v7 + 1) <= 1)
        {
          v7 += 24;
          v6 -= 24;
          if (!v6)
          {
            v7 = v5;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v7 = *(result + 88);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
  }

  v7 = v5;
  v5 = v3 + 24 * v4;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v8 = v3 + 24 * *(v3 - 4);
LABEL_14:
  while (v7 != v8)
  {
    v9 = *(v7 + 20);
    if (v9)
    {
      v10 = 16 * v9;
      v11 = (*(v7 + 8) + 8);
      do
      {
        v12 = *v11;
        v11 += 2;
        result = (*(**a2 + 16))(*a2, v12);
        v10 -= 16;
      }

      while (v10);
    }

    do
    {
      v7 += 24;
    }

    while (v7 != v5 && (*v7 + 1) <= 1);
  }

  return result;
}

void WebKit::WebAuthenticatorCoordinator::makeCredential(uint64_t a1, WebKit::WebFrame *a2, uint64_t a3, char a4, uint64_t *a5)
{
  v28[45] = *MEMORY[0x1E69E9840];
  WebKit::WebFrame::fromCoreFrame(a2, &v25);
  v9 = v25;
  if (v25)
  {
    v10 = *(*(a1 + 16) + 8);
    if (!v10 || (CFRetain(*(v10 - 8)), v11 = *(v9 + 88), WebKit::WebFrame::info(v28, v9, 0), v12 = (*(*(v10 + 16) + 56))(v10 + 16), v14 = IPC::Encoder::operator new(0x238, v13), *v14 = 1823, *(v14 + 2) = 0, *(v14 + 3) = 0, *(v14 + 1) = v12, *(v14 + 68) = 0, *(v14 + 70) = 0, *(v14 + 69) = 0, IPC::Encoder::encodeHeader(v14), v27 = v14, IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v11), IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v14, v28), IPC::ArgumentCoder<WebCore::PublicKeyCredentialCreationOptions,void>::encode(v14, a3), IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v14, a4), v15 = *a5, *a5 = 0, v17 = WTF::fastMalloc(v16, 0x10), *v17 = &unk_1F11300C8, v17[1] = v15, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E363104);
    }

    v18 = v17;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v26[0] = v18;
    v26[1] = IdentifierInternal;
    (*(*(v10 + 16) + 40))(v10 + 16, &v27, v26, 0);
    v21 = v26[0];
    v26[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v27;
    v27 = 0;
    if (v22)
    {
      IPC::Encoder::~Encoder(v22, v20);
      bmalloc::api::tzoneFree(v23, v24);
    }

    WebKit::FrameInfoData::~FrameInfoData(v28);
    CFRelease(*(v10 - 8));
    CFRelease(*(v9 + 8));
  }
}

void WebKit::WebAuthenticatorCoordinator::getAssertion(uint64_t a1, WebKit::WebFrame *a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  v30[44] = *MEMORY[0x1E69E9840];
  WebKit::WebFrame::fromCoreFrame(a2, &v27);
  v11 = v27;
  if (v27)
  {
    v12 = *(*(a1 + 16) + 8);
    if (!v12 || (CFRetain(*(v12 - 8)), v13 = *(v11 + 88), WebKit::WebFrame::info(v30, v11, 0), v14 = (*(*(v12 + 16) + 56))(v12 + 16), v16 = IPC::Encoder::operator new(0x238, v15), *v16 = 1820, *(v16 + 2) = 0, *(v16 + 3) = 0, *(v16 + 1) = v14, *(v16 + 68) = 0, *(v16 + 70) = 0, *(v16 + 69) = 0, IPC::Encoder::encodeHeader(v16), v29 = v16, IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v13), IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v16, v30), IPC::ArgumentCoder<WebCore::PublicKeyCredentialRequestOptions,void>::encode(v16, a3), IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v16, a4), IPC::ArgumentCoder<std::optional<WebCore::SecurityOriginData>,void>::encode<IPC::Encoder,std::optional<WebCore::SecurityOriginData> const&>(v16, a5 + 8), v17 = *a6, *a6 = 0, v19 = WTF::fastMalloc(v18, 0x10), *v19 = &unk_1F11300F0, v19[1] = v17, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19E363380);
    }

    v20 = v19;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v28[0] = v20;
    v28[1] = IdentifierInternal;
    (*(*(v12 + 16) + 40))(v12 + 16, &v29, v28, 0);
    v23 = v28[0];
    v28[0] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v29;
    v29 = 0;
    if (v24)
    {
      IPC::Encoder::~Encoder(v24, v22);
      bmalloc::api::tzoneFree(v25, v26);
    }

    WebKit::FrameInfoData::~FrameInfoData(v30);
    CFRelease(*(v12 - 8));
    CFRelease(*(v11 + 8));
  }
}

void WebKit::WebAuthenticatorCoordinator::isConditionalMediationAvailable(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 16) + 8);
  if (!v3 || (CFRetain(*(v3 - 8)), v6 = (*(*(v3 + 16) + 56))(v3 + 16), v8 = IPC::Encoder::operator new(0x238, v7), *v8 = 1827, *(v8 + 2) = 0, *(v8 + 3) = 0, *(v8 + 1) = v6, *(v8 + 68) = 0, *(v8 + 70) = 0, *(v8 + 69) = 0, IPC::Encoder::encodeHeader(v8), v18 = v8, IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, a2 + 8), v9 = *a3, *a3 = 0, v11 = WTF::fastMalloc(v10, 0x10), *v11 = &unk_1F1130118, v11[1] = v9, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E36354CLL);
  }

  v17[0] = v11;
  v17[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*(v3 + 16) + 40))(v3 + 16, &v18, v17, 0);
  v13 = v17[0];
  v17[0] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v18;
  v18 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v15, v16);
  }

  CFRelease(*(v3 - 8));
}

void WebKit::WebAuthenticatorCoordinator::isUserVerifyingPlatformAuthenticatorAvailable(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 16) + 8);
  if (!v3 || (CFRetain(*(v3 - 8)), v6 = (*(*(v3 + 16) + 56))(v3 + 16), v8 = IPC::Encoder::operator new(0x238, v7), *v8 = 1822, *(v8 + 2) = 0, *(v8 + 3) = 0, *(v8 + 1) = v6, *(v8 + 68) = 0, *(v8 + 70) = 0, *(v8 + 69) = 0, IPC::Encoder::encodeHeader(v8), v18 = v8, IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, a2 + 8), v9 = *a3, *a3 = 0, v11 = WTF::fastMalloc(v10, 0x10), *v11 = &unk_1F1130140, v11[1] = v9, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E363718);
  }

  v17[0] = v11;
  v17[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*(v3 + 16) + 40))(v3 + 16, &v18, v17, 0);
  v13 = v17[0];
  v17[0] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v18;
  v18 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v15, v16);
  }

  CFRelease(*(v3 - 8));
}

void WebKit::WebAuthenticatorCoordinator::cancel(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 16) + 8);
  if (!v2 || (CFRetain(*(v2 - 8)), v4 = (*(*(v2 + 16) + 56))(v2 + 16), v6 = IPC::Encoder::operator new(0x238, v5), *v6 = 1819, *(v6 + 2) = 0, *(v6 + 3) = 0, *(v6 + 1) = v4, *(v6 + 68) = 0, *(v6 + 70) = 0, *(v6 + 69) = 0, IPC::Encoder::encodeHeader(v6), v16 = v6, v7 = *a2, *a2 = 0, v9 = WTF::fastMalloc(v8, 0x10), *v9 = &unk_1F1130168, v9[1] = v7, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E3638D4);
  }

  v15[0] = v9;
  v15[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*(v2 + 16) + 40))(v2 + 16, &v16, v15, 0);
  v11 = v15[0];
  v15[0] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = v16;
  v16 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v10);
    bmalloc::api::tzoneFree(v13, v14);
  }

  CFRelease(*(v2 - 8));
}

void WebKit::WebAuthenticatorCoordinator::getClientCapabilities(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*(a1 + 16) + 8);
  if (!v3 || (CFRetain(*(v3 - 8)), v6 = (*(*(v3 + 16) + 56))(v3 + 16), v8 = IPC::Encoder::operator new(0x238, v7), *v8 = 1821, *(v8 + 2) = 0, *(v8 + 3) = 0, *(v8 + 1) = v6, *(v8 + 68) = 0, *(v8 + 70) = 0, *(v8 + 69) = 0, IPC::Encoder::encodeHeader(v8), v18 = v8, IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, a2 + 8), v9 = *a3, *a3 = 0, v11 = WTF::fastMalloc(v10, 0x10), *v11 = &unk_1F1130190, v11[1] = v9, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E363AA0);
  }

  v17[0] = v11;
  v17[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*(v3 + 16) + 40))(v3 + 16, &v18, v17, 0);
  v13 = v17[0];
  v17[0] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v18;
  v18 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v15, v16);
  }

  CFRelease(*(v3 - 8));
}

void WebKit::WebAuthenticatorCoordinator::signalUnknownCredential(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(*(a1 + 16) + 8);
  if (!v4 || (CFRetain(*(v4 - 8)), v8 = (*(*(v4 + 16) + 56))(v4 + 16), v10 = IPC::Encoder::operator new(0x238, v9), *v10 = 1826, *(v10 + 2) = 0, *(v10 + 3) = 0, *(v10 + 1) = v8, *(v10 + 68) = 0, *(v10 + 70) = 0, *(v10 + 69) = 0, IPC::Encoder::encodeHeader(v10), v20 = v10, IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v10, a2 + 8), IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3), IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, a3 + 1), v11 = *a4, *a4 = 0, v13 = WTF::fastMalloc(v12, 0x10), *v13 = &unk_1F11301B8, v13[1] = v11, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E363C90);
  }

  v19[0] = v13;
  v19[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*(v4 + 16) + 40))(v4 + 16, &v20, v19, 0);
  v15 = v19[0];
  v19[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v14);
    bmalloc::api::tzoneFree(v17, v18);
  }

  CFRelease(*(v4 - 8));
}

void WebKit::WebAuthenticatorCoordinator::signalAllAcceptedCredentials(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(*(a1 + 16) + 8);
  if (!v4 || (CFRetain(*(v4 - 8)), v8 = (*(*(v4 + 16) + 56))(v4 + 16), v10 = IPC::Encoder::operator new(0x238, v9), *v10 = 1824, *(v10 + 2) = 0, *(v10 + 3) = 0, *(v10 + 1) = v8, *(v10 + 68) = 0, *(v10 + 70) = 0, *(v10 + 69) = 0, IPC::Encoder::encodeHeader(v10), v20 = v10, IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v10, a2 + 8), IPC::ArgumentCoder<WebCore::AllAcceptedCredentialsOptions,void>::encode(v10, a3), v11 = *a4, *a4 = 0, v13 = WTF::fastMalloc(v12, 0x10), *v13 = &unk_1F11301E0, v13[1] = v11, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E363E74);
  }

  v19[0] = v13;
  v19[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*(v4 + 16) + 40))(v4 + 16, &v20, v19, 0);
  v15 = v19[0];
  v19[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v14);
    bmalloc::api::tzoneFree(v17, v18);
  }

  CFRelease(*(v4 - 8));
}

void WebKit::WebAuthenticatorCoordinator::signalCurrentUserDetails(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(*(a1 + 16) + 8);
  if (!v4 || (CFRetain(*(v4 - 8)), v8 = (*(*(v4 + 16) + 56))(v4 + 16), v10 = IPC::Encoder::operator new(0x238, v9), *v10 = 1825, *(v10 + 2) = 0, *(v10 + 3) = 0, *(v10 + 1) = v8, *(v10 + 68) = 0, *(v10 + 70) = 0, *(v10 + 69) = 0, IPC::Encoder::encodeHeader(v10), v20 = v10, IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v10, a2 + 8), IPC::ArgumentCoder<WebCore::ApplePayPaymentOrderDetails,void>::encode(v10, a3), v11 = *a4, *a4 = 0, v13 = WTF::fastMalloc(v12, 0x10), *v13 = &unk_1F1130208, v13[1] = v11, WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E364058);
  }

  v19[0] = v13;
  v19[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  (*(*(v4 + 16) + 40))(v4 + 16, &v20, v19, 0);
  v15 = v19[0];
  v19[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v14);
    bmalloc::api::tzoneFree(v17, v18);
  }

  CFRelease(*(v4 - 8));
}

void WebKit::RemoteWebLockRegistry::~RemoteWebLockRegistry(WebKit::RemoteWebLockRegistry *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  IPC::MessageReceiverMap::removeMessageReceiver(v3 + 6, (this + 16));
  v5 = *(this + 4);
  if (v5)
  {
    v6 = *(v5 - 4);
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        if (*(v7 - 3) != -1)
        {
          if (*v7)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(*v7, v4);
          }

          v8 = *(v7 - 1);
          if (v8)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v8, v4);
          }
        }

        v7 += 6;
        --v6;
      }

      while (v6);
    }

    WTF::fastFree((v5 - 16), v4);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v4);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteWebLockRegistry::~RemoteWebLockRegistry(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteWebLockRegistry::~RemoteWebLockRegistry(WebKit::RemoteWebLockRegistry *this, void *a2)
{
  WebKit::RemoteWebLockRegistry::~RemoteWebLockRegistry((this - 16), a2);
}

{
  WebKit::RemoteWebLockRegistry::~RemoteWebLockRegistry((this - 16), a2);

  WTF::fastFree(v2, v3);
}

IPC::Encoder *WebKit::RemoteWebLockRegistry::requestLock(uint64_t a1, const UUID *a2, uint64_t a3, unint64_t a4, unint64_t a5, WTF::UUIDHash *this, uint64_t *a7, char a8, char a9, char a10, uint64_t *a11, uint64_t *a12)
{
  *&v67 = a4;
  *(&v67 + 1) = a5;
  v16 = *a12;
  *a12 = 0;
  v17 = *a11;
  *a11 = 0;
  v18 = *(this + 2);
  if (*this == 0 && !v18)
  {
    goto LABEL_83;
  }

  if (v18 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E364750);
  }

  v19 = *(a1 + 32);
  if (v19 || (WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand((a1 + 32), 0), (v19 = *(a1 + 32)) != 0))
  {
    v20 = *(v19 - 8);
  }

  else
  {
    v20 = 0;
  }

  v22 = WTF::UUIDHash::hash(this, a2) & v20;
  v23 = v19 + 48 * v22;
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  if (*v23 == 0 && v26 == 0)
  {
LABEL_28:
    v34 = *(v23 + 32);
    v35 = *(this + 2);
    *v23 = *this;
    *(v23 + 16) = v35;
    *(v23 + 32) = 0;
    if (v34)
    {
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v34, v21);
    }

    v28 = v23;
LABEL_31:
    v36 = v28[5];
    v28[5] = 0;
    if (v36)
    {
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v36, v21);
    }

    v37 = *(a1 + 32);
    if (v37)
    {
      v38 = *(v37 - 12) + 1;
    }

    else
    {
      v38 = 1;
    }

    *(v37 - 12) = v38;
    v39 = (*(v37 - 16) + v38);
    v40 = *(v37 - 4);
    if (v40 > 0x400)
    {
      if (v40 > 2 * v39)
      {
        goto LABEL_38;
      }
    }

    else if (3 * v40 > 4 * v39)
    {
LABEL_38:
      v23 = v28;
      goto LABEL_42;
    }

    v23 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::expand((a1 + 32), v28);
    goto LABEL_42;
  }

  v28 = 0;
  v29 = 1;
  while (1)
  {
    v30 = v24 == *(this + 1) && v25 == *this;
    if (v30 && v26 == *(this + 2))
    {
      break;
    }

    if (v26 == -1)
    {
      v28 = v23;
    }

    v22 = (v22 + v29) & v20;
    v23 = v19 + 48 * v22;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    ++v29;
    if (*v23 == 0 && v26 == 0)
    {
      if (!v28)
      {
        goto LABEL_28;
      }

      *v28 = 0;
      v28[1] = 0;
      v28[2] = 0;
      v28[4] = 0;
      v28[5] = 0;
      --*(*(a1 + 32) - 16);
      v33 = *this;
      v28[2] = *(this + 2);
      *v28 = v33;
      v28[4] = 0;
      goto LABEL_31;
    }
  }

LABEL_42:
  if (!(a4 | a5))
  {
    __break(0xC471u);
    JUMPOUT(0x19E364770);
  }

  if (a5 == -1)
  {
LABEL_83:
    __break(0xC471u);
    JUMPOUT(0x19E364730);
  }

  v41 = *(v23 + 32);
  if (v41 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((v23 + 32)), (v41 = *(v23 + 32)) != 0))
  {
    v42 = *(v41 - 8);
  }

  else
  {
    v42 = 0;
  }

  v44 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a4, a5) & v42;
  v45 = (v41 + 32 * v44);
  v47 = *v45;
  v46 = v45[1];
  if (*v45 == 0)
  {
LABEL_56:
    *v45 = v67;
    v50 = v45[2];
    v45[2] = v16;
    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    v51 = v45[3];
    v45[3] = v17;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    v52 = *(v23 + 32);
    if (v52)
    {
      v53 = *(v52 - 12) + 1;
    }

    else
    {
      v53 = 1;
    }

    *(v52 - 12) = v53;
    v54 = (*(v52 - 16) + v53);
    v55 = *(v52 - 4);
    if (v55 > 0x400)
    {
      if (v55 > 2 * v54)
      {
        goto LABEL_66;
      }
    }

    else if (3 * v55 > 4 * v54)
    {
LABEL_66:
      v16 = 0;
      v17 = 0;
      goto LABEL_67;
    }

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((v23 + 32));
    goto LABEL_66;
  }

  v48 = 0;
  v49 = 1;
  while (v47 != a4 || v46 != a5)
  {
    if (v46 == -1)
    {
      v48 = v45;
    }

    v44 = (v44 + v49) & v42;
    v45 = (v41 + 32 * v44);
    v47 = *v45;
    v46 = v45[1];
    ++v49;
    if (*v45 == 0)
    {
      if (v48)
      {
        *v48 = 0u;
        v48[1] = 0u;
        --*(*(v23 + 32) - 16);
        v45 = v48;
      }

      goto LABEL_56;
    }
  }

LABEL_67:
  {
    v56 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v56 = WebKit::WebProcess::operator new(0x370, v43);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v56);
  }

  v65 = a9;
  v66[0] = a10;
  v57 = IPC::Encoder::operator new(0x238, v43);
  *v57 = 2137;
  *(v57 + 68) = 0;
  *(v57 + 70) = 0;
  *(v57 + 69) = 0;
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  *(v57 + 1) = 0;
  IPC::Encoder::encodeHeader(v57);
  v68 = v57;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v57, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, v67);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, *(&v67 + 1));
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v57, this);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v57, a7);
  v69 = a8;
  IPC::Encoder::operator<<<BOOL>(v57, &v69);
  IPC::Encoder::operator<<<BOOL &>(v57, &v65);
  IPC::Encoder::operator<<<BOOL &>(v57, v66);
  (*(*(v56 + 3) + 32))(v56 + 3, &v68, 0);
  result = v68;
  v68 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v58);
    result = bmalloc::api::tzoneFree(v60, v61);
    if (!v17)
    {
LABEL_71:
      if (!v16)
      {
        return result;
      }

      return (*(*v16 + 8))(v16);
    }
  }

  else if (!v17)
  {
    goto LABEL_71;
  }

  result = (*(*v17 + 8))(v17);
  if (v16)
  {
    return (*(*v16 + 8))(v16);
  }

  return result;
}

IPC::Encoder *WebKit::RemoteWebLockRegistry::releaseLock(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, WTF::UUIDHash *this, uint64_t *a7)
{
  v30[0] = a4;
  v30[1] = a5;
  v13 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>((a1 + 32), this);
  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v16 += 6 * *(v16 - 1);
  }

  if (v16 == v13)
  {
    goto LABEL_22;
  }

  v17 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v13 + 5, v30);
  v14 = v17;
  v18 = v15[5];
  if (v18)
  {
    v19 = (v18 + 24 * *(v18 - 4));
    if (v19 == v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_11;
    }

    v19 = 0;
  }

  if (v19 != v17)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(v15 + 5, v17);
  }

LABEL_11:
  v20 = v15[4];
  if (!v20 || !*(v20 - 12))
  {
    v21 = v15[5];
    if (!v21 || !*(v21 - 12))
    {
      v22 = *(a1 + 32);
      if (v22)
      {
        v23 = (v22 + 48 * *(v22 - 4));
        if (v23 == v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_22;
        }

        v23 = 0;
      }

      if (v23 != v15)
      {
        WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove((a1 + 32), v15);
      }
    }
  }

LABEL_22:
  {
    v24 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v24 = WebKit::WebProcess::operator new(0x370, v14);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v24);
  }

  v25 = IPC::Encoder::operator new(0x238, v14);
  *v25 = 2136;
  *(v25 + 68) = 0;
  *(v25 + 70) = 0;
  *(v25 + 69) = 0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 1) = 0;
  IPC::Encoder::encodeHeader(v25);
  v31 = v25;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v25, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, a4);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, a5);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v25, this);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v25, a7);
  (*(*(v24 + 3) + 32))(v24 + 3, &v31, 0);
  result = v31;
  v31 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v26);
    return bmalloc::api::tzoneFree(v28, v29);
  }

  return result;
}

uint64_t WebKit::RemoteWebLockRegistry::abortLockRequest(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    v15 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v15);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16);
  v16 = *(a1 + 24);
  atomic_fetch_add(v16, 1u);
  *&v30[8] = *a6;
  *&v30[24] = a6[2];
  v17 = *a8;
  *a8 = 0;
  v19 = IPC::Encoder::operator new(0x238, v18);
  *v19 = 2134;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = 0;
  IPC::Encoder::encodeHeader(v19);
  v29 = v19;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v19, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a4);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a5);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v19, a6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a7);
  v21 = WTF::fastMalloc(v20, 0x60);
  v22 = *&v30[16];
  *(v21 + 5) = *v30;
  *v21 = &unk_1F1130230;
  v21[2] = v16;
  v21[3] = a4;
  v21[4] = a5;
  *(v21 + 7) = v22;
  v21[10] = v17;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v28[0] = v21;
    v28[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*(v15 + 3) + 40))(v15 + 3, &v29, v28, 0);
    v24 = v28[0];
    v28[0] = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    result = v29;
    v29 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v23);
      return bmalloc::api::tzoneFree(v26, v27);
    }
  }

  return result;
}

uint64_t WebKit::RemoteWebLockRegistry::snapshot(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v6);
  }

  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 2138;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v7, a3);
  v8 = *a4;
  *a4 = 0;
  v10 = WTF::fastMalloc(v9, 0x10);
  *v10 = &unk_1F1130258;
  v10[1] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*(v6 + 3) + 40))(v6 + 3, &v17, v16, 0);
    v12 = v16[0];
    v16[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

IPC::Encoder *WebKit::RemoteWebLockRegistry::clientIsGoingAway(uint64_t a1, int a2, uint64_t a3, WTF::UUIDHash *this)
{
  v7 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>((a1 + 32), this);
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = (v9 + 48 * *(v9 - 4));
    if (v10 == v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v10 = 0;
  }

  if (v10 != v7)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove((a1 + 32), v7);
  }

LABEL_8:
  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, v8);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v11);
  }

  v12 = IPC::Encoder::operator new(0x238, v8);
  *v12 = 2135;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v17 = v12;
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v12, a3);
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(v12, this);
  (*(*(v11 + 3) + 32))(v11 + 3, &v17, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

void WebKit::RemoteWebLockRegistry::didCompleteLockRequest(uint64_t a1, unint64_t a2, unint64_t a3, WTF::UUIDHash *this, uint64_t a5)
{
  *&v34 = a2;
  *(&v34 + 1) = a3;
  v9 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>((a1 + 32), this);
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 += 6 * *(v11 - 1);
  }

  if (v11 != v9)
  {
    v12 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v9 + 4, &v34);
    v13 = v10[4];
    if (v13)
    {
      if ((v13 + 32 * *(v13 - 4)) == v12)
      {
        return;
      }
    }

    else if (!v12)
    {
      return;
    }

    v15 = v12[2];
    v14 = v12[3];
    v12[2] = 0;
    v12[3] = 0;
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockRequest,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockRequest>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(v10 + 4, v12);
    if (!v14)
    {
      goto LABEL_41;
    }

    if (!a5)
    {
      v27 = v10[4];
      if (v27 && *(v27 - 12))
      {
        goto LABEL_40;
      }

      v28 = v10[5];
      if (v28)
      {
        if (*(v28 - 12))
        {
          goto LABEL_40;
        }
      }

      v29 = *(a1 + 32);
      if (v29)
      {
        v30 = (v29 + 48 * *(v29 - 4));
        if (v30 == v10)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_40;
        }

        v30 = 0;
      }

      if (v30 != v10)
      {
        WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove((a1 + 32), v10);
      }

      goto LABEL_40;
    }

    if (!(a2 | a3) || a3 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E36522CLL);
    }

    v16 = v10[5];
    if (v16 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v10 + 5), (v16 = v10[5]) != 0))
    {
      v17 = *(v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, a3) & v17;
    v19 = (v16 + 24 * v18);
    v21 = *v19;
    v20 = v19[1];
    if (*v19 != 0)
    {
      v22 = 0;
      v23 = 1;
      while (v21 != a2 || v20 != a3)
      {
        if (v20 == -1)
        {
          v22 = v19;
        }

        v18 = (v18 + v23) & v17;
        v19 = (v16 + 24 * v18);
        v21 = *v19;
        v20 = v19[1];
        ++v23;
        if (*v19 == 0)
        {
          if (v22)
          {
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            --*(v10[5] - 16);
            v19 = v22;
          }

          goto LABEL_24;
        }
      }

      goto LABEL_40;
    }

LABEL_24:
    *v19 = v34;
    v24 = v19[2];
    v19[2] = v15;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v10[5];
    if (v25)
    {
      v26 = *(v25 - 12) + 1;
    }

    else
    {
      v26 = 1;
    }

    *(v25 - 12) = v26;
    v31 = (*(v25 - 16) + v26);
    v32 = *(v25 - 4);
    if (v32 > 0x400)
    {
      if (v32 > 2 * v31)
      {
        goto LABEL_39;
      }
    }

    else if (3 * v32 > 4 * v31)
    {
LABEL_39:
      v15 = 0;
LABEL_40:
      (*(*v14 + 16))(v14, a5);
      (*(*v14 + 8))(v14);
LABEL_41:
      if (v15)
      {
        v33 = *(*v15 + 8);

        v33(v15);
      }

      return;
    }

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v10 + 5);
    goto LABEL_39;
  }
}

void WebKit::RemoteWebLockRegistry::didStealLock(uint64_t a1, unint64_t a2, unint64_t a3, WTF::UUIDHash *this)
{
  v16[0] = a2;
  v16[1] = a3;
  v5 = WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::UUID>>((a1 + 32), this);
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 += 6 * *(v7 - 1);
  }

  if (v7 != v5)
  {
    v8 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v5 + 5, v16);
    v9 = v6[5];
    if (v9)
    {
      if ((v9 + 24 * *(v9 - 4)) == v8)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    v10 = v8[2];
    v8[2] = 0;
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::LockInfo,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebKit::LockInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(v6 + 5, v8);
    if (v10)
    {
      v11 = v6[4];
      if (v11 && *(v11 - 12))
      {
        goto LABEL_21;
      }

      v12 = v6[5];
      if (v12)
      {
        if (*(v12 - 12))
        {
          goto LABEL_21;
        }
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = (v13 + 48 * *(v13 - 4));
        if (v14 == v6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (!v6)
        {
LABEL_21:
          (*(*v10 + 16))(v10);
          v15 = *(*v10 + 8);

          v15(v10);
          return;
        }

        v14 = 0;
      }

      if (v14 != v6)
      {
        WTF::HashTable<WebCore::ProcessQualified<WTF::UUID>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashMap<WebCore::ProcessQualified<WTF::UUID>,WebKit::RemoteWebLockRegistry::LocksSnapshot,WTF::DefaultHash<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::HashTraits<WebKit::RemoteWebLockRegistry::LocksSnapshot>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::UUID>>,WTF::FastMalloc>::remove((a1 + 32), v6);
      }

      goto LABEL_21;
    }
  }
}

uint64_t WebKit::toFrameState@<X0>(WebKit *this@<X0>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x198);
  *a3 = WebKit::FrameState::FrameState(v5);
  v6 = WebCore::HistoryItem::urlString(this);
  WTF::String::operator=(v5 + 1, v6);
  v7 = WebCore::HistoryItem::originalURLString(this);
  WTF::String::operator=(v5 + 2, v7);
  v8 = WebCore::HistoryItem::referrer(this);
  WTF::String::operator=(v5 + 3, v8);
  v9 = WebCore::HistoryItem::target(this);
  WTF::String::operator=(v5 + 4, v9);
  v10 = *(this + 7);
  v5[5] = *(this + 6);
  *(v5 + 48) = v10;
  v11 = WebCore::HistoryItem::documentState(this);
  WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v5 + 98, v11, v12);
  v13 = *(this + 20);
  if (v13)
  {
    atomic_fetch_add(v13, 1u);
    v5 = *a3;
    std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,void>(*a3 + 56, (v13 + 8));
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v13);
  }

  *(v5 + 5) = vextq_s8(*(this + 9), *(this + 9), 8uLL);
  v5[12] = *WebCore::HistoryItem::scrollPosition(this);
  *(v5 + 104) = WebCore::HistoryItem::shouldRestoreScrollPosition(this);
  WebCore::HistoryItem::pageScaleFactor(this);
  *(v5 + 27) = v14;
  v15 = WebCore::HistoryItem::formData(this);
  if (v15)
  {
    v38 = v15;
    ++*v15;
    WebKit::toHTTPBody(v48, *(v15 + 8), *(v15 + 20));
    WTF::RefCounted<WebCore::FormData>::deref(v38);
    WebCore::HistoryItem::formContentType(&v47, this);
    v41 = v47;
    v40 = v48[0];
    v47 = 0;
    v48[0] = v41;
    if (v40)
    {
      if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v39);
      }

      v43 = v47;
      v47 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v39);
      }
    }

    std::optional<WebKit::HTTPBody>::operator=[abi:sn200100]<WebKit::HTTPBody,void>((v5 + 14), v48);
    WebKit::HTTPBody::~HTTPBody(v48, v42);
  }

  *(v5 + 9) = *(this + 312);
  *(v5 + 10) = *(this + 328);
  *(v5 + 176) = WebCore::HistoryItem::isInBackForwardCache(this);
  *(v5 + 192) = WebCore::HistoryItem::shouldOpenExternalURLsPolicy(this);
  v18 = *(this + 20);
  if (v18)
  {
    atomic_fetch_add(v18, 1u);
  }

  v19 = v5[25];
  v5[25] = v18;
  if (v19)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v19);
  }

  v20 = *a3;
  *(v20 + 208) = *(this + 138);
  *(v20 + 209) = *(this + 137);
  if (*(v20 + 296) == *(this + 448))
  {
    if (*(v20 + 296))
    {
      WebCore::PolicyContainer::operator=(v20 + 216, this + 368, v17);
    }
  }

  else
  {
    v37 = (v20 + 216);
    if (*(v20 + 296))
    {
      WebCore::PolicyContainer::~PolicyContainer(v37, v16);
      *(v20 + 296) = 0;
    }

    else
    {
      std::__optional_storage_base<WebCore::PolicyContainer,false>::__construct[abi:sn200100]<WebCore::PolicyContainer const&>(v37, this + 368);
    }
  }

  v21 = WebCore::HistoryItem::title(this);
  WTF::String::left(v48, v21, 0x3E8u);
  v23 = v48[0];
  v48[0] = 0;
  v24 = *(v20 + 184);
  *(v20 + 184) = v23;
  if (v24)
  {
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v22);
    }

    v33 = v48[0];
    v48[0] = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v22);
    }
  }

  *(v20 + 304) = *(this + 12);
  *(v20 + 320) = *(this + 13);
  *(v20 + 336) = *(this + 28);
  *(v20 + 344) = *(this + 29);
  *(v20 + 352) = *(this + 260);
  *(v20 + 356) = *(this + 15);
  result = WebCore::HistoryItem::children(this);
  v28 = *(result + 12);
  if (v28)
  {
    v34 = (v28 >> 29);
    if (v34)
    {
      __break(0xC471u);
      return result;
    }

    v35 = result;
    v29 = WTF::fastMalloc(v34, (8 * v28));
    if (*(v35 + 12))
    {
      v30 = 0;
      do
      {
        v36 = v30;
        WebKit::toFrameState(*(*v35 + 8 * v30++), v26, v48);
        v29[v36] = v48[0];
      }

      while (v30 < *(v35 + 12));
      HIDWORD(v48[1]) = v30;
      goto LABEL_15;
    }
  }

  else
  {
    v29 = 0;
  }

  LODWORD(v30) = 0;
LABEL_15:
  v31 = *(v20 + 388);
  if (v31)
  {
    v44 = *(v20 + 376);
    v45 = 8 * v31;
    do
    {
      v46 = *v44;
      *v44 = 0;
      if (v46)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v46);
      }

      ++v44;
      v45 -= 8;
    }

    while (v45);
  }

  v32 = *(v20 + 376);
  if (v32)
  {
    *(v20 + 376) = 0;
    *(v20 + 384) = 0;
    WTF::fastFree(v32, v26);
  }

  *&v27 = 0;
  *v48 = v27;
  *(v20 + 376) = v29;
  *(v20 + 384) = v28;
  *(v20 + 388) = v30;
  return WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v48, v26);
}

uint64_t std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,void>(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, a2);
  }

  else
  {
    v5 = a2[3];
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 12) = v5;
    if (v5)
    {
      v6 = WTF::fastMalloc(v4, v5);
      *(a1 + 8) = v5;
      *a1 = v6;
      memcpy(v6, *a2, a2[3]);
    }

    *(a1 + 16) = 1;
  }

  return a1;
}