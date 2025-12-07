uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F11097F8;
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::call@<X0>(atomic_uint **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[8];
    a1[8] = 0;
    v10 = WTF::fastMalloc(a3, 0x10);
    *v10 = &unk_1F1109848;
    v10[1] = v9;
    v14 = v10;
    WebKit::BackgroundFetchStoreManager::storeFetch(a2, a1 + 1, v5, v6, v7, v8, (a1 + 6), &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v12 = a1[8];
    a1[8] = 0;
    v13 = WTF::fastMalloc(a3, 0x10);
    *v13 = &unk_1F1109820;
    v13[1] = v12;
    v14 = v13;
    WTF::callOnMainRunLoop();
    result = v14;
    v14 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109820;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109820;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 2);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlST_E_vJSL_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109848;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlST_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109848;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlST_E_vJSL_EE4callESL_@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  v5 = WTF::fastMalloc(a3, 0x18);
  *v5 = &unk_1F1109870;
  *(v5 + 8) = v3;
  v5[2] = v4;
  v7 = v5;
  WTF::callOnMainRunLoop();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlST_E_clISL_EESS_ST_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1109870;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlST_E_clISL_EESS_ST_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1109870;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl18storeFetchInternalERKN7WebCore12ClientOriginERKNS_6StringEyyNSt3__18optionalImEEONS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlST_E_clISL_EESS_ST_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore::StoreResult>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109898;
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
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore::StoreResult>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1109898;
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
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[4];
    }
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebCore::BackgroundFetchStore::StoreResult>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 32);
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(v4 + 24), &v11);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (v11)
  {
    v10 = *(v11 + 296);
    if (v10)
    {
      v12[0] = v11 + 24;
      v12[1] = a1 + 16;
      v13 = 2;
      IPC::Connection::send<Messages::NetworkProcessProxy::NotifyBackgroundFetchChange>(v10, v12, 0, 0, 0);
    }
  }

LABEL_3:
  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v6 + 16))(v6, a2);
  result = (*(*v6 + 8))(v6);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v9 + 8), v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunkInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11098C0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunkInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11098C0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunkInternal(WebCore::ClientOrigin const&,WTF::String const&,unsigned long,WebCore::SharedBuffer const&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::call@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 32) = 0;
    v8 = WTF::fastMalloc(a3, 0x10);
    *v8 = &unk_1F1109910;
    v8[1] = v7;
    v12 = v8;
    WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(a2, (a1 + 8), v5, v6, &v12);
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    *(a1 + 32) = 0;
    v11 = WTF::fastMalloc(a3, 0x10);
    *v11 = &unk_1F11098E8;
    v11[1] = v10;
    v12 = v11;
    WTF::callOnMainRunLoop();
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11098E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11098E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 2);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlSO_E_vJSG_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109910;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlSO_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109910;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlSO_E_vJSG_EE4callESG_@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  v5 = WTF::fastMalloc(a3, 0x18);
  *v5 = &unk_1F1109938;
  *(v5 + 8) = v3;
  v5[2] = v4;
  v7 = v5;
  WTF::callOnMainRunLoop();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlSO_E_clISG_EESN_SO_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1109938;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlSO_E_clISG_EESN_SO_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1109938;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl35storeFetchResponseBodyChunkInternalERKN7WebCore12ClientOriginERKNS_6StringEmRKNS4_12SharedBufferEONS_17CompletionHandlerIFvNS4_20BackgroundFetchStore11StoreResultEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlSO_E_clISG_EESN_SO_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::retrieveResponseBody(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109960;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::retrieveResponseBody(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1109960;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::retrieveResponseBody(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long,WTF::Function<void ()(std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError> &&)> &&)::$_0,void,WebKit::BackgroundFetchStoreManager *>::call@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    *(a1 + 24) = 0;
    v7 = WTF::fastMalloc(a3, 0x10);
    *v7 = &unk_1F11099B0;
    v7[1] = v6;
    v11 = v7;
    WebKit::BackgroundFetchStoreManager::retrieveResponseBody(a2, (a1 + 8), v5, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v9 = *(a1 + 24);
    *(a1 + 24) = 0;
    v10 = WTF::fastMalloc(a3, 0x10);
    *v10 = &unk_1F1109988;
    v10[1] = v9;
    v11 = v10;
    WTF::callOnMainRunLoop();
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1109988;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109988;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v4 = 0;
  (*(**(a1 + 8) + 16))(*(a1 + 8), v3);
  return std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v3, v1);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlSW_E_vJOSL_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11099B0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlSW_E_vJOSL_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11099B0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_EUlSW_E_vJOSL_EE4callESZ_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  v5 = WTF::fastMalloc(a3, 0x18);
  *v5 = &unk_1F11099D8;
  v5[1] = v3;
  v5[2] = v4;
  v7 = v5;
  WTF::callOnMainRunLoop();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlSW_E_clISL_EESV_SW_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F11099D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlSW_E_clISL_EESV_SW_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F11099D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit24BackgroundFetchStoreImpl20retrieveResponseBodyERKN7WebCore28ServiceWorkerRegistrationKeyERKNS_6StringEmONS_8FunctionIFvONSt12experimental15fundamentals_v38expectedINS_6RefPtrINS4_12SharedBufferENS_12RawPtrTraitsISG_EENS_21DefaultRefDerefTraitsISG_EEEENS4_13ResourceErrorEEEEEEEN3__0clINS2_27BackgroundFetchStoreManagerEEEDaPT_ENUlSW_E_clISL_EESV_SW_EUlvE_vJEE4callEv(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1)
  {
    atomic_fetch_add((v1 + 8), 1u);
  }

  v4[0] = v1;
  v5 = 0;
  (*(**(a1 + 16) + 16))(*(a1 + 16), v4);
  return std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v4, v2);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1109A00;
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
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1109A00;
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
    if (v5[4] == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }

    else
    {
      --v5[4];
    }
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(WTF::String const&,WTF::CompletionHandler<void ()(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&)> &&)::$_0,void>::call(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((*(a1 + 8) + 48), (a1 + 16), a3);
  v5 = v4;
  v6 = *(*(a1 + 8) + 48);
  if (v6)
  {
    v6 += 11 * *(v6 - 1);
  }

  if (v6 != v4)
  {
    LOBYTE(v22[0]) = 0;
    v24 = -1;
    LODWORD(v7) = *(v4 + 32);
    if (*(v4 + 32))
    {
      if (v7 == 255)
      {
LABEL_11:
        v20[0] = 0;
        WTF::URL::invalidate(v20);
        MEMORY[0x19EB01E00](v21, v20, v5 + 9, 0);
        MEMORY[0x19EB0C8F0](v25, v22, v21);
        v10 = v21[0];
        v21[0] = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }

        v11 = v20[0];
        v20[0] = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v9);
        }

        if (!v24)
        {
          v12 = v22[1];
          v22[1] = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v9);
          }

          v13 = v22[0];
          v22[0] = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v9);
          }
        }

        v14 = *(a1 + 24);
        *(a1 + 24) = 0;
        (*(*v14 + 16))(v14, v25, v5 + 10);
        (*(*v14 + 8))(v14);
        goto LABEL_28;
      }

      *v22 = *(v4 + 1);
    }

    else
    {
      v8 = v4[1];
      if (v8)
      {
        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      }

      v22[0] = v8;
      v7 = v4[2];
      if (v7)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v22[1] = v7;
      v23 = *(v4 + 6);
      LOBYTE(v7) = *(v4 + 32);
    }

    v24 = v7;
    goto LABEL_11;
  }

  v29 = 0;
  *v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  WTF::URL::invalidate(v27);
  v21[0] = 0;
  v16 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v16 + 16))(v16, v25, v21);
  (*(*v16 + 8))(v16);
  v17 = v21[0];
  v21[0] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

LABEL_28:
  result = v27[0];
  v27[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v15);
  }

  if (!BYTE8(v26))
  {
    v19 = v25[1];
    v25[1] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v15);
    }

    result = v25[0];
    v25[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v15);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::loadAllFetches(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::HashSet<WebCore::ClientOrigin,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1109A28;
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
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::loadAllFetches(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::HashSet<WebCore::ClientOrigin,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109A28;
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
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4, a2);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::loadAllFetches(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::HashSet<WebCore::ClientOrigin,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&>::call@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = 1;
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  v5[1] = v6;
  v7 = WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(a2);
  v9 = v7;
  v10 = v8;
  v11 = 0;
  if (*a2)
  {
    v11 = *a2 + (*(*a2 - 4) << 6);
  }

  if (v11 != v7)
  {
    do
    {
      v12 = *(a1 + 8);
      v13 = WTF::fastMalloc(atomic_fetch_add(v5, 1u), 0x10);
      *v13 = &unk_1F1109A50;
      v13[1] = v5;
      v16 = v13;
      WebKit::BackgroundFetchStoreImpl::initializeFetches(v12, v9, &v16);
      v14 = v16;
      v16 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      do
      {
        v9 += 4;
      }

      while (v9 != v10 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v9));
    }

    while (v9 != v11);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v5, v8);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 12))
  {
    return WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeConstIterator(a1, v1);
  }

  return v1 + (*(v1 - 4) << 6);
}

uint64_t WTF::HashTable<WebCore::ClientOrigin,WebCore::ClientOrigin,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 + (v4 << 6);
  if (v5 != a2)
  {
    while (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v2))
    {
      v2 += 64;
      if (v2 == v5)
      {
        return v5;
      }
    }
  }

  return v2;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl14loadAllFetchesEONS_17CompletionHandlerIFvvEEEEN3__0clINS_7HashSetIN7WebCore12ClientOriginENS_11DefaultHashISC_EENS_10HashTraitsISC_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEDaOT_EUlvE_vJEED1Ev(void *a1, unint64_t a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1109A50;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit24BackgroundFetchStoreImpl14loadAllFetchesEONS_17CompletionHandlerIFvvEEEEN3__0clINS_7HashSetIN7WebCore12ClientOriginENS_11DefaultHashISC_EENS_10HashTraitsISC_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEDaOT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1109A50;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::getAllBackgroundFetchIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1109A78;
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
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::getAllBackgroundFetchIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109A78;
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
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4, a2);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::getAllBackgroundFetchIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = *(*(result + 8) + 48);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = (v3 + 88 * v4);
    if (*(v3 - 12))
    {
      v6 = *(*(result + 8) + 48);
      if (v4)
      {
        v7 = 88 * v4;
        v6 = *(*(result + 8) + 48);
        while (*v6 + 1 <= 1)
        {
          v6 += 11;
          v7 -= 88;
          if (!v7)
          {
            v6 = v5;
            goto LABEL_8;
          }
        }
      }

      goto LABEL_8;
    }

    v6 = (v3 + 88 * v4);
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v5 = (v3 + 88 * v4);
  if (!v3)
  {
    v11 = 0;
    v8 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v8 = (v3 + 88 * *(v3 - 4));
  v16 = 0;
  v17 = 0;
  v9 = *(v3 - 12);
  if (v9)
  {
    v10 = (v9 >> 29);
    if (v10)
    {
      __break(0xC471u);
      return result;
    }

    v11 = WTF::fastMalloc(v10, (8 * v9));
    LODWORD(v17) = v9;
    v16 = v11;
  }

  else
  {
    v11 = 0;
  }

LABEL_15:
  if (v6 != v8)
  {
    v12 = 0;
    do
    {
      v13 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v11[v12] = v13;
      HIDWORD(v17) = v12 + 1;
      do
      {
        v6 += 11;
      }

      while (v6 != v5 && *v6 + 1 <= 1);
      ++v12;
    }

    while (v6 != v8);
  }

  v14 = *(v2 + 16);
  *(v2 + 16) = 0;
  (*(*v14 + 16))(v14, &v16);
  (*(*v14 + 8))(v14);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v15);
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::getBackgroundFetchState(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1109AA0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::getBackgroundFetchState(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109AA0;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::getBackgroundFetchState(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::call(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v86 = *MEMORY[0x1E69E9840];
  LOBYTE(v52[0]) = 0;
  v54 = -1;
  LODWORD(v5) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v6 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v52[0] = v6;
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v52[1] = v5;
    v53 = *(a2 + 16);
    LOBYTE(v5) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v5 != 255)
  {
    *v52 = *a2;
LABEL_7:
    v54 = v5;
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v55 = v7;
  v56 = *(a2 + 40);
  v57 = *(a2 + 56);
  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v45 = v8;
  v9 = *(a1 + 8);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    WebCore::BackgroundFetchEngine::backgroundFetch(&v51, v10, v52, &v45);
    if (v51)
    {
      v11 = *(v51 + 1);
      if (v11)
      {
        WebCore::BackgroundFetch::information(&v46, v11);
        LOBYTE(v58) = 0;
        v60 = -1;
        v12 = v54;
        if (v54)
        {
          if (v54 == 255)
          {
LABEL_23:
            v15 = v55;
            if (v55)
            {
              atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
            }

            v61 = v15;
            v62 = v56;
            v63 = v57;
            if (!v51 || (v16 = *(v51 + 1)) == 0)
            {
              __break(0xC471u);
              JUMPOUT(0x19DDB92E4);
            }

            v17 = *(v16 + 16);
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
              v64 = v17;
              if (!v51 || (v16 = *(v51 + 1)) == 0)
              {
LABEL_88:
                __break(0xC471u);
                JUMPOUT(0x19DDB8F18);
              }
            }

            else
            {
              v64 = 0;
            }

            v24 = *(v16 + 52);
            v65 = 0;
            LODWORD(v66) = 0;
            HIDWORD(v66) = v24;
            if (v24)
            {
              v25 = (v24 >> 27);
              if (v25)
              {
                goto LABEL_88;
              }

              v26 = WTF::fastMalloc(v25, (32 * v24));
              LODWORD(v66) = v24;
              v65 = v26;
              v27 = *(v16 + 52);
              if (v27)
              {
                v28 = 0;
                v29 = *(v16 + 40);
                v30 = (v29 + 32 * v27);
                do
                {
                  v31 = (v29 + v28 * 8);
                  v32 = *(v29 + v28 * 8);
                  if (v32)
                  {
                    atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
                  }

                  v33 = &v26[v28];
                  v26[v28] = v32;
                  v34 = v31[1];
                  if (v34)
                  {
                    atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
                  }

                  v33[1] = v34;
                  v35 = v31[2];
                  if (v35)
                  {
                    atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
                  }

                  v33[2] = v35;
                  v36 = v31[3];
                  if (v36)
                  {
                    atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
                  }

                  v33[3] = v36;
                  v28 += 4;
                }

                while (v31 + 4 != v30);
              }
            }

            else
            {
              v26 = 0;
            }

            v37 = *(v16 + 56);
            if (v37)
            {
              atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
            }

            v38 = *(v16 + 64);
            v68 = v38;
            v69 = v49;
            *v70 = v48;
            *&v70[16] = v50;
            if (!v51 || (v39 = *(v51 + 1)) == 0)
            {
              __break(0xC471u);
              JUMPOUT(0x19DDB9304);
            }

            v70[18] = *(v39 + 156);
            LOBYTE(v71) = 0;
            v73 = -1;
            if (v12)
            {
              if (v12 == 255)
              {
                goto LABEL_74;
              }

              v71 = v58;
            }

            else
            {
              v40 = v58;
              v58 = 0uLL;
              v71 = v40;
              v72 = v3;
            }

            v73 = v12;
LABEL_74:
            v61 = 0;
            v75 = v62;
            v76 = v63;
            LODWORD(v62) = v62 & 0xFFFFFFFE;
            v64 = 0;
            v65 = 0;
            v74 = v15;
            v77 = v17;
            v78 = v26;
            v41 = v66;
            v66 = 0;
            v67 = 0;
            v79 = v41;
            v80 = v24;
            v81 = v37;
            v82 = v38;
            *&v84[15] = *&v70[15];
            v83 = v69;
            *v84 = *v70;
            v85 = 1;
            v42 = *(a1 + 16);
            *(a1 + 16) = 0;
            (*(*v42 + 16))(v42, &v71);
            (*(*v42 + 8))(v42);
            if (v85 == 1)
            {
              WebKit::BackgroundFetchState::~BackgroundFetchState(&v71, v43);
            }

            WebKit::BackgroundFetchState::~BackgroundFetchState(&v58, v43);
            v44 = v47;
            v47 = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v19);
            }

            goto LABEL_34;
          }

          v58 = *v52;
        }

        else
        {
          v13 = v52[0];
          if (v52[0])
          {
            atomic_fetch_add_explicit(v52[0], 2u, memory_order_relaxed);
          }

          *&v58 = v13;
          v14 = v52[1];
          if (v52[1])
          {
            atomic_fetch_add_explicit(v52[1], 2u, memory_order_relaxed);
          }

          *(&v58 + 1) = v14;
          v3 = v53;
          v59 = v53;
          v12 = v54;
        }

        v60 = v12;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v51 = 0;
  }

  LOBYTE(v71) = 0;
  v85 = 0;
  v18 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v18 + 16))(v18, &v71);
  (*(*v18 + 8))(v18);
  if (v85 == 1)
  {
    WebKit::BackgroundFetchState::~BackgroundFetchState(&v71, v19);
  }

LABEL_34:
  v20 = v51;
  v51 = 0;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20);
    WTF::fastFree(v20, v19);
  }

  v21 = v45;
  v45 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  result = v55;
  v55 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v19);
  }

  if (!v54)
  {
    v23 = v52[1];
    v52[1] = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v19);
    }

    result = v52[0];
    v52[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::abortBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1109AC8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::abortBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109AC8;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::abortBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::call(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  LOBYTE(v13[0]) = 0;
  v14 = -1;
  LODWORD(v4) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v13[0] = v5;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v13[1] = v4;
    LOBYTE(v4) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v4 != 255)
  {
    *v13 = *a2;
LABEL_7:
    v14 = v4;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v15 = v6;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v12 = v7;
  v8 = *(a1 + 8);
  if (v8 && v7 && *(v8 + 8))
  {
    WebCore::BackgroundFetchEngine::abortBackgroundFetch();
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v9 + 16))(v9);
  (*(*v9 + 8))(v9);
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  result = v15;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v15, v10);
  }

  if (!v14)
  {
    if (v13[1] && atomic_fetch_add_explicit(v13[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13[1], v10);
    }

    result = v13[0];
    if (v13[0])
    {
      if (atomic_fetch_add_explicit(v13[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v13[0], v10);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::pauseBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1109AF0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::pauseBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109AF0;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::pauseBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::call(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  LOBYTE(v13[0]) = 0;
  v14 = -1;
  LODWORD(v4) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v13[0] = v5;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v13[1] = v4;
    LOBYTE(v4) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v4 != 255)
  {
    *v13 = *a2;
LABEL_7:
    v14 = v4;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v15 = v6;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v12 = v7;
  v8 = *(a1 + 8);
  if (v8 && v7 && *(v8 + 8))
  {
    WebCore::BackgroundFetchEngine::pauseBackgroundFetch();
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v9 + 16))(v9);
  (*(*v9 + 8))(v9);
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  result = v15;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v15, v10);
  }

  if (!v14)
  {
    if (v13[1] && atomic_fetch_add_explicit(v13[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13[1], v10);
    }

    result = v13[0];
    if (v13[0])
    {
      if (atomic_fetch_add_explicit(v13[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v13[0], v10);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::resumeBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1109B18;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::resumeBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109B18;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::resumeBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::call(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  LOBYTE(v13[0]) = 0;
  v14 = -1;
  LODWORD(v4) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v13[0] = v5;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v13[1] = v4;
    LOBYTE(v4) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v4 != 255)
  {
    *v13 = *a2;
LABEL_7:
    v14 = v4;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v15 = v6;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v12 = v7;
  v8 = *(a1 + 8);
  if (v8 && v7 && *(v8 + 8))
  {
    WebCore::BackgroundFetchEngine::resumeBackgroundFetch();
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v9 + 16))(v9);
  (*(*v9 + 8))(v9);
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  result = v15;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v15, v10);
  }

  if (!v14)
  {
    if (v13[1] && atomic_fetch_add_explicit(v13[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13[1], v10);
    }

    result = v13[0];
    if (v13[0])
    {
      if (atomic_fetch_add_explicit(v13[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v13[0], v10);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clickBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1109B40;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clickBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1109B40;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::BackgroundFetchStoreImpl::clickBackgroundFetch(WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&>::call(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  LOBYTE(v13[0]) = 0;
  v14 = -1;
  LODWORD(v4) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v13[0] = v5;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    v13[1] = v4;
    LOBYTE(v4) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v4 != 255)
  {
    *v13 = *a2;
LABEL_7:
    v14 = v4;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v15 = v6;
  v7 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v12 = v7;
  v8 = *(a1 + 8);
  if (v8 && v7 && *(v8 + 8))
  {
    WebCore::BackgroundFetchEngine::clickBackgroundFetch();
  }

  v9 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v9 + 16))(v9);
  (*(*v9 + 8))(v9);
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  result = v15;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v15, v10);
  }

  if (!v14)
  {
    if (v13[1] && atomic_fetch_add_explicit(v13[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13[1], v10);
    }

    result = v13[0];
    if (v13[0])
    {
      if (atomic_fetch_add_explicit(v13[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v13[0], v10);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteLayerTreeNode::operator new(WebKit::RemoteLayerTreeNode *this, void *a2)
{
  if (WebKit::RemoteLayerTreeNode::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerTreeNode::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteLayerTreeNode::operatorNewSlow(0x108);
  }
}

void *WebKit::RemoteLayerTreeNode::create(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v10 = WebKit::RemoteLayerTreeNode::operator new(0x108, a2);
  v11 = *a5;
  *a5 = 0;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = 0;
  v12 = [v11 layer];
  *(v10 + 48) = v12;
  if (v12)
  {
    v13 = v12;
  }

  *(v10 + 56) = v11;
  WebCore::EventRegion::EventRegion((v10 + 64));
  *(v10 + 216) = 0u;
  *(v10 + 240) = 0;
  *(v10 + 248) = 0;
  *(v10 + 256) = 0;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 232) = 0;
  result = [*(v10 + 48) setValue:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithPointer:", v10), @"WKRemoteLayerTreeNode"}];
  *a1 = v10;
  return result;
}

void sub_19DDBA0E8(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v4)
  {
  }

  v5 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v5)
  {
  }

  if (*(v2 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, a2);
    bmalloc::api::tzoneFree(v2, v6);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::RemoteLayerTreeNode::~RemoteLayerTreeNode(WebKit::RemoteLayerTreeNode *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    v3 = v2[2];
    v2[2] = v3 + 1;
    if (v3)
    {
      v2[2] = v3;
    }

    else
    {
      (*(*v2 + 16))(v2);
    }
  }

  [*(this + 6) setValue:0 forKey:@"WKRemoteLayerTreeNode"];
  v5 = *(this + 31);
  *(this + 31) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v4);
  v7 = *(this + 25);
  if (v7)
  {
    *(this + 25) = 0;
    *(this + 52) = 0;
    WTF::fastFree(v7, v6);
  }

  if (*(this + 176) == 1)
  {
    WebCore::Region::~Region((this + 152));
  }

  WebCore::Region::~Region((this + 128));
  WebCore::Region::~Region((this + 104));
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v8);
  WebCore::Region::~Region((this + 64));
  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
  }

  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v9);
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19DDBA374(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 248);
  *(v2 + 248) = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 16))(v4, a2);
    }

    else
    {
      --v4[2];
    }
  }

  WTF::Vector<WebKit::RemoteLayerTreeNode::CachedContentsBuffer,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 216, a2);
  v6 = *(v2 + 200);
  if (v6)
  {
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    WTF::fastFree(v6, v5);
  }

  if (*(v2 + 176) == 1)
  {
    WebCore::Region::~Region((v2 + 152));
  }

  WebCore::Region::~Region((v2 + 128));
  WebCore::Region::~Region((v2 + 104));
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 88, v7);
  WebCore::Region::~Region((v2 + 64));
  v9 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v9)
  {
  }

  v10 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v10)
  {
  }

  if (*(v2 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v2, v8);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::RemoteLayerTreeNode::setEventRegion(WebKit::RemoteLayerTreeNode *this, const WebCore::EventRegion *a2)
{
  WebCore::Region::operator=();
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((this + 88), (a2 + 24));
  WebCore::Region::operator=();
  WebCore::Region::operator=();

  std::__optional_storage_base<WebCore::Region,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::Region,false> const&>((this + 152), (a2 + 88));
}

void WebKit::RemoteLayerTreeNode::applyBackingStore(uint64_t a1, __n128 a2, uint64_t a3, int a4, uint64_t a5)
{
  if ((*(a1 + 240) & 1) == 0 || (*(a5 + 200) & 1) == 0 || *(a1 + 232) < *(a5 + 192))
  {
    WebKit::RemoteLayerBackingStoreProperties::updateCachedBuffers(a5, a1, a4, a2);
    WebKit::RemoteLayerBackingStoreProperties::applyBackingStoreToLayer(a5, *(a1 + 48), a4);
    if (*(a5 + 200))
    {
      *(a1 + 232) = *(a5 + 192);
      *(a1 + 240) = 1;
    }
  }
}

uint64_t *WebKit::RemoteLayerTreeNode::layerID@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::RemoteLayerTreeNode *this@<X0>)
{
  result = [-[WebKit::RemoteLayerTreeNode valueForKey:](this valueForKey:{@"WKRemoteLayerTreeNode", "pointerValue"}];
  if (result)
  {
    v5 = *(result + 2);
    v4 = result + 1;
    *v4 = v5 + 1;
    *a1 = *(v4 + 1);
    result = WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(v4);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v6;
  return result;
}

uint64_t WebKit::RemoteLayerTreeNode::forCALayer(WebKit::RemoteLayerTreeNode *this, CALayer *a2)
{
  v2 = [(WebKit::RemoteLayerTreeNode *)this valueForKey:@"WKRemoteLayerTreeNode"];

  return [v2 pointerValue];
}

uint64_t WebKit::RemoteLayerTreeNode::appendLayerDescription(WebKit::RemoteLayerTreeNode *this, NSString *a2, CALayer *a3)
{
  WebKit::RemoteLayerTreeNode::layerID(&v11, a2);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v12)
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if ([(NSString *)a2 name])
  {
    v7 = [(NSString *)a2 name];
  }

  else
  {
    v7 = &stru_1F1147748;
  }

  v8 = [v5 initWithFormat:@" layerID = %llu %@", v6, v7];
  v9 = [(WebKit::RemoteLayerTreeNode *)this stringByAppendingString:v8];
  if (v8)
  {
  }

  return v9;
}

void sub_19DDBA6B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteLayerTreeNode::setAcceleratedEffectsAndBaseValues(uint64_t a1, uint64_t a2, WebCore::AcceleratedEffectValues *a3, uint64_t a4)
{
  v8 = *(a1 + 248);
  if (v8)
  {
    v9 = v8[2];
    v8[2] = v9 + 1;
    if (v9)
    {
      v8[2] = v9;
    }

    else
    {
      (*(*v8 + 16))(v8);
    }
  }

  WebKit::RemoteLayerTreeHost::animationsWereRemovedFromNode(a4, a1);
  if (*(a2 + 12))
  {
    [*(a1 + 48) bounds];
    v29[0].origin.x = v10;
    v29[0].origin.y = v11;
    v29[0].size.width = v12;
    v29[0].size.height = v13;
    WebCore::FloatRect::FloatRect(&v30, v29);
    WebKit::RemoteLayerTreeHost::acceleratedTimelineTimeOrigin(a4, *(a1 + 24));
    WebKit::RemoteAcceleratedEffectStack::create(v14, &v33, *&v30, *(&v30 + 1), v31, v32, v15);
    v16 = v33;
    ++v33[2];
    v17 = *(a1 + 248);
    *(a1 + 248) = v16;
    if (v17)
    {
      if (v17[2] == 1)
      {
        (*(*v17 + 16))(v17);
      }

      else
      {
        --v17[2];
      }
    }

    v18 = *(a2 + 12);
    v30 = 0;
    v31 = 0.0;
    LODWORD(v32) = v18;
    if (v18)
    {
      v19 = (v18 >> 29);
      if (v19)
      {
        __break(0xC471u);
        return;
      }

      v20 = WTF::fastMalloc(v19, (8 * v18));
      LODWORD(v31) = v18;
      v30 = v20;
      v21 = *(a2 + 12);
      if (v21)
      {
        v22 = *a2;
        v23 = 8 * v21;
        do
        {
          v24 = *v22++;
          ++*(v24 + 16);
          *v20++ = v24;
          v23 -= 8;
        }

        while (v23);
      }
    }

    WebCore::AcceleratedEffectValues::clone(v29, a3);
    WebKit::RemoteAcceleratedEffectStack::setEffects(v16);
    WebCore::AcceleratedEffectStack::setBaseValues();
    v25 = *(a1 + 48);
    WebKit::RemoteLayerTreeHost::animationCurrentTime(a4, *(a1 + 24));
    WebKit::RemoteAcceleratedEffectStack::applyEffectsFromMainThread(v16, v25, *(a1 + 256), v26);
    WebKit::RemoteLayerTreeHost::animationsWereAddedToNode(a4, a1);
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(v29, v27);
    WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v28);
    if (v16)
    {
      if (v16[2] == 1)
      {
        (*(*v16 + 16))(v16);
      }

      else
      {
        --v16[2];
      }
    }
  }
}

void sub_19DDBA8F4(_Unwind_Exception *exception_object)
{
  if (v1[2] == 1)
  {
    (*(*v1 + 16))(v1);
  }

  else
  {
    --v1[2];
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteLayerTreeScrollingPerformanceData::~RemoteLayerTreeScrollingPerformanceData(WebKit::RemoteLayerTreeScrollingPerformanceData *this, void *a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    v5 = *(v4 + 32);
    if (v5)
    {
      *(v4 + 32) = v5 - 1;
    }

    else
    {
      __break(0xC471u);
    }
  }
}

__int128 *WebKit::RemoteLayerTreeScrollingPerformanceData::appendBlankPixelCount(WebKit::RemoteLayerTreeScrollingPerformanceData *this, int a2, uint64_t a3)
{
  result = WTF::MonotonicTime::now(this);
  v8 = *(this + 5);
  if (v8)
  {
    v9 = *(this + 1) + 32 * v8;
    v10 = *(this + 5);
    if (*(v9 - 16) == a2)
    {
      v10 = *(this + 5);
      if (*(v9 - 8) == a3)
      {
        *(v9 - 24) = v7;
        return result;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *&v14 = v7;
  *(&v14 + 1) = v7;
  LODWORD(v15) = a2;
  *(&v15 + 1) = a3;
  if (v8 == *(this + 4))
  {
    result = WTF::Vector<WebKit::RemoteLayerTreeScrollingPerformanceData::ScrollingLogEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 1, v10 + 1, &v14);
    v11 = (*(this + 1) + 32 * *(this + 5));
    v12 = *result;
    v13 = result[1];
  }

  else
  {
    v11 = (*(this + 1) + 32 * v10);
    v12 = v14;
    v13 = v15;
  }

  *v11 = v12;
  v11[1] = v13;
  ++*(this + 5);
  return result;
}

uint64_t WebKit::RemoteLayerTreeScrollingPerformanceData::blankPixelCount(WebKit::RemoteLayerTreeScrollingPerformanceData *this, CALayer *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v3 = *(*(*this + 80) + 8);
    if (v3 && (v4 = *(v3 + 8)) != 0)
    {
      v5 = *(v4 + 48);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 1;
LABEL_8:
    TileGridContainerLayer = WebKit::findTileGridContainerLayer(v5, a2);
    v9 = TileGridContainerLayer;
    if (TileGridContainerLayer)
    {
      v10 = TileGridContainerLayer;
      v35 = *&a2->super.isa;
      if (*(&v35 + 1) < 0.0)
      {
        DWORD1(v35) = 0;
      }

      WebCore::Region::Region(v34);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [v9 sublayers];
      v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v13)
      {
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            [v16 bounds];
            [v16 convertRect:v9 toLayer:?];
            v28.origin.x = v17;
            v28.origin.y = v18;
            v28.size.width = v19;
            v28.size.height = v20;
            WebCore::FloatRect::FloatRect(&v29, &v28);
            WebCore::FloatRect::intersect(&v29, &v35);
            LODWORD(v22) = v29.m_size.m_width;
            if (*&v29.m_size.m_width > 0.0)
            {
              LODWORD(v22) = v29.m_size.m_height;
              if (*&v29.m_size.m_height > 0.0)
              {
                v27.m_location = WebCore::enclosingIntRect(&v29, v21);
                v27.m_size = v23;
                WebCore::Region::Region(&v28, &v27);
                WebCore::Region::unite();
                WebCore::Region::~Region(&v28);
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:{16, v22}];
        }

        while (v13);
      }

      v29.m_location = WebCore::enclosingIntRect(&v35, v12);
      v29.m_size = v24;
      WebCore::Region::Region(&v28, &v29);
      WebCore::Region::subtract();
      v25 = WebCore::Region::totalArea(&v28);
      WebCore::Region::~Region(&v28);
      WebCore::Region::~Region(v34);

      if (v7)
      {
        return v25;
      }
    }

    else
    {
      NSLog(&cfstr_FailedToFindTi.isa);
      v25 = 0xFFFFFFFFLL;
      if (v7)
      {
        return v25;
      }
    }

    return v25;
  }

  result = 120;
  __break(0xC471u);
  return result;
}

void sub_19DDBAD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if ((v27 & 1) == 0)
  {
  }

  _Unwind_Resume(exception_object);
}

unint64_t WebKit::RemoteLayerTreeScrollingPerformanceData::appendSynchronousScrollingChange(unint64_t result, uint64_t a2, double a3)
{
  v3 = result;
  *&v8 = a3;
  *(&v8 + 1) = a3;
  LODWORD(v9) = 2;
  *(&v9 + 1) = a2;
  v4 = *(result + 20);
  if (v4 == *(result + 16))
  {
    result = WTF::Vector<WebKit::RemoteLayerTreeScrollingPerformanceData::ScrollingLogEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((result + 8), v4 + 1, &v8);
    v5 = (*(v3 + 8) + 32 * *(v3 + 20));
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v5 = (*(result + 8) + 32 * v4);
    v6 = v8;
    v7 = v9;
  }

  *v5 = v6;
  v5[1] = v7;
  ++*(v3 + 20);
  return result;
}

void *WebKit::RemoteLayerTreeScrollingPerformanceData::data(WebKit::RemoteLayerTreeScrollingPerformanceData *this)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(this + 5)];
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(this + 1);
    v5 = v4 + 32 * v3;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:WTF::MonotonicTime::toMachAbsoluteTime(v4)];
      if (*(v4 + 16))
      {
        v7 = @"exposed";
      }

      else
      {
        v7 = @"filled";
      }

      v11[0] = v6;
      v11[1] = v7;
      v11[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{*(v4 + 24), v6, v7}];
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
      if (v8)
      {
        [v2 addObject:v8];
      }

      v4 += 32;
    }

    while (v4 != v5);
  }

  if (v2)
  {
    v9 = v2;
  }

  return v2;
}

void *WebKit::findTileGridContainerLayer(WebKit *this, CALayer *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(WebKit *)this sublayers];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = *v23;
  do
  {
    v6 = 0;
    do
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v22 + 1) + 8 * v6);
      v8 = MEMORY[0x19EB02040](&v21, [v7 name]);
      WebCore::TileController::tileGridContainerLayerName(&v20, v8);
      v11 = WTF::equal(v21, v20, v9);
      v12 = v20;
      v20 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
        if (v11)
        {
          goto LABEL_11;
        }
      }

      else if (v11)
      {
        goto LABEL_11;
      }

      TileGridContainerLayer = WebKit::findTileGridContainerLayer(v7, v10);
      v7 = TileGridContainerLayer;
      if (!TileGridContainerLayer)
      {
        v16 = 1;
        goto LABEL_12;
      }

      v14 = TileGridContainerLayer;
      v15 = v7;
LABEL_11:
      v16 = 0;
      v2 = v7;
LABEL_12:
      v17 = v21;
      v21 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v10);
        if (!v16)
        {
          return v2;
        }
      }

      else if (!v16)
      {
        return v2;
      }

      ++v6;
    }

    while (v4 != v6);
    v18 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:{16, v20}];
    v4 = v18;
  }

  while (v18);
  return 0;
}

void sub_19DDBB0DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteLayerTreeDrawingAreaProxyIOS::~RemoteLayerTreeDrawingAreaProxyIOS(id *this)
{
  [this[36] invalidate];
  v2 = this[36];
  this[36] = 0;
  if (v2)
  {
  }

  WebKit::RemoteLayerTreeDrawingAreaProxy::~RemoteLayerTreeDrawingAreaProxy(this);
}

void sub_19DDBB4D8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 36);
  *(v1 + 36) = 0;
  if (v3)
  {
  }

  WebKit::RemoteLayerTreeDrawingAreaProxy::~RemoteLayerTreeDrawingAreaProxy(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toWebKit::RemoteLayerTreeDrawingAreaProxyIOS::~RemoteLayerTreeDrawingAreaProxyIOS(id *this)
{
  WebKit::RemoteLayerTreeDrawingAreaProxyIOS::~RemoteLayerTreeDrawingAreaProxyIOS(this - 2);
}

{
  WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operator delete(this - 2);
}

double WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operator delete(id *a1)
{
  WebKit::RemoteLayerTreeDrawingAreaProxyIOS::~RemoteLayerTreeDrawingAreaProxyIOS(a1);
  if (*(v1 + 8))
  {
    result = 0.0;
    *(v1 + 17) = 0u;
    *(v1 + 18) = 0u;
    *(v1 + 15) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 13) = 0u;
    *(v1 + 14) = 0u;
    *(v1 + 11) = 0u;
    *(v1 + 12) = 0u;
    *(v1 + 9) = 0u;
    *(v1 + 10) = 0u;
    *(v1 + 7) = 0u;
    *(v1 + 8) = 0u;
    *(v1 + 5) = 0u;
    *(v1 + 6) = 0u;
    *(v1 + 3) = 0u;
    *(v1 + 4) = 0u;
    *(v1 + 1) = 0u;
    *(v1 + 2) = 0u;
    *v1 = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }

  return result;
}

WebKit::RemoteLayerTreeDrawingAreaProxyIOS *WebKit::RemoteLayerTreeDrawingAreaProxyIOS::setPreferredFramesPerSecond(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this, IPC::Connection *a2, unsigned int a3)
{
  if (*(*(this + 6) + 88) == a2)
  {
    v5 = WebKit::RemoteLayerTreeDrawingAreaProxyIOS::displayLinkHandler(this);

    return [(WKDisplayLinkHandler *)v5 setPreferredFramesPerSecond:a3];
  }

  return this;
}

void WebKit::RemoteLayerTreeDrawingAreaProxyIOS::didRefreshDisplay(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRetain(*(v3 - 8));
      WebKit::WebPageProxy::didRefreshDisplay((v3 - 16));
      CFRelease(*(v3 - 8));
    }
  }

  if (*(this + 296) == 1)
  {
    WebKit::RemoteLayerTreeDrawingAreaProxy::didRefreshDisplay(this, 0);
  }

  if (*(this + 297) == 1)
  {
    v4 = *(this + 5);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        CFRetain(*(v5 - 8));
        if ((*(v5 + 872) & 0x100000000) != 0)
        {
          (*(**(v5 + 328) + 176))(*(v5 + 328));
        }

        v6 = *(v5 - 8);

        CFRelease(v6);
      }
    }
  }
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxyIOS::scheduleDisplayRefreshCallbacks(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this)
{
  *(this + 296) = 1;
  v1 = WebKit::RemoteLayerTreeDrawingAreaProxyIOS::displayLinkHandler(this);

  return [(WKDisplayLinkHandler *)v1 schedule];
}

WebKit::RemoteLayerTreeDrawingAreaProxyIOS *WebKit::RemoteLayerTreeDrawingAreaProxyIOS::pauseDisplayRefreshCallbacks(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this)
{
  *(this + 296) = 0;
  if ((*(this + 297) & 1) == 0)
  {
    v2 = WebKit::RemoteLayerTreeDrawingAreaProxyIOS::displayLinkHandler(this);

    return [(WKDisplayLinkHandler *)v2 pause];
  }

  return this;
}

void WebKit::RemoteLayerTreeHost::makeNode(uint64_t *__return_ptr a1@<X8>, WebKit::RemoteLayerTreeHost *this@<X0>, const WebKit::RemoteLayerTreeTransaction::LayerCreationProperties *a3@<X1>, const WTF::StringImpl *a4@<X2>)
{
  switch(*(a3 + 16))
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    case 9:
    case 0x11:
      v7 = objc_alloc_init(WKCompositingView);
      v8 = *a3;
      if (*a3)
      {
        v9 = *(a3 + 1);
        if (*(a3 + 104) == 3)
        {
          v10 = *(a3 + 8);
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_6;
      }

      __break(0xC471u);
      goto LABEL_171;
    case 3:
      v7 = objc_alloc_init(WKTransformView);
      v8 = *a3;
      if (!*a3)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBC05CLL);
      }

      v9 = *(a3 + 1);
      if (*(a3 + 104) == 3)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_6;
    case 6:
      v11 = *a3;
      if (!*a3)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBBFFCLL);
      }

      v12 = *(a3 + 1);
      v13 = objc_alloc_init(WKCompositingLayer);
      v15 = WebKit::RemoteLayerTreeNode::operator new(0x108, v14);
      *v15 = 0;
      *(v15 + 8) = 1;
      *(v15 + 16) = v11;
      *(v15 + 24) = v12;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 48) = v13;
      *(v15 + 56) = 0;
      WebCore::EventRegion::EventRegion((v15 + 64));
      *(v15 + 216) = 0u;
      *(v15 + 240) = 0;
      *(v15 + 248) = 0;
      *(v15 + 256) = 0;
      *(v15 + 184) = 0u;
      *(v15 + 200) = 0u;
      *(v15 + 232) = 0;
      [*(v15 + 48) setValue:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithPointer:", v15), @"WKRemoteLayerTreeNode"}];
      [*(v15 + 48) setDelegate:{objc_msgSend(MEMORY[0x1E69E2198], "shared")}];
      *a1 = v15;
      return;
    case 8:
    case 0x10:
      if (*(this + 64) != 1)
      {
        v16 = *this;
        if (*(a3 + 56) == 1)
        {
          if (!v16 || (v17 = *(v16 + 8)) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DDBC09CLL);
          }

          v18 = *(v17 + 40);
          if (v18)
          {
            v19 = *(v18 + 8);
            if (v19)
            {
              v20 = *(v19 + 512);
              if (v20)
              {
                if (!*a3)
                {
                  __break(0xC471u);
                  JUMPOUT(0x19DDBC1FCLL);
                }

                if (*(a3 + 1) == -1)
                {
                  __break(0xC471u);
                  goto LABEL_169;
                }

                v21 = *(this + 7);
                if (v21 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(this + 7, 0), (v21 = *(this + 7)) != 0))
                {
                  v22 = *(v21 - 8);
                }

                else
                {
                  v22 = 0;
                }

                v23 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a3) & v22;
                v24 = (v21 + 32 * v23);
                v26 = *v24;
                v25 = *(v24 + 1);
                if (*v24 != 0)
                {
                  v27 = 0;
                  v28 = 1;
                  while (v26 != *a3 || v25 != *(a3 + 1))
                  {
                    if (v25 == -1)
                    {
                      v27 = v24;
                    }

                    v23 = (v23 + v28) & v22;
                    v24 = (v21 + 32 * v23);
                    v26 = *v24;
                    v25 = *(v24 + 1);
                    ++v28;
                    if (*v24 == 0)
                    {
                      if (v27)
                      {
                        *v27 = 0u;
                        v27[1] = 0u;
                        --*(*(this + 7) - 16);
                        v24 = v27;
                      }

                      goto LABEL_53;
                    }
                  }

LABEL_123:
                  v70 = 0;
                  v71 = 0;
                  if (*(a3 + 104) == 1)
                  {
                    LODWORD(v69) = *(a3 + 16);
                    std::__optional_copy_base<WTF::MachSendRightAnnotated,false>::__optional_copy_base[abi:sn200100](&v66, a3 + 72);
                    if (v68)
                    {
                      WTF::MachSendRight::operator=();
                      v54 = v67;
                      v67 = 0;
                      v55 = v71;
                      v71 = v54;
                      if (v55)
                      {
                        WTF::fastFree(v55, v24);
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v69) = 0;
                    LOBYTE(v66) = 0;
                    v68 = 0;
                  }

                  if (v68 == 1)
                  {
                    v63 = v67;
                    v67 = 0;
                    if (v63)
                    {
                      WTF::fastFree(v63, v24);
                    }

                    WTF::MachSendRight::~MachSendRight(&v66);
                  }

                  if (*(a3 + 56))
                  {
                    WebKit::VideoPresentationManagerProxy::createViewWithID(v20, *(a3 + 3), *(a3 + 4), &v69, a3 + 10, (a3 + 48), &v64);
                    v56 = v64;
                    v64 = 0;
                    v57 = *a3;
                    if (*a3)
                    {
                      v58 = *(a3 + 1);
                      if (*(a3 + 104) == 3)
                      {
                        v59 = *(a3 + 8);
                      }

                      else
                      {
                        v59 = 0;
                      }

                      v66 = v56;
                      WebKit::RemoteLayerTreeNode::create(&v65, v57, v58, v59, &v66);
                      if (v66)
                      {
                      }

                      v61 = v64;
                      *a1 = v65;
                      v64 = 0;
                      if (v61)
                      {
                      }

                      v62 = v71;
                      v71 = 0;
                      if (v62)
                      {
                        WTF::fastFree(v62, v60);
                      }

                      WTF::MachSendRight::~MachSendRight(&v70);
                      return;
                    }

                    goto LABEL_170;
                  }

LABEL_169:
                  __break(1u);
LABEL_170:
                  __break(0xC471u);
LABEL_171:
                  JUMPOUT(0x19DDBBF7CLL);
                }

LABEL_53:
                *v24 = *a3;
                v24[1] = *(a3 + 24);
                v29 = *(this + 7);
                if (v29)
                {
                  v30 = *(v29 - 12) + 1;
                }

                else
                {
                  v30 = 1;
                }

                *(v29 - 12) = v30;
                v52 = (*(v29 - 16) + v30);
                v53 = *(v29 - 4);
                if (v53 > 0x400)
                {
                  if (v53 > 2 * v52)
                  {
                    goto LABEL_123;
                  }
                }

                else if (3 * v53 > 4 * v52)
                {
                  goto LABEL_123;
                }

                WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(this + 7, v24);
                goto LABEL_123;
              }
            }
          }
        }

        else if (!v16)
        {
          goto LABEL_149;
        }

        v42 = *(v16 + 8);
        if (v42)
        {
          v43 = *(v42 + 40);
          if (!v43 || !*(v43 + 8))
          {
LABEL_95:
            *a1 = 0;
            return;
          }

          v44 = [WKUIRemoteView alloc];
          if (!*this || (v45 = *(*this + 8)) == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DDBC0DCLL);
          }

          v46 = *(v45 + 40);
          if (v46)
          {
            v47 = *(v46 + 8);
            if (v47)
            {
              v46 = v47 - 16;
            }

            else
            {
              v46 = 0;
            }
          }

          if ((*(v46 + 865) & 1) != 0 || (v48 = *(*(v46 + 352) + 80)) == 0)
          {
            v49 = 0;
          }

          else
          {
            v49 = *(v48 + 108);
          }

          if (*(a3 + 104) == 1)
          {
            v50 = *(a3 + 16);
          }

          else
          {
            v50 = 0;
          }

          v7 = [(WKUIRemoteView *)v44 initWithFrame:v49 pid:v50 contextID:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v8 = *a3;
          if (!*a3)
          {
            __break(0xC471u);
            JUMPOUT(0x19DDBC19CLL);
          }

          v9 = *(a3 + 1);
          if (*(a3 + 104) == 3)
          {
            v10 = *(a3 + 8);
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_6;
        }

LABEL_149:
        __break(0xC471u);
        JUMPOUT(0x19DDBBFBCLL);
      }

      v7 = objc_alloc_init(WKCompositingView);
      v8 = *a3;
      if (!*a3)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBBFDCLL);
      }

      v9 = *(a3 + 1);
      if (*(a3 + 104) == 3)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = 0;
      }

LABEL_6:
      v69 = v7;
      WebKit::RemoteLayerTreeNode::create(&v66, v8, v9, v10, &v69);
LABEL_7:
      if (v69)
      {
      }

      *a1 = v66;
      return;
    case 0xA:
      v7 = objc_alloc_init(WKBackdropView);
      v8 = *a3;
      if (!*a3)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBC01CLL);
      }

      v9 = *(a3 + 1);
      if (*(a3 + 104) == 3)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_6;
    case 0xB:
      v7 = objc_alloc_init(WKMaterialView);
      v8 = *a3;
      if (!*a3)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBC07CLL);
      }

      v9 = *(a3 + 1);
      if (*(a3 + 104) == 3)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_6;
    case 0xC:
      if (+[WKMaterialHostingSupport isMaterialHostingAvailable])
      {
        v36 = objc_alloc_init(WKMaterialHostingView);
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        v39 = *a3;
        if (!*a3)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBC0FCLL);
        }

        v40 = *(a3 + 1);
        if (*(a3 + 104) == 3)
        {
          v41 = *(a3 + 8);
        }

        else
        {
          v41 = 0;
        }

        v69 = v37;
        WebKit::RemoteLayerTreeNode::create(&v66, v39, v40, v41, &v69);
        goto LABEL_7;
      }

      v7 = objc_alloc_init(WKCompositingView);
      v8 = *a3;
      if (!*a3)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBC13CLL);
      }

      v9 = *(a3 + 1);
      if (*(a3 + 104) == 3)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_6;
    case 0xD:
      v7 = objc_alloc_init(WKShapeView);
      v8 = *a3;
      if (!*a3)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBC03CLL);
      }

      v9 = *(a3 + 1);
      if (*(a3 + 104) == 3)
      {
        v10 = *(a3 + 8);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_6;
    case 0xE:
      if (*(this + 64))
      {
        v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v8 = *a3;
        if (!*a3)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBC11CLL);
        }

        v9 = *(a3 + 1);
        if (*(a3 + 104) == 3)
        {
          v10 = *(a3 + 8);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v7 = objc_alloc_init(WKChildScrollView);
        v8 = *a3;
        if (!*a3)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBC15CLL);
        }

        v9 = *(a3 + 1);
        if (*(a3 + 104) == 3)
        {
          v10 = *(a3 + 8);
        }

        else
        {
          v10 = 0;
        }
      }

      goto LABEL_6;
    case 0xF:
      if (!*this || (v31 = *(*this + 8)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDBBF9CLL);
      }

      v32 = *(v31 + 40);
      if (!v32)
      {
        goto LABEL_65;
      }

      v33 = *(v32 + 8);
      if (!v33)
      {
        goto LABEL_65;
      }

      v34 = *(v33 + 352);
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      if (WebKit::WebPreferencesStore::getBoolValueForKey((v34 + 40), &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, a4) && *(a3 + 104) == 2)
      {
        v51 = [WKModelView alloc];
        if (!*a3)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBC1BCLL);
        }

        if (!*this || !*(*this + 8))
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBC17CLL);
        }

        v7 = [WKModelView initWithModel:v51 layerID:"initWithModel:layerID:page:" page:*(a3 + 8)];
        v8 = *a3;
        if (!*a3)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBC1DCLL);
        }

        v9 = *(a3 + 1);
        if (*(a3 + 104) == 3)
        {
          v10 = *(a3 + 8);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
LABEL_65:
        v7 = objc_alloc_init(WKCompositingView);
        v8 = *a3;
        if (!*a3)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBC0BCLL);
        }

        v9 = *(a3 + 1);
        if (*(a3 + 104) == 3)
        {
          v10 = *(a3 + 8);
        }

        else
        {
          v10 = 0;
        }
      }

      goto LABEL_6;
    default:
      goto LABEL_95;
  }
}

void sub_19DDBC240(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, char a13, uint64_t a14, uint64_t a15, WTF *a16)
{
  if (a13 == 1)
  {
    v18 = a12;
    a12 = 0;
    if (v18)
    {
      WTF::fastFree(v18, a2);
    }

    WTF::MachSendRight::~MachSendRight(&a11);
  }

  v19 = a16;
  a16 = 0;
  if (v19)
  {
    WTF::fastFree(v19, a2);
  }

  WTF::MachSendRight::~MachSendRight((v16 + 8));
  _Unwind_Resume(a1);
}

uint64_t *WebKit::RemoteScrollingCoordinatorProxyIOS::clearTouchActionsForTouchIdentifier(WebKit::RemoteScrollingCoordinatorProxyIOS *this, int a2)
{
  v6 = a2;
  result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(this + 19, &v6);
  v4 = *(this + 19);
  if (v4)
  {
    v5 = (v4 + 8 * *(v4 - 4));
    if (v5 == result)
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

    v5 = 0;
  }

  if (v5 != result)
  {
    return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::remove(this + 19, result);
  }

  return result;
}

uint64_t WebKit::RemoteScrollingCoordinatorProxyIOS::scrollViewForScrollingNodeID(uint64_t a1, __int128 *a2)
{
  v2 = WebCore::ScrollingTree::nodeForID();
  v4 = v2;
  if (v2)
  {
    v5 = *(v2 + 48);
    if (v5 == 5)
    {
      v6 = (v2 + 8);
      while (1)
      {
        v7 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v8 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      if (v5 <= 1)
      {
        v6 = (v2 + 8);
        while (1)
        {
          v11 = *v6;
          if ((*v6 & 1) == 0)
          {
            break;
          }

          v12 = *v6;
          atomic_compare_exchange_strong_explicit(v6, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v12 == v11)
          {
            goto LABEL_18;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_18:
        v13 = *(v4 + 96);
        if (!v13)
        {
          v4 = 0;
          goto LABEL_10;
        }

        v9 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(v13);
LABEL_9:
        v4 = v9;
LABEL_10:
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v6, v3);
        return v4;
      }

      if (*(v2 + 48) != 3)
      {
        return 0;
      }

      v6 = (v2 + 8);
      while (1)
      {
        v14 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v15 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_8;
        }
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
    v9 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(*(v4 + 96));
    goto LABEL_9;
  }

  return v4;
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::connectStateNodeLayers(WebKit::RemoteScrollingCoordinatorProxyIOS *this, WebCore::ScrollingStateTree *a2, const WebKit::RemoteLayerTreeHost *a3)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = v4 + 24 * v5;
    if (*(v4 - 12))
    {
      if (v5)
      {
        v7 = 24 * v5;
        v8 = *(a2 + 4);
        while (*v8 == 0 || *(v8 + 8) == -1)
        {
          v8 += 24;
          v7 -= 24;
          if (!v7)
          {
            v8 = v6;
            goto LABEL_16;
          }
        }
      }

      else
      {
        v8 = *(a2 + 4);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    LODWORD(v5) = 0;
  }

  v8 = v6;
  v6 = v4 + 24 * v5;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v10 = v4 + 24 * *(v4 - 4);
LABEL_17:
  while (v8 != v10)
  {
    v11 = *(v8 + 16);
    if (*(v11 + 40))
    {
      v12 = *(v11 + 104);
      if (v12)
      {
        *v61 = *(v11 + 105);
        *&v61[7] = *(v11 + 112);
        v60 = v12;
        v62 = 1;
        v13 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3 + 2, &v60);
        if (v13)
        {
          WebCore::LayerRepresentation::LayerRepresentation(&v60, *(v13 + 48));
          WebCore::ScrollingStateNode::setLayer();
          WebCore::LayerRepresentation::~LayerRepresentation(&v60, v14);
        }
      }

      v11 = *(v8 + 16);
    }

    v15 = *(v11 + 16);
    if (v15 <= 8)
    {
      if (((1 << v15) & 0x1D4) != 0)
      {
        v16 = (v11 + 8);
        while (1)
        {
          v17 = *v16;
          if ((*v16 & 1) == 0)
          {
            break;
          }

          v18 = *v16;
          atomic_compare_exchange_strong_explicit(v16, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v18 == v17)
          {
            goto LABEL_30;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
        v15 = *(v11 + 16);
LABEL_30:
        if (v15 == 8 && (*(v11 + 40) & 4) != 0)
        {
          v19 = *(v11 + 272);
          if (v19)
          {
            v58 = *(v11 + 272);
            LOBYTE(v19) = 1;
          }

          else
          {
            LOBYTE(v58) = 0;
          }

          v59 = v19;
          v34 = WebKit::RemoteLayerTreeHost::layerForID(a3, &v58);
          WebCore::LayerRepresentation::LayerRepresentation(&v60, v34);
          WebCore::ScrollingStateStickyNode::setViewportAnchorLayer(v11, &v60);
          WebCore::LayerRepresentation::~LayerRepresentation(&v60, v35);
        }

        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((v11 + 8), a2);
        goto LABEL_101;
      }

      if (v15 == 3)
      {
        v31 = (v11 + 8);
        while (1)
        {
          v32 = *v31;
          if ((*v31 & 1) == 0)
          {
            break;
          }

          v33 = *v31;
          atomic_compare_exchange_strong_explicit(v31, &v33, v32 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v33 == v32)
          {
            goto LABEL_72;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
        if (*(v11 + 16) != 3)
        {
LABEL_110:
          __break(0xC471u);
          JUMPOUT(0x19DDBCBFCLL);
        }

LABEL_72:
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((v11 + 8), a2);
        v41 = *(v11 + 40);
        if ((v41 & 0x1000) != 0)
        {
          v42 = *(v11 + 272);
          if (v42)
          {
            *&v61[7] = *(v11 + 280);
            *v61 = *(v11 + 273);
            v60 = v42;
            v62 = 1;
            v43 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3 + 2, &v60);
            if (v43)
            {
              WebCore::LayerRepresentation::LayerRepresentation(&v60, *(v43 + 48));
              WebCore::ScrollingStateScrollingNode::setScrollContainerLayer(v11, &v60);
              WebCore::LayerRepresentation::~LayerRepresentation(&v60, v44);
            }
          }

          v41 = *(v11 + 40);
        }

        if ((v41 & 0x2000) != 0)
        {
          v40 = *(v11 + 312);
          if (v40)
          {
            v58 = *(v11 + 312);
            LOBYTE(v40) = 1;
          }

          else
          {
            LOBYTE(v58) = 0;
          }

          goto LABEL_99;
        }

        goto LABEL_101;
      }

      if (v15 == 5)
      {
        v20 = (v11 + 8);
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
            goto LABEL_63;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
        if (*(v11 + 16) != 5)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBCC1CLL);
        }

LABEL_63:
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((v11 + 8), a2);
        v36 = *(v11 + 40);
        if ((v36 & 0x1000) != 0)
        {
          v37 = *(v11 + 272);
          if (v37)
          {
            *&v61[7] = *(v11 + 280);
            *v61 = *(v11 + 273);
            v60 = v37;
            v62 = 1;
            v38 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3 + 2, &v60);
            if (v38)
            {
              WebCore::LayerRepresentation::LayerRepresentation(&v60, *(v38 + 48));
              WebCore::ScrollingStateScrollingNode::setScrollContainerLayer(v11, &v60);
              WebCore::LayerRepresentation::~LayerRepresentation(&v60, v39);
            }
          }

          v36 = *(v11 + 40);
        }

        if ((v36 & 0x2000) == 0)
        {
          goto LABEL_101;
        }

        v40 = *(v11 + 312);
        if (v40)
        {
          v58 = *(v11 + 312);
          LOBYTE(v40) = 1;
        }

        else
        {
          LOBYTE(v58) = 0;
        }

LABEL_99:
        v59 = v40;
        v56 = WebKit::RemoteLayerTreeHost::layerForID(a3, &v58);
        WebCore::LayerRepresentation::LayerRepresentation(&v60, v56);
        WebCore::ScrollingStateScrollingNode::setScrolledContentsLayer(v11, &v60);
LABEL_100:
        WebCore::LayerRepresentation::~LayerRepresentation(&v60, v55);
        goto LABEL_101;
      }
    }

    if (v15 < 2)
    {
      v23 = (v11 + 8);
      while (1)
      {
        v24 = *v23;
        if ((*v23 & 1) == 0)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v24)
        {
          goto LABEL_46;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
      v15 = *(v11 + 16);
LABEL_46:
      if (v15 >= 2)
      {
        goto LABEL_110;
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((v11 + 8), a2);
      v26 = *(v11 + 40);
      if ((v26 & 0x1000) != 0)
      {
        v27 = *(v11 + 272);
        if (v27)
        {
          *&v61[7] = *(v11 + 280);
          *v61 = *(v11 + 273);
          v60 = v27;
          v62 = 1;
          v28 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3 + 2, &v60);
          if (v28)
          {
            WebCore::LayerRepresentation::LayerRepresentation(&v60, *(v28 + 48));
            WebCore::ScrollingStateScrollingNode::setScrollContainerLayer(v11, &v60);
            WebCore::LayerRepresentation::~LayerRepresentation(&v60, v29);
          }
        }

        v26 = *(v11 + 40);
      }

      if ((v26 & 0x2000) != 0)
      {
        v30 = *(v11 + 312);
        if (v30)
        {
          v58 = *(v11 + 312);
          LOBYTE(v30) = 1;
        }

        else
        {
          LOBYTE(v58) = 0;
        }

        v59 = v30;
        v45 = WebKit::RemoteLayerTreeHost::layerForID(a3, &v58);
        WebCore::LayerRepresentation::LayerRepresentation(&v60, v45);
        WebCore::ScrollingStateScrollingNode::setScrolledContentsLayer(v11, &v60);
        WebCore::LayerRepresentation::~LayerRepresentation(&v60, v46);
        v26 = *(v11 + 40);
      }

      if ((v26 & 0x8000000) != 0)
      {
        v47 = *(v11 + 600);
        if (v47)
        {
          v58 = *(v11 + 600);
          LOBYTE(v47) = 1;
        }

        else
        {
          LOBYTE(v58) = 0;
        }

        v59 = v47;
        v48 = WebKit::RemoteLayerTreeHost::layerForID(a3, &v58);
        WebCore::LayerRepresentation::LayerRepresentation(&v60, v48);
        WebCore::ScrollingStateFrameScrollingNode::setCounterScrollingLayer(v11, &v60);
        WebCore::LayerRepresentation::~LayerRepresentation(&v60, v49);
        v26 = *(v11 + 40);
      }

      if ((v26 & 0x4000000000000) != 0)
      {
        v50 = *(v11 + 720);
        if (v50)
        {
          v58 = *(v11 + 720);
          LOBYTE(v50) = 1;
        }

        else
        {
          LOBYTE(v58) = 0;
        }

        v59 = v50;
        v51 = WebKit::RemoteLayerTreeHost::layerForID(a3, &v58);
        WebCore::LayerRepresentation::LayerRepresentation(&v60, v51);
        WebCore::ScrollingStateFrameScrollingNode::setHeaderLayer(v11, &v60);
        WebCore::LayerRepresentation::~LayerRepresentation(&v60, v52);
        v26 = *(v11 + 40);
      }

      if ((v26 & 0x80000000000) != 0)
      {
        v53 = *(v11 + 760);
        if (v53)
        {
          v58 = *(v11 + 760);
          LOBYTE(v53) = 1;
        }

        else
        {
          LOBYTE(v58) = 0;
        }

        v59 = v53;
        v54 = WebKit::RemoteLayerTreeHost::layerForID(a3, &v58);
        WebCore::LayerRepresentation::LayerRepresentation(&v60, v54);
        WebCore::ScrollingStateFrameScrollingNode::setFooterLayer(v11, &v60);
        goto LABEL_100;
      }
    }

    do
    {
LABEL_101:
      v8 += 24;
      if (v8 == v6)
      {
        break;
      }
    }

    while (*v8 == 0 || *(v8 + 8) == -1);
  }
}

void sub_19DDBCC40(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  WebCore::LayerRepresentation::~LayerRepresentation(va, a2);
  _Unwind_Resume(a1);
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::scrollingTreeNodeWillStartPanGesture(WebKit::RemoteScrollingCoordinatorProxy *a1, uint64_t a2, uint64_t a3)
{
  WebKit::RemoteScrollingCoordinatorProxy::protectedWebPageProxy(&v7, a1);
  v5 = v7;
  WebKit::WebPageProxy::scrollingNodeScrollViewWillStartPanGesture(v7, a2, a3);
  if (v5)
  {
    v6 = *(v5 + 8);

    CFRelease(v6);
  }
}

void sub_19DDBCD14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::scrollingTreeNodeWillStartScroll(WebKit::RemoteScrollingCoordinatorProxy *a1, uint64_t a2, uint64_t a3)
{
  WebKit::RemoteScrollingCoordinatorProxy::protectedWebPageProxy(&v9, a1);
  v6 = v9;
  *&v7 = a2;
  *(&v7 + 1) = a3;
  v8 = 1;
  WebKit::WebPageProxy::scrollingNodeScrollWillStartScroll(v9, &v7);
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  WebKit::RemoteScrollingUIState::addNodeWithActiveUserScroll(a1 + 11, a2, a3);

  WebKit::RemoteScrollingCoordinatorProxy::sendUIStateChangedIfNecessary(a1);
}

void sub_19DDBCDB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::scrollingTreeNodeDidEndScroll(WebKit::RemoteScrollingCoordinatorProxy *a1, uint64_t a2, uint64_t a3)
{
  WebKit::RemoteScrollingCoordinatorProxy::protectedWebPageProxy(&v9, a1);
  v6 = v9;
  *&v7 = a2;
  *(&v7 + 1) = a3;
  v8 = 1;
  WebKit::WebPageProxy::scrollingNodeScrollDidEndScroll(v9, &v7);
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  WebKit::RemoteScrollingUIState::removeNodeWithActiveUserScroll(a1 + 88, a2, a3);

  WebKit::RemoteScrollingCoordinatorProxy::sendUIStateChangedIfNecessary(a1);
}

void sub_19DDBCE5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::establishLayerTreeScrollingRelations(WebKit::RemoteScrollingCoordinatorProxyIOS *this, const WebKit::RemoteLayerTreeHost *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(this + 18);
  v6 = v4;
  v7 = v5;
  v8 = *(this + 18);
  if (v8)
  {
    v9 = v8 + 16 * *(v8 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v4)
  {
    do
    {
      *v61 = *v6;
      *buf = *v61;
      v65 = 1;
      v10 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2 + 2, buf);
      if (v10)
      {
        v12 = (v10 + 200);
        v11 = *(v10 + 200);
        *(v10 + 184) = 0;
        *(v10 + 192) = 0;
        if (v11)
        {
          *(v10 + 200) = 0;
          *(v10 + 208) = 0;
          WTF::fastFree(v11, v5);
        }

        *v12 = 0;
        v12[1] = 0;
      }

      do
      {
        v6 += 16;
        if (v6 == v7)
        {
          break;
        }
      }

      while (*v6 == 0 || *(v6 + 8) == -1);
    }

    while (v6 != v9);
    v8 = *(this + 18);
  }

  if (v8)
  {
    *(this + 18) = 0;
    WTF::fastFree((v8 - 16), v5);
  }

  v14 = *(this + 4);
  v15 = *(v14 + 168);
  if (v15)
  {
    v16 = *(v15 - 4);
    v17 = v15 + 8 * v16;
    if (*(v15 - 12))
    {
      if (v16)
      {
        v18 = 8 * v16;
        v19 = *(v14 + 168);
        while ((*v19 + 1) <= 1)
        {
          v19 += 8;
          v18 -= 8;
          if (!v18)
          {
            v19 = v17;
            goto LABEL_30;
          }
        }
      }

      else
      {
        v19 = *(v14 + 168);
      }

      goto LABEL_30;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v19 = v17;
  v17 = v15 + 8 * v16;
  if (!v15)
  {
    v20 = 0;
    goto LABEL_31;
  }

LABEL_30:
  v20 = v15 + 8 * *(v15 - 4);
LABEL_31:
  if (v20 == v19)
  {
    goto LABEL_67;
  }

  do
  {
    v61[0] = 0;
    v61[1] = 0;
    v21 = *v19;
    v22 = *(*v19 + 108);
    if (!v22)
    {
      goto LABEL_48;
    }

    v23 = v21[12];
    v24 = 16 * v22;
    do
    {
      v60 = *v23;
      *buf = v60;
      v65 = 1;
      v25 = WebCore::ScrollingTree::nodeForID();
      if (!v25 || *(v25 + 48) != 5)
      {
        v32 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "virtual void WebKit::RemoteScrollingCoordinatorProxyIOS::establishLayerTreeScrollingRelations(const RemoteLayerTreeHost &)";
          _os_log_fault_impl(&dword_19D52D000, v32, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/RemoteLayerTree/ios/RemoteScrollingCoordinatorProxyIOS.mm 301: Invalid message dispatched %{public}s", buf, 0xCu);
        }

        v34 = *(*(this + 3) + 8);
        if (!v34)
        {
          goto LABEL_108;
        }

        v35 = *(*(v34 + 336) + 88);
        if (!v35)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBD504);
        }

        *(v35 + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBD50CLL);
        }

LABEL_47:
        v36 = 0;
        goto LABEL_53;
      }

      PlatformLayerTyped = WebCore::LayerRepresentation::makePlatformLayerTyped(*(v25 + 272), v26);
      WebKit::RemoteLayerTreeNode::layerID(buf, PlatformLayerTyped);
      if ((v65 & 1) == 0)
      {
        v42 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *v62 = 136446210;
          v63 = "virtual void WebKit::RemoteScrollingCoordinatorProxyIOS::establishLayerTreeScrollingRelations(const RemoteLayerTreeHost &)";
          _os_log_fault_impl(&dword_19D52D000, v42, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/RemoteLayerTree/ios/RemoteScrollingCoordinatorProxyIOS.mm 303: Invalid message dispatched %{public}s", v62, 0xCu);
        }

        v43 = *(*(this + 3) + 8);
        if (!v43)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBD52CLL);
        }

        v44 = *(*(v43 + 336) + 88);
        if (!v44)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBD54CLL);
        }

        *(v44 + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDBD554);
        }

        goto LABEL_47;
      }

      v28 = HIDWORD(v61[1]);
      if (HIDWORD(v61[1]) == LODWORD(v61[1]))
      {
        v31 = WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v61, HIDWORD(v61[1]) + 1, buf);
        v28 = HIDWORD(v61[1]);
        v29 = v61[0];
        v30 = *v31;
      }

      else
      {
        v29 = v61[0];
        v30 = *buf;
      }

      *(v29 + v28) = v30;
      ++HIDWORD(v61[1]);
      ++v23;
      v24 -= 16;
    }

    while (v24);
    v21 = *v19;
LABEL_48:
    v37 = [objc_msgSend((*(*v21 + 72))(v21) valueForKey:{@"WKRemoteLayerTreeNode", "pointerValue"}];
    v38 = v37;
    if (v37)
    {
      v39 = *(v37 + 200);
      if (v39)
      {
        *(v38 + 200) = 0;
        *(v38 + 208) = 0;
        WTF::fastFree(v39, v33);
      }

      *(v38 + 200) = v61[0];
      v40 = v61[1];
      v61[0] = 0;
      v61[1] = 0;
      *(v38 + 208) = v40;
      v60 = *(v38 + 16);
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 18, &v60, buf);
    }

    v36 = 1;
LABEL_53:
    v41 = v61[0];
    if (v61[0])
    {
      v61[0] = 0;
      LODWORD(v61[1]) = 0;
      WTF::fastFree(v41, v33);
      if (v36)
      {
        goto LABEL_55;
      }

      return;
    }

    if (!v36)
    {
      return;
    }

    do
    {
LABEL_55:
      v19 += 8;
    }

    while (v19 != v17 && (*v19 + 1) <= 1);
  }

  while (v19 != v20);
  v14 = *(this + 4);
LABEL_67:
  v45 = *(v14 + 160);
  if (v45)
  {
    v46 = *(v45 - 4);
    v47 = v45 + 8 * v46;
    if (*(v45 - 12))
    {
      if (v46)
      {
        v48 = 8 * v46;
        v49 = v45;
        while ((*v49 + 1) <= 1)
        {
          v49 += 8;
          v48 -= 8;
          if (!v48)
          {
            v49 = v47;
            break;
          }
        }
      }

      else
      {
        v49 = v45;
      }

LABEL_79:
      v50 = v45 + 8 * *(v45 - 4);
      goto LABEL_80;
    }
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  v49 = v47;
  v47 = v45 + 8 * v46;
  if (v45)
  {
    goto LABEL_79;
  }

  v50 = 0;
LABEL_80:
  if (v50 != v49)
  {
    while (1)
    {
      if (*(*v49 + 96))
      {
        *buf = *(*v49 + 96);
        v51 = 1;
      }

      else
      {
        v51 = 0;
        buf[0] = 0;
      }

      v65 = v51;
      v52 = WebCore::ScrollingTree::nodeForID();
      v53 = v52;
      if (!v52 || *(v52 + 48) != 5)
      {
        break;
      }

      v55 = [objc_msgSend((*(**v49 + 72))() valueForKey:{@"WKRemoteLayerTreeNode", "pointerValue"}];
      if (v55)
      {
        v56 = WebCore::LayerRepresentation::makePlatformLayerTyped(*(v53 + 272), v54);
        WebKit::RemoteLayerTreeNode::layerID(buf, v56);
        if (v65 == 1)
        {
          *v61 = *buf;
        }

        else
        {
          v61[0] = 0;
          v61[1] = 0;
        }

        *(v55 + 184) = *v61;
        *v61 = *(v55 + 16);
        WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 18, v61, buf);
      }

      do
      {
        v49 += 8;
      }

      while (v49 != v47 && (*v49 + 1) <= 1);
      if (v49 == v50)
      {
        return;
      }
    }

    v57 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "virtual void WebKit::RemoteScrollingCoordinatorProxyIOS::establishLayerTreeScrollingRelations(const RemoteLayerTreeHost &)";
      _os_log_fault_impl(&dword_19D52D000, v57, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/RemoteLayerTree/ios/RemoteScrollingCoordinatorProxyIOS.mm 316: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    v58 = *(*(this + 3) + 8);
    if (!v58)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDBD574);
    }

    v59 = *(*(v58 + 336) + 88);
    if (!v59)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDBD594);
    }

    *(v59 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_108:
      __break(0xC471u);
      JUMPOUT(0x19DDBD4E4);
    }
  }
}

void sub_19DDBD5A0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteScrollingCoordinatorProxyIOS::adjustTargetContentOffsetForSnapping(WebKit::RemoteScrollingCoordinatorProxyIOS *this, CGSize a2, CGPoint a3, double a4, CGPoint a5, CGPoint *a6)
{
  y = a5.y;
  x = a5.x;
  v10 = a3.y;
  v11 = a3.x;
  height = a2.height;
  width = a2.width;
  if (WebKit::RemoteScrollingCoordinatorProxyIOS::shouldSnapForMainFrameScrolling(this, 0))
  {
    WebCore::FloatPoint::FloatPoint(&v32, a6);
    v16 = v11;
    v15 = x;
    v17 = WebKit::RemoteScrollingCoordinatorProxyIOS::closestSnapOffsetForMainFrameScrolling(this, 0, v15, v32, v33, v16);
    *(this + 30) = HIDWORD(v17);
    *(this + 124) = v18;
    if (a6->x > 0.0 && a6->x < width)
    {
      v20 = *&v17;
      v21 = width;
      if (*&v17 >= v21)
      {
        v20 = width;
      }

      a6->x = v20;
    }
  }

  result = WebKit::RemoteScrollingCoordinatorProxyIOS::shouldSnapForMainFrameScrolling(this, 1);
  if (result)
  {
    WebCore::FloatPoint::FloatPoint(&v32, a6);
    v23 = a4;
    v32 = v32 + 0.0;
    v33 = v33 + v23;
    v24 = y + a4;
    v25 = v10;
    result = WebKit::RemoteScrollingCoordinatorProxyIOS::closestSnapOffsetForMainFrameScrolling(this, 1, v24, v32, v33, v25);
    *(this + 32) = HIDWORD(result);
    *(this + 132) = v26;
    v27 = a6->y;
    if (v27 > 0.0 && v27 < height)
    {
      v29 = *&result;
      if (v26)
      {
        v30 = *&result - a4;
        v29 = v30;
      }

      v31 = height;
      if (v29 >= v31)
      {
        v29 = height;
      }

      a6->y = v29;
    }
  }

  return result;
}

BOOL WebKit::RemoteScrollingCoordinatorProxyIOS::shouldSnapForMainFrameScrolling(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(v2);
  v5 = 8;
  if (a2 == 1)
  {
    v5 = 24;
  }

  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v9, (v4 + v5));
  v6 = v9[3] != 0;
  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v9, v7);
  return v6;
}

uint64_t WebKit::RemoteScrollingCoordinatorProxyIOS::closestSnapOffsetForMainFrameScrolling(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(*(*(a1 + 32) + 24));
  v7 = *(*(a1 + 24) + 8);
  if (v7)
  {
    WebKit::WebPageProxy::cocoaView(v14, (v7 - 16));
    v8 = *v14;
    [objc_msgSend(*v14 "scrollView")];
    v10 = v9;
    if (v8)
    {
    }

    *v14 = WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>::closestSnapOffset<WebCore::FloatSize,WebCore::FloatPoint>();
    *&v14[8] = v11;
    v12 = v10 * *v14;
    *v15 = v12;
    *(v15 + 4) = *&v14[4];
    return v15[0];
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

void sub_19DDBD8E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL WebKit::RemoteScrollingCoordinatorProxyIOS::shouldSetScrollViewDecelerationRateFast(WebKit::RemoteScrollingCoordinatorProxyIOS *this)
{
  if (WebKit::RemoteScrollingCoordinatorProxyIOS::shouldSnapForMainFrameScrolling(this, 0))
  {
    return 1;
  }

  return WebKit::RemoteScrollingCoordinatorProxyIOS::shouldSnapForMainFrameScrolling(this, 1);
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::setRootNodeIsInUserScroll(WebKit::RemoteScrollingCoordinatorProxy *this, int a2)
{
  v2 = *(*(this + 4) + 24);
  if (v2)
  {
    v4 = *(v2 + 64);
    v5 = (this + 88);
    if (a2)
    {
      WebKit::RemoteScrollingUIState::addNodeWithActiveUserScroll(v5, *(v2 + 56), v4);
    }

    else
    {
      WebKit::RemoteScrollingUIState::removeNodeWithActiveUserScroll(v5, *(v2 + 56), v4);
    }

    WebKit::RemoteScrollingCoordinatorProxy::sendUIStateChangedIfNecessary(this);
  }
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::nearestActiveContentInsetAdjustedSnapOffset(WebKit::RemoteScrollingCoordinatorProxyIOS *this, double a2, const CGPoint *a3)
{
  v3 = *(this + 4);
  v4 = *(v3 + 24);
  if (v4)
  {
    WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(*(v3 + 24));
    WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(v4);
    v6 = *(*(this + 3) + 8);
    if (v6)
    {
      WebKit::WebPageProxy::cocoaView(&v8, (v6 - 16));
      v7 = v8;
      [objc_msgSend(v8 "scrollView")];
      if (v7)
      {
      }
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void sub_19DDBDB10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteScrollingCoordinatorProxyIOS::displayDidRefresh(WebKit::RemoteScrollingCoordinatorProxyIOS *this)
{
  WTF::MonotonicTime::now(this);
  v3 = v2;
  v4 = *(WebKit::RemoteScrollingCoordinatorProxyIOS::drawingAreaIOS(*(*(this + 3) + 8)) + 80);
  v6 = *(this + 20);
  v5 = (this + 160);
  v19 = v6;
  *v5 = 0;
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(&v19);
  v9 = result;
  v10 = v8;
  v11 = v19;
  if (v19)
  {
    v12 = v19 + 16 * *(v19 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != result)
  {
    do
    {
      *v18 = *v9;
      v16 = *v18;
      v17 = 1;
      v13 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>((v4 + 16), &v16);
      v14 = *(v13 + 248);
      WebKit::RemoteAcceleratedEffectStack::applyEffectsFromMainThread(v14, *(v13 + 48), *(v13 + 256), v3);
      result = WebCore::AcceleratedEffectStack::hasEffects(v14);
      if (result)
      {
        result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v5, v18, &v16);
      }

      do
      {
        v9 += 16;
        if (v9 == v10)
        {
          break;
        }
      }

      while (*v9 == 0 || *(v9 + 8) == -1);
    }

    while (v9 != v12);
    v11 = v19;
  }

  if (v11)
  {
    return WTF::fastFree((v11 - 16), v8);
  }

  return result;
}

void sub_19DDBDC4C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    WTF::fastFree((a16 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteScrollingCoordinatorProxyIOS::drawingAreaIOS(WebKit::RemoteScrollingCoordinatorProxyIOS *this)
{
  if (!this || (v1 = *(this + 39)) != 0 && ((*(*v1 + 64))(*(this + 39)) & 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDBDCE8);
  }

  return v1;
}

uint64_t WebKit::RemoteScrollingCoordinatorProxyIOS::animationsWereAddedToNode(WebKit::RemoteScrollingCoordinatorProxyIOS *this, WebKit::RemoteLayerTreeNode *a2)
{
  v6 = *(a2 + 1);
  WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 20, &v6, v5);
  v3 = WebKit::RemoteScrollingCoordinatorProxyIOS::drawingAreaIOS(*(*(this + 3) + 8));
  *(v3 + 297) = 1;
  return [(WKDisplayLinkHandler *)WebKit::RemoteLayerTreeDrawingAreaProxyIOS::displayLinkHandler(v3) schedule];
}

uint64_t *WebKit::RemoteScrollingCoordinatorProxyIOS::animationsWereRemovedFromNode(WebKit::RemoteScrollingCoordinatorProxyIOS *this, WebKit::RemoteLayerTreeNode *a2)
{
  v6 = *(a2 + 1);
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(this + 20, &v6);
  v4 = *(this + 20);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
    if (v5 == result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      goto LABEL_10;
    }

    v5 = 0;
  }

  if (v5 != result)
  {
    result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(this + 20, result);
    v4 = *(this + 20);
  }

  if (v4)
  {
LABEL_9:
    if (*(v4 - 12))
    {
      return result;
    }
  }

LABEL_10:
  result = WebKit::RemoteScrollingCoordinatorProxyIOS::drawingAreaIOS(*(*(this + 3) + 8));
  *(result + 297) = 0;
  if ((result[37] & 1) == 0)
  {
    return [(WKDisplayLinkHandler *)WebKit::RemoteLayerTreeDrawingAreaProxyIOS::displayLinkHandler(result) pause];
  }

  return result;
}

uint64_t WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::create@<X0>(void *a2@<X1>, void *a5@<X8>)
{
  v6 = WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::operator new(0x1C0, a2);
  result = WebCore::ScrollingTreeFrameScrollingNode::ScrollingTreeFrameScrollingNode();
  *v6 = &unk_1F1109E70;
  v6[54] = 0;
  v6[55] = 0;
  v6[53] = 0;
  *a5 = v6;
  return result;
}

uint64_t WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::operator new(WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS *this, void *a2)
{
  if (this == 448 && WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::s_heapRef, a2);
  }

  else
  {
    return WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::operatorNewSlow(this);
  }
}

void WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::~ScrollingTreeFrameScrollingNodeRemoteIOS(WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS *this)
{
  *this = &unk_1F1109E70;
  v2 = *(this + 55);
  *(this + 55) = 0;
  if (v2)
  {
  }

  v3 = *(this + 54);
  *(this + 54) = 0;
  if (v3)
  {
  }

  v4 = *(this + 53);
  *(this + 53) = 0;
  if (v4)
  {
  }

  JUMPOUT(0x19EB0D230);
}

{
  WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::~ScrollingTreeFrameScrollingNodeRemoteIOS(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::commitStateBeforeChildren(uint64_t a1, uint64_t a2)
{
  v4 = WebCore::ScrollingTreeFrameScrollingNode::commitStateBeforeChildren();
  if (*(a2 + 16) < 2u)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6 != 1)
  {
    return v6;
  }

  if ((*(a2 + 43) & 8) != 0)
  {
    PlatformLayerTyped = WebCore::LayerRepresentation::makePlatformLayerTyped(*(a2 + 592), v5);
    v8 = PlatformLayerTyped;
    if (PlatformLayerTyped)
    {
      v9 = PlatformLayerTyped;
    }

    v10 = *(a1 + 424);
    *(a1 + 424) = v8;
    if (v10)
    {
    }
  }

  if ((*(a2 + 46) & 4) != 0)
  {
    v11 = WebCore::LayerRepresentation::makePlatformLayerTyped(*(a2 + 712), v5);
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    v14 = *(a1 + 432);
    *(a1 + 432) = v12;
    if (v14)
    {
    }
  }

  if ((*(a2 + 45) & 8) != 0)
  {
    v15 = WebCore::LayerRepresentation::makePlatformLayerTyped(*(a2 + 752), v5);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    v18 = *(a1 + 440);
    *(a1 + 440) = v16;
    if (v18)
    {
    }
  }

  if ((*(a2 + 41) & 0x10) != 0)
  {
    v19 = *(a1 + 296);
    if (v19 == 1)
    {
      if (!*(a1 + 264))
      {
        goto LABEL_30;
      }
    }

    else if (v19 == 3)
    {
      if (!*(a1 + 280))
      {
        goto LABEL_30;
      }
    }

    else if (v19 != 2 || !*(a1 + 272))
    {
LABEL_30:
      v21 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (!v21)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v20 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::operator new(0x48, v5);
    WebCore::ScrollingTreeScrollingNodeDelegate::ScrollingTreeScrollingNodeDelegate(v20, a1);
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *v20 = &unk_1F110A6D0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 40) = 0;
    *(v20 + 64) = 0;
    v21 = *(a1 + 96);
    *(a1 + 96) = v20;
    if (v21)
    {
LABEL_31:
      (*(*v21 + 8))(v21);
    }
  }

LABEL_32:
  v22 = *(a1 + 96);
  if (v22)
  {
    WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateBeforeChildren(v22, a2);
  }

  return v6;
}

uint64_t WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::commitStateAfterChildren(uint64_t a1, WebCore::ScrollingStateScrollingNode *a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    if (*(a2 + 16) > 1u)
    {
      return 0;
    }

    WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateAfterChildren(v4, a2);
  }

  return MEMORY[0x1EEE595B8](a1, a2);
}

float WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::minimumScrollPosition(WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS *this)
{
  WebCore::FloatPoint::FloatPoint(&v8, this + 19);
  v2 = *&v8;
  if (WebCore::ScrollingTreeNode::isRootNode(this))
  {
    v3 = *(this + 5);
    if (v3)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v8, v3, *(this + 4));
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }

    v6 = WebCore::ScrollingTree::scrollPinningBehavior(v4);
    v8 = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref(v4 + 1, v5);
    }

    if (v6 == 2)
    {
      (*(*this + 136))(this);
    }
  }

  return 0.0 - v2;
}

void sub_19DDBE27C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v10 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::maximumScrollPosition(WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS *this)
{
  WebCore::FloatPoint::FloatPoint(&v7, this + 19);
  result = WebCore::ScrollingTreeNode::isRootNode(this);
  if (result)
  {
    v3 = *(this + 5);
    if (v3)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v7, v3, *(this + 4));
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    result = WebCore::ScrollingTree::scrollPinningBehavior(v4);
    v6 = result;
    v7 = 0;
    if (v4)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref(v4 + 1, v5);
    }

    if (v6 == 1)
    {
      return (*(*this + 128))(this);
    }
  }

  return result;
}

void sub_19DDBE39C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v10 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

WebKit::ScrollingTreeScrollingNodeDelegateIOS *WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::repositionScrollingLayers(WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS *this)
{
  result = *(this + 12);
  if (result)
  {
    return WebKit::ScrollingTreeScrollingNodeDelegateIOS::repositionScrollingLayers(result);
  }

  return result;
}

void *WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::repositionRelatedLayers(WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS *this)
{
  v2 = *(this + 53);
  WebCore::FloatPoint::operator CGPoint();
  result = [v2 setPosition:?];
  v4 = *(this + 54);
  if (v4)
  {
    WebCore::FloatPoint::operator CGPoint();
    result = [v4 setPosition:?];
  }

  v5 = *(this + 55);
  if (v5)
  {
    WebCore::FloatPoint::operator CGPoint();
    return [v5 setPosition:?];
  }

  return result;
}

void sub_19DDBE464(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    ReportBlockedObjCException(v2);
    objc_end_catch();
    JUMPOUT(0x19DDBE454);
  }

  _Unwind_Resume(exception_object);
}

char *WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::scrollbarStateForOrientation@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = *(a1 + 96);
  if (!result)
  {
    goto LABEL_10;
  }

  result = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(result);
  if (!result)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    if ([result showsVerticalScrollIndicator])
    {
LABEL_5:
      result = "";
      v6 = 1;
      goto LABEL_8;
    }
  }

  else if ([result showsHorizontalScrollIndicator])
  {
    goto LABEL_5;
  }

  result = "none";
  v6 = 5;
LABEL_8:
  if (v6 == 1)
  {
LABEL_10:
    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_11;
  }

  result = WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7 = v8;
LABEL_11:
  *a3 = v7;
  return result;
}

WebCore::ScrollingTreeScrollingNode *WebKit::ScrollingTreeOverflowScrollingNodeIOS::create@<X0>(void *a2@<X1>, WebCore::ScrollingTreeScrollingNode **a4@<X8>)
{
  v5 = WebCore::ScrollingTreeOverflowScrollingNode::operator new(0x158, a2);
  result = WebKit::ScrollingTreeOverflowScrollingNodeIOS::ScrollingTreeOverflowScrollingNodeIOS(v5);
  *a4 = v5;
  return result;
}

uint64_t WebCore::ScrollingTreeOverflowScrollingNode::operator new(WebCore::ScrollingTreeOverflowScrollingNode *this, void *a2)
{
  if (this == 344 && *MEMORY[0x1E69E2730])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2730], a2);
  }

  else
  {
    return MEMORY[0x1EEE5A0F0]();
  }
}

WebCore::ScrollingTreeScrollingNode *WebKit::ScrollingTreeOverflowScrollingNodeIOS::ScrollingTreeOverflowScrollingNodeIOS(WebCore::ScrollingTreeScrollingNode *a1)
{
  *WebCore::ScrollingTreeOverflowScrollingNode::ScrollingTreeOverflowScrollingNode() = &unk_1F1109F60;
  v3 = WebKit::ScrollingTreeScrollingNodeDelegateIOS::operator new(0x48, v2);
  WebCore::ScrollingTreeScrollingNodeDelegate::ScrollingTreeScrollingNodeDelegate(v3, a1);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *v3 = &unk_1F110A6D0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = 0;
  v4 = *(a1 + 12);
  *(a1 + 12) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_19DDBE694(_Unwind_Exception *a1, void *a2)
{
  bmalloc::api::tzoneFree(v3, a2);
  MEMORY[0x19EB0D6D0](v2);
  _Unwind_Resume(a1);
}

void WebKit::ScrollingTreeOverflowScrollingNodeIOS::~ScrollingTreeOverflowScrollingNodeIOS(WebKit::ScrollingTreeOverflowScrollingNodeIOS *this)
{
  v1 = MEMORY[0x19EB0D6D0](this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::ScrollingTreeOverflowScrollingNodeIOS::commitStateBeforeChildren(WebKit::ScrollingTreeScrollingNodeDelegateIOS **a1, WebCore::LayerRepresentation **a2)
{
  v2 = *(a2 + 16);
  v3 = v2 > 5;
  v4 = (1 << v2) & 0x2B;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  if ((*(a2 + 41) & 0x10) != 0)
  {
    WebKit::ScrollingTreeScrollingNodeDelegateIOS::resetScrollViewDelegate(a1[12]);
  }

  result = WebCore::ScrollingTreeScrollingNode::commitStateBeforeChildren();
  if (result)
  {
    v9 = *(a2 + 16);
    v3 = v9 > 5;
    v10 = (1 << v9) & 0x2B;
    if (v3 || v10 == 0)
    {
      result = 96;
      __break(0xC471u);
    }

    else
    {
      WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateBeforeChildren(a1[12], a2);
      return 1;
    }
  }

  return result;
}

uint64_t WebKit::ScrollingTreeOverflowScrollingNodeIOS::commitStateAfterChildren(uint64_t a1, const WebCore::ScrollingStateScrollingNode *a2)
{
  v3 = *(a2 + 16);
  v4 = v3 > 5;
  v5 = (1 << v3) & 0x2B;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  WebKit::ScrollingTreeScrollingNodeDelegateIOS::commitStateAfterChildren(*(a1 + 96), a2);

  return MEMORY[0x1EEE595B8](a1, a2);
}

char *WebKit::ScrollingTreeOverflowScrollingNodeIOS::scrollbarStateForOrientation@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollView(*(a1 + 96));
  if (!result)
  {
    goto LABEL_9;
  }

  if (a2)
  {
    if ([result showsVerticalScrollIndicator])
    {
LABEL_4:
      result = "";
      v6 = 1;
      goto LABEL_7;
    }
  }

  else if ([result showsHorizontalScrollIndicator])
  {
    goto LABEL_4;
  }

  result = "none";
  v6 = 5;
LABEL_7:
  if (v6 == 1)
  {
LABEL_9:
    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_10;
  }

  result = WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7 = v8;
LABEL_10:
  *a3 = v7;
  return result;
}

void WebKit::RemoteScrollingCoordinatorProxyIOS::~RemoteScrollingCoordinatorProxyIOS(WebKit::RemoteScrollingCoordinatorProxyIOS *this, void *a2)
{
  WebKit::RemoteScrollingCoordinatorProxyIOS::~RemoteScrollingCoordinatorProxyIOS(this, a2);
  if (*(v2 + 16))
  {
    *(v2 + 160) = 0;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }
}

{
  v3 = *(this + 20);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 19);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  WebKit::RemoteScrollingCoordinatorProxy::~RemoteScrollingCoordinatorProxy(this);
}

__n128 WebKit::RemoteScrollingCoordinatorProxy::filteredWheelEvent@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

WebCore::Region *WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(WebCore::Region *a1, WebCore::Region *a2)
{
  if (a2 != a1)
  {
    v4 = *(a2 + 3);
    if (*(a1 + 3) > v4)
    {
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, v4);
    }

    else if (v4 > *(a1 + 2))
    {
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 3));
    }

    v5 = *a2;
    v6 = *(a1 + 3);
    v7 = *a1;
    if (v6)
    {
      v10 = 24 * v6;
      do
      {
        WebCore::Region::operator=();
        v5 += 24;
        v7 += 24;
        v10 -= 24;
      }

      while (v10);
      v5 = *a2;
      LODWORD(v6) = *(a1 + 3);
      v7 = *a1;
    }

    v8 = *(a2 + 3);
    if (v6 != v8)
    {
      v11 = (v7 + 24 * v6);
      v12 = (v5 + 24 * v6);
      v13 = 24 * v8 - 24 * v6;
      do
      {
        v11 = (WebCore::Region::Region(v11, v12) + 24);
        v12 = (v12 + 24);
        v13 -= 24;
      }

      while (v13);
      LODWORD(v6) = *(a2 + 3);
    }

    *(a1 + 3) = v6;
  }

  return a1;
}

void std::__optional_storage_base<WebCore::Region,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::Region,false> const&>(WebCore::Region *a1, const WebCore::Region *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {

      WebCore::Region::operator=();
    }
  }

  else if (*(a1 + 24))
  {
    WebCore::Region::~Region(a1);
    *(v2 + 24) = 0;
  }

  else
  {
    *(WebCore::Region::Region(a1, a2) + 24) = 1;
  }
}

WebCore::LayerRepresentation *WebCore::LayerRepresentation::LayerRepresentation(WebCore::LayerRepresentation *this, CALayer *a2)
{
  *this = 0;
  PlatformLayerTypeless = WebCore::LayerRepresentation::makePlatformLayerTypeless(a2, a2);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = PlatformLayerTypeless;
  *(this + 8) = 2;
  WebCore::LayerRepresentation::retainPlatformLayer(PlatformLayerTypeless, v4);
  return this;
}

void sub_19DDBEB48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 16))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::ScrollingTreeScrollingNodeDelegateIOS::operator new(WebKit::ScrollingTreeScrollingNodeDelegateIOS *this, void *a2)
{
  if (this == 72 && WebKit::ScrollingTreeScrollingNodeDelegateIOS::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ScrollingTreeScrollingNodeDelegateIOS::s_heapRef, a2);
  }

  else
  {
    return WebKit::ScrollingTreeScrollingNodeDelegateIOS::operatorNewSlow(this);
  }
}

unint64_t WTF::Vector<WebKit::RemoteLayerTreeScrollingPerformanceData::ScrollingLogEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebKit::RemoteLayerTreeScrollingPerformanceData::ScrollingLogEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::RemoteLayerTreeScrollingPerformanceData::ScrollingLogEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t *WTF::Vector<WebKit::RemoteLayerTreeScrollingPerformanceData::ScrollingLogEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 27)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      result = WTF::fastMalloc(0, (32 * a2));
      *(v3 + 2) = v2;
      *v3 = result;
      if (v5)
      {
        v7 = 32 * v5;
        v8 = v4;
        do
        {
          v9 = *v8;
          v10 = *(v8 + 1);
          v8 = (v8 + 32);
          *result = v9;
          *(result + 1) = v10;
          result += 4;
          v7 -= 32;
        }

        while (v7);
      }

      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingTree,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 8))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingTree,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this, a2);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>(uint64_t *a1, int *a2)
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
    JUMPOUT(0x19DDBEFFCLL);
  }

  v4 = *(v2 - 8);
  v5 = 9 * ((v3 + ~(v3 << 15)) ^ ((v3 + ~(v3 << 15)) >> 10));
  v6 = (v5 ^ (v5 >> 6)) + ~((v5 ^ (v5 >> 6)) << 11);
  v7 = v4 & (v6 ^ HIWORD(v6));
  v8 = *(v2 + 8 * v7);
  if (v8 == v3)
  {
    return v2 + 8 * v7;
  }

  v9 = 1;
  while (v8)
  {
    v7 = (v7 + v9) & v4;
    v8 = *(v2 + 8 * v7);
    ++v9;
    if (v8 == v3)
    {
      return v2 + 8 * v7;
    }
  }

  return v2 + 8 * *(v2 - 4);
}

uint64_t *WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<unsigned int const&,WTF::OptionSet<WebCore::TouchAction>&>@<X0>(uint64_t *result@<X0>, int *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDBF1C8);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = 9 * ((v5 + ~(v5 << 15)) ^ ((v5 + ~(v5 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v9 + 8 * v13);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v5)
      {
        v20 = v9 + 8 * *(v9 - 4);
        *a4 = v14;
        *(a4 + 8) = v20;
        *(a4 + 16) = 0;
        *(v14 + 4) = *a3;
        return result;
      }

      if (v15 == -1)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v9 + 8 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14);
    if (v16)
    {
      *v16 = 0;
      *(v16 + 4) = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v14 = v16;
    }
  }

  *v14 = v5;
  *(v14 + 4) = *a3;
  v18 = *v8;
  if (*v8)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v21 = (*(v18 - 16) + v19);
  v22 = *(v18 - 4);
  if (v22 > 0x400)
  {
    if (v22 <= 2 * v21)
    {
LABEL_19:
      result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(v8, v14);
      v14 = result;
      v18 = *v8;
      if (*v8)
      {
        v22 = *(v18 - 4);
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_19;
  }

  *a4 = v14;
  *(a4 + 8) = v18 + 8 * v22;
  *(a4 + 16) = 1;
  return result;
}

void *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(uint64_t *a1, _DWORD *a2)
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

  return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, _DWORD *a3)
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

  v9 = WTF::fastMalloc((8 * a2), (8 * a2 + 16));
  if (v4)
  {
    v11 = v4;
    v12 = v9 + 20;
    do
    {
      *(v12 - 1) = 0;
      *v12 = 0;
      v12 += 8;
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
      v15 = (v6 + 8 * v13);
      if ((*v15 + 1) >= 2)
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

        while (*(v16 + 8 * v21));
        v22 = (v16 + 8 * v21);
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

uint64_t *WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::remove(uint64_t *result, _DWORD *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 8))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this, a2);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, unsigned int *a2)
{
  v3 = a2[3];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = v3;
  if (v3)
  {
    if (v3 >= 0x6666667)
    {
LABEL_11:
      __break(0xC471u);
      JUMPOUT(0x19DDBF644);
    }

    v5 = (5 * v3);
    v6 = 8 * v5;
    v7 = WTF::fastMalloc(v5, (8 * v5));
    *(a1 + 8) = v6 / 0x28;
    *a1 = v7;
    v8 = a2[3];
    if (v8)
    {
      v9 = (*a2 + 36);
      v10 = v7 + 3;
      for (i = 40 * v8; i; i -= 40)
      {
        v12 = *(v9 - 9);
        *(v10 - 8) = *(v9 - 20);
        *(v10 - 3) = v12;
        v13 = *v9;
        *v10 = 0;
        v10[1] = 0;
        *(v10 + 3) = v13;
        if (v13)
        {
          v14 = (v13 >> 29);
          if (v14)
          {
            goto LABEL_11;
          }

          v15 = WTF::fastMalloc(v14, (8 * v13));
          *(v10 + 2) = v13;
          *v10 = v15;
          memcpy(v15, *(v9 - 3), 8 * *v9);
        }

        v9 += 10;
        v10 += 5;
      }
    }
  }

  return a1;
}

void sub_19DDBF650(_Unwind_Exception *exception_object, void *a2)
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

WTF::StringImpl *WebKit::BackgroundFetchStoreManager::createNewStorageIdentifier@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::BackgroundFetchStoreManager *this@<X0>)
{
  WTF::createVersion4UUIDString(&v5, this);
  v6[0] = "-backgroundfetch";
  v6[1] = 17;
  result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v5, v6, a1);
  if (*a1)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::BackgroundFetchStoreManager::BackgroundFetchStoreManager(uint64_t a1, atomic_uint **a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(a1 + 16) = v6;
  v7 = *a3;
  *a3 = 0;
  *(a1 + 24) = v7;
  WTF::WorkQueue::create();
  v8 = *a4;
  *a4 = 0;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  v9 = *(a1 + 32);
  WTF::String::isolatedCopy();
  v11 = WTF::fastMalloc(v10, 0x10);
  *v11 = &unk_1F110A0B0;
  v11[1] = v14;
  v15 = v11;
  (*(*v9 + 48))(v9, &v15);
  v12 = v15;
  v15 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

void WebKit::BackgroundFetchStoreManager::~BackgroundFetchStoreManager(WebKit::BackgroundFetchStoreManager *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = v3 + 8;
      do
      {
        if (*(v5 - 8) != -1)
        {
          WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, a2);
          v6 = *(v5 - 8);
          *(v5 - 8) = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 += 24;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7, a2);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    (*(*v8 + 40))(v8, a2);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    (*(*v9 + 40))(v9, a2);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (*(this + 2) == 1)
  {
    if (*this)
    {
      *(*this + 8) = 0;
      v11 = *this;
      *this = 0;
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v11);
          WTF::fastFree(v11, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

unsigned int *WebKit::BackgroundFetchStoreManager::initializeFetches(void *a1, WTF::StringImpl **a2)
{
  v3 = a1[2];
  if (v3 && *(v3 + 4))
  {
    v4 = a1[3];
    v5 = a1[4];
    (*(*v4 + 32))(v4);
    v16 = v4;
    WTF::String::isolatedCopy();
    v6 = *a2;
    *a2 = 0;
    v17[1] = v6;
    v7 = WTF::fastMalloc(v6, 0x20);
    *v7 = &unk_1F110A0D8;
    v7[1] = v16;
    v8 = *v17;
    v16 = 0;
    v17[0] = 0;
    v17[1] = 0;
    v18 = v7;
    *(v7 + 1) = v8;
    (*(*v5 + 48))(v5, &v18);
    v10 = v18;
    v18 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v17[1];
    v17[1] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v17[0];
    v17[0] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 40))(result);
    }
  }

  else
  {
    v16 = 0;
    v17[0] = 0;
    v14 = *a2;
    *a2 = 0;
    (*(*v14 + 16))(v14, &v16);
    (*(*v14 + 8))(v14);
    return WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v15);
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreManager::clearFetch(void *a1, const WTF::StringImpl **a2, WTF::StringImpl **a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  if (v5 && *(v5 + 4))
  {
    v30[0] = 0;
    v6 = *a2;
    if (*a2)
    {
      v7 = *(v6 + 16);
      v8 = *(v6 + 1);
      LODWORD(v6) = *(v6 + 1);
      v30[0] = v8;
      v9 = (v7 >> 2) & 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    LODWORD(v30[1]) = v6;
    BYTE4(v30[1]) = v9;
    WTF::FileSystemImpl::pathByAppendingComponents();
    v12 = a1 + 3;
    v10 = a1[3];
    v11 = v12[1];
    (*(*v10 + 32))(v10);
    v30[0] = v10;
    WTF::String::isolatedCopy();
    WTF::String::isolatedCopy();
    v13 = *a3;
    *a3 = 0;
    v31[1] = v13;
    v14 = WTF::fastMalloc(v13, 0x28);
    *v14 = &unk_1F110A128;
    v14[1] = v30[0];
    v14[2] = v30[1];
    *(v14 + 3) = *v31;
    *v30 = 0u;
    *v31 = 0u;
    v28 = v14;
    (*(*v11 + 48))(v11, &v28);
    v16 = v28;
    v28 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v31[1];
    v31[1] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v31[0];
    v31[0] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v15);
    }

    v19 = v30[1];
    v30[1] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v15);
    }

    v20 = v30[0];
    v30[0] = 0;
    if (v20)
    {
      (*(*v20 + 40))(v20);
    }

    result = v29;
    v29 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v15);
      }
    }

    return result;
  }

  v22 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a1 + 6, a2, a3);
  v23 = v22;
  v24 = a1[6];
  if (v24)
  {
    v25 = (v24 + 24 * *(v24 - 4));
    if (v25 == v22)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (v25 != v22)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(a1 + 6, v22);
    }

    goto LABEL_28;
  }

  if (v22)
  {
    v25 = 0;
    goto LABEL_26;
  }

LABEL_28:
  v26 = *a3;
  *a3 = 0;
  (*(*v26 + 16))(v26, v23);
  v27 = *(*v26 + 8);

  return v27(v26);
}

uint64_t WebKit::BackgroundFetchStoreManager::clearAllFetches(uint64_t result, unint64_t a2, uint64_t **a3)
{
  v5 = result;
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(result + 16);
  if (!v6 || !*(v6 + 4))
  {
    v20 = *(a2 + 12);
    if (!v20)
    {
LABEL_22:
      v26 = *a3;
      *a3 = 0;
      (*(*v26 + 16))(v26);
      v27 = *(*v26 + 8);

      return v27(v26);
    }

    v21 = *a2;
    v22 = 8 * v20;
    while (1)
    {
      v23 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v5 + 48), v21, a3);
      v24 = *(v5 + 48);
      if (v24)
      {
        v25 = (v24 + 24 * *(v24 - 4));
        if (v25 != v23)
        {
          goto LABEL_19;
        }
      }

      else if (v23)
      {
        v25 = 0;
LABEL_19:
        if (v25 != v23)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((v5 + 48), v23);
        }
      }

      ++v21;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_22;
      }
    }
  }

  v40 = 0;
  v41 = 0;
  v7 = *(a2 + 12);
  if (v7)
  {
    v8 = (v7 >> 29);
    if (v8)
    {
      __break(0xC471u);
      return result;
    }

    v9 = WTF::fastMalloc(v8, (8 * v7));
    LODWORD(v41) = v7;
    v40 = v9;
    v10 = *(a2 + 12);
    if (v10)
    {
      v11 = v9;
      v12 = 0;
      v13 = *a2;
      v14 = 8 * v10;
      do
      {
        v43 = 0;
        v15 = v13[v12];
        if (v15)
        {
          v16 = *(v15 + 16);
          v17 = *(v15 + 1);
          LODWORD(v15) = *(v15 + 1);
          v43 = v17;
          v18 = (v16 >> 2) & 1;
        }

        else
        {
          LOBYTE(v18) = 1;
        }

        LODWORD(v44) = v15;
        BYTE4(v44) = v18;
        WTF::FileSystemImpl::pathByAppendingComponents();
        v19 = v12 + 1;
        v11[v12++] = v42;
        v14 -= 8;
      }

      while (v14);
      HIDWORD(v41) = v19;
    }
  }

  v30 = v5 + 24;
  v28 = *(v5 + 24);
  v29 = *(v30 + 8);
  (*(*v28 + 32))(v28);
  v43 = v28;
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v40, &v44);
  v31 = *a3;
  *a3 = 0;
  v46 = v31;
  v32 = WTF::fastMalloc(v31, 0x28);
  *v32 = &unk_1F110A150;
  v32[1] = v43;
  v33 = v44;
  v43 = 0;
  v44 = 0;
  v32[2] = v33;
  v32[3] = v45;
  v34 = v46;
  v45 = 0;
  v46 = 0;
  v32[4] = v34;
  v42 = v32;
  (*(*v29 + 48))(v29, &v42);
  v36 = v42;
  v42 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = v46;
  v46 = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v35);
  v39 = v43;
  v43 = 0;
  if (v39)
  {
    (*(*v39 + 40))(v39);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v38);
}

uint64_t WebKit::BackgroundFetchStoreManager::storeFetch(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t *a8)
{
  v9 = a3 + a4;
  if (__CFADD__(a3, a4) || (v11 = *(a7 + 12), v12 = __CFADD__(v9, v11), v13 = v9 + v11, v12))
  {
    v14 = *a8;
    *a8 = 0;
    (*(*v14 + 16))(v14, 1);
    v15 = *(*v14 + 8);

    return v15(v14);
  }

  else
  {
    v34 = v13;
    if (!*a1)
    {
      v24 = WTF::fastCompactMalloc(0x10);
      *v24 = 1;
      *(v24 + 8) = a1;
      v25 = *a1;
      *a1 = v24;
      if (v25)
      {
        if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v25);
          WTF::fastFree(v25, v23);
        }
      }
    }

    v26 = *a1;
    add = atomic_fetch_add(*a1, 1u);
    v28 = *a2;
    if (v28)
    {
      add = atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    v29 = *a7;
    v30 = *(a7 + 8);
    *a7 = 0;
    *(a7 + 8) = 0;
    v31 = *a8;
    *a8 = 0;
    v32 = WTF::fastMalloc(add, 0x50);
    *v32 = &unk_1F110A178;
    v32[1] = v26;
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
    }

    v32[2] = v28;
    v32[3] = a3;
    v32[4] = a4;
    v32[5] = a5;
    *(v32 + 48) = a6;
    v32[7] = v29;
    v32[8] = v30;
    v32[9] = v31;
    v35 = v32;
    (*(**(a1 + 40) + 16))(*(a1 + 40), v34, &v35);
    result = v35;
    v35 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
      if (!v28)
      {
        return result;
      }
    }

    else if (!v28)
    {
      return result;
    }

    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v28, v33);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreManager::storeFetchResponseBodyChunk(void *a1, const WTF::String **a2, unint64_t a3, atomic_uint *a4, uint64_t **a5)
{
  v10 = a1[2];
  if (v10 && *(v10 + 4))
  {
    WebKit::createFetchResponseBodyFile(v51, *a2, a3);
    v11 = v51[0];
    if (v51[0])
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
    }

    v15 = a1 + 3;
    v14 = a1[3];
    v13 = v15[1];
    (*(*v14 + 32))(v14);
    v51[0] = v14;
    WTF::String::isolatedCopy();
    atomic_fetch_add(a4 + 2, 1u);
    v16 = *a5;
    *a5 = 0;
    *&v52 = a4;
    *(&v52 + 1) = v16;
    v17 = WTF::fastMalloc(v16, 0x28);
    *v17 = &unk_1F110A1F0;
    v17[1] = v51[0];
    v17[2] = v51[1];
    *(v17 + 3) = v52;
    *v51 = 0u;
    v52 = 0u;
    v53 = v17;
    (*(*v13 + 48))(v13, &v53);
    v19 = v53;
    v53 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(&v52 + 1);
    *(&v52 + 1) = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v52;
    *&v52 = 0;
    if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21 + 2);
      (*(*v21 + 8))(v21);
    }

    v22 = v51[1];
    v51[1] = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v18);
    }

    v23 = v51[0];
    v51[0] = 0;
    if (v23)
    {
      (*(*v23 + 40))(v23);
    }

    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }

    return result;
  }

  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC0B04);
  }

  v25 = a1[6];
  if (v25 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1 + 6, 0), (v25 = a1[6]) != 0))
  {
    v26 = *(v25 - 8);
  }

  else
  {
    v26 = 0;
  }

  v27 = *(*a2 + 4);
  v49 = a4;
  v50 = a5;
  if (v27 < 0x100)
  {
    v28 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v28 = v27 >> 8;
  }

  v29 = 0;
  for (i = 1; ; ++i)
  {
    v31 = v28 & v26;
    v32 = (v25 + 24 * (v28 & v26));
    v33 = *v32;
    if (*v32 == -1)
    {
      v29 = (v25 + 24 * v31);
      goto LABEL_34;
    }

    if (!v33)
    {
      break;
    }

    if (WTF::equal(v33, *a2, a3))
    {
      goto LABEL_47;
    }

LABEL_34:
    v28 = i + v31;
  }

  if (v29)
  {
    *v29 = 0;
    v29[1] = 0;
    v29[2] = 0;
    --*(a1[6] - 16);
    v32 = v29;
  }

  WTF::String::operator=(v32, a2);
  v51[0] = 0;
  v51[1] = 0;
  v36 = *(v32 + 5);
  if (v36)
  {
    WTF::VectorDestructor<true,WebCore::SharedBufferBuilder>::destruct(v32[1], v32[1] + v36);
  }

  v37 = v32[1];
  if (v37)
  {
    v32[1] = 0;
    *(v32 + 4) = 0;
    WTF::fastFree(v37, v34);
  }

  *&v35 = 0;
  *v51 = v35;
  v32[1] = 0;
  v32[2] = 0;
  WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51, v34);
  v38 = a1[6];
  if (v38)
  {
    v39 = *(v38 - 12) + 1;
  }

  else
  {
    v39 = 1;
  }

  *(v38 - 12) = v39;
  v40 = (*(v38 - 16) + v39);
  v41 = *(v38 - 4);
  if (v41 > 0x400)
  {
    if (v41 <= 2 * v40)
    {
LABEL_46:
      v32 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1 + 6, v32);
    }
  }

  else if (3 * v41 <= 4 * v40)
  {
    goto LABEL_46;
  }

LABEL_47:
  v42 = *(v32 + 5);
  if (v42 <= a3)
  {
    LODWORD(v44) = *(v32 + 5);
    do
    {
      v51[0] = 0;
      if (v44 == *(v32 + 4))
      {
        v45 = WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v32 + 2, v42 + 1, v51);
        v44 = *(v32 + 5);
        v46 = v32[1];
        v47 = *v45;
        *v45 = 0;
        *(v46 + v44) = v47;
      }

      else
      {
        *(v32[1] + v42) = 0;
      }

      *(v32 + 5) = v44 + 1;
      v48 = v51[0];
      v51[0] = 0;
      if (v48 && atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v48 + 2);
        (*(*v48 + 8))(v48);
      }

      v42 = *(v32 + 5);
      LODWORD(v44) = *(v32 + 5);
    }

    while (v42 <= a3);
  }

  WebCore::SharedBufferBuilder::append<WebCore::SharedBuffer const&>((v32[1] + 8 * a3), v49);
  v43 = *v50;
  *v50 = 0;
  (*(*v43 + 16))(v43, 0);
  return (*(*v43 + 8))(v43);
}

uint64_t *WebKit::createFetchResponseBodyFile(WebKit *this, atomic_uint *a2, _DWORD *a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
    result = WTF::makeString<WTF::String,char,unsigned long>(this, a2, a3);
    if (atomic_fetch_add_explicit(a2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(a2, v5);
    }
  }

  else
  {

    return WTF::makeString<WTF::String,char,unsigned long>(this, 0, a3);
  }

  return result;
}

unsigned int *WebKit::BackgroundFetchStoreManager::retrieveResponseBody(void *a1, atomic_uint **a2, const WTF::StringImpl *a3, WTF::StringImpl **a4)
{
  v7 = a1[2];
  if (v7 && *(v7 + 4))
  {
    WebKit::createFetchResponseBodyFile(&v29, *a2, a3);
    v8 = v29;
    if (v29)
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      WTF::FileSystemImpl::pathByAppendingComponent();
    }

    v12 = a1 + 3;
    v10 = a1[3];
    v11 = v12[1];
    (*(*v10 + 32))(v10);
    v29 = v10;
    WTF::String::isolatedCopy();
    v13 = *a4;
    *a4 = 0;
    v30[1] = v13;
    v14 = WTF::fastMalloc(v13, 0x20);
    *v14 = &unk_1F110A240;
    v14[1] = v29;
    v15 = *v30;
    v29 = 0;
    v30[0] = 0;
    v30[1] = 0;
    *(v14 + 1) = v15;
    v31 = v14;
    (*(*v11 + 48))(v11, &v31);
    v17 = v31;
    v31 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v30[1];
    v30[1] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v30[0];
    v30[0] = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    v20 = v29;
    v29 = 0;
    if (v20)
    {
      (*(*v20 + 40))(v20);
    }

    result = v32;
    v32 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }

    return result;
  }

  v22 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::SharedBufferBuilder,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a1 + 6, a2, a3);
  v23 = a1[6];
  if (v23)
  {
    v23 += 3 * *(v23 - 1);
  }

  if (v23 == v22 || *(v22 + 5) <= a3)
  {
    v29 = 0;
    v28 = *a4;
    *a4 = 0;
    (*(*v28 + 16))(v28, &v29);
    (*(*v28 + 8))(v28);
    result = v29;
    v29 = 0;
    if (!result)
    {
      return result;
    }

    goto LABEL_31;
  }

  WebCore::SharedBufferBuilder::copy(&v31, v22[1] + a3);
  WebCore::FragmentedSharedBuffer::makeContiguous(&v32, v31);
  v24 = v32;
  v32 = 0;
  v29 = v24;
  v25 = *a4;
  *a4 = 0;
  (*(*v25 + 16))(v25, &v29);
  (*(*v25 + 8))(v25);
  v26 = v29;
  v29 = 0;
  if (v26 && atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26 + 2);
    (*(*v26 + 8))(v26);
  }

  v27 = v32;
  v32 = 0;
  if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v27 + 2);
    (*(*v27 + 8))(v27);
  }

  result = v31;
  v31 = 0;
  if (result)
  {
LABEL_31:
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t *WebCore::SharedBufferBuilder::copy@<X0>(uint64_t *__return_ptr a1@<X8>, atomic_uint **this@<X0>)
{
  v2 = *this;
  if (*this)
  {
    atomic_fetch_add(v2 + 2, 1u);
    result = WebCore::FragmentedSharedBuffer::copy(v2);
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      v4 = *(*v2 + 8);

      return v4(v2);
    }
  }

  else
  {

    return WebCore::FragmentedSharedBuffer::create(a1, this);
  }

  return result;
}

WTF::StringImpl *WebKit::CacheStorageCache::computeKeyURL(WebKit::CacheStorageCache *this, const WTF::URL *a2)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC1198);
  }

  v2 = *a2;
  if (!*a2 || !v2[1])
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  v8 = v2;
  v4 = *(a2 + 24);
  v9 = *(a2 + 8);
  v10 = v4;
  WTF::URL::removeQueryAndFragmentIdentifier(&v8);
  v6 = v8;
  if (!v8)
  {
    *this = 0;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  *this = v6;
  if (v6 == -1)
  {
LABEL_13:
    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x19DDC1178);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t WebKit::CacheStorageCache::operator new(WebKit::CacheStorageCache *this, void *a2)
{
  if (WebKit::CacheStorageCache::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::CacheStorageCache::s_heapRef, a2);
  }

  else
  {
    return WebKit::CacheStorageCache::operatorNewSlow(0x60);
  }
}

uint64_t WebKit::CacheStorageCache::CacheStorageCache(uint64_t a1, unsigned int *a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, uint64_t *a6)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v13 = WebCore::Process::identifier(IdentifierInternal);
  *(a1 + 16) = IdentifierInternal;
  *(a1 + 24) = v13;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v14 = *a2;
  atomic_fetch_add(*a2, 1u);
  *(a1 + 32) = v14;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v15 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  *(a1 + 64) = v15;
  v16 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(a1 + 72) = v16;
  *(a1 + 80) = 0;
  v17 = *a5;
  if (*a5 && (v17 = v17[1], v17))
  {
    v18 = WTF::fastMalloc(v17, 0x38);
    v19 = v18;
    v20 = *a4;
    *(v18 + 2) = 1;
    *v18 = &unk_1F110A030;
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v18[2] = v20;
    v21 = *a5;
    if (*a5)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v18[3] = v21;
    WebKit::CacheStorageDiskStore::versionDirectoryPath(&v31, v21);
    WTF::FileSystemImpl::pathByAppendingComponent();
    v23 = v31;
    v31 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v22);
    }

    Salt = WTF::FileSystemImpl::readOrMakeSalt(&v30, v22);
    if (v25)
    {
      v26 = Salt;
    }

    else
    {
      v26 = 0;
    }

    v19[4] = v26;
    v27 = v30;
    v30 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    v28 = *a6;
    *a6 = 0;
    v19[5] = v28;
    WTF::WorkQueue::create();
  }

  else
  {
    v19 = WTF::fastMalloc(v17, 0x18);
    *(v19 + 2) = 1;
    *v19 = &unk_1F110A070;
    v19[2] = 0;
  }

  *(a1 + 88) = v19;
  return a1;
}

void WebKit::CacheStorageCache::~CacheStorageCache(WebKit::CacheStorageCache *this, WTF::StringImpl *a2)
{
  v3 = *(this + 15);
  if (v3)
  {
    v4 = *(this + 6);
    v5 = 8 * v3;
    do
    {
      v17[0] = 4;
      v17[24] = 1;
      v6 = *v4;
      *v4++ = 0;
      (*(*v6 + 16))(v6, v17);
      (*(*v6 + 8))(v6);
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7, a2);
  }

  v8 = *(this + 10);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(this + 15);
  v12 = *(this + 6);
  if (v11)
  {
    v13 = 8 * v11;
    do
    {
      v14 = *v12;
      *v12 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14, a2);
      }

      v12 = (v12 + 8);
      v13 -= 8;
    }

    while (v13);
    v12 = *(this + 6);
  }

  if (v12)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v12, a2);
  }

  v15 = *(this + 4);
  *(this + 4) = 0;
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, a2);
  }

  if (*(this + 2) == 1)
  {
    if (*this)
    {
      *(*this + 8) = 0;
      v16 = *this;
      *this = 0;
      if (v16)
      {
        if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          WTF::fastFree(v16, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

unint64_t WebKit::CacheStorageCache::open(unint64_t result, uint64_t *a2)
{
  v2 = a2;
  v3 = result;
  if (*(result + 40) == 1)
  {
    v12 = *(result + 16);
    v13 = 0;
    v14 = 0;
    v4 = *a2;
    *a2 = 0;
    (*(*v4 + 16))(v4, &v12);
    return (*(*v4 + 8))(v4);
  }

  else
  {
    v5 = *(result + 60);
    if (v5 == *(result + 56))
    {
      result = WTF::Vector<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((result + 48), v5 + 1, a2);
      v2 = result;
      v5 = *(v3 + 60);
      v6 = (*(v3 + 48) + 8 * v5);
    }

    else
    {
      v6 = (*(result + 48) + 8 * v5);
    }

    v7 = *v2;
    *v2 = 0;
    *v6 = v7;
    v8 = v5 + 1;
    *(v3 + 60) = v8;
    if (v8 <= 1)
    {
      v9 = *(v3 + 88);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3, v3);
      v10 = *v3;
      v11 = WTF::fastMalloc(atomic_fetch_add(v10, 1u), 0x10);
      *v11 = &unk_1F110A2B8;
      v11[1] = v10;
      *&v12 = v11;
      (*(*v9 + 16))(v9, &v12);
      result = v12;
      *&v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::CacheStorageCache::retrieveRecords(uint64_t a1, WebCore::ResourceRequestBase *this, uint64_t **a3)
{
  v114 = *MEMORY[0x1E69E9840];
  v90 = 0;
  v91 = 0;
  v6 = WebCore::ResourceRequestBase::url(this);
  v7 = *v6;
  if (*v6)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    v87 = v7;
    v88 = *(v6 + 8);
    v89 = *(v6 + 24);
    if ((*(this + 233) & 1) == 0)
    {
      v8 = WebCore::ResourceRequestBase::httpMethod(this);
      if ((MEMORY[0x19EB01EF0](*v8, "GET", 3) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    WebKit::CacheStorageCache::computeKeyURL(&v92, &v87);
    v11 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 80), &v92, v9);
    v12 = v92;
    if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = *(a1 + 80);
    if (v13)
    {
      v13 += 3 * *(v13 - 1);
    }

    if (v13 == v11)
    {
LABEL_20:
      v92 = 0;
      v93 = 0;
      LOBYTE(v94) = 0;
      v22 = *a3;
      *a3 = 0;
      goto LABEL_80;
    }

    v82 = a1;
    v84 = a3;
    LOBYTE(v92) = *(this + 232);
    *(&v92 + 1) = *(this + 233);
    v14 = *(v11 + 5);
    if (v14)
    {
      v15 = v11[1] + 104;
      v16 = 160 * v14;
      do
      {
        if (WebCore::DOMCacheEngine::queryCacheMatch())
        {
          v17 = (v15 - 104);
          if (HIDWORD(v91) == v91)
          {
            WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation&>(&v90, v17);
          }

          else
          {
            v18 = WebKit::NetworkCache::Key::Key((v90 + 160 * HIDWORD(v91)), v17);
            v19 = *(v15 - 32);
            *(v18 + 88) = *(v15 - 16);
            *(v18 + 72) = v19;
            v20 = *v15;
            if (*v15)
            {
              atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
            }

            *(v18 + 13) = v20;
            v21 = *(v15 + 24);
            *(v18 + 7) = *(v15 + 8);
            *(v18 + 8) = v21;
            *(v18 + 144) = *(v15 + 40);
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v18 + 19, (v15 + 48));
            ++HIDWORD(v91);
          }
        }

        v15 += 160;
        v16 -= 160;
      }

      while (v16);
    }
  }

  else
  {
    v87 = 0;
    v88 = *(v6 + 8);
    v89 = *(v6 + 24);
    v23 = *(a1 + 80);
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v23);
    v26 = result;
    v27 = v25;
    v84 = a3;
    v82 = a1;
    if (v23)
    {
      v28 = &v23[3 * *(v23 - 1)];
    }

    else
    {
      v28 = 0;
    }

    if (v28 != result)
    {
      do
      {
        v85 = 0;
        v86 = 0;
        v29 = *(v26 + 5);
        if (v29)
        {
          if (v29 >= 0x199999A)
          {
            __break(0xC471u);
            return result;
          }

          v30 = (5 * v29);
          v31 = 32 * v30;
          v32 = WTF::fastMalloc(v30, (32 * v30));
          LODWORD(v86) = v31 / 0xA0;
          v85 = v32;
          v33 = *(v26 + 5);
          if (v33)
          {
            v34 = *(v26 + 1);
            v35 = v34 + 160 * v33;
            do
            {
              WebKit::NetworkCache::Key::Key(&v92, v34);
              v36 = *(v34 + 72);
              v98 = *(v34 + 88);
              v97 = v36;
              v37 = *(v34 + 104);
              if (v37)
              {
                atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
              }

              v99 = v37;
              v38 = *(v34 + 128);
              v100 = *(v34 + 112);
              v101 = v38;
              LOBYTE(v102) = *(v34 + 144);
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v104, (v34 + 152));
              WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(&v85, &v92);
              if (v104)
              {
                WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v104, v25);
              }

              v39 = v99;
              v99 = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v25);
              }

              v40 = v95;
              v95 = 0;
              if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v40, v25);
              }

              v41 = v94;
              v94 = 0;
              if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v41, v25);
              }

              v42 = v93;
              v93 = 0;
              if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, v25);
              }

              v43 = v92;
              v92 = 0;
              if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v43, v25);
              }

              v34 += 160;
            }

            while (v34 != v35);
          }
        }

        v44 = HIDWORD(v86);
        v45 = HIDWORD(v86) + HIDWORD(v91);
        if (v45 > v91)
        {
          v46 = v91 + (v91 >> 1);
          if (v46 <= v91 + 1)
          {
            v46 = v91 + 1;
          }

          if (v46 <= v45)
          {
            v46 = HIDWORD(v86) + HIDWORD(v91);
          }

          if (v46 <= 0x10)
          {
            v47 = 16;
          }

          else
          {
            v47 = v46;
          }

          WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v90, v47);
          v44 = HIDWORD(v86);
        }

        if (v44)
        {
          v48 = v85;
          v49 = 160 * v44;
          do
          {
            WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(&v90, v48);
            v48 += 20;
            v49 -= 160;
          }

          while (v49);
        }

        result = WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v25);
        do
        {
          v26 = (v26 + 24);
        }

        while (v26 != v27 && (*v26 + 1) <= 1);
      }

      while (v26 != v28);
    }
  }

  if (!HIDWORD(v91))
  {
    v92 = 0;
    v93 = 0;
    LOBYTE(v94) = 0;
    v22 = *v84;
    *v84 = 0;
LABEL_80:
    (*(*v22 + 16))(v22, &v92);
    (*(*v22 + 8))(v22);
    if (!v94)
    {
      WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v92, v80);
    }

    goto LABEL_82;
  }

  v50 = *(v82 + 88);
  WTF::URL::URL(&v92, this);
  WTF::URL::URL(v96, this + 5);
  *&v51 = 0;
  v83 = v51;
  v52 = *(this + 10);
  v53 = *(this + 88);
  *(this + 88) = 0u;
  v98 = v53;
  *&v53 = *(this + 13);
  *(this + 13) = 0;
  *(&v97 + 1) = v52;
  v99 = v53;
  v54 = *(this + 15);
  *&v100 = *(this + 14);
  *(&v100 + 1) = v54;
  v55 = *(this + 16);
  v56 = *(this + 17);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *&v101 = v55;
  *(&v101 + 1) = v56;
  LODWORD(v55) = *(this + 36);
  v103 = *(this + 148);
  v102 = v55;
  v57 = *(this + 152);
  *(this + 152) = 0u;
  v104 = v57;
  v107 = *(this + 184);
  v58 = *(this + 21);
  v59 = *(this + 22);
  *(this + 21) = 0;
  v105 = v58;
  v106 = v59;
  v60 = *(this + 24);
  *(this + 24) = 0;
  v108 = v60;
  v109 = *(this + 100);
  v61 = *(this + 13);
  *(this + 13) = 0u;
  v110 = v61;
  v62 = *(this + 28);
  *(this + 28) = 0;
  v111 = v62;
  v112 = *(this + 58);
  v63 = *v84;
  *v84 = 0;
  v113 = v63;
  v64 = WTF::fastMalloc(v63, 0x100);
  *v64 = &unk_1F110A2E0;
  WTF::URL::URL((v64 + 1), &v92);
  WTF::URL::URL((v64 + 6), v96);
  v64[11] = *(&v97 + 1);
  v64[12] = v98;
  v65 = *(&v98 + 1);
  v98 = 0u;
  v64[13] = v65;
  v66 = v99;
  v99 = 0;
  v64[14] = v66;
  v67 = v100;
  v100 = v83;
  *(v64 + 15) = v67;
  v68 = v101;
  v101 = v83;
  *(v64 + 17) = v68;
  LODWORD(v65) = v102;
  *(v64 + 156) = v103;
  *(v64 + 38) = v65;
  v64[20] = v104;
  v69 = *(&v104 + 1);
  v104 = 0u;
  v64[21] = v69;
  v64[22] = v105;
  v70 = v106;
  *(v64 + 192) = v107;
  v64[23] = v70;
  v71 = v108;
  v105 = 0;
  v108 = 0;
  v64[25] = v71;
  *(v64 + 104) = v109;
  v64[27] = v110;
  v72 = *(&v110 + 1);
  v110 = 0u;
  v64[28] = v72;
  v64[29] = v111;
  *(v64 + 60) = v112;
  v73 = v113;
  v111 = 0;
  v113 = 0;
  v64[31] = v73;
  v85 = v64;
  (*(*v50 + 24))(v50, &v90, &v85);
  v75 = v85;
  v85 = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = v113;
  v113 = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  v77 = v111;
  v111 = 0;
  if (v77)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v77, v74);
  }

  v78 = *(&v110 + 1);
  *(&v110 + 1) = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v74);
  }

  v79 = v110;
  *&v110 = 0;
  if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v79, v74);
  }

  WebCore::ResourceRequest::~ResourceRequest(&v92);
LABEL_82:
  v81 = v87;
  if (v87)
  {
    if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v81, v80);
    }
  }

  return WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v90, v80);
}

WTF *WebKit::CacheStorageCache::removeRecords(void *a1, WebCore::ResourceRequestBase *this, uint64_t a3, void *a4)
{
  if ((*(a3 + 1) & 1) == 0)
  {
    v7 = WebCore::ResourceRequestBase::httpMethod(this);
    if ((MEMORY[0x19EB01EF0](*v7, "GET", 3) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v8 = WebCore::ResourceRequestBase::url(this);
  WebKit::CacheStorageCache::computeKeyURL(&v67, v8);
  v11 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(a1 + 10, &v67, v9);
  v12 = v67;
  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = a1[10];
  if (v13)
  {
    v13 += 3 * *(v13 - 1);
  }

  if (v13 == v11)
  {
LABEL_27:
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v38 = *a4;
    *a4 = 0;
    (*(*v38 + 16))(v38, &v67);
    result = (*(*v38 + 8))(v38);
    if (v69)
    {
      return result;
    }

    goto LABEL_57;
  }

  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v14 = v11[1];
  v60 = (v11 + 1);
  v15 = *(v11 + 5);
  v16 = v14 + 160 * v15;
  if (v15)
  {
    v61 = a1;
    v62 = a4;
    v17 = 0;
    v18 = 0;
    v64 = 0;
    v19 = v14 + 160 * v15;
    v20 = v19;
    v21 = v19;
    v63 = v19;
    do
    {
      v22 = v14 + v17;
      if (WebCore::DOMCacheEngine::queryCacheMatch())
      {
        v23 = *(v22 + 10);
        v70 = v23;
        v24 = HIDWORD(v68);
        if (HIDWORD(v68) == v68)
        {
          v25 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v67, HIDWORD(v68) + 1, &v70);
          v24 = HIDWORD(v68);
          *(v67 + HIDWORD(v68)) = *v25;
        }

        else
        {
          *(v67 + HIDWORD(v68)) = v23;
        }

        HIDWORD(v68) = v24 + 1;
        if (HIDWORD(v66) == v66)
        {
          v26 = v18;
          WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::CacheStorageRecordInformation&>(&v65, v14 + v17);
        }

        else
        {
          v28 = WebKit::NetworkCache::Key::Key((v65 + 160 * HIDWORD(v66)), (v14 + v17));
          v29 = v14 + v17;
          v30 = *(v14 + v17 + 72);
          *(v28 + 88) = *(v14 + v17 + 88);
          *(v28 + 72) = v30;
          v31 = *(v22 + 13);
          if (v31)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          v26 = v18;
          *(v28 + 13) = v31;
          v32 = *(v29 + 8);
          *(v28 + 7) = *(v29 + 7);
          *(v28 + 8) = v32;
          *(v28 + 144) = v22[144];
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v28 + 19, v22 + 19);
          ++HIDWORD(v66);
        }

        v33 = *(v14 + v17 + 96);
        v34 = v11;
        v35 = v11[1] + 160 * *(v11 + 5);
        v36 = v14 + v17;
        if (v19 != v35)
        {
          if (v22 == v20)
          {
            v36 = v19;
          }

          else
          {
            WTF::VectorMover<false,WebKit::CacheStorageRecordInformation>::moveOverlapping(v20, v14 + v17, v19);
            v36 = v19 + (v14 + v17) - v20;
          }
        }

        v18 = v33 + v26;
        v20 = v14 + v17 + 160;
        WebKit::CacheStorageRecordInformation::~CacheStorageRecordInformation((v14 + v17), v27);
        ++v64;
        v19 = v36;
        v11 = v34;
        v21 = v63;
      }

      v17 += 160;
    }

    while (v14 + v17 < v21);
    v14 = v11[1];
    v15 = *(v11 + 5);
    v16 = v20;
    a1 = v61;
    a4 = v62;
    v37 = v64;
  }

  else
  {
    v18 = 0;
    v37 = 0;
    v19 = v11[1];
  }

  v41 = v14 + 160 * v15;
  if (v16 != v41)
  {
    WTF::VectorMover<false,WebKit::CacheStorageRecordInformation>::moveOverlapping(v16, v41, v19);
    v15 = *(v11 + 5);
  }

  v42 = v15 - v37;
  *(v11 + 5) = v42;
  if (!v42)
  {
    v43 = a1[10];
    if (v43)
    {
      v44 = (v43 + 24 * *(v43 - 4));
      if (v44 == v11)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_48;
      }

      v44 = 0;
    }

    if (v44 != v11)
    {
      v45 = *v11;
      *v11 = -1;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v41);
      }

      WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60, v41);
      v46 = a1[10];
      v47 = vadd_s32(*(v46 - 16), 0xFFFFFFFF00000001);
      *(v46 - 16) = v47;
      v48 = *(v46 - 4);
      if (6 * v47.i32[1] < v48 && v48 >= 9)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1 + 10, v48 >> 1, 0);
      }
    }
  }

LABEL_48:
  v50 = a1[4];
  if (v50)
  {
    v50 = *(v50 + 8);
    if (v50)
    {
      v51 = (v50 + 8);
      ++*(v50 + 8);
      if (v18 && *(v50 + 32) == 1)
      {
        v52 = (*(v50 + 24) - v18);
        *(v50 + 24) = v52;
        *(v50 + 32) = 1;
        WebKit::writeSizeFile(*(v50 + 56), v52);
      }

      WTF::RefCounted<WebKit::CacheStorageManager>::deref(v51, v41);
    }
  }

  v53 = a1[11];
  v54 = v67;
  v55 = *a4;
  *a4 = 0;
  v56 = v68;
  v67 = 0;
  v68 = 0;
  v57 = WTF::fastMalloc(v50, 0x20);
  *v57 = &unk_1F110A308;
  v57[1] = v54;
  v57[2] = v56;
  v57[3] = v55;
  v70 = v57;
  (*(*v53 + 32))(v53, &v65, &v70);
  v59 = v70;
  v70 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v58);
LABEL_57:
  result = v67;
  if (v67)
  {
    v67 = 0;
    LODWORD(v68) = 0;
    return WTF::fastFree(result, v40);
  }

  return result;
}

uint64_t WebKit::CacheStorageCache::findExistingRecord(uint64_t a1, WebCore::ResourceRequestBase *this, uint64_t a3, char a4)
{
  v7 = WebCore::ResourceRequestBase::url(this);
  WebKit::CacheStorageCache::computeKeyURL(&v17, v7);
  v10 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebKit::CacheStorageRecordInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 80), &v17, v8);
  v11 = v17;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    v12 += 3 * *(v12 - 1);
  }

  if (v12 == v10)
  {
    return 0;
  }

  v13 = *(v10 + 5);
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    if ((a4 & 1) == 0 || a3 == *(v10[1] + v14 + 80))
    {
      result = WebCore::DOMCacheEngine::queryCacheMatch();
      v13 = *(v10 + 5);
      if (result)
      {
        break;
      }
    }

    ++v15;
    v14 += 160;
    if (v15 >= v13)
    {
      return 0;
    }
  }

  if (v15 < v13)
  {
    return v10[1] + v14;
  }

  __break(0xC471u);
  return result;
}

WTF *WebKit::CacheStorageCache::putRecords(unint64_t a1, unint64_t a2, WTF::StringImpl **a3)
{
  v196[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
    LOBYTE(v165) = 4;
    LOBYTE(v167) = 1;
    v79 = *a3;
    *a3 = 0;
    (*(*v79 + 16))(v79, &v165);
    result = (*(*v79 + 8))(v79);
    if (!v167)
    {
      result = v165;
      if (v165)
      {
        v165 = 0;
        LODWORD(v166) = 0;
        return WTF::fastFree(result, v81);
      }
    }

    return result;
  }

  v8 = (v5 + 8);
  ++*(v5 + 8);
  v158 = 0uLL;
  v9 = *(a2 + 12);
  if (!v9)
  {
    goto LABEL_101;
  }

  if (v9 >= 0x572621)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDC322CLL);
  }

  v10 = 752 * v9;
  v11 = WTF::fastMalloc(v9, (752 * v9));
  DWORD2(v158) = v10 / 0x2F0;
  *&v158 = v11;
  v12 = *(a2 + 12);
  if (!v12)
  {
LABEL_101:
    v78 = 0;
    v17 = 1;
    goto LABEL_109;
  }

  v13 = v11;
  v153 = (v5 + 8);
  v14 = 0;
  v15 = 0;
  v155 = 0;
  v154 = 0;
  v16 = *a2;
  v156 = *a2 + 608 * v12;
  v157 = 0;
  v17 = 1;
  do
  {
    if (v17)
    {
      v18 = v16[75];
      v19 = v157;
      v20 = __CFADD__(v157, v18);
      v21 = v157 + v18;
      if (!v20)
      {
        v19 = v21;
      }

      v157 = v19;
      if (v20)
      {
        v15 = 1;
      }

      ExistingRecord = WebKit::CacheStorageCache::findExistingRecord(a1, (v16 + 3), 0, 0);
      if (ExistingRecord)
      {
        v23 = *(ExistingRecord + 96);
        v20 = __CFADD__(v155, v23);
        v24 = v155 + v23;
        if (v20)
        {
          goto LABEL_21;
        }

        v25 = v24;
      }

      else
      {
        v25 = v155;
      }

      if (v15)
      {
        v155 = v25;
        v17 = 0;
        v15 = 1;
      }

      else
      {
        if (v154)
        {
          v155 = v25;
          v15 = 0;
LABEL_21:
          v17 = 0;
          v154 = 1;
          goto LABEL_34;
        }

        v26 = v157;
        if (v25 >= v157)
        {
          v27 = v157;
        }

        else
        {
          v27 = v25;
        }

        v28 = v25;
        v15 = v157 < v27;
        if (v157 >= v27)
        {
          v26 = v157 - v27;
        }

        v157 = v26;
        v29 = v25 >= v27;
        v30 = v25 - v27;
        v31 = !v29;
        v154 = v31;
        if (v29)
        {
          v28 = v30;
        }

        v155 = v28;
      }
    }

LABEL_34:
    v196[0] = *(v5 + 64);
    v32 = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v164 = 0;
    WTF::createVersion4UUIDString(&v163, v32);
    WebKit::NetworkCache::Key::Key(&v191, v177, (a1 + 72), &v164, &v163, v196);
    v34 = v163;
    v163 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v33);
    }

    v35 = v5;
    v36 = v177[0];
    v177[0] = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v36 = WTF::StringImpl::destroy(v36, v33);
    }

    WTF::MonotonicTime::now(v36);
    v38 = v37;
    v39 = *v16;
    v40 = v16[75];
    v41 = v16 + 3;
    v42 = WebCore::ResourceRequestBase::url(v41);
    v43 = *v42;
    if (*v42)
    {
      atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
    }

    v44 = *(v42 + 8);
    v45 = *(v42 + 24);
    v46 = v191;
    v47 = v192;
    v191 = 0u;
    v192 = 0u;
    *v177 = v46;
    *v178 = v47;
    v181 = v195;
    v179 = v193;
    v180 = v194;
    v182 = v38 * 1000.0;
    v183 = v39;
    v184 = 0;
    v185 = v40;
    v186 = v43;
    v187 = v44;
    v188 = v45;
    v189 = 0;
    v48 = (v41 + 33);
    v190 = 0;
    WebKit::CacheStorageRecordInformation::updateVaryHeaders(v177, v41, (v41 + 33));
    v49 = *(v41 - 8);
    v50 = *(v41 + 50);
    *(v159 + 3) = *(v41 + 203);
    v159[0] = v50;
    v51 = v41[26];
    if (v51)
    {
      atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
    }

    v160 = v51;
    v52 = *(v41 + 29);
    v161 = *(v41 + 27);
    v162 = v52;
    v53 = *(v41 + 256);
    v54 = v41;
    v55 = (v41 + 31);
    v56 = v41 + 70;
    WebKit::CacheStorageRecord::CacheStorageRecord(&v165, v177, v49, v54, v159, v55, v53, v48, *(v48 + 312), (v48 + 296));
    v58 = v160;
    v160 = 0;
    if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v58, v57);
    }

    v5 = v35;
    if (v190)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v190, v57);
    }

    v59 = v186;
    v186 = 0;
    if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, v57);
    }

    v60 = v178[1];
    v178[1] = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v57);
    }

    v61 = v178[0];
    v178[0] = 0;
    if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, v57);
    }

    v62 = v177[1];
    v177[1] = 0;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v57);
    }

    v63 = v177[0];
    v177[0] = 0;
    if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v63, v57);
    }

    v64 = *(&v192 + 1);
    *(&v192 + 1) = 0;
    if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, v57);
    }

    v65 = v192;
    *&v192 = 0;
    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v65, v57);
    }

    v66 = *(&v191 + 1);
    *(&v191 + 1) = 0;
    if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v66, v57);
    }

    v67 = v191;
    *&v191 = 0;
    if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v67, v57);
    }

    WebKit::CacheStorageRecord::CacheStorageRecord(v13, &v165);
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Ref<WebCore::FormData,WTF::RawPtrTraits<WebCore::FormData>,WTF::DefaultRefDerefTraits<WebCore::FormData>>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,(mpark::detail::Trait)1>::~move_constructor(&v176);
    WebCore::ResourceResponseData::~ResourceResponseData(&v175, v68);
    v70 = v174;
    v174 = 0;
    if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v70, v69);
    }

    v71 = v173;
    v173 = 0;
    if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v71, v69);
    }

    WebCore::ResourceRequest::~ResourceRequest(&v172);
    if (v171)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v171, v72);
    }

    v73 = v170;
    v170 = 0;
    if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v73, v72);
    }

    v74 = v168;
    v168 = 0;
    if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v74, v72);
    }

    v75 = v167;
    v167 = 0;
    if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v75, v72);
    }

    v76 = v166;
    v166 = 0;
    if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v76, v72);
    }

    v77 = v165;
    v165 = 0;
    if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v77, v72);
    }

    v13 += 752;
    ++v14;
    v16 = v56 + 3;
  }

  while (v16 != v156);
  HIDWORD(v158) = v14;
  v8 = v153;
  if (v17)
  {
    v78 = v157;
    if (v15)
    {
      goto LABEL_211;
    }
  }

  else
  {
    v78 = 0;
  }

LABEL_109:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1, a1);
  *&v82 = 0;
  v83 = *a1;
  add = atomic_fetch_add(*a1, 1u);
  v85 = v158;
  v158 = v82;
  v86 = *a3;
  *a3 = 0;
  v168 = v86;
  v169 = v17;
  v87 = WTF::fastMalloc(add, 0x30);
  *v87 = &unk_1F110A330;
  v87[1] = v83;
  v165 = 0;
  v166 = 0;
  v87[2] = v85;
  v167 = 0;
  v87[3] = *(&v85 + 1);
  v87[4] = v86;
  *(v87 + 40) = v17;
  *&v191 = v87;
  if (*(v5 + 32) == 1)
  {
    (*(**(v5 + 80) + 16))(*(v5 + 80), v78, &v191);
    goto LABEL_200;
  }

  v89 = v87;
  *&v191 = 0;
  v91 = *(v5 + 136);
  v90 = *(v5 + 144);
  if (!v91)
  {
    v92 = *(v5 + 160);
    if (v90)
    {
      if (v90 != v92 - 1)
      {
        goto LABEL_138;
      }
    }

    else if (v92)
    {
      v90 = 0;
      goto LABEL_138;
    }

LABEL_119:
    v93 = v92;
    v94 = (v92 >> 2) + v92;
    if (v94 >= 0xFFFFFFF)
    {
LABEL_211:
      __break(0xC471u);
      JUMPOUT(0x19DDC2C68);
    }

    v95 = *(v5 + 152);
    if (v94 <= 0xF)
    {
      v94 = 15;
    }

    v96 = v94 + 1;
    v97 = WTF::fastMalloc(v94, (16 * (v94 + 1)));
    *(v5 + 160) = v96;
    *(v5 + 152) = v97;
    v98 = *(v5 + 136);
    v99 = *(v5 + 144);
    v100 = v99 - v98;
    if (v99 >= v98)
    {
      if (v93 < v98)
      {
        goto LABEL_207;
      }

      if (v100 == -1)
      {
        v100 = v93 - v98;
      }

      else if (v93 - v98 < v100)
      {
        goto LABEL_207;
      }

      WTF::VectorMover<false,std::pair<unsigned long long,WTF::CompletionHandler<void ()(BOOL)>>>::move(&v95[2 * v98], &v95[2 * v98 + 2 * v100], &v97[2 * v98]);
      if (!v95)
      {
        goto LABEL_137;
      }
    }

    else
    {
      if (v99 > v93)
      {
        goto LABEL_207;
      }

      WTF::VectorMover<false,std::pair<unsigned long long,WTF::CompletionHandler<void ()(BOOL)>>>::move(v95, &v95[2 * v99], v97);
      v101 = *(v5 + 136);
      if (v93 < v101)
      {
        goto LABEL_207;
      }

      v102 = *(v5 + 160);
      if (v102 < v93 - v101)
      {
        goto LABEL_207;
      }

      v103 = v102 - (v93 - v101);
      WTF::VectorMover<false,std::pair<unsigned long long,WTF::CompletionHandler<void ()(BOOL)>>>::move(&v95[2 * v101], &v95[2 * v93], (*(v5 + 152) + 16 * v103));
      *(v5 + 136) = v103;
      if (!v95)
      {
LABEL_137:
        v90 = *(v5 + 144);
        goto LABEL_138;
      }
    }

    if (*(v5 + 152) == v95)
    {
      *(v5 + 152) = 0;
      *(v5 + 160) = 0;
    }

    WTF::fastFree(v95, v88);
    goto LABEL_137;
  }

  if (v90 + 1 == v91)
  {
    LODWORD(v92) = *(v5 + 160);
    goto LABEL_119;
  }

LABEL_138:
  v104 = *(v5 + 160);
  if (v90 >= v104)
  {
LABEL_207:
    __break(1u);
  }

  v105 = (*(v5 + 152) + 16 * v90);
  *v105 = v78;
  v105[1] = v89;
  if (v90 == v104 - 1)
  {
    v106 = 0;
  }

  else
  {
    v106 = v90 + 1;
  }

  *(v5 + 144) = v106;
  v107 = *(v5 + 136);
  v20 = v106 >= v107;
  v108 = v106 - v107;
  if (v20)
  {
    v104 = 0;
  }

  if (v108 + v104 <= 1)
  {
    v110 = (v5 + 48);
    v109 = *(v5 + 48);
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
    if (v109)
    {
      WTF::fastFree((v109 - 16), v88);
    }

    v111 = *(v5 + 100);
    if (v111)
    {
      v112 = *(v5 + 88);
      v113 = v112 + 8 * v111;
      while (1)
      {
        v114 = *(*v112 + 24);
        v177[0] = *(*v112 + 16);
        v177[1] = v114;
        if (!(v177[0] | v114))
        {
          __break(0xC471u);
          JUMPOUT(0x19DDC3204);
        }

        if (v114 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDC3224);
        }

        v115 = *v110;
        if (*v110 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((v5 + 48), 0), (v115 = *v110) != 0))
        {
          v116 = *(v115 - 8);
        }

        else
        {
          v116 = 0;
        }

        v117 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(v177) & v116;
        v118 = (v115 + 16 * v117);
        v120 = *v118;
        v119 = v118[1];
        v121 = *v177;
        if (*v118 != 0)
        {
          v122 = 0;
          v123 = 1;
          while (v120 != v177[0] || v119 != v177[1])
          {
            if (v119 == -1)
            {
              v122 = v118;
            }

            v117 = (v117 + v123) & v116;
            v118 = (v115 + 16 * v117);
            v120 = *v118;
            v119 = v118[1];
            ++v123;
            if (*v118 == 0)
            {
              if (v122)
              {
                *v122 = 0;
                v122[1] = 0;
                --*(*v110 - 16);
                v121 = *v177;
                v118 = v122;
              }

              goto LABEL_164;
            }
          }

          goto LABEL_170;
        }

LABEL_164:
        *v118 = v121;
        v124 = *v110;
        v125 = *v110 ? *(v124 - 12) + 1 : 1;
        *(v124 - 12) = v125;
        v126 = (*(v124 - 16) + v125);
        v127 = *(v124 - 4);
        if (v127 > 0x400)
        {
          break;
        }

        if (3 * v127 <= 4 * v126)
        {
          goto LABEL_169;
        }

LABEL_170:
        v112 += 8;
        if (v112 == v113)
        {
          goto LABEL_175;
        }
      }

      if (v127 > 2 * v126)
      {
        goto LABEL_170;
      }

LABEL_169:
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((v5 + 48), v118);
      goto LABEL_170;
    }

LABEL_175:
    v128 = *(v5 + 104);
    v129 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v128);
    v130 = v129;
    v132 = v131;
    if (v128)
    {
      v133 = (v128 + 24 * *(v128 - 4));
    }

    else
    {
      v133 = 0;
    }

    if (v133 != v129)
    {
      do
      {
        WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v177, (v5 + 48), v130);
        do
        {
          v130 += 3;
          if (v130 == v132)
          {
            break;
          }
        }

        while (*v130 == 0 || v130[1] == -1);
      }

      while (v130 != v133);
    }

    v135 = *(v5 + 100);
    if (v135)
    {
      v136 = *(v5 + 88);
      v137 = 8 * v135;
      do
      {
        v138 = *v136++;
        ++*(v138 + 2);
        WebKit::CacheStorageManager::initializeCacheSize(v5, v138);
        WTF::RefCounted<WebKit::CacheStorageCache>::deref(v138 + 2, v139);
        v137 -= 8;
      }

      while (v137);
    }

    v140 = *(v5 + 104);
    v141 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v140);
    v142 = v141;
    v143 = v88;
    if (v140)
    {
      v144 = v140 + 24 * *(v140 - 4);
    }

    else
    {
      v144 = 0;
    }

    if (v144 != v141)
    {
      do
      {
        v145 = *(v142 + 16);
        v146 = v145 + 2;
        ++v145[2];
        WebKit::CacheStorageManager::initializeCacheSize(v5, v145);
        WTF::RefCounted<WebKit::CacheStorageCache>::deref(v146, v147);
        do
        {
          v142 += 24;
          if (v142 == v143)
          {
            break;
          }
        }

        while (*v142 == 0 || *(v142 + 8) == -1);
      }

      while (v142 != v144);
    }
  }

LABEL_200:
  v149 = v191;
  *&v191 = 0;
  if (v149)
  {
    (*(*v149 + 8))(v149);
  }

  v168 = 0;
  WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v166, v88);
  v151 = v165;
  v165 = 0;
  if (v151 && atomic_fetch_add(v151, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v151);
    WTF::fastFree(v151, v150);
  }

  WTF::Vector<WebKit::CacheStorageRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v150);
  return WTF::RefCounted<WebKit::CacheStorageManager>::deref(v8, v152);
}

WTF::StringImpl *WebKit::CacheStorageRecordInformation::updateVaryHeaders(WebKit::CacheStorageRecordInformation *this, const WebCore::ResourceRequest *a2, const WebCore::ResourceResponseData *a3)
{
  WebCore::HTTPHeaderMap::get();
  if (!v12 || (v7 = (*(a3 + 258) & 0xFE), v7 == 2))
  {
    *(this + 144) = 0;
LABEL_4:
    v8 = *(this + 19);
    *(this + 19) = 0;
    if (v8)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v6);
    }

    goto LABEL_6;
  }

  v10 = WTF::fastMalloc(v7, 0x18);
  *v10 = &unk_1F110A588;
  v10[1] = this;
  v10[2] = a2;
  v11 = v10;
  MEMORY[0x19EB10C30](&v12, 44, &v11);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(this + 144) == 1)
  {
    goto LABEL_4;
  }

LABEL_6:
  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::CacheStorageDiskStore::versionDirectoryPath(WebKit::CacheStorageDiskStore *this, uint64_t a2)
{
  WTF::makeString<WTF::ASCIILiteral,unsigned int>("Version ", 9, 16, &v4);
  WTF::FileSystemImpl::pathByAppendingComponent();
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

WTF::StringImpl *WebKit::CacheStorageDiskStore::recordsDirectoryPath(WebKit::CacheStorageDiskStore *this, uint64_t a2)
{
  WebKit::CacheStorageDiskStore::versionDirectoryPath(&v4, a2);
  WTF::FileSystemImpl::pathByAppendingComponent();
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

WTF::StringImpl *WebKit::CacheStorageDiskStore::recordFilePath(WebKit::CacheStorageDiskStore *this, const WebKit::NetworkCache::Key *a2, const WebKit::NetworkCache::Key *a3)
{
  WebKit::CacheStorageDiskStore::recordsDirectoryPath(&v7, a2);
  WebKit::recordFilePathWithDirectory(this, v7, a3);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t WebKit::recordFilePathWithDirectory(WebKit *this, const WTF::String *a2, const WebKit::NetworkCache::Key *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Key::hashAsString(a3 + 52, &v18);
  v19 = 0;
  v4 = v18;
  if (v18)
  {
    v5 = *(v18 + 16);
    v6 = *(v18 + 1);
    v19 = *(v18 + 1);
    v7 = (v5 >> 2) & 1;
  }

  else
  {
    v6 = 0;
    LOBYTE(v7) = 1;
  }

  v20 = v6;
  v21 = v7;
  v22 = 0;
  v8 = *(a3 + 1);
  if (v8)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 8);
    LODWORD(v8) = *(v8 + 4);
    v22 = v10;
    v11 = (v9 >> 2) & 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  v23 = v8;
  v24 = v11;
  WebKit::NetworkCache::Key::hashAsString(a3 + 32, &v17);
  v25 = 0;
  v12 = v17;
  if (!v17)
  {
    v26 = 0;
    v27 = 1;
    result = WTF::FileSystemImpl::pathByAppendingComponents();
    if (!v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  v13 = *(v17 + 16);
  v14 = *(v17 + 1);
  v25 = *(v17 + 1);
  v26 = v14;
  v27 = (v13 & 4) != 0;
  result = WTF::FileSystemImpl::pathByAppendingComponents();
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v12, v16);
  }

  if (v4)
  {
LABEL_9:
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v16);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::CacheStorageDiskStore::recordBlobFilePath(WebKit::CacheStorageDiskStore *this, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
  }

  v5 = a2;
  v6[0] = "-blob";
  v6[1] = 6;
  result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v5, v6, this);
  if (*this)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void WebKit::readRecordInfoFromFileData(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v193 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    WTF::Persistence::Decoder::Decoder();
    memset(&v82[1], 0, 24);
    *(&v85 + 1) = 0;
    *&v88 = 0;
    v90 = 0;
    LOBYTE(v91) = 0;
    v92 = 0;
    WTF::Persistence::Decoder::operator>>();
    LOBYTE(v162) = 0;
    v174 = 0;
    *&v83[0] = 0;
    v9 = v82[3];
    v82[3] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v82[2];
    v82[2] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v82[1];
    v82[1] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    WTF::Persistence::Decoder::~Decoder(&v132);
    if ((v174 & 1) != 0 && v162 == 16)
    {
      v14 = *&v168;
      WTF::WallTime::now(v12);
      if (v14 <= v15)
      {
        if ((v174 & 1) == 0)
        {
          goto LABEL_94;
        }

        v16 = a4 - v173;
        if (a4 < v173)
        {
          goto LABEL_94;
        }

        v17 = v170;
        if (v170 == -1)
        {
          v17 = v16;
        }

        else if (v16 < v170)
        {
          goto LABEL_94;
        }

        WebKit::computeSHA1(v82, v173 + a3, v17, *a2);
        v18 = *(&v168 + 1) == v82[0] && v169 == v82[1];
        if (v18 && DWORD2(v169) == LODWORD(v82[2]))
        {
          a2 = &v132;
          WTF::Persistence::Decoder::Decoder();
          WTF::Persistence::Decoder::operator>>();
          LOBYTE(v132) = 0;
          v161 = 0;
          while (1)
          {
            WTF::Persistence::Decoder::~Decoder(v192);
            if (v161 != 1)
            {
              break;
            }

            if (v174)
            {
              WebKit::NetworkCache::Key::Key(v186, &v163);
              if (v161)
              {
                v20 = WebCore::ResourceRequestBase::url(&v134);
                v21 = *v20;
                if (*v20)
                {
                  atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
                }

                if (v161)
                {
                  v22 = *(v20 + 8);
                  v23 = *(v20 + 24);
                  v24 = *v186;
                  v25 = *v187;
                  *v186 = 0u;
                  *v187 = 0u;
                  *v175 = v24;
                  *v176 = v25;
                  v177 = v188;
                  v178 = v189;
                  v179 = v190;
                  *v180 = v132;
                  *&v180[8] = 0u;
                  *&v180[24] = v160;
                  v181 = v21;
                  v182 = v22;
                  v183 = v23;
                  v184 = 0;
                  v185 = 0;
                  WebKit::CacheStorageRecordInformation::updateVaryHeaders(v175, &v134, v159);
                  WebKit::NetworkCache::Key::Key(v82, v175);
                  v85 = *v180;
                  v86 = *&v180[16];
                  v26 = v181;
                  if (v181)
                  {
                    atomic_fetch_add_explicit(v181, 2u, memory_order_relaxed);
                  }

                  v87 = v26;
                  v88 = v182;
                  v89 = v183;
                  LOBYTE(v90) = v184;
                  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v91, &v185);
                  if (v174)
                  {
                    LODWORD(v92) = v162;
                    v27 = v163;
                    v163 = 0u;
                    v93 = v27;
                    v28 = v164;
                    v164 = 0u;
                    v94 = v28;
                    v95 = v165;
                    v96 = v166;
                    v97 = v167;
                    v98 = v168;
                    v99 = v169;
                    v103 = v173;
                    v101 = v171;
                    v102 = v172;
                    *v100 = v170;
                    if (v161)
                    {
                      v104 = v132;
                      v105 = v133;
                      v29 = v134;
                      v134 = 0;
                      v106 = v29;
                      v107 = v135;
                      v108 = v136;
                      LODWORD(v135) = v135 & 0xFFFFFFFE;
                      v30 = v137;
                      v137 = 0;
                      v109 = v30;
                      v31 = *(a2 + 88);
                      v110 = *(a2 + 72);
                      v111 = v31;
                      LODWORD(v138) = v110 & 0xFFFFFFFE;
                      v112 = v139;
                      v32 = v140;
                      v140 = 0uLL;
                      v113 = v32;
                      *&v32 = v141;
                      v141 = 0;
                      v114 = v32;
                      v33 = v142;
                      v142 = 0;
                      *&v115 = v33;
                      *&v32 = v143;
                      v143 = 0;
                      *(&v115 + 1) = v32;
                      v34 = v144;
                      v144 = 0;
                      *&v116 = v34;
                      *&v32 = v145;
                      v145 = 0;
                      *(&v116 + 1) = v32;
                      v118 = v147;
                      v117 = v146;
                      v35 = v148;
                      v148 = 0uLL;
                      v119 = v35;
                      v120 = v149;
                      v122 = v151;
                      v121 = v150;
                      v36 = v152;
                      v149 = 0;
                      v152 = 0;
                      v123 = v36;
                      *(v124 + 3) = *(a2 + 227);
                      v124[0] = v153[0];
                      v125 = v154;
                      v126 = v155;
                      v127 = v156;
                      v37 = v157;
                      v154 = 0;
                      v157 = 0;
                      v128 = v37;
                      v129 = v158;
                      WebCore::ResourceResponseData::ResourceResponseData(v130, v159);
                      v131 = v160;
                      v38 = *v82;
                      v39 = *&v82[2];
                      memset(v82, 0, sizeof(v82));
                      *a1 = v38;
                      *(a1 + 16) = v39;
                      v40 = v83[1];
                      *(a1 + 32) = v83[0];
                      *(a1 + 48) = v40;
                      *(a1 + 64) = v84;
                      *(a1 + 72) = v85;
                      *(a1 + 88) = v86;
                      WTF::URL::URL(a1 + 104, &v87);
                      *(a1 + 144) = v90;
                      v41 = v91;
                      v91 = 0;
                      *(a1 + 152) = v41;
                      *(a1 + 160) = v92;
                      v42 = v93;
                      v93 = 0u;
                      *(a1 + 168) = v42;
                      v43 = v94;
                      v94 = 0u;
                      *(a1 + 184) = v43;
                      *(a1 + 200) = v95;
                      *(a1 + 216) = v96;
                      *(a1 + 232) = v97;
                      v44 = v99;
                      *(a1 + 240) = v98;
                      *(a1 + 256) = v44;
                      v45 = *v100;
                      v46 = v101;
                      v47 = v102;
                      *(a1 + 320) = v103;
                      *(a1 + 288) = v46;
                      *(a1 + 304) = v47;
                      *(a1 + 272) = v45;
                      v48 = v104;
                      *(a1 + 352) = v105;
                      *(a1 + 336) = v48;
                      WTF::URL::URL(a1 + 360, &v106);
                      WTF::URL::URL(a1 + 400, &v109);
                      *(a1 + 440) = v112;
                      v49 = v113;
                      v113 = 0u;
                      *(a1 + 448) = v49;
                      *&v49 = v114;
                      v114 = 0;
                      *(a1 + 464) = v49;
                      v50 = v115;
                      v115 = 0u;
                      *(a1 + 472) = v50;
                      v51 = v116;
                      v116 = 0u;
                      *(a1 + 488) = v51;
                      v52 = v117;
                      *(a1 + 508) = v118;
                      *(a1 + 504) = v52;
                      v53 = v119;
                      v119 = 0u;
                      *(a1 + 512) = v53;
                      v54 = v120;
                      v120 = 0;
                      *(a1 + 528) = v54;
                      v55 = v121;
                      *(a1 + 544) = v122;
                      *(a1 + 536) = v55;
                      v56 = v123;
                      v123 = 0;
                      *(a1 + 552) = v56;
                      v57 = v124[0];
                      *(a1 + 563) = *(v124 + 3);
                      *(a1 + 560) = v57;
                      v58 = v125;
                      v125 = 0;
                      *(a1 + 568) = v58;
                      v59 = v127;
                      *(a1 + 576) = v126;
                      *(a1 + 592) = v59;
                      v60 = v128;
                      v128 = 0;
                      *(a1 + 608) = v60;
                      *(a1 + 616) = v129;
                      WebCore::ResourceResponseData::ResourceResponseData(a1 + 624, v130);
                      *(a1 + 920) = v131;
                      *(a1 + 928) = 1;
                      WebKit::StoredRecordInformation::~StoredRecordInformation(v82, v61);
                      if (v185)
                      {
                        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v185, v13);
                      }

                      v62 = v181;
                      v181 = 0;
                      if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v62, v13);
                      }

                      v63 = v176[1];
                      v176[1] = 0;
                      if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v63, v13);
                      }

                      v64 = v176[0];
                      v176[0] = 0;
                      if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v64, v13);
                      }

                      v65 = v175[1];
                      v175[1] = 0;
                      if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v65, v13);
                      }

                      v66 = v175[0];
                      v175[0] = 0;
                      if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v66, v13);
                      }

                      v67 = v187[1];
                      v187[1] = 0;
                      if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v67, v13);
                      }

                      v68 = v187[0];
                      v187[0] = 0;
                      if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v68, v13);
                      }

                      v69 = v186[1];
                      v186[1] = 0;
                      if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v69, v13);
                      }

                      v70 = v186[0];
                      v186[0] = 0;
                      if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v70, v13);
                      }

                      if (v161)
                      {
                        WebCore::ResourceResponseData::~ResourceResponseData(v159, v13);
                        v72 = v157;
                        v157 = 0;
                        if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v72, v71);
                        }

                        v73 = v154;
                        v154 = 0;
                        if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v73, v71);
                        }

                        WebCore::ResourceRequest::~ResourceRequest(&v134);
                      }

                      goto LABEL_77;
                    }
                  }
                }
              }
            }

LABEL_94:
            __break(1u);
            LOBYTE(v132) = 0;
            v161 = 0;
            if (v81)
            {
              v78 = v80;
              v80 = 0;
              if (v78)
              {
                if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v78, v13);
                }
              }
            }

            if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v79, v13);
            }

            if (v191)
            {
              WebCore::ResourceRequest::~ResourceRequest(v186);
            }
          }
        }
      }
    }

    *a1 = 0;
    *(a1 + 928) = 0;
LABEL_77:
    if (v174 == 1)
    {
      v74 = *(&v164 + 1);
      *(&v164 + 1) = 0;
      if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v74, v13);
      }

      v75 = v164;
      *&v164 = 0;
      if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, v13);
      }

      v76 = *(&v163 + 1);
      *(&v163 + 1) = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v13);
      }

      v77 = v163;
      *&v163 = 0;
      if (v77)
      {
        if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v77, v13);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 928) = 0;
  }
}