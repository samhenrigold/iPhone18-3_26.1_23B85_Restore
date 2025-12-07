uint64_t WebKit::WebSocketChannelManager::didReceiveMessage(WebKit::WebSocketChannelManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v11 = *(a3 + 7);
  if ((v11 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebSocketChannel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this, &v11);
  v7 = *this;
  if (*this)
  {
    v7 += 16 * *(v7 - 4);
  }

  if (v7 != result)
  {
    v8 = *(result + 8);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v10 = *(v9 - 8);
        ++*(v9 + 32);
        result = (*(v10 + 80))(v9 - 8, a2, a3);
        if (*(v9 + 32) == 1)
        {
          return (*(*(v9 - 8) + 8))(v9 - 8);
        }

        --*(v9 + 32);
        return result;
      }
    }

    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19E2F9F40);
  }

  return result;
}

WebKit::WebSWClientConnection *WebKit::NetworkProcessConnection::protectedServiceWorkerConnection@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::NetworkProcessConnection *this@<X0>)
{
  result = WebKit::NetworkProcessConnection::serviceWorkerConnection(this, a1);
  ++*(result + 2);
  *a1 = result;
  return result;
}

uint64_t WebKit::NetworkProcessConnection::dispatchSyncMessage(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 50);
  if (v3 >= 0x107F)
  {
    v3 = 4223;
  }

  if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v3 + 2]) != 188)
  {
    return 0;
  }

  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = a3;
    v8 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v8);
    a3 = v9;
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  if ((*(a3 + 56) - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v10 = *(a3 + 56);
    v5 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4 + 17, &v10);
    if (v5)
    {
      v6 = *(v5 + 56);
      if (v6)
      {
        (*(**(*(v6 + 1160) + 16) + 144))(*(*(v6 + 1160) + 16));
      }
    }

    return 0;
  }

  result = 153;
  __break(0xC471u);
  return result;
}

void *WebKit::NetworkProcessConnection::didClose(WebKit::NetworkProcessConnection *this, IPC::Connection *a2)
{
  ++*(this + 5);
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  result = WebKit::WebProcess::networkProcessConnectionClosed(v3, this);
  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    WebKit::WebIDBConnectionToServer::connectionToServerLost(v5);
    result = WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v5 + 6, v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    *(v7 + 12) = 1;
    result = WebCore::SWClientConnection::clearPendingJobs(v7);
    if (*(v7 + 8) == 1)
    {
      result = (*(*v7 + 8))(v7);
    }

    else
    {
      --*(v7 + 8);
    }
  }

  if (*(this + 5) == 1)
  {
    v8 = *(*this + 24);

    return v8(this);
  }

  else
  {
    --*(this + 5);
  }

  return result;
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkConnectionToWebProcess::WriteBlobsToTemporaryFilesForIndexedDB,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>@<X0>(os_unfair_lock_s *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(a6, 0x10);
  *v11 = &unk_1F112C748;
  v11[1] = v10;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v12 = v11;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 501;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = a4;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v24 = v15;
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v15, *a2);
    v23[0] = v12;
    v23[1] = IdentifierInternal;
    v17 = IPC::Connection::sendMessageWithAsyncReply(a1, &v24, v23, a5, 0);
    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v24;
    v24 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return 0;
    }

    else
    {
      return IdentifierInternal;
    }
  }

  return result;
}

void WebKit::NetworkProcessConnection::didFinishPingLoad(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = a2;
    v22 = WebKit::WebProcess::operator new(0x370, a2);
    v6 = WebKit::WebProcess::WebProcess(v22);
    a2 = v21;
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = *(v6 + 43);
  if (!*(*(v7 + 8) + 8))
  {
    goto LABEL_26;
  }

  v8 = *(v7 + 88);
  if (v8)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FA558);
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FA578);
    }

    v9 = *(v8 - 8);
    v10 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
    v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
    v13 = v9 & ((v12 >> 31) ^ v12);
    v14 = *(v8 + 16 * v13);
    if (v14 != a2)
    {
      v15 = 1;
      while (v14)
      {
        v13 = (v13 + v15) & v9;
        v14 = *(v8 + 16 * v13);
        ++v15;
        if (v14 == a2)
        {
          goto LABEL_13;
        }
      }

      v13 = *(v8 - 4);
    }

LABEL_13:
    v16 = *(v8 - 4);
    if (v13 != v16)
    {
      v17 = (v8 + 16 * v13);
      v18 = v17[1];
      *v17 = -1;
      v17[1] = 0;
      v19 = vadd_s32(*(v8 - 16), 0xFFFFFFFF00000001);
      *(v8 - 16) = v19;
      if (v16 >= 9)
      {
        v20 = (6 * v19.i32[1]);
        if (v20 < v16)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((v7 + 88), v16 >> 1, v20);
        }
      }

      if (v18)
      {
        (*(*v18 + 16))(v18, a3, a4);
        (*(*v18 + 8))(v18);
      }
    }

    if (v7 && !*(*(v7 + 8) + 8))
    {
LABEL_26:
      __break(0xC471u);
      JUMPOUT(0x19E2FA538);
    }
  }
}

void *WebKit::NetworkProcessConnection::didFinishPreconnection(WebKit::WebProcess *a1, void *a2, uint64_t a3)
{
  v5 = WebKit::WebProcess::singleton(a1, a2);
  v6 = *(v5 + 43);
  if (!*(*(v6 + 8) + 8) || (result = WebKit::WebLoaderStrategy::didFinishPreconnection(*(v5 + 43), a2, a3), !*(*(v6 + 8) + 8)))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FA614);
  }

  return result;
}

void *WebKit::WebLoaderStrategy::didFinishPreconnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v6, (a1 + 96), &v7);
  v5 = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6, a3);
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t WebKit::NetworkProcessConnection::setOnLineState(WebKit::NetworkProcessConnection *this, uint64_t a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = a2;
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v5);
    a2 = v6;
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = *(v2 + 43);
  if (!*(*(v3 + 8) + 8) || (result = WebKit::WebLoaderStrategy::setOnLineState(*(v2 + 43), a2), !*(*(v3 + 8) + 8)))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FA778);
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::setOnLineState(uint64_t this, uint64_t a2)
{
  if (*(this + 136) != a2)
  {
    *(this + 136) = a2;
    v3 = *(this + 116);
    if (v3)
    {
      v4 = *(this + 104);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        this = (*(*v6 + 16))(v6, a2);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return this;
}

double WebKit::NetworkProcessConnection::cookieAcceptPolicyChanged(uint64_t result, void *a2)
{
  if (*(result + 96) != a2)
  {
    *(result + 96) = a2;
    {
      v3 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v6 = WebKit::WebProcess::operator new(0x370, a2);
      v3 = WebKit::WebProcess::WebProcess(v6);
      WebKit::WebProcess::singleton(void)::process = v3;
    }

    v4 = *(*(v3 + 54) + 32);

    return WebKit::WebCookieCache::clear(v4);
  }

  return v5;
}

WTF **WebKit::NetworkProcessConnection::cookiesAdded(uint64_t a1, void *a2, const WTF::StringImpl *a3)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = a2;
    v8 = a3;
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v6);
    a2 = v7;
    a3 = v8;
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(v3 + 54);

  return WebKit::WebCookieJar::cookiesAdded(v4, a2, a3);
}

WTF **WebKit::NetworkProcessConnection::cookiesDeleted(uint64_t a1, void *a2, const WTF::StringImpl *a3)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = a2;
    v8 = a3;
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v6);
    a2 = v7;
    a3 = v8;
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(v3 + 54);

  return WebKit::WebCookieJar::cookiesDeleted(v4, a2, a3);
}

double WebKit::NetworkProcessConnection::allCookiesDeleted(WebKit::NetworkProcessConnection *this, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = *(*(v2 + 54) + 32);

  return WebKit::WebCookieCache::clear(v3);
}

uint64_t WebKit::NetworkProcessConnection::updateCachedCookiesEnabled(WebKit::NetworkProcessConnection *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  return WebKit::WebProcess::updateCachedCookiesEnabled(v3);
}

WebCore::CachedResource *WebKit::NetworkProcessConnection::didCacheResource(WebCore::MemoryCache *a1, uint64_t a2, uint64_t a3)
{
  v3 = WebCore::MemoryCache::singleton(a1);
  v5 = &qword_1ED643000;
  {
    goto LABEL_10;
  }

  v5 = WebKit::WebProcess::singleton(void)::process;
  while ((*(v5 + 712) & 1) == 0)
  {
    __break(1u);
LABEL_10:
    v10 = v3;
    v8 = v5;
    v9 = WebKit::WebProcess::operator new(0x370, v4);
    v5 = WebKit::WebProcess::WebProcess(v9);
    v3 = v10;
    WebKit::WebProcess::singleton(void)::process = v5;
    *(v8 + 2024) = 1;
  }

  result = WebCore::MemoryCache::resourceForRequest();
  if (result)
  {
    v7 = result;
    result = WebCore::ShareableResourceHandle::tryWrapInSharedBuffer();
    if (v11)
    {
      WebCore::CachedResource::tryReplaceEncodedData(v7, v11);
      result = v11;
      if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11 + 2);
        return (*(*v11 + 8))();
      }
    }
  }

  return result;
}

WebKit::WebProcess *WebKit::NetworkProcessConnection::idbConnectionToServer(WebKit::NetworkProcessConnection *this, void *a2)
{
  result = *(this + 9);
  if (!result)
  {
    result = WebKit::WebProcess::singleton(0, a2);
    if (*(result + 712))
    {
      WebKit::WebIDBConnectionToServer::create(&v9);
      v5 = v9;
      v9 = 0;
      v6 = *(this + 9);
      *(this + 9) = v5;
      if (v6)
      {
        WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref((v6 + 24), v4);
        v8 = v9;
        v9 = 0;
        if (v8)
        {
          WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref((v8 + 24), v7);
        }
      }

      return *(this + 9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

WebKit::WebSWClientConnection *WebKit::NetworkProcessConnection::serviceWorkerConnection@<X0>(WebKit::NetworkProcessConnection *this@<X0>, uint64_t *a3@<X8>)
{
  result = *(this + 10);
  if (!result)
  {
    v5 = WTF::fastMalloc(a3, 0x70);
    result = WebKit::WebSWClientConnection::WebSWClientConnection(v5);
    v6 = *(this + 10);
    *(this + 10) = result;
    if (v6)
    {
      if (v6[2] == 1)
      {
        (*(*v6 + 8))(v6);
        return *(this + 10);
      }

      else
      {
        --v6[2];
      }
    }
  }

  return result;
}

WebKit::WebSharedWorkerObjectConnection *WebKit::NetworkProcessConnection::sharedWorkerConnection@<X0>(WebKit::NetworkProcessConnection *this@<X0>, uint64_t *a3@<X8>)
{
  result = *(this + 11);
  if (!result)
  {
    v5 = WTF::fastMalloc(a3, 0x30);
    result = WebKit::WebSharedWorkerObjectConnection::WebSharedWorkerObjectConnection(v5);
    v6 = *(this + 11);
    *(this + 11) = result;
    if (v6)
    {
      if (v6[2] == 1)
      {
        (*(*v6 + 8))(v6);
        return *(this + 11);
      }

      else
      {
        --v6[2];
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessConnection::messagesAvailableForPort(uint64_t a1, void *a2)
{
  v3 = a2;
  {
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::WebProcess(v4);
    v3 = a2;
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  return MEMORY[0x1EEE54830](v3);
}

void WebKit::NetworkProcessConnection::broadcastConsoleMessage(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v9 = a2;
  v8 = a3;
  v4 = atomic_load(MEMORY[0x1E69E2708]);
  if (v4)
  {
    v6 = WTF::fastMalloc(v4, 0x20);
    *v6 = &unk_1F112C770;
    v6[1] = &v9;
    v6[2] = &v8;
    v6[3] = a4;
    v7 = v6;
    WebCore::Page::forEachPage();
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }
}

void WebKit::NetworkProcessConnection::loadCancelledDownloadRedirectRequestInFrame(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v79 = *MEMORY[0x1E69E9840];
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v35 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v35);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  *buf = a4;
  v8 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebPage,WTF::RawPtrTraits<WebKit::WebPage>,WTF::DefaultRefDerefTraits<WebKit::WebPage>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v7 + 17, buf);
  v9 = v8;
  if (v8)
  {
    CFRetain(*(v8 + 8));
    {
      v11 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v36 = WebKit::WebProcess::operator new(0x370, v10);
      v11 = WebKit::WebProcess::WebProcess(v36);
      WebKit::WebProcess::singleton(void)::process = v11;
    }

    if (WebKit::WebProcess::webFrame(v11, a3, 1))
    {
      *buf = 0;
      buf[8] = 0;
      v39 = 0;
      LOBYTE(v40) = 0;
      v41 = 0;
      WebCore::ResourceRequest::ResourceRequest(&v42);
      v62[144] = 0;
      v62[160] = 0;
      v62[512] = 0;
      v63 = 0;
      v64[2] = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v61 = 0u;
      memset(v62, 0, 25);
      v60 = 0u;
      *(v64 + 7) = 0;
      v64[0] = 0;
      if ((v41 & 1) == 0)
      {
        v41 = 1;
      }

      v40 = a3;
      v13 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v14 = v42;
      v42 = v13;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = *(a2 + 3);
      v43 = *(a2 + 1);
      v44 = v15;
      v16 = a2[5];
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v17 = v45;
      v45 = v16;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v12);
      }

      v18 = *(a2 + 4);
      v46 = *(a2 + 3);
      v47 = v18;
      v48 = a2[10];
      v19 = a2[11];
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v20 = v49;
      v49 = v19;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v12);
      }

      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(&v50, (a2 + 12));
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v51, a2 + 14);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v52, a2 + 32, v21);
      v52[4] = *(a2 + 36);
      v53 = *(a2 + 148);
      v23 = a2[19];
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v24 = v54;
      v54 = v23;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v22);
      }

      v25 = a2[20];
      if (v25)
      {
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      }

      v26 = v55;
      v55 = v25;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v22);
      }

      v27 = a2[21];
      if (v27)
      {
        ++*v27;
      }

      v28 = v56;
      v56 = v27;
      if (v28)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v28);
      }

      v57 = a2[22];
      v58 = *(a2 + 184);
      v29 = a2[24];
      if (v29)
      {
        CFRetain(v29);
      }

      v30 = cf;
      cf = v29;
      if (v30)
      {
        CFRelease(v30);
      }

      WebKit::WebPage::loadRequest(v9, buf);
      WebKit::LoadParameters::~LoadParameters(buf, v31);
LABEL_45:
      CFRelease(*(v9 + 8));
      return;
    }
  }

  v32 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    WebCore::ResourceRequestBase::url(a2);
    WTF::String::utf8();
    v33 = v37 ? v37 + 16 : 0;
    *buf = 136315138;
    *&buf[4] = v33;
    _os_log_error_impl(&dword_19D52D000, v32, OS_LOG_TYPE_ERROR, "Trying to load Invalid page or frame for %s", buf, 0xCu);
    if (v37)
    {
      if (*v37 == 1)
      {
        WTF::fastFree(v37, v34);
      }

      else
      {
        --*v37;
      }
    }
  }

  if (v9)
  {
    goto LABEL_45;
  }
}

uint64_t WebKit::NetworkProcessConnection::connectToRTCDataChannelRemoteSource(WebKit::RTCDataChannelRemoteManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = WebKit::RTCDataChannelRemoteManager::singleton(a1);
  v12 = WebKit::RTCDataChannelRemoteManager::connectToRemoteSource(v11, a2, a3, a4, a5);
  v13 = *a6;
  *a6 = 0;
  (*(*v13 + 16))(v13, v12 | 0x100);
  v14 = *(*v13 + 8);

  return v14(v13);
}

uint64_t WebKit::WebLoaderStrategy::internallyFailedLoadTimerFired(uint64_t this, unint64_t a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(v2 - 12);
    if (v3)
    {
      if (v3 >> 29)
      {
        __break(0xC471u);
      }

      else
      {
        v4 = this;
        v5 = WTF::fastMalloc(v3, (8 * v3));
        v7 = v5;
        v8 = *(v4 + 16);
        if (v8 && *(v8 - 12))
        {
          v9 = *(v8 - 4);
          if (v9)
          {
            v10 = 8 * v9;
            for (i = *(v4 + 16); (*i + 1) <= 1; ++i)
            {
              v10 -= 8;
              if (!v10)
              {
                return WTF::fastFree(v7, v6);
              }
            }
          }

          else
          {
            i = *(v4 + 16);
          }

          v12 = (v8 + 8 * v9);
          if (v12 != i)
          {
            v13 = 0;
            v14 = 1;
            do
            {
              v15 = v14;
              v16 = *i;
              if (*i)
              {
                ++*(v16 + 16);
              }

              v5[v13] = v16;
              do
              {
                ++i;
              }

              while (i != v12 && (*i + 1) <= 1);
              ++v13;
              v14 = v15 + 1;
            }

            while (i != v12);
            if (v13)
            {
              v17 = 8 * v15;
              v18 = v5;
              do
              {
                v19 = *v18;
                WebCore::ResourceRequestBase::url((*v18 + 344));
                WebCore::internalError();
                (*(*v19 + 240))(v19, &v27);
                v20 = cf;
                cf = 0;
                if (v20)
                {
                  CFRelease(v20);
                }

                v21 = v29;
                v29 = 0;
                if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v21, v6);
                }

                v22 = v28;
                v28 = 0;
                if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v6);
                }

                v23 = v27;
                v27 = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v6);
                }

                ++v18;
                v17 -= 8;
              }

              while (v17);
              v24 = 8 * v15;
              v25 = v7;
              do
              {
                v26 = *v25;
                *v25 = 0;
                if (v26)
                {
                  if (v26[4] == 1)
                  {
                    (*(*v26 + 8))(v26);
                  }

                  else
                  {
                    --v26[4];
                  }
                }

                v25 = (v25 + 8);
                v24 -= 8;
              }

              while (v24);
            }
          }
        }

        return WTF::fastFree(v7, v6);
      }
    }
  }

  return this;
}

uint64_t WTF::RunLoop::Timer::Timer<WebKit::WebLoaderStrategy>@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = WTF::fastMalloc(a4, 0x20);
  *v6 = &unk_1F112C798;
  v6[1] = a3;
  v6[2] = WebKit::WebLoaderStrategy::internallyFailedLoadTimerFired;
  v6[3] = 0;
  result = WTF::RunLoop::TimerBase::TimerBase();
  *a1 = &unk_1F10E6DC8;
  a1[5] = v6;
  return result;
}

void WebKit::WebLoaderStrategy::~WebLoaderStrategy(WebKit::WebLoaderStrategy *this, void *a2)
{
  WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  v4 = *(this + 12);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  v5 = *(this + 11);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(this + 10);
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  v7 = *(this + 9);
  if (v7)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v7, v3);
  }

  *(this + 3) = &unk_1F10E6DC8;
  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 24));
  v10 = *(this + 2);
  if (v10)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::deallocateTable(v10, v9);
  }

  v11 = *(this + 1);
  *(this + 1) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v9);
  }

  MEMORY[0x1EEE55690](this);
}

{
  WebKit::WebLoaderStrategy::~WebLoaderStrategy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebLoaderStrategy::loadResource(uint64_t a1, WebCore::LocalFrame *this, WebCore::CachedResource *a3, WebCore::ResourceRequestBase *a4, uint64_t a5, uint64_t *a6)
{
  if ((*(a3 + 572) & 0x1F) != 0 || (v23 = *(this + 15)) == 0 || *(v23 + 8) != this)
  {
    WebCore::LocalFrame::localMainFrame(&v24, this);
    if (v24)
    {
      v12 = *(v24 + 224);
      if (v12)
      {
        *(v12 + 7) += 2;
        if (WebCore::Document::loader(v12))
        {
          WebCore::Document::loader(v12);
          WebCore::ResourceRequestBase::setIsAppInitiated(a4);
        }

        if (*(v12 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v12);
        }

        else
        {
          *(v12 + 7) -= 2;
        }
      }

      v13 = v24;
      v24 = 0;
      if (v13)
      {
        if (v13[4] == 1)
        {
          (*(*v13 + 8))(v13);
        }

        else
        {
          --v13[4];
        }
      }
    }
  }

  v24 = a1;
  if (!*(*(a1 + 8) + 8))
  {
    goto LABEL_28;
  }

  v25 = a1;
  v26 = *(a5 + 5);
  v14 = *a6;
  *a6 = 0;
  v27 = v14;
  WebCore::CachedResourceHandleBase::CachedResourceHandleBase(&v28, a3);
  v15 = (*(this + 4) + 1);
  *(this + 4) = v15;
  v29 = this;
  v16 = WTF::fastMalloc(v15, 0x38);
  *v16 = &unk_1F112C7C0;
  v16[1] = v24;
  v16[2] = v25;
  *(v16 + 24) = v26;
  v17 = v27;
  v25 = 0;
  v27 = 0;
  v16[4] = v17;
  WebCore::CachedResourceHandleBase::CachedResourceHandleBase((v16 + 5), &v28);
  v18 = v29;
  v29 = 0;
  v30 = v16;
  v16[6] = v18;
  WebCore::SubresourceLoader::create();
  v19 = v30;
  v30 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v29;
  v29 = 0;
  if (v20)
  {
    if (*(v20 + 4) == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --*(v20 + 4);
    }
  }

  WebCore::CachedResourceHandleBase::~CachedResourceHandleBase(&v28);
  result = v27;
  v27 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    if (!*(*(v22 + 8) + 8))
    {
LABEL_28:
      __break(0xC471u);
      JUMPOUT(0x19E2FB9E0);
    }
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::schedulePluginStreamLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(*(a1 + 8) + 8))
  {
    v7 = *a5;
    *a5 = 0;
    v8 = (*(a2 + 16) + 1);
    *(a2 + 16) = v8;
    v9 = WTF::fastMalloc(v8, 0x28);
    *v9 = &unk_1F112C7E8;
    v9[1] = a1;
    v9[2] = a1;
    v9[3] = v7;
    v9[4] = a2;
    v11 = v9;
    WebCore::NetscapePlugInStreamLoader::create();
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

WebCore::FrameLoader *WebKit::WebLoaderStrategy::scheduleLoad(WebKit::WebLoaderStrategy *this, WebCore::ResourceLoader *a2, WebCore::CachedResource *a3, uint64_t a4)
{
  v121 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 94);
  if (!v11)
  {
    goto LABEL_69;
  }

  v12 = a4;
  v5 = a2;
  v110 = this;
  v115 = *(a2 + 94);
  result = WebCore::ResourceLoader::frameLoader(a2);
  if (result)
  {
    v4 = result;
    WebCore::FrameLoader::ref(result);
    v15 = *(v4 + 2);
    v16 = *(WebCore::FrameLoader::frame(v4) + 24);
    v109 = a3;
    if (v16 && (v17 = *(v16 + 8)) != 0)
    {
      v18 = *(v17 + 48);
      v19 = *(v17 + 40) & 0xFFFFFFFFFFFFFF00;
      v20 = *(v17 + 40);
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v20 = 0;
    }

    v22 = (*(*v15 + 40))(v15);
    if (v22)
    {
      isa = v15;
    }

    else
    {
      isa = 0;
    }

    if (isa)
    {
      WebCore::LocalFrameLoaderClient::ref(isa);
    }

    if (v22)
    {
      v23 = WebKit::WebLocalFrameLoaderClient::webPageProxyID(v15, v21);
      v8 = v24;
      goto LABEL_13;
    }

    v8 = (*(*v15 + 1040))(v15);
    if (v8)
    {
      v77 = v15;
    }

    else
    {
      v77 = 0;
    }

    v107 = v77;
    if (v77)
    {
      WebCore::LocalFrameLoaderClient::ref(v77);
      if (!v8)
      {
        v23 = 0;
        goto LABEL_146;
      }
    }

    else if ((v8 & 1) == 0)
    {
      v23 = 0;
      v8 = 0;
LABEL_13:
      if (isa)
      {
        WebCore::LocalFrameLoaderClient::deref(isa);
      }

      v9 = v20 | v19;
      if (v8 & v18)
      {
        *&v112 = v23;
        *(&v112 + 1) = v9;
        *&v113 = WebCore::FrameLoader::frameID(v4);
        *(&v113 + 1) = v11;
        v25 = 1;
      }

      else
      {
        v25 = 0;
        LOBYTE(v112) = 0;
      }

      v114 = v25;
      WebCore::ResourceLoader::protectedDocumentLoader(buf, v5);
      v26 = WebCore::DocumentLoader::scheduleArchiveLoad();
      v27 = *buf;
      *buf = 0;
      if (v27)
      {
        if (v27[6] == 1)
        {
          (*(*v27 + 24))(v27);
        }

        else
        {
          --v27[6];
        }
      }

      if (v26)
      {
        v78 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          v79 = WebCore::ResourceLoader::frameLoader(v5);
          v80 = WebCore::ResourceLoader::frame(v5);
          *buf = 134219520;
          if (v25)
          {
            v81 = v9;
          }

          else
          {
            v81 = 0;
          }

          *&buf[4] = v110;
          *&buf[12] = 2048;
          *&buf[14] = v5;
          *&buf[22] = 2048;
          *&buf[24] = v79;
          *&buf[32] = 2048;
          *&buf[34] = v80;
          *&buf[42] = 2048;
          *&buf[44] = v81;
          *&buf[52] = 2048;
          *&buf[54] = v81;
          *&buf[62] = 2048;
          *&buf[64] = v81;
          _os_log_impl(&dword_19D52D000, v78, OS_LOG_TYPE_DEFAULT, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be handled as an archive resource", buf, 0x48u);
        }

        v82 = (*(v5 + 4) + 1);
        *(v5 + 4) = v82;
        v111 = v5;
        v83 = WTF::fastMalloc(v82, 0x68);
        v116 = WebKit::WebResourceLoader::WebResourceLoader(v83, &v111, &v112);
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(buf, v110 + 9, &v115, &v116);
        if (v116)
        {
          if (*(v116 + 2) == 1)
          {
            (*(*v116 + 8))();
          }

          else
          {
            --*(v116 + 2);
          }
        }

        if (v111)
        {
          if (*(v111 + 4) == 1)
          {
            (*(*v111 + 8))();
          }

          else
          {
            --*(v111 + 4);
          }
        }

        return WebCore::FrameLoader::deref(v4);
      }

      WebCore::ResourceRequestBase::url((v5 + 344));
      v28 = WTF::URL::protocolIs();
      if (v28)
      {
        v73 = WebCore::logClient(v28);
        v74 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v73);
        if (v74)
        {
          if (v25)
          {
            v75 = v9;
          }

          else
          {
            v75 = 0;
          }

          WebKit::LogClient::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA(v74, v75, v75, v75);
          goto LABEL_87;
        }

        v105 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          if (v25)
          {
            v106 = v9;
          }

          else
          {
            v106 = 0;
          }

          *buf = 134218496;
          *&buf[4] = v106;
          *&buf[12] = 2048;
          *&buf[14] = v106;
          *&buf[22] = 2048;
          *&buf[24] = v106;
          v88 = "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be loaded as data";
          v89 = v105;
          v90 = 32;
          goto LABEL_116;
        }
      }

      else
      {
        v29 = WebCore::ResourceRequestBase::url((v5 + 344));
        if (!WebCore::isQuickLookPreviewURL(v29, v30))
        {
          v116 = 0;
          shouldInterceptRequestInternal = WebCore::ResourceLoader::frameLoader(v5);
          if (!shouldInterceptRequestInternal)
          {
            goto LABEL_36;
          }

          v33 = *(WebCore::ResourceLoader::frameLoader(v5) + 16);
          if ((*(*v33 + 40))(v33))
          {
            v34 = v33[3];
            CFRetain(v34[1]);
            shouldInterceptRequestInternal = WebKit::WebFrame::page(v34, v35);
            isa = shouldInterceptRequestInternal;
            if (shouldInterceptRequestInternal)
            {
              shouldInterceptRequestInternal = CFRetain(shouldInterceptRequestInternal[1]);
            }

            v116 = isa;
          }

          else
          {
            v91 = *(WebCore::ResourceLoader::frameLoader(v5) + 16);
            shouldInterceptRequestInternal = (*(*v91 + 1040))(v91);
            if (!shouldInterceptRequestInternal)
            {
              goto LABEL_36;
            }

            if ((*(v91 + 64) & 1) == 0)
            {
              goto LABEL_36;
            }

            v92 = *(v91 + 48);
            *buf = *(v91 + 32);
            *&buf[16] = v92;
            shouldInterceptRequestInternal = WebCore::Page::serviceWorkerPage();
            if (!shouldInterceptRequestInternal)
            {
              goto LABEL_36;
            }

            v93 = shouldInterceptRequestInternal + 1;
            ++*(shouldInterceptRequestInternal + 2);
            v94 = WebKit::WebPage::fromCorePage(shouldInterceptRequestInternal);
            WTF::RefPtr<API::Dictionary const,WTF::RawPtrTraits<API::Dictionary const>,WTF::DefaultRefDerefTraits<API::Dictionary const>>::operator=(&v116, v94);
            if (v116 && (v95 = WebKit::WebPage::mainFrame(v116)) != 0)
            {
              v8 = v95;
              ++*(v95 + 16);
              WebKit::WebFrame::fromCoreFrame(v95, buf);
              v34 = *buf;
              if (*(v8 + 16) == 1)
              {
                (*(*v8 + 8))(v8);
              }

              else
              {
                --*(v8 + 16);
              }
            }

            else
            {
              v34 = 0;
            }

            shouldInterceptRequestInternal = WTF::RefCounted<WebCore::Page>::deref(v93);
            isa = v116;
          }

          if (isa)
          {
            if (!v34)
            {
              v116 = 0;
              CFRelease(*(isa + 1));
              goto LABEL_36;
            }

            WebCore::ResourceRequestBase::url((v5 + 344));
            if (!WTF::URL::protocolIs() || *(*(v5 + 5) + 3595) == 1)
            {
              v36 = v116;
              v37 = WebCore::ResourceRequestBase::url((v5 + 344));
              *buf = WTF::URL::protocol(v37);
              *&buf[8] = v38 & 0xFFFFFFFFFFLL;
              v39 = WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::StringViewHashTranslator,WTF::StringView>(v36 + 224, buf);
              if (v39)
              {
                v8 = v39;
                isa = (v39 + 8);
                ++*(v39 + 8);
                v101 = qword_1ED6416F0;
                if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
                {
                  v108 = WebCore::ResourceLoader::frameLoader(v5);
                  v102 = WebCore::ResourceLoader::frame(v5);
                  *buf = 134219520;
                  if (v25)
                  {
                    v103 = v9;
                  }

                  else
                  {
                    v103 = 0;
                  }

                  *&buf[4] = v110;
                  *&buf[12] = 2048;
                  *&buf[14] = v5;
                  *&buf[22] = 2048;
                  *&buf[24] = v108;
                  *&buf[32] = 2048;
                  *&buf[34] = v102;
                  *&buf[42] = 2048;
                  *&buf[44] = v103;
                  *&buf[52] = 2048;
                  *&buf[54] = v103;
                  *&buf[62] = 2048;
                  *&buf[64] = v103;
                  _os_log_impl(&dword_19D52D000, v101, OS_LOG_TYPE_DEFAULT, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::tryLoadingUsingURLSchemeHandler: URL will be handled by a UIProcess URL scheme handler", buf, 0x48u);
                }

                WebKit::WebURLSchemeHandlerProxy::startNewTask(v8, v5, v34);
                WTF::RefCounted<WebKit::WebURLSchemeHandlerProxy>::deref(isa, v104);
                v40 = 1;
LABEL_33:
                CFRelease(v34[1]);
                v41 = v116;
                v116 = 0;
                if (v41)
                {
                  CFRelease(*(v41 + 1));
                }

                if (v40)
                {
                  return WebCore::FrameLoader::deref(v4);
                }

LABEL_36:
                if (v25)
                {
                  if (atomic_load(MEMORY[0x1E69E2708]))
                  {
                    shouldInterceptRequestInternal = WebCore::InspectorInstrumentationWebKit::shouldInterceptRequestInternal(v5, v32);
                    if (shouldInterceptRequestInternal)
                    {
                      *buf = v110;
                      if (*(*(v110 + 1) + 8))
                      {
                        ++*(v5 + 4);
                        *&buf[24] = v112;
                        *&buf[40] = v113;
                        buf[56] = v114;
                        buf[64] = v12;
                        v120 = v109;
                        v96 = WTF::fastMalloc(v109, 0x58);
                        *v96 = &unk_1F112C810;
                        v96[1] = v110;
                        v96[2] = v110;
                        v96[3] = v5;
                        *&buf[8] = 0;
                        *&buf[16] = 0;
                        v97 = *&buf[24];
                        v98 = v120;
                        v99 = *&buf[56];
                        *(v96 + 3) = *&buf[40];
                        *(v96 + 4) = v99;
                        v96[10] = v98;
                        *(v96 + 2) = v97;
                        v116 = v96;
                        WebCore::InspectorInstrumentationWebKit::interceptRequestInternal();
                        v100 = v116;
                        v116 = 0;
                        if (v100)
                        {
                          (*(*v100 + 8))(v100);
                        }

                        WebKit::WebLoaderStrategy::scheduleLoad(WebCore::ResourceLoader &,WebCore::CachedResource *,BOOL)::$_0::~$_0(buf);
                        return WebCore::FrameLoader::deref(v4);
                      }

LABEL_160:
                      __break(0xC471u);
                      JUMPOUT(0x19E2FC79CLL);
                    }
                  }

                  v43 = WebCore::logClient(shouldInterceptRequestInternal);
                  v6 = *v43;
                  if (*v43)
                  {
                    if (((*(v6->isa + 3))(*v43) & 1) == 0)
                    {
                      goto LABEL_160;
                    }

                    LOBYTE(v9) = v114;
                    if (v114)
                    {
                      v44 = *(&v112 + 1);
                    }

                    else
                    {
                      v44 = 0;
                    }

                    os_unfair_lock_lock(&v6[2]);
                    isa = v6[1].isa;
                    v116 = v44;
                    v117 = v44;
                    v118 = v44;
                    v8 = v6[3].isa;
                    v46 = *(isa + 16);
                    v10 = INFINITY;
                    if (fabs(v46) != INFINITY)
                    {
                      WTF::ApproximateTime::now(v45);
                      v10 = v46 + v47;
                    }

                    if (*(isa + 8) != v8)
                    {
                      goto LABEL_70;
                    }

LABEL_46:
                    IPC::StreamClientConnectionBuffer::tryAcquire(isa + 72, buf, v10);
                    if (buf[16] == 1)
                    {
                      v48 = *&buf[8];
                      if (*&buf[8] <= 1uLL)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x19E2FC7BCLL);
                      }

                      v49 = *buf;
                      **buf = 294;
                      v50 = v49 + 2;
                      v51 = -v50 & 7 | 8;
                      v52 = v48 - 2 - v51;
                      if (v48 - 2 < v51 || (*(v50 + (-v50 & 7)) = v116, v53 = v50 + v51, v54 = -v53 & 7 | 8, v55 = v52 - v54, v52 < v54) || (*(v53 + (-v53 & 7)) = v117, v56 = v53 + v54, v57 = -v56 & 7 | 8, v55 < v57))
                      {
                        if ((buf[16] & 1) == 0)
                        {
                          goto LABEL_69;
                        }

                        IPC::StreamClientConnection::sendProcessOutOfStreamMessage(isa, *buf, *&buf[8]);
                        IPC::Connection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD>(*(isa + 1), &v116, v8);
                      }

                      else
                      {
                        *(v56 + (-v56 & 7)) = v118;
                        v58 = v48 - v55 + v57;
                        if (v58 <= 0x10)
                        {
                          v58 = 16;
                        }

                        v59 = (*(isa + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
                        v60 = *(isa + 9);
                        if (v59 + 16 >= v60)
                        {
                          v59 = 0;
                        }

                        v61 = v59 + v58;
                        if (v60 <= v61)
                        {
                          v61 = 0;
                        }

                        *(isa + 11) = v61;
                        v62 = *(isa + 10);
                        if (*(v62 + 8) <= 0xFFuLL)
                        {
                          goto LABEL_69;
                        }

                        if (atomic_exchange((*(v62 + 16) + 128), v61) == 0x80000000 || *(isa + 31))
                        {
                          if (*(isa + 112) == 1)
                          {
                            MEMORY[0x19EB16320](*(isa + 25));
                          }

                          *(isa + 31) = 0;
                        }
                      }
                    }

                    while (1)
                    {
                      os_unfair_lock_unlock(&v6[2]);
                      if (v9)
                      {
                        break;
                      }

LABEL_69:
                      while (1)
                      {
                        __break(1u);
LABEL_70:
                        IPC::StreamClientConnectionBuffer::tryAcquire(isa + 72, buf, v10);
                        if (buf[16] != 1)
                        {
                          break;
                        }

                        v63 = *&buf[8];
                        if (*&buf[8] <= 1uLL)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x19E2FC7DCLL);
                        }

                        v64 = *buf;
                        **buf = 3198;
                        v65 = v64 + 2;
                        if (v63 - 2 < (-v65 & 7 | 8uLL))
                        {
                          break;
                        }

                        v66 = -v65 & 7;
                        *(v65 + v66) = v8;
                        v67 = 6;
                        if (v66 > 6)
                        {
                          v67 = v66;
                        }

                        v68 = v67 + 10;
                        v69 = (*(isa + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
                        v70 = *(isa + 9);
                        if (v69 + 16 >= v70)
                        {
                          v69 = 0;
                        }

                        v71 = v68 + v69;
                        if (v70 <= v71)
                        {
                          v71 = 0;
                        }

                        *(isa + 11) = v71;
                        v72 = *(isa + 10);
                        if (*(v72 + 8) > 0xFFuLL)
                        {
                          IPC::StreamClientConnection::wakeUpServerBatched(isa, atomic_exchange((*(v72 + 16) + 128), v71) == 0x80000000);
                          *(isa + 8) = v8;
                          goto LABEL_46;
                        }
                      }
                    }
                  }

                  else
                  {
                    v6 = qword_1ED6416F0;
                    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v114)
                      {
                        v76 = *(&v112 + 1);
                      }

                      else
                      {
                        v76 = 0;
                      }

                      *buf = 134218496;
                      *&buf[4] = v76;
                      *&buf[12] = 2048;
                      *&buf[14] = v76;
                      *&buf[22] = 2048;
                      *&buf[24] = v76;
                      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be scheduled with the NetworkProcess", buf, 0x20u);
                      if ((v114 & 1) == 0)
                      {
                        goto LABEL_69;
                      }
                    }

                    else if ((v114 & 1) == 0)
                    {
                      goto LABEL_69;
                    }
                  }

                  WebKit::maximumBufferingTime(v109);
                  WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(v110, v5, v5 + 344);
                }

                return WebCore::FrameLoader::deref(v4);
              }
            }
          }

          else if (!v34)
          {
            goto LABEL_36;
          }

          v40 = 0;
          goto LABEL_33;
        }

        v84 = qword_1ED6416F0;
        if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
        {
          v85 = WebCore::ResourceLoader::frameLoader(v5);
          v86 = WebCore::ResourceLoader::frame(v5);
          *buf = 134219520;
          if (v25)
          {
            v87 = v9;
          }

          else
          {
            v87 = 0;
          }

          *&buf[4] = v110;
          *&buf[12] = 2048;
          *&buf[14] = v5;
          *&buf[22] = 2048;
          *&buf[24] = v85;
          *&buf[32] = 2048;
          *&buf[34] = v86;
          *&buf[42] = 2048;
          *&buf[44] = v87;
          *&buf[52] = 2048;
          *&buf[54] = v87;
          *&buf[62] = 2048;
          *&buf[64] = v87;
          v88 = "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: URL will be handled as a QuickLook resource";
          v89 = v84;
          v90 = 72;
LABEL_116:
          _os_log_impl(&dword_19D52D000, v89, OS_LOG_TYPE_DEFAULT, v88, buf, v90);
        }
      }

LABEL_87:
      WebKit::WebLoaderStrategy::startLocalLoad(v110, v5);
      return WebCore::FrameLoader::deref(v4);
    }

    v23 = v15[2];
    v8 = 1;
LABEL_146:
    WebCore::LocalFrameLoaderClient::deref(v107);
    goto LABEL_13;
  }

  return result;
}

void WebKit::LogClient::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v8 = *&this[2]._os_unfair_lock_opaque;
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBLOADERSTRATEGY_SCHEDULELOAD_URL_LOADED_AS_DATA,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v9, *&this[6]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 4);
}

WebCore::ResourceLoader *WebKit::WebLoaderStrategy::startLocalLoad(WebKit::WebLoaderStrategy *this, WebCore::ResourceLoader *a2)
{
  result = WebCore::ResourceLoader::start(a2);
  v13 = *(a2 + 94);
  v14 = v13 != 0;
  if (!v13)
  {
    __break(1u);
LABEL_9:
    if (*(result + 4) == 1)
    {
      return (*(*result + 8))(result);
    }

    --*(result + 4);
    return result;
  }

  v5 = (*(a2 + 4) + 1);
  *(a2 + 4) = v5;
  v11 = a2;
  LOBYTE(v9) = 0;
  v10 = 0;
  v6 = WTF::fastMalloc(v5, 0x68);
  v12 = WebKit::WebResourceLoader::WebResourceLoader(v6, &v11, &v9);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(&v8, this + 9, &v13, &v12);
  v7 = v12;
  v12 = 0;
  if (v7)
  {
    if (v7[2] == 1)
    {
      (*(*v7 + 8))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  result = v11;
  if (v11)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::scheduleLoad(WebCore::ResourceLoader &,WebCore::CachedResource *,BOOL)::$_0::~$_0(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    if (v1[4] == 1)
    {
      v3 = result;
      (*(*v1 + 8))(v1);
      result = v3;
    }

    else
    {
      --v1[4];
    }
  }

  v2 = *(result + 8);
  *(result + 8) = 0;
  if (v2)
  {
    if (!*(*(v2 + 8) + 8))
    {
      result = 92;
      __break(0xC471u);
    }
  }

  return result;
}

void WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v251 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v345 = *MEMORY[0x1E69E9840];
  v14 = *(v9 + 94);
  if (!v14)
  {
    goto LABEL_282;
  }

  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v3 = v9;
  v264 = *(v9 + 94);
  v19 = WebCore::ResourceLoader::frame(v9);
  v6 = v19;
  if (v19)
  {
    ++*(v19 + 16);
    v20 = *(v19 + 24);
    if (v20)
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        ++*(v21 + 8);
        v22 = *(v19 + 120);
        if (v22)
        {
          v22 = *(v22 + 8);
        }

        if (v22 == v19 && WebCore::ResourceLoader::frameLoader(v3))
        {
          WebCore::ResourceLoader::frameLoader(v3);
        }

        WebCore::ResourceRequestBase::url(v18);
        v23 = WebCore::Page::allowsLoadFromURL();
        if ((v23 & 1) == 0)
        {
          WTF::RunLoop::mainSingleton(v23);
          ++*(v3 + 4);
          *&v275 = v3;
          WebKit::blockedError(&v275 + 1, v18);
          WTF::Function<void ()(void)>::Function<WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0,void>(buf, &v275, v214);
          WTF::RunLoop::dispatch();
          v216 = *buf;
          *buf = 0;
          if (v216)
          {
            (*(*v216 + 8))(v216);
          }

          WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0::~$_0(&v275, v215);
          WTF::RefCounted<WebCore::Page>::deref((v21 + 8));
          goto LABEL_138;
        }

        WTF::RefCounted<WebCore::Page>::deref((v21 + 8));
      }
    }
  }

  v255 = v6;
  v24 = *(v3 + 1090);
  v252 = (v24 >> 1) & 1;
  v25 = (v24 >> 2) & 1;
  v26 = (*(*v3 + 248))(v3);
  v275 = *v17;
  v254 = v17;
  v276 = *(v17 + 2);
  v248 = v18;
  WebCore::ResourceRequest::ResourceRequest(&v277, v18);
  v279 = 0;
  v278 = 0u;
  v280 = 1;
  v281 = 0;
  v282[0] = 0;
  v282[2912] = 0;
  v283 = 0x10000;
  v284 = 1;
  v286 = 0;
  memset(v285, 0, 35);
  v287 = 0u;
  BYTE9(v287) = 2;
  *(&v287 + 10) = 0;
  BYTE14(v287) = 0;
  v291 = 0;
  v292[0] = 0;
  memset(v288, 0, 41);
  WTF::URL::invalidate(v292);
  v293 = 0;
  WTF::URL::invalidate(&v293);
  v294 = 0;
  v295 = 0u;
  v296 = 0;
  v297 = 0u;
  WebCore::HTTPHeaderMap::HTTPHeaderMap(&v298);
  v300 = 0;
  v301 = 0;
  v304 = 0;
  v305 = 0;
  v302 = 0u;
  v303 = 0;
  v306 = 1;
  v307 = 0;
  WTF::URL::invalidate(&v307);
  v310 = 0;
  v308 = 0;
  v309 = 0;
  WTF::URL::invalidate(&v310);
  v311 = 0;
  v314 = 0;
  LOBYTE(v315) = 0;
  v331 = 0;
  v312 = 0u;
  LOBYTE(v313) = 0;
  v332 = 1;
  LOBYTE(v333) = 0;
  v334 = 0;
  v335 = 0;
  LOBYTE(v336) = 0;
  v337 = 0;
  BYTE8(v338) = 0;
  v339 = 0;
  WTF::URL::invalidate(&v339);
  LOBYTE(v342) = 0;
  v343 = 0;
  v344 = 0;
  WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(&v275);
  *&v285[5] = v14;
  LODWORD(v279) = WTF::legacyPresentingApplicationPID(v27);
  BYTE4(v279) = v252;
  BYTE5(v279) = v25;
  BYTE6(v279) = v26;
  HIBYTE(v279) = WebCore::ResourceLoader::isAllowedToAskUserForCredentials(v3);
  LOBYTE(v280) = v16;
  HIBYTE(v280) = WebCore::ResourceLoader::shouldIncludeCertificateInfo(v3);
  *&v287 = v15;
  *(&v287 + 11) = *(v3 + 979);
  DWORD2(v287) = *(v3 + 244);
  v29 = *(v3 + 123);
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  v30 = (v3 + 1090);
  v31 = v288[0];
  v288[0] = v29;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v28);
  }

  v32 = *(v3 + 63);
  v8 = &v275;
  *&v288[1] = *(v3 + 62);
  *&v288[3] = v32;
  HIBYTE(v300) = (*v30 >> 20) & 3;
  v4 = &v275;
  if (!WebCore::ResourceLoader::frame(v3))
  {
    goto LABEL_17;
  }

  v33 = WebCore::ResourceLoader::frame(v3);
  v34 = *(v33 + 120);
  if (v34)
  {
    v34 = *(v34 + 8);
  }

  if (v34 == v33)
  {
    LODWORD(v7) = *(v3 + 977) == 0;
  }

  else
  {
LABEL_17:
    LODWORD(v7) = 0;
  }

  WebKit::addParametersShared(v6, &v275, v7);
  if ((*v30 & 0x400000) != 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = HIWORD(*v30) & 3;
  }

  v332 = v35;
  v36 = *(v3 + 128) != 0;
  v333 = *(v3 + 128);
  v334 = v36;
  v338 = *(v3 + 1112);
  v335 = *(v3 + 1089);
  if (*(v3 + 137))
  {
    v336 = *(v3 + 137);
    v337 = 1;
  }

  if (!v6)
  {
    v5 = 0;
    goto LABEL_292;
  }

  v37 = *(v6 + 120);
  if (v37)
  {
    v37 = *(v37 + 8);
  }

  if (v37 != v6)
  {
    BYTE2(v344) = (*(*(v6 + 128) + 712) & 4) != 0;
  }

  v5 = *(v6 + 224);
  if (!v5)
  {
LABEL_292:
    v250 = 1;
    if (*(v3 + 1052))
    {
      goto LABEL_33;
    }

    goto LABEL_158;
  }

  *(v5 + 28) += 2;
  if (*(v3 + 1052))
  {
    if ((WebCore::Document::shouldBypassMainWorldContentSecurityPolicy(v5) & 1) == 0 && (*(v3 + 1091) & 1) != 0 && (v133 = WebCore::SecurityContext::contentSecurityPolicy((v5 + 208))) != 0)
    {
      v134 = v133;
      atomic_fetch_add(v133, 1u);
      WebCore::ContentSecurityPolicy::responseHeaders(buf, v133);
      std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(&v288[5], buf);
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v135);
      if (!atomic_load(v134))
      {
        __break(0xC471u);
        JUMPOUT(0x19E2FE528);
      }

      v250 = 0;
      atomic_fetch_add(v134, 0xFFFFFFFF);
    }

    else
    {
      v250 = 0;
    }

    goto LABEL_33;
  }

  v250 = 0;
LABEL_158:
  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(buf, v3 + 129);
  *&buf[16] = *(v3 + 262);
  buf[20] = *(v3 + 1052);
  buf[24] = 1;
  if (v291)
  {
    WebCore::ContentSecurityPolicyResponseHeaders::operator=(&v288[5], buf);
    if ((buf[24] & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v288[5] = *buf;
    v129 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v288[6] = v129;
    v289 = *(v3 + 262);
    v290 = *(v3 + 1052);
    v291 = 1;
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v9);
LABEL_33:
  if (*(v3 + 1080) == 1)
  {
    v296 = *(v3 + 528);
    v125 = *(v3 + 133);
    if (v125)
    {
      atomic_fetch_add_explicit(v125, 2u, memory_order_relaxed);
    }

    v126 = v297;
    *&v297 = v125;
    if (v126 && atomic_fetch_add_explicit(v126, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v126, v9);
    }

    v127 = *(v3 + 134);
    if (v127)
    {
      atomic_fetch_add_explicit(v127, 2u, memory_order_relaxed);
    }

    v128 = *(&v297 + 1);
    *(&v297 + 1) = v127;
    if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v128, v9);
    }
  }

  if (!v6)
  {
    goto LABEL_283;
  }

  v38 = *(*(v6 + 208) + 16);
  if (!(*(*v38 + 40))(v38))
  {
    goto LABEL_283;
  }

  v39 = v38[3];
  if (!v39)
  {
    goto LABEL_283;
  }

  CFRetain(v39[1]);
  v253 = v39;
  v249 = 0;
  *(&v283 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v39);
  for (i = 1; ; i = 0)
  {
    if (v5)
    {
      v41 = *(v5 + 800);
      if (v41)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      v42 = v293;
      v293 = v41;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v9);
      }

      v43 = *(v5 + 808);
      v8[212] = *(v5 + 824);
      v8[211] = v43;
      v44 = *(v5 + 552);
      if (v44)
      {
        v45 = *(v44 + 8);
        if (v45)
        {
          v46 = *(v45 + 24);
          if (v46)
          {
            v47 = *(v46 + 8);
            if (v47)
            {
              v48 = v47 + 2;
              ++v47[2];
              v50 = WebCore::Page::mainFrameURL(v47);
              v51 = *v50;
              if (*v50)
              {
                atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
              }

              v52 = v339;
              v339 = v51;
              if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v52, v49);
              }

              v53 = *(v50 + 24);
              v340 = *(v50 + 8);
              v341 = v53;
              WTF::RefCounted<WebCore::Page>::deref(v48);
            }
          }
        }
      }

      if (i)
      {
        v222 = WebKit::WebFrame::page(v253, v9);
        if (v222)
        {
          v223 = v222;
          CFRetain(*(v222 + 8));
          v224 = *(*(v223 + 584) + 64);
          if ((v8[252] & 1) == 0)
          {
            *(v8 + 4032) = 1;
          }

          v342 = v224;
          CFRelease(*(v223 + 8));
        }
      }
    }

    if ((*(*v3 + 184))(v3))
    {
      v55 = *(v3 + 173);
      if (v55)
      {
        atomic_fetch_add(v55, 1u);
      }

      v56 = *(&v278 + 1);
      *(&v278 + 1) = v55;
      if (v56)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v56, v54);
      }

      v57 = WebCore::SubresourceLoader::originalHeaders(v3);
      if (v57)
      {
        v130 = v57;
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=((v4 + 216), v57);
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v299, (v130 + 16));
      }
    }

    if (*(&v278 + 1))
    {
      goto LABEL_59;
    }

    if (!v5)
    {
      goto LABEL_294;
    }

    v138 = WebCore::SecurityContext::securityOrigin((v5 + 208));
    atomic_fetch_add(v138, 1u);
    v139 = *(&v278 + 1);
    *(&v278 + 1) = v138;
    if (v139)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v139, v137);
      if (!*(&v278 + 1))
      {
LABEL_294:
        WebCore::ResourceRequestBase::httpOrigin(buf, v248);
        if (*buf)
        {
          WebCore::SecurityOrigin::createFromString(&v259, buf, v217);
          v219 = v259;
          v259 = 0;
          v220 = *(&v278 + 1);
          *(&v278 + 1) = v219;
          if (v220)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v220, v218);
            v233 = v259;
            v259 = 0;
            if (v233)
            {
              WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v233, v218);
            }
          }

          v221 = *buf;
          *buf = 0;
          if (v221 && atomic_fetch_add_explicit(v221, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v221, v218);
          }
        }

LABEL_59:
        if (v7)
        {
          goto LABEL_177;
        }

        if (!v5)
        {
          goto LABEL_67;
        }

        goto LABEL_61;
      }

      if (!v7)
      {
        goto LABEL_61;
      }

LABEL_177:
      WebCore::ResourceRequestBase::url(v248);
      if (WTF::URL::protocolIs() && (v230 = *(v3 + 5)) != 0 && !WebCore::NavigationAction::isEmpty((v230 + 1648)) && (v231 = *(v3 + 5), *(v231 + 1872) == 1))
      {
        v232 = *(v231 + 1696);
        if (v232)
        {
          atomic_fetch_add(v232, 1u);
        }

        v210 = v278;
        *&v278 = v232;
        v6 = v255;
        v4 = &v275;
        v8 = &v275;
        if (v210)
        {
          goto LABEL_281;
        }
      }

      else
      {
        v140 = WebCore::ResourceRequestBase::url(v248);
        WebCore::SecurityOrigin::create(buf, v140, v141);
        v142 = *buf;
        *buf = 0;
        v143 = v278;
        *&v278 = v142;
        if (v143)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v143, v58);
          v210 = *buf;
          *buf = 0;
          if (v210)
          {
LABEL_281:
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v210, v58);
          }
        }
      }

      if (!v5)
      {
        goto LABEL_67;
      }

      goto LABEL_63;
    }

    if (v7)
    {
      goto LABEL_177;
    }

LABEL_61:
    v59 = WebCore::Document::topOrigin(v5);
    atomic_fetch_add(v59, 1u);
    v60 = v278;
    *&v278 = v59;
    if (v60)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v60, v58);
    }

LABEL_63:
    v61 = *(v5 + 800);
    if (v61)
    {
      atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
    }

    v62 = v307;
    v307 = v61;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v58);
    }

    v63 = *(v5 + 808);
    v8[223] = *(v5 + 824);
    v8[222] = v63;
LABEL_67:
    if (*(v8 + 3249) && !*(&v278 + 1))
    {
      break;
    }

    *(v8 + 3488) = 1;
    v281 = v7;
    if (v7 && v5)
    {
      v208 = WebCore::Document::crossOriginOpenerPolicy(v5);
      WebCore::CrossOriginOpenerPolicy::operator=((v4 + 227), v208);
    }

    v64 = WebCore::ResourceLoader::frame(v3);
    if (*(v3 + 977))
    {
      v66 = 1;
    }

    else
    {
      v66 = v64 == 0;
    }

    if (v66)
    {
      v67 = 0;
    }

    else
    {
      v67 = i;
    }

    v68 = v253;
    if (v67 == 1 && WebKit::WebFrame::frameLoaderClient(v253))
    {
      if (v6)
      {
        v177 = *(*(v6 + 208) + 402);
      }

      else
      {
        v177 = 0;
      }

      v178 = WebKit::WebFrame::frameLoaderClient(v253);
      v179 = *(v3 + 5);
      WebCore::ResourceResponseBase::ResourceResponseBase(&v259);
      cf = 0;
      v263 = 0;
      v261 = v261 & 0xF1 | 4;
      v258 = 0;
      LOBYTE(v256[0]) = 0;
      v257 = 0;
      WebKit::WebFrameLoaderClient::navigationActionData(v178, v179 + 1648, v248, &v259, &v258, 0, 0, v256, 0, v177 & 1, v247, 0);
      v4 = &v275;
      if (*(v8 + 3168) == v274)
      {
        if (*(v8 + 3168))
        {
          WebKit::NavigationActionData::operator=(v282, buf);
        }
      }

      else if (*(v8 + 3168))
      {
        WebKit::NavigationActionData::~NavigationActionData(v282, v180);
        *(v8 + 3168) = 0;
      }

      else
      {
        WebKit::NavigationActionData::NavigationActionData(v282, buf);
        *(v8 + 3168) = 1;
      }

      if (v274 == 1)
      {
        WebKit::NavigationActionData::~NavigationActionData(buf, v180);
      }

      if (v257 == 1)
      {
        MEMORY[0x19EB04BD0](v256);
      }

      v181 = v258;
      v258 = 0;
      if (v181 && atomic_fetch_add_explicit(v181, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v181, v180);
      }

      v182 = cf;
      cf = 0;
      if (v182)
      {
        CFRelease(v182);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v259, v180);
    }

    if (*(v8 + 3168) == 1)
    {
      v144 = *(v3 + 5);
      if (v144)
      {
        ++*(v144 + 24);
        v145 = *(v144 + 2544) != 0;
        v313 = *(v144 + 2544);
        *(v8 + 3664) = v145;
        v146 = (v144 + 1648);
        if (*(v8 + 3904) == *(v144 + 1872))
        {
          if (*(v8 + 3904))
          {
            WebCore::NavigationRequester::operator=((v4 + 230), v146, v65);
          }
        }

        else if (*(v8 + 3904))
        {
          WebCore::NavigationRequester::~NavigationRequester((v4 + 230), v146);
          *(v8 + 3904) = 0;
        }

        else
        {
          v147 = *v146;
          if (*v146)
          {
            atomic_fetch_add_explicit(v147, 2u, memory_order_relaxed);
          }

          v315 = v147;
          v148 = *(v144 + 1672);
          v316 = *(v144 + 1656);
          v317 = v148;
          v149 = *(v144 + 1688);
          atomic_fetch_add(v149, 1u);
          v318 = v149;
          v150 = *(v144 + 1696);
          atomic_fetch_add(v150, 1u);
          v319 = v150;
          WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v320, (v144 + 1704));
          v151 = *(v144 + 1720);
          *(v8 + 3756) = *(v144 + 1724);
          v320[4] = v151;
          v321 = *(v144 + 1728);
          v152 = *(v144 + 1736);
          if (v152)
          {
            atomic_fetch_add_explicit(v152, 2u, memory_order_relaxed);
          }

          v322 = v152;
          v153 = *(v144 + 1744);
          if (v153)
          {
            atomic_fetch_add_explicit(v153, 2u, memory_order_relaxed);
          }

          v323 = v153;
          v324 = *(v144 + 1752);
          v154 = *(v144 + 1760);
          if (v154)
          {
            atomic_fetch_add_explicit(v154, 2u, memory_order_relaxed);
          }

          v325 = v154;
          v155 = *(v144 + 1768);
          if (v155)
          {
            atomic_fetch_add_explicit(v155, 2u, memory_order_relaxed);
          }

          v326 = v155;
          *(v8 + 3808) = *(v144 + 1776);
          v327 = *(v144 + 1784);
          v156 = *(v144 + 1800);
          v157 = *(v144 + 1816);
          v158 = *(v144 + 1832);
          *(v330 + 10) = *(v144 + 1842);
          v329 = v157;
          v330[0] = v158;
          v328 = v156;
          *(v8 + 3904) = 1;
        }

        if (*(v144 + 24) == 1)
        {
          (*(*v144 + 24))(v144);
        }

        else
        {
          --*(v144 + 24);
        }
      }
    }

    if (v5)
    {
      v69 = (*(*(v5 + 720) + 688) >> 5) & 1;
    }

    else
    {
      LOBYTE(v69) = 0;
    }

    *(v8 + 3584) = v69;
    if (v6)
    {
      *(v8 + 3587) = WebCore::FrameLoaderStateMachine::isDisplayingInitialEmptyDocument((*(v6 + 208) + 72));
      v309 = *(v6 + 328);
      v71 = *(v6 + 152);
      if (v71)
      {
        v72 = *(v71 + 8);
        if (v72)
        {
          if ((*(v72 + 136) & 1) == 0)
          {
            v73 = *(v72 + 224);
            if (v73)
            {
              v74 = *(v73 + 800);
              if (v74)
              {
                atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
              }

              v75 = v310;
              v310 = v74;
              if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v75, v70);
              }

              v76 = *(v73 + 808);
              v8[226] = *(v73 + 824);
              v8[225] = v76;
            }
          }
        }
      }
    }

    else
    {
      *(v8 + 3587) = 0;
    }

    *(v8 + 3490) = v281 ^ 1;
    if (!*(v3 + 977))
    {
      v159 = 0;
      v160 = 0;
      v259 = 0;
      v260 = 0;
      if (v6)
      {
        v159 = *(v6 + 32);
        v160 = 1;
      }

      v161 = WebKit::WebFrame::webFrame(v159, v160);
      v163 = v161;
      if (v161)
      {
        CFRetain(*(v161 + 8));
        WebKit::WebFrame::parentFrame(v256, v163);
        if (v256[0])
        {
          v164 = *(v256[0] + 5);
          if (v164)
          {
            v165 = *(v164 + 8);
            if (v165)
            {
              ++v165[4];
              do
              {
                (*(*v165 + 152))(&v258, v165);
                v167 = v258;
                if (!v258)
                {
                  v211 = qword_1ED6416F0;
                  v212 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR);
                  if (v212)
                  {
                    v234 = WebCore::ResourceLoader::frameLoader(v3);
                    v235 = WebCore::ResourceLoader::frame(v3);
                    v236 = *(v254 + 1);
                    v237 = *(v165 + 4);
                    *buf = 134219776;
                    *&buf[4] = v251;
                    *&buf[12] = 2048;
                    *&buf[14] = v3;
                    *&buf[22] = 2048;
                    *&buf[24] = v234;
                    v266 = 2048;
                    *v267 = v235;
                    *&v267[8] = 2048;
                    *&v267[10] = v236;
                    v268 = 2048;
                    v269 = v236;
                    v270 = 2048;
                    v271 = v236;
                    v272 = 2048;
                    v273 = v237;
                    _os_log_error_impl(&dword_19D52D000, v211, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: Unable to get document origin of frame (frameID=%llu)", buf, 0x52u);
                  }

                  v167 = WebCore::SecurityOrigin::opaqueOrigin(v212);
                  atomic_fetch_add(v167, 1u);
                  v213 = v258;
                  v258 = v167;
                  if (v213)
                  {
                    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v213, v166);
                    v167 = v258;
                  }
                }

                v168 = HIDWORD(v260);
                if (HIDWORD(v260) == v260)
                {
                  if (HIDWORD(v260) + (HIDWORD(v260) >> 1) <= HIDWORD(v260) + 1)
                  {
                    v169 = HIDWORD(v260) + 1;
                  }

                  else
                  {
                    v169 = HIDWORD(v260) + (HIDWORD(v260) >> 1);
                  }

                  if (v169 <= 0x10)
                  {
                    v170 = 16;
                  }

                  else
                  {
                    v170 = v169;
                  }

                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v259, v170);
                  v168 = HIDWORD(v260);
                }

                v171 = (v259 + 8 * v168);
                atomic_fetch_add(v167, 1u);
                *v171 = v167;
                ++HIDWORD(v260);
                v172 = v258;
                v258 = 0;
                if (v172)
                {
                  WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v172, v166);
                }

                v173 = WebCore::FrameTree::parent((v165 + 10));
                v174 = v173;
                if (v173)
                {
                  ++*(v173 + 16);
                }

                if (v165[4] == 1)
                {
                  (*(*v165 + 8))(v165);
                }

                else
                {
                  --v165[4];
                }

                v165 = v174;
              }

              while (v174);
            }
          }
        }
      }

      else
      {
        v256[0] = 0;
      }

      if (HIDWORD(v302))
      {
        v227 = v302;
        v228 = 8 * HIDWORD(v302);
        do
        {
          v229 = *v227;
          *v227 = 0;
          if (v229)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v229, v162);
          }

          ++v227;
          v228 -= 8;
        }

        while (v228);
      }

      v175 = v302;
      v68 = v253;
      if (v302)
      {
        *&v302 = 0;
        DWORD2(v302) = 0;
        WTF::fastFree(v175, v162);
      }

      *&v302 = v259;
      v176 = v260;
      v259 = 0;
      v260 = 0;
      *(&v302 + 1) = v176;
      if (v256[0])
      {
        CFRelease(*(v256[0] + 1));
      }

      if (v163)
      {
        CFRelease(*(v163 + 8));
      }

      WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v259, v162);
    }

    v77 = WebCore::ResourceLoader::frameLoader(v3);
    if (v77)
    {
      v78 = v77;
      WebCore::FrameLoader::ref(v77);
      *&v285[1] = *(v78 + 51);
      WebCore::FrameLoader::deref(v78);
    }

    v79 = (*(*v3 + 280))(v3);
    WebCore::CachedResourceHandleBase::CachedResourceHandleBase(buf, v79);
    if (*buf && *(*buf + 8))
    {
      *(v8 + 4043) = (*(WebCore::CachedResourceHandleBase::get(buf) + 572) & 0x1F) == 14;
    }

    WebCore::CachedResourceHandleBase::~CachedResourceHandleBase(buf);
    LOBYTE(v81) = 0;
    LOBYTE(v259) = 0;
    LOBYTE(v260) = 0;
    if (v281 == 1)
    {
      v209 = v251[15];
      v81 = v251[16];
      if (v81)
      {
        *(v251 + 128) = 0;
      }

      v259 = v209;
      LOBYTE(v260) = v81;
    }

    v82 = WebCore::logClient(v80);
    v6 = *v82;
    if (!*v82)
    {
      v194 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        v195 = *(v254 + 1);
        v196 = WebCore::ResourceRequestBase::priority((v3 + 344));
        v197 = v259;
        if ((v81 & 1) == 0)
        {
          v197 = 0;
        }

        *buf = 134219008;
        *&buf[4] = v195;
        *&buf[12] = 2048;
        *&buf[14] = v195;
        *&buf[22] = 2048;
        *&buf[24] = v195;
        v266 = 1024;
        *v267 = v196;
        *&v267[4] = 2048;
        *&v267[6] = v197;
        _os_log_impl(&dword_19D52D000, v194, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: Resource is being scheduled with the NetworkProcess (priority=%d, existingNetworkResourceLoadIdentifierToResume=%llu)", buf, 0x30u);
      }

      goto LABEL_121;
    }

    if (((*(*v6 + 24))(*v82) & 1) == 0)
    {
      goto LABEL_347;
    }

    v83 = *(v254 + 1);
    v8 = WebCore::ResourceRequestBase::priority((v3 + 344));
    if (v81)
    {
      v84 = v259;
    }

    else
    {
      v84 = 0;
    }

    os_unfair_lock_lock((v6 + 16));
    v7 = *(v6 + 8);
    v4 = *(v6 + 24);
    v86 = *(v7 + 128);
    v87 = INFINITY;
    if (fabs(v86) != INFINITY)
    {
      WTF::ApproximateTime::now(v85);
      v87 = v86 + v88;
    }

    if (*(v7 + 64) != v4)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v87);
      if (buf[16] != 1)
      {
        goto LABEL_120;
      }

      v198 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_347:
        __break(0xC471u);
        JUMPOUT(0x19E2FE4E8);
      }

      v199 = *buf;
      **buf = 3198;
      v200 = v199 + 2;
      if (v198 - 2 < (-v200 & 7 | 8uLL))
      {
        goto LABEL_120;
      }

      v201 = -v200 & 7;
      *(v200 + v201) = v4;
      v202 = 6;
      if (v201 > 6)
      {
        v202 = v201;
      }

      v203 = v202 + 10;
      v204 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v205 = *(v7 + 72);
      if (v204 + 16 >= v205)
      {
        v204 = 0;
      }

      v206 = v203 + v204;
      if (v205 <= v206)
      {
        v206 = 0;
      }

      *(v7 + 88) = v206;
      v207 = *(v7 + 80);
      if (*(v207 + 8) <= 0xFFuLL)
      {
        goto LABEL_282;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v7, atomic_exchange((*(v207 + 16) + 128), v206) == 0x80000000);
      *(v7 + 64) = v4;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v87);
    if (buf[16] != 1)
    {
      goto LABEL_120;
    }

    v89 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FE508);
    }

    v90 = *buf;
    **buf = 295;
    v91 = v90 + 2;
    v92 = -v91 & 7 | 8;
    v93 = v89 - 2 - v92;
    if (v89 - 2 >= v92 && (*(v91 + (-v91 & 7)) = v83, v94 = v91 + v92, v95 = -v94 & 7 | 8, v96 = v93 >= v95, v97 = v93 - v95, v96) && (*(v94 + (-v94 & 7)) = v83, v98 = v94 + v95, v99 = -v98 & 7 | 8, v100 = v97 - v99, v97 >= v99) && (*(v98 + (-v98 & 7)) = v83, v101 = v98 + v99, v102 = -(v98 + v99), v103 = v102 & 3 | 4, v104 = v100 - v103, v100 >= v103) && (*(v101 + (v102 & 3)) = v8, v105 = v101 + v103, v106 = -v105 & 7 | 8, v104 >= v106))
    {
      *(v105 + (-v105 & 7)) = v84;
      v107 = v89 - v104 + v106;
      if (v107 <= 0x10)
      {
        v107 = 16;
      }

      v108 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v109 = *(v7 + 72);
      if (v108 + 16 >= v109)
      {
        v108 = 0;
      }

      v110 = v108 + v107;
      if (v109 <= v110)
      {
        v110 = 0;
      }

      *(v7 + 88) = v110;
      v111 = *(v7 + 80);
      if (*(v111 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v111 + 16) + 128), v110) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

LABEL_120:
        os_unfair_lock_unlock((v6 + 16));
LABEL_121:
        {
          v113 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v246 = WebKit::WebProcess::operator new(0x370, v112);
          v113 = WebKit::WebProcess::WebProcess(v246);
          WebKit::WebProcess::singleton(void)::process = v113;
        }

        v114 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v113) + 24);
        v116 = IPC::Encoder::operator new(0x238, v115);
        *v116 = 483;
        *(v116 + 68) = 0;
        *(v116 + 70) = 0;
        *(v116 + 69) = 0;
        *(v116 + 2) = 0;
        *(v116 + 3) = 0;
        *(v116 + 1) = 0;
        IPC::Encoder::encodeHeader(v116);
        *buf = v116;
        IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(v116, &v275);
        if (v260)
        {
          LOBYTE(v256[0]) = 1;
          IPC::Encoder::operator<<<BOOL>(v116, v256);
          IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(v116, &v259);
        }

        else
        {
          LOBYTE(v256[0]) = 0;
          IPC::Encoder::operator<<<BOOL>(v116, v256);
        }

        v118 = IPC::Connection::sendMessageImpl(v114, buf, 0, 0);
        v119 = *buf;
        *buf = 0;
        v6 = v255;
        if (v119)
        {
          IPC::Encoder::~Encoder(v119, v117);
          bmalloc::api::tzoneFree(v131, v132);
        }

        if (v118)
        {
          v226 = qword_1ED6416F0;
          if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
          {
            v242 = WebCore::ResourceLoader::frameLoader(v3);
            v243 = WebCore::ResourceLoader::frame(v3);
            v244 = *(v254 + 1);
            v245 = WebCore::ResourceRequestBase::priority((v3 + 344));
            *buf = 134219776;
            *&buf[4] = v251;
            *&buf[12] = 2048;
            *&buf[14] = v3;
            *&buf[22] = 2048;
            *&buf[24] = v242;
            v6 = v255;
            v266 = 2048;
            *v267 = v243;
            *&v267[8] = 2048;
            *&v267[10] = v244;
            v268 = 2048;
            v269 = v244;
            v270 = 2048;
            v271 = v244;
            v272 = 1024;
            LODWORD(v273) = v245;
            _os_log_error_impl(&dword_19D52D000, v226, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: Unable to schedule resource with the NetworkProcess (priority=%d)", buf, 0x4Eu);
          }

          WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(v251, v3);
          v123 = v249;
          v122 = v250;
        }

        else
        {
          ++*(v3 + 4);
          v258 = v3;
          v120 = v254[1];
          *buf = *v254;
          *&buf[16] = v120;
          LOBYTE(v266) = 1;
          v121 = WTF::fastMalloc(1, 0x68);
          v256[0] = WebKit::WebResourceLoader::WebResourceLoader(v121, &v258, buf);
          v123 = v249;
          v122 = v250;
          if (v258)
          {
            if (*(v258 + 4) == 1)
            {
              (*(*v258 + 8))();
            }

            else
            {
              --*(v258 + 4);
            }
          }

          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&,WTF::Ref<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>(buf, v251 + 9, &v264, v256);
          if (v256[0])
          {
            if (*(v256[0] + 2) == 1)
            {
              (*(*v256[0] + 8))();
            }

            else
            {
              --*(v256[0] + 2);
            }
          }
        }

        goto LABEL_132;
      }
    }

    else if (buf[16])
    {
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2FE548);
      }

      **buf = 3197;
      v183 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v184 = *(v7 + 72);
      if (v183 + 16 >= v184)
      {
        v183 = 0;
      }

      v185 = v183 + 16;
      v186 = v184 <= v185 ? 0 : v185;
      *(v7 + 88) = v186;
      v187 = *(v7 + 80);
      if (*(v187 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v187 + 16) + 128), v186);
        *(v7 + 124) = 0;
        v188 = *(v7 + 8);
        v189 = IPC::Encoder::operator new(0x238, v9);
        *v189 = 295;
        *(v189 + 2) = 0;
        *(v189 + 3) = 0;
        *(v189 + 1) = v4;
        *(v189 + 68) = 0;
        *(v189 + 70) = 0;
        *(v189 + 69) = 0;
        IPC::Encoder::encodeHeader(v189);
        v256[0] = v189;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v189, v83);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v189, v83);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v189, v83);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v189, v8);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v189, v84);
        IPC::Connection::sendMessageImpl(v188, v256, 1, 0);
        v191 = v256[0];
        v256[0] = 0;
        if (v191)
        {
          IPC::Encoder::~Encoder(v191, v190);
          bmalloc::api::tzoneFree(v192, v193);
        }

        goto LABEL_120;
      }
    }

LABEL_282:
    __break(1u);
LABEL_283:
    v253 = 0;
    v249 = 1;
  }

  v225 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    v238 = WebCore::ResourceLoader::frameLoader(v3);
    v239 = WebCore::ResourceLoader::frame(v3);
    v240 = *(v254 + 1);
    v241 = WebCore::ResourceRequestBase::priority((v3 + 344));
    *buf = 134219776;
    *&buf[4] = v251;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    *&buf[22] = 2048;
    *&buf[24] = v238;
    v6 = v255;
    v266 = 2048;
    *v267 = v239;
    *&v267[8] = 2048;
    *&v267[10] = v240;
    v268 = 2048;
    v269 = v240;
    v270 = 2048;
    v271 = v240;
    v272 = 1024;
    LODWORD(v273) = v241;
    _os_log_error_impl(&dword_19D52D000, v225, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::scheduleLoad: no sourceOrigin (priority=%d)", buf, 0x4Eu);
  }

  WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(v251, v3);
  v123 = v249;
  v122 = v250;
  v68 = v253;
LABEL_132:
  if ((v123 & 1) == 0)
  {
    CFRelease(*(v68 + 1));
  }

  if ((v122 & 1) == 0)
  {
    if (*(v5 + 28) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 28) -= 2;
    }
  }

  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(&v275, v124);
  if (v6)
  {
LABEL_138:
    if (*(v6 + 16) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --*(v6 + 16);
    }
  }
}

double WebKit::maximumBufferingTime(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    if ((*(a1 + 572) & 0x1Fu) <= 0x11)
    {
      return dbl_19E704810[*(a1 + 572) & 0x1F];
    }
  }

  return result;
}

uint64_t **WTF::Function<void ()(void)>::Function<WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0,void>@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x60);
  v6 = *a2;
  *a2 = 0;
  *v5 = &unk_1F112C838;
  v5[1] = v6;
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5[2] = v7;
  WTF::URL::URL((v5 + 3), (a2 + 16));
  v8 = *(a2 + 56);
  *(a2 + 56) = 0;
  v5[8] = v8;
  LODWORD(v8) = *(a2 + 64);
  *(v5 + 38) = *(a2 + 68);
  *(v5 + 18) = v8;
  v9 = *(a2 + 72);
  *(a2 + 72) = 0;
  v5[10] = v9;
  *(v5 + 88) = *(a2 + 80);
  *a1 = v5;
  return a1;
}

uint64_t WebKit::WebLoaderStrategy::scheduleLoadFromNetworkProcess(WebCore::ResourceLoader &,WebCore::ResourceRequest const&,WebKit::WebResourceLoader::TrackingParameters const&,BOOL,WTF::Seconds)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

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

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    if (v7[4] == 1)
    {
      (*(*v7 + 8))(v7, a2);
    }

    else
    {
      --v7[4];
    }
  }

  return a1;
}

uint64_t WebKit::addParametersShared(WebCore::CrossOriginAccessControlCheckDisabler *a1, uint64_t a2, int a3)
{
  v6 = WebCore::CrossOriginAccessControlCheckDisabler::singleton(a1);
  *(a2 + 3536) = (*(*v6 + 16))(v6);
  {
    result = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v45 = WebKit::WebProcess::operator new(0x370, v7);
    result = WebKit::WebProcess::WebProcess(v45);
    WebKit::WebProcess::singleton(void)::process = result;
  }

  *(a2 + 3187) = *(result + 816);
  if (a1)
  {
    v9 = *(a1 + 15);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      ++*(v10 + 16);
      WebKit::policySourceDocumentLoaderForFrame(&v47, a1, a3);
      if (v47)
      {
        v12 = *(v47 + 3580);
      }

      else
      {
        v12 = 1;
      }

      *(a2 + 3188) = v12 & 1;
      v13 = *(a1 + 28);
      if (v13)
      {
        *(a2 + 3432) = *(v13 + 232);
        v14 = *(v13 + 240);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v15 = *(a2 + 3440);
        *(a2 + 3440) = v14;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v11);
        }

        v16 = *(v13 + 248);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v17 = *(a2 + 3448);
        *(a2 + 3448) = v16;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v11);
        }

        v18 = *(v13 + 720);
        *(a2 + 3585) = (*(v18 + 680) & 0x8000000000000) != 0;
        *(a2 + 3586) = (*(v18 + 680) & 0x4000000000000) != 0;
      }

      v19 = *(a1 + 3);
      if (v19)
      {
        v20 = *(v19 + 8);
        if (v20)
        {
          v21 = (v20 + 8);
          ++*(v20 + 8);
          *(a2 + 3512) = *(v20 + 1017);
          WebCore::ResourceRequestBase::httpBody(&v46, (a2 + 24));
          WebCore::Page::logMediaDiagnosticMessage();
          v22 = v46;
          v46 = 0;
          if (v22)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v22);
          }

          v23 = WebKit::WebPage::fromCorePage(v20);
          if (v23)
          {
            v24 = v23;
            CFRetain(*(v23 + 8));
            v25 = *(v24 + 592);
            if (v25)
            {
              v27 = *(v25 + 16);
              v26 = v25 + 16;
              *v26 = v27 + 1;
              v28 = *(v26 + 24);
              if (v28)
              {
                LOBYTE(v28) = *(v28 - 12) != 0;
              }

              *(a2 + 4040) = v28;
              WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(v26);
            }

            CFRelease(*(v24 + 8));
          }

          WTF::RefCounted<WebCore::Page>::deref(v21);
        }
      }

      v29 = *(a1 + 14);
      if (v29)
      {
        v30 = *(v29 + 8);
        if (v30)
        {
          *(v30 + 28) += 2;
          v31 = *(*(*(v30 + 48) + 8) + 552);
          if (v31)
          {
            v32 = *(v31 + 8);
            if (v32)
            {
              ++*(v32 + 16);
              v33 = WebCore::FrameLoader::frameID(*(v32 + 208));
              if ((*(a2 + 3528) & 1) == 0)
              {
                *(a2 + 3528) = 1;
              }

              *(a2 + 3520) = v33;
              v35 = *(*(v30 + 48) + 8);
              *(a2 + 3408) = *(v35 + 232);
              v36 = *(v35 + 240);
              if (v36)
              {
                atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
              }

              v37 = *(a2 + 3416);
              *(a2 + 3416) = v36;
              if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v37, v34);
              }

              v38 = *(v35 + 248);
              if (v38)
              {
                atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
              }

              v39 = *(a2 + 3424);
              *(a2 + 3424) = v38;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v34);
              }

              v40 = *(*(v30 + 48) + 8);
              v41 = *(v40 + 800);
              if (v41)
              {
                atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
              }

              v42 = *(a2 + 3328);
              *(a2 + 3328) = v41;
              if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, v34);
              }

              v43 = *(v40 + 824);
              *(a2 + 3336) = *(v40 + 808);
              *(a2 + 3352) = v43;
              if (*(v32 + 16) == 1)
              {
                (*(*v32 + 8))(v32);
              }

              else
              {
                --*(v32 + 16);
              }
            }
          }

          if (*(v30 + 28) == 2)
          {
            WebCore::Node::removedLastRef(v30);
          }

          else
          {
            *(v30 + 28) -= 2;
          }
        }
      }

      result = v47;
      if (v47)
      {
        v44 = *(v47 + 3546);
      }

      else
      {
        v44 = 0;
      }

      *(a2 + 3190) = v44;
      if (a3)
      {
        *(a2 + 4041) = *(*(v10 + 128) + 705) & 1;
      }

      v47 = 0;
      if (result)
      {
        if (*(result + 24) == 1)
        {
          result = (*(*result + 24))(result);
        }

        else
        {
          --*(result + 24);
        }
      }

      if (*(v10 + 16) == 1)
      {
        return (*(*v10 + 8))(v10);
      }

      else
      {
        --*(v10 + 16);
      }
    }

    else
    {
      result = 133;
      __break(0xC471u);
    }
  }

  return result;
}

BOOL WebCore::NavigationAction::isEmpty(WebCore::NavigationAction *this)
{
  if (*(this + 224) != 1 || !*this)
  {
    return 1;
  }

  if (*(*this + 4))
  {
    v1 = WebCore::ResourceRequestBase::url((this + 240));
    if (*v1)
    {
      return *(*v1 + 4) == 0;
    }
  }

  return 1;
}

uint64_t WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(WebKit::WebLoaderStrategy *this, WebCore::ResourceLoader *a2)
{
  v4 = (this + 16);
  v3 = *(this + 2);
  ++*(a2 + 4);
  if (!v3)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::expand(this + 2, 0);
    v3 = *v4;
  }

  v5 = *(v3 - 8);
  v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = (v3 + 8 * v9);
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      if (v11 == a2)
      {
        if (*(a2 + 4) == 1)
        {
          (*(*a2 + 8))(a2);
        }

        else
        {
          --*(a2 + 4);
        }

        goto LABEL_19;
      }

      if (v11 == -1)
      {
        v12 = v10;
      }

      v9 = (v9 + v13) & v5;
      v10 = (v3 + 8 * v9);
      v11 = *v10;
      ++v13;
    }

    while (*v10);
    if (v12)
    {
      *v12 = 0;
      --*(*v4 - 16);
      v10 = v12;
    }
  }

  *v10 = a2;
  v14 = *v4;
  if (*v4)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 <= 0x400)
  {
    if (3 * v17 > 4 * v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v17 <= 2 * v16)
  {
LABEL_18:
    WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::expand(v4, v10);
  }

LABEL_19:

  return WTF::RunLoop::TimerBase::start();
}

uint64_t WebCore::CrossOriginOpenerPolicy::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = *a2;
  v4 = *(a2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  return a1;
}

unsigned int *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebURLSchemeTaskProxy&>@<X0>(unsigned int *result@<X0>, uint64_t *a2@<X1>, atomic_uint *volatile *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FF054);
  }

  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2FF074);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v24 = 0;
        v25 = v9 + 16 * *(v9 - 4);
        goto LABEL_27;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  if (!*a3)
  {
    v19 = WTF::fastCompactMalloc(0x10);
    *v19 = 1;
    *(v19 + 8) = a3;
    v20 = *a3;
    *a3 = v19;
    if (v20)
    {
      if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        WTF::fastFree(v20, a2);
      }
    }
  }

  v21 = *a3;
  atomic_fetch_add(*a3, 1u);
  result = v15[1];
  v15[1] = v21;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, a2);
  }

  v22 = *v8;
  if (*v8)
  {
    v23 = *(v22 - 12) + 1;
  }

  else
  {
    v23 = 1;
  }

  *(v22 - 12) = v23;
  v26 = (*(v22 - 16) + v23);
  v27 = *(v22 - 4);
  if (v27 > 0x400)
  {
    if (v27 <= 2 * v26)
    {
LABEL_24:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v22 = *v8;
      if (*v8)
      {
        v27 = *(v22 - 4);
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else if (3 * v27 <= 4 * v26)
  {
    goto LABEL_24;
  }

  v25 = v22 + 16 * v27;
  v24 = 1;
LABEL_27:
  *a4 = v15;
  *(a4 + 8) = v25;
  *(a4 + 16) = v24;
  return result;
}

uint64_t *WebKit::WebLoaderStrategy::removeURLSchemeTaskProxy(WebKit::WebLoaderStrategy *this, WebKit::WebURLSchemeTaskProxy *a2)
{
  v6 = *(a2 + 30);
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 10, &v6);
  v4 = *(this + 10);
  if (v4)
  {
    v5 = (v4 + 16 * *(v4 - 4));
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this + 10, result);
  }

  return result;
}

uint64_t *WebKit::WebLoaderStrategy::remove(uint64_t *this, WebCore::ResourceLoader *a2)
{
  v34 = *(a2 + 94);
  v35 = v34 != 0;
  if (v34)
  {
    v2 = a2;
    v3 = this;
    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 10, &v34);
    v5 = this;
    v6 = *(v3 + 80);
    if (v6)
    {
      v6 += 2 * *(v6 - 1);
    }

    if (v6 != this)
    {
      goto LABEL_40;
    }

    while (1)
    {
      if (*(v3 + 16))
      {
        this = WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::lookup<WTF::HashSetTranslator<WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>>,(WTF::ShouldValidateKey)1,WebCore::ResourceLoader const*>((v3 + 16), v2);
        if (this)
        {
          return WTF::HashSet<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>((v3 + 16), v2);
        }
      }

      v5 = v35;
      if (v35)
      {
        v9 = *(v3 + 72);
        v8 = (v3 + 72);
        v7 = v9;
        if (!v9)
        {
          return this;
        }

        if (v34 == -1 || !v34)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2FF498);
        }

        v10 = *(v7 - 8);
        v11 = (v34 + ~(v34 << 32)) ^ ((v34 + ~(v34 << 32)) >> 22);
        v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
        v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
        v14 = v10 & ((v13 >> 31) ^ v13);
        v15 = *(v7 + 16 * v14);
        if (v15 != v34)
        {
          v27 = 1;
          while (v15)
          {
            v14 = (v14 + v27) & v10;
            v15 = *(v7 + 16 * v14);
            ++v27;
            if (v15 == v34)
            {
              goto LABEL_11;
            }
          }

          v14 = *(v7 - 4);
        }

LABEL_11:
        if (v14 == *(v7 - 4))
        {
          return this;
        }

        v16 = (v7 + 16 * v14);
        v2 = v16[1];
        v16[1] = 0;
        v17 = *v8;
        if (!*v8 || (v17 += 16 * *(v17 - 4), v17 != v16))
        {
          if (v17 != v16)
          {
            *v16 = -1;
            v16[1] = 0;
            v18 = *v8;
            v19 = vadd_s32(*(*v8 - 16), 0xFFFFFFFF00000001);
            *(v18 - 16) = v19;
            v20 = *(v18 - 4);
            if (6 * v19.i32[1] < v20 && v20 >= 9)
            {
              this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v8, v20 >> 1, 0);
            }
          }
        }

        if (!v2)
        {
          return this;
        }

        {
          v22 = WebKit::WebProcess::singleton(void)::process;
        }

        else
        {
          v33 = WebKit::WebProcess::operator new(0x370, v4);
          v22 = WebKit::WebProcess::WebProcess(v33);
          WebKit::WebProcess::singleton(void)::process = v22;
        }

        v3 = *(v22 + 42);
        if (!v3)
        {
          goto LABEL_29;
        }

        ++*(v3 + 20);
        v5 = v35;
        if (v35)
        {
          break;
        }
      }

      __break(1u);
LABEL_40:
      v30 = *(v5 + 8);
      if (v30)
      {
        *(v5 + 8) = 0;
        this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v3 + 80), v5);
        v31 = *(v30 + 8);
        if (v31)
        {
          ++*(v31 + 2);
        }

        if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v30);
          this = WTF::fastFree(v30, v4);
        }

        if (v31)
        {
          WebKit::WebURLSchemeTaskProxy::stopLoading(v31);
          return WTF::RefCounted<WebKit::WebURLSchemeTaskProxy>::deref(v31 + 2, v32);
        }
      }

      else
      {
        this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebURLSchemeTaskProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v3 + 80), v5);
      }
    }

    v23 = *(v3 + 24);
    v24 = IPC::Encoder::operator new(0x238, v4);
    *v24 = 476;
    *(v24 + 68) = 0;
    *(v24 + 70) = 0;
    *(v24 + 69) = 0;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 1) = 0;
    IPC::Encoder::encodeHeader(v24);
    v36 = v24;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, v34);
    IPC::Connection::sendMessageImpl(v23, &v36, 0, 0);
    v26 = v36;
    v36 = 0;
    if (v26)
    {
      IPC::Encoder::~Encoder(v26, v25);
      bmalloc::api::tzoneFree(v28, v29);
    }

    if (*(v3 + 20) == 1)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      --*(v3 + 20);
    }

LABEL_29:
    this = WebKit::WebResourceLoader::detachFromCoreLoader(v2);
    if (*(v2 + 2) == 1)
    {
      return (*(*v2 + 8))(v2);
    }

    else
    {
      --*(v2 + 2);
    }
  }

  return this;
}

uint64_t *WTF::HashSet<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2FF62CLL);
    }

    v3 = result;
    v4 = *(v2 - 8);
    v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v2 + 8 * v8);
    if (v9 != a2)
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v2 + 8 * v8);
        ++v10;
        if (v9 == a2)
        {
          goto LABEL_10;
        }
      }

      v8 = *(v2 - 4);
    }

LABEL_10:
    if (v8 != *(v2 - 4))
    {
      result = *(v2 + 8 * v8);
      *(v2 + 8 * v8) = -1;
      if (result)
      {
        if (*(result + 4) == 1)
        {
          result = (*(*result + 8))(result);
          v2 = *v3;
        }

        else
        {
          --*(result + 4);
        }
      }

      v11 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
      *(v2 - 16) = v11;
      v12 = *(v2 - 4);
      if (6 * v11.i32[1] < v12 && v12 >= 9)
      {

        return WTF::HashTable<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::HashTraits<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>>,WTF::FastMalloc>::rehash(v3, v12 >> 1);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoader::detachFromCoreLoader(WebKit::WebResourceLoader *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    result = *(this + 2);
    *(this + 2) = 0;
    if (result)
    {
      if (*(result + 16) == 1)
      {
        v4 = *(*result + 8);

        return v4();
      }

      else
      {
        --*(result + 16);
      }
    }
  }

  else
  {
    result = 101;
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WebKit::WebLoaderStrategy::networkProcessCrashed(WebKit::WebLoaderStrategy *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = this;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - WebLoaderStrategy::networkProcessCrashed: failing all pending resource loaders", buf, 0xCu);
  }

  result = *(this + 9);
  if (!result)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_12;
  }

  v5 = *(result - 1);
  v6 = result + 16 * v5;
  if (!*(result - 3))
  {
LABEL_12:
    v8 = v6;
    v6 = result + 16 * v5;
    goto LABEL_13;
  }

  if (!v5)
  {
    v8 = *(this + 9);
LABEL_14:
    v9 = result + 16 * *(result - 1);
    goto LABEL_15;
  }

  v7 = 16 * v5;
  v8 = *(this + 9);
  while ((*v8 + 1) <= 1)
  {
    v8 += 16;
    v7 -= 16;
    if (!v7)
    {
      v8 = v6;
      break;
    }
  }

LABEL_13:
  if (result)
  {
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:
  if (v9 == v8)
  {
    if (!result)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    v29 = *(*(v8 + 1) + 16);
    if (v29)
    {
      ++*(v29 + 4);
    }

    WebKit::WebLoaderStrategy::scheduleInternallyFailedLoad(this, v29);
    if (*(v29 + 4) == 1)
    {
      (*(*v29 + 8))(v29);
    }

    else
    {
      --*(v29 + 4);
    }

    WebKit::WebResourceLoader::detachFromCoreLoader(*(v8 + 1));
    do
    {
      v8 += 16;
    }

    while (v8 != v6 && (*v8 + 1) <= 1);
  }

  while (v8 != v9);
  result = *(this + 9);
  if (result)
  {
LABEL_17:
    *(this + 9) = 0;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebResourceLoader,WTF::RawPtrTraits<WebKit::WebResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::WebResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, v3);
  }

LABEL_18:
  v10 = *(this + 11);
  *(this + 11) = 0;
  if (!v10)
  {
    v12 = 0;
    v11 = 0;
LABEL_27:
    v14 = v12;
    v12 = v10 + 16 * v11;
    if (!v10)
    {
      v16 = 0;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v11 = *(v10 - 4);
  v12 = v10 + 16 * v11;
  if (!*(v10 - 12))
  {
    goto LABEL_27;
  }

  if (!v11)
  {
    v15 = 0;
    v14 = v10;
    goto LABEL_30;
  }

  v13 = 16 * v11;
  v14 = v10;
  while ((*v14 + 1) <= 1)
  {
    v14 += 16;
    v13 -= 16;
    if (!v13)
    {
      v14 = v12;
      break;
    }
  }

LABEL_25:
  v15 = *(v10 - 4);
LABEL_30:
  v16 = v10 + 16 * v15;
LABEL_31:
  while (v14 != v16)
  {
    v35 = 0;
    WTF::URL::invalidate(&v35);
    WebCore::internalError();
    WebCore::ResourceResponseBase::ResourceResponseBase(buf);
    cf = 0;
    v45 = 0;
    v43 = v43 & 0xF1 | 4;
    (*(**(v14 + 8) + 16))(*(v14 + 8), &v36, buf);
    v18 = cf;
    cf = 0;
    if (v18)
    {
      CFRelease(v18);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v17);
    v19 = v39;
    v39 = 0;
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = v38;
    v38 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v3);
    }

    v21 = v37;
    v37 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v3);
    }

    v22 = v36;
    v36 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v3);
    }

    result = v35;
    v35 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v3);
    }

    do
    {
      v14 += 16;
    }

    while (v14 != v12 && (*v14 + 1) <= 1);
  }

  v23 = *(this + 12);
  *(this + 12) = 0;
  if (!v23)
  {
    v25 = 0;
    v24 = 0;
    goto LABEL_71;
  }

  v24 = *(v23 - 4);
  v25 = v23 + 16 * v24;
  if (!*(v23 - 12))
  {
LABEL_71:
    v27 = v25;
    v25 = v23 + 16 * v24;
    goto LABEL_72;
  }

  if (!v24)
  {
    v28 = 0;
    v27 = v23;
LABEL_74:
    v30 = v23 + 16 * v28;
    goto LABEL_75;
  }

  v26 = 16 * v24;
  v27 = v23;
  while ((*v27 + 1) <= 1)
  {
    v27 += 16;
    v26 -= 16;
    if (!v26)
    {
      v27 = v25;
      break;
    }
  }

LABEL_72:
  if (v23)
  {
    v28 = *(v23 - 4);
    goto LABEL_74;
  }

  v30 = 0;
LABEL_75:
  while (v27 != v30)
  {
    v36 = 0;
    WTF::URL::invalidate(&v36);
    WebCore::internalError();
    (*(**(v27 + 8) + 16))(*(v27 + 8), buf);
    v31 = v42;
    v42 = 0;
    if (v31)
    {
      CFRelease(v31);
    }

    v32 = v41;
    v41 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v3);
    }

    v33 = *(&buf[0] + 1);
    *(&buf[0] + 1) = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v3);
    }

    v34 = *&buf[0];
    *&buf[0] = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v3);
    }

    result = v36;
    v36 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v3);
    }

    do
    {
      v27 += 16;
    }

    while (v27 != v25 && (*v27 + 1) <= 1);
  }

  if (v23)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v23, v3);
  }

  if (v10)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v10, v3);
  }

  return result;
}

WTF *WebKit::WebLoaderStrategy::loadDataURLSynchronously(WebKit::WebLoaderStrategy *this, const WebCore::ResourceRequest *a2, WebCore::ResourceRequestBase *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = WebCore::ResourceResponseBase::ResourceResponseBase(this);
  *(v6 + 248) = 0;
  *(v6 + 256) = 0;
  *(v6 + 138) = *(v6 + 138) & 0xF1 | 4;
  *(v6 + 264) = 0;
  *(v6 + 272) = 0;
  WTF::URL::invalidate((v6 + 272));
  v7 = (this + 312);
  *(this + 41) = 0;
  *(this + 39) = 0;
  *(this + 318) = 0;
  *(this + 336) = 1;
  *(this + 43) = 0;
  *(this + 44) = 0;
  WebCore::ResourceRequestBase::url(a3);
  WebCore::DataURLDecoder::decode();
  if (v30)
  {
    WebCore::ResourceRequestBase::url(a3);
    WebCore::ResourceResponseBase::dataURLResponse();
    WebCore::ResourceResponseBase::operator=(this, buf);
    v9 = cf;
    cf = 0;
    v10 = *(this + 31);
    *(this + 31) = v9;
    if (v10)
    {
      CFRelease(v10);
      v23 = cf;
      *(this + 256) = v38;
      cf = 0;
      if (v23)
      {
        CFRelease(v23);
      }
    }

    else
    {
      *(this + 256) = v38;
      cf = 0;
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v8);
    if ((v30 & 1) == 0)
    {
      __break(1u);
    }

    result = *(this + 43);
    if (result)
    {
      *(this + 43) = 0;
      *(this + 88) = 0;
      result = WTF::fastFree(result, v11);
    }

    *(this + 43) = v28;
    v28 = 0;
    *(this + 44) = v29;
  }

  else
  {
    v13 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = a2;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - WebLoaderStrategy::loadDataURLSynchronously: decoding of data failed", buf, 0xCu);
    }

    WebCore::ResourceRequestBase::url(a3);
    WebCore::internalError();
    v15 = *&buf[0];
    *&buf[0] = 0;
    v16 = *(this + 33);
    *(this + 33) = v15;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }

    WTF::URL::operator=(this + 34, buf + 1);
    v17 = v32;
    v32 = 0;
    v18 = *v7;
    *v7 = v17;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    *(this + 80) = v33;
    *(this + 162) = v34;
    v19 = v35;
    v35 = 0;
    v20 = *(this + 41);
    *(this + 41) = v19;
    if (v20)
    {
      CFRelease(v20);
      v24 = v35;
      *(this + 336) = v36;
      v35 = 0;
      if (v24)
      {
        CFRelease(v24);
      }
    }

    else
    {
      *(this + 336) = v36;
      v35 = 0;
    }

    v21 = v32;
    v32 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v11);
    }

    v22 = *(&buf[0] + 1);
    *(&buf[0] + 1) = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v11);
    }

    result = *&buf[0];
    *&buf[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
    }
  }

  if (v30 == 1)
  {
    if (v28)
    {
      WTF::fastFree(v28, v11);
    }

    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v11);
    }

    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v11);
    }

    result = v25;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v25, v11);
      }
    }
  }

  return result;
}

uint64_t WebCore::ResourceError::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  WTF::URL::operator=((a1 + 8), a2 + 1);
  v7 = *(a2 + 6);
  *(a2 + 6) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = v7;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v9;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  v11 = *(a1 + 64);
  *(a1 + 64) = v10;
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void WebKit::WebLoaderStrategy::tryLoadingSynchronouslyUsingURLSchemeHandler(_BYTE *a1, unsigned int (***a2)(WebKit::WebFrame **), uint64_t a3, WebCore::ResourceRequestBase *a4)
{
  if ((*a2)[5](a2) && (v9 = a2[3]) != 0 && (v10 = WebKit::WebFrame::page(a2[3], v8)) != 0)
  {
    v11 = v10;
    CFRetain(*(v10 + 8));
    v12 = WebCore::ResourceRequestBase::url(a4);
    v19[0] = WTF::URL::protocol(v12);
    v19[1] = v13 & 0xFFFFFFFFFFLL;
    v14 = WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::WebURLSchemeHandlerProxy,WTF::RawPtrTraits<WebKit::WebURLSchemeHandlerProxy>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandlerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::StringViewHashTranslator,WTF::StringView>((v11 + 1792), v19);
    if (v14)
    {
      v15 = v14;
      v16 = (v14 + 8);
      ++*(v14 + 8);
      WebKit::WebLoaderStrategy::SyncLoadResult::SyncLoadResult(v19);
      WebKit::WebURLSchemeHandlerProxy::loadSynchronously(v15, a3, v9, a4, v19, &v20, &v21);
      WebKit::WebLoaderStrategy::SyncLoadResult::SyncLoadResult(a1, v19);
      a1[360] = 1;
      WebKit::WebLoaderStrategy::SyncLoadResult::~SyncLoadResult(v19, v17);
      WTF::RefCounted<WebKit::WebURLSchemeHandlerProxy>::deref(v16, v18);
    }

    else
    {
      *a1 = 0;
      a1[360] = 0;
    }

    CFRelease(*(v11 + 8));
  }

  else
  {
    *a1 = 0;
    a1[360] = 0;
  }
}

void WebKit::WebLoaderStrategy::loadResourceSynchronously(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF::StringImpl *a9, atomic_uint *a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v10;
  v192 = *MEMORY[0x1E69E9840];
  v93 = v24;
  v25 = *(v24 + 16);
  v26 = (*(*v25 + 40))(v25);
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    WebCore::LocalFrameLoaderClient::ref(v27);
  }

  if (!v26)
  {
    goto LABEL_40;
  }

  v28 = *(v25 + 3);
  if (!v28)
  {
    goto LABEL_40;
  }

  CFRetain(*(v28 + 8));
  v30 = WebKit::WebFrame::page(v28, v29);
  if (v30)
  {
    v31 = v30;
    v86 = v23;
    v87 = v14;
    v92 = v20;
    CFRetain(*(v30 + 8));
    v32 = *(v31 + 56);
    if (!v32)
    {
LABEL_38:
      CFRelease(*(v31 + 8));
      goto LABEL_39;
    }

    v90 = v27;
    v85 = *(v31 + 56);
    v33 = buf;
    v89 = (v32 + 8);
    ++*(v32 + 8);
    v34 = *(v31 + 1832);
    v88 = *(v31 + 48);
    v35 = *(v28 + 88);
    v36 = *(WebCore::FrameLoader::frame(v93) + 224);
    if (!v36)
    {
      v81 = v12;
      v82 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v84 = WebCore::FrameLoader::frame(v93);
        *buf = 134219520;
        *&buf[4] = v86;
        *&buf[12] = 2048;
        *&buf[14] = 0;
        *&buf[22] = 2048;
        v130 = v93;
        v131 = 2048;
        v132 = v84;
        v133 = 2048;
        v134 = v88;
        v135 = 2048;
        v136 = v88;
        v137 = 2048;
        v138 = v88;
        _os_log_error_impl(&dword_19D52D000, v82, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: no document", buf, 0x48u);
      }

      WebCore::ResourceRequestBase::url(v92);
      WebCore::internalError();
      WebCore::ResourceError::operator=(v81, buf);
      WebCore::ResourceError::~ResourceError(buf, v83);
      goto LABEL_37;
    }

    v91 = v12;
    v36[7] += 2;
    WebCore::ResourceRequestBase::url(v92);
    if (WTF::URL::protocolIs())
    {
      v60 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
      {
        v77 = WebCore::FrameLoader::frame(v93);
        *buf = 134219520;
        *&buf[4] = v86;
        *&buf[12] = 2048;
        *&buf[14] = 0;
        *&buf[22] = 2048;
        v130 = v93;
        v131 = 2048;
        v132 = v77;
        v133 = 2048;
        v134 = v88;
        v135 = 2048;
        v136 = v88;
        v137 = 2048;
        v138 = v88;
        _os_log_error_impl(&dword_19D52D000, v60, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: URL will be loaded as data", buf, 0x48u);
      }

      WebKit::WebLoaderStrategy::loadDataURLSynchronously(buf, v86, v92);
      WebCore::ResourceError::operator=(v91, v144);
      WebCore::ResourceResponse::operator=(a9, buf);
      v33 = a10;
      v62 = *a10;
      if (*a10)
      {
        *a10 = 0;
        a10[2] = 0;
        WTF::fastFree(v62, v61);
      }
    }

    else
    {
      WebKit::WebLoaderStrategy::tryLoadingSynchronouslyUsingURLSchemeHandler(buf, v93[2], v22, v92);
      if (v147 != 1)
      {
        *buf = v34;
        *&buf[8] = v88;
        *&buf[16] = v35;
        WebCore::ResourceRequest::ResourceRequest(&v130, v92);
        v140 = 0;
        v139 = 0u;
        v141 = 1;
        v142 = 0;
        v143 = 0;
        v148 = 0;
        v149 = 0x10000;
        v150 = 1;
        v152 = 0;
        memset(v151, 0, 35);
        v153 = 0u;
        BYTE9(v153) = 2;
        *(&v153 + 10) = 0;
        BYTE14(v153) = 0;
        v155 = 0;
        v156[0] = 0;
        memset(v154, 0, 41);
        WTF::URL::invalidate(v156);
        v157[0] = 0;
        WTF::URL::invalidate(v157);
        v158 = 0;
        v159 = 0u;
        v160 = 0;
        v161 = 0u;
        WebCore::HTTPHeaderMap::HTTPHeaderMap(v162);
        v164 = 0;
        v165 = 0;
        v168 = 0;
        v169 = 0;
        v166 = 0u;
        v167 = 0;
        v170 = 1;
        v171[0] = 0;
        WTF::URL::invalidate(v171);
        v174[0] = 0;
        v172 = 0;
        v173 = 0;
        WTF::URL::invalidate(v174);
        v175 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v176 = 0u;
        v177 = 0;
        v181 = 1;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188[0] = 0;
        WTF::URL::invalidate(v188);
        v189 = 0;
        v190 = 0;
        v191 = 0;
        WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(buf);
        *&v151[5] = v22;
        LODWORD(v140) = WTF::legacyPresentingApplicationPID(v37);
        WORD2(v140) = 0;
        BYTE6(v140) = *(v16 + 2) != 0;
        HIBYTE(v140) = v18;
        WebKit::WebFrame::protectedCoreLocalFrame(v113, v28);
        LOBYTE(v141) = WebKit::shouldClearReferrerOnHTTPSToHTTPRedirect(*v113, v38);
        v40 = *v113;
        *v113 = 0;
        if (v40)
        {
          if (v40[4] == 1)
          {
            (*(*v40 + 8))(v40);
          }

          else
          {
            --v40[4];
          }
        }

        LOBYTE(v164) = 1;
        DWORD2(v153) = *v16;
        *(&v153 + 11) = *(v16 + 3);
        v41 = *(v16 + 8);
        if (v41)
        {
          atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
        }

        v42 = v154[0];
        v154[0] = v41;
        if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v42, v39);
        }

        v43 = *(v16 + 32);
        *&v154[1] = *(v16 + 16);
        *&v154[3] = v43;
        v45 = WebCore::SecurityContext::securityOrigin((v36 + 52));
        atomic_fetch_add(v45, 1u);
        v46 = *(&v139 + 1);
        *(&v139 + 1) = v45;
        if (v46)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v46, v44);
        }

        v48 = WebCore::Document::topOrigin(v36);
        atomic_fetch_add(v48, 1u);
        v49 = v139;
        *&v139 = v48;
        if (v49)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v49, v47);
        }

        if ((WebCore::Document::shouldBypassMainWorldContentSecurityPolicy(v36) & 1) == 0)
        {
          v50 = WebCore::SecurityContext::contentSecurityPolicy((v36 + 52));
          if (v50)
          {
            v51 = v50;
            atomic_fetch_add(v50, 1u);
            WebCore::ContentSecurityPolicy::responseHeaders(v113, v50);
            std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(&v154[5], v113);
            WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v113, v52);
            if (!atomic_load(v51))
            {
              __break(0xC471u);
              return;
            }

            atomic_fetch_add(v51, 0xFFFFFFFF);
          }
        }

        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(v162, v87);
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v163, (v87 + 16));
        *(&v149 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v28);
        WebKit::WebFrame::protectedCoreLocalFrame(v113, v28);
        WebKit::addParametersShared(*v113, buf, 0);
        v55 = *v113;
        *v113 = 0;
        if (v55)
        {
          if (*(v55 + 4) == 1)
          {
            v55 = (*(*v55 + 8))(v55);
          }

          else
          {
            --*(v55 + 4);
          }
        }

        a10[3] = 0;
        v33 = IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount;
        atomic_fetch_add(IPC::UnboundedSynchronousIPCScope::unboundedSynchronousIPCCount, 1u);
        v56 = WebKit::WebProcess::singleton(v55, v54);
        v57 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v56) + 24);
        *v95 = buf;
        IPC::Connection::sendSync<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>(v113, v57, v95);
        if (!v128)
        {
          IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::takeReply(v95, v113);
          v94[0] = v12;
          v94[1] = a9;
          v94[2] = a10;
          std::__memberwise_forward_assign[abi:sn200100]<std::tuple<WebCore::ResourceError &,WebCore::ResourceResponse &,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,1ul,2ul>(v94, v95);
          std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(v95, v58);
LABEL_32:
          if (v128 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::ReplyData,IPC::Error>,(mpark::detail::Trait)1> &>(v113, v59);
          }

          atomic_fetch_add(v33, 0xFFFFFFFF);
          WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(buf, v59);
          goto LABEL_35;
        }

        v34 = qword_1ED6416F0;
        if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR))
        {
LABEL_56:
          v67 = WebCore::Page::diagnosticLoggingClient(v85);
          v68 = WebCore::DiagnosticLoggingKeys::internalErrorKey(v95, v67);
          WebCore::DiagnosticLoggingKeys::synchronousMessageFailedKey(v94, v68);
          (**v67)(v67, v95, v94, 0);
          v70 = v94[0];
          v94[0] = 0;
          if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v70, v69);
          }

          v71 = *v95;
          *v95 = 0;
          if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v71, v69);
          }

          WebCore::ResourceResponseBase::ResourceResponseBase(v95);
          v111 = 0;
          v112 = 0;
          v110 = v110 & 0xF1 | 4;
          WebCore::ResourceResponse::operator=(a9, v95);
          WebCore::ResourceResponse::~ResourceResponse(v95, v72);
          WebCore::ResourceRequestBase::url(v92);
          WebCore::internalError();
          WebCore::ResourceError::operator=(v91, v95);
          WebCore::ResourceError::~ResourceError(v95, v73);
          goto LABEL_32;
        }

LABEL_68:
        v79 = WebCore::FrameLoader::frame(v93);
        if (v128 && v128 != 1)
        {
          mpark::throw_bad_variant_access(v128);
        }

        v80 = IPC::errorAsString();
        *v95 = 134219778;
        *&v95[4] = v86;
        v96 = 2048;
        v97 = 0;
        v98 = 2048;
        v99 = v93;
        v100 = 2048;
        v101 = v79;
        v102 = 2048;
        v103 = v88;
        v104 = 2048;
        v105 = v88;
        v106 = 2048;
        v107 = v88;
        v108 = 2082;
        v109 = v80;
        _os_log_error_impl(&dword_19D52D000, v34, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: failed sending synchronous network process message %{public}s", v95, 0x52u);
        goto LABEL_56;
      }

      v63 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR) && ((v78 = WebCore::FrameLoader::frame(v93), (v147 & 1) == 0) || (v34 = v78, v33 = v113, MEMORY[0x19EB12BA0](v144), *v113 = 134219776, *&v113[4] = v86, v114 = 2048, v115 = 0, v116 = 2048, v117 = v93, v118 = 2048, v119 = v34, v120 = 2048, v121 = v88, v122 = 2048, v123 = v88, v124 = 2048, v125 = v88, v126 = 1024, v127 = v144[14], _os_log_error_impl(&dword_19D52D000, v63, OS_LOG_TYPE_ERROR, "%p - [resourceLoader=%p, frameLoader=%p, frame=%p, webPageID=%llu, frameID=%llu, resourceID=%llu] WebLoaderStrategy::loadResourceSynchronously: failed calling tryLoadingSynchronouslyUsingURLSchemeHandler (error=%d)", v113, 0x4Eu), (v147 & 1) == 0)) || (WebCore::ResourceError::operator=(v91, v144), (v147 & 1) == 0) || (WebCore::ResourceResponse::operator=(a9, buf), v33 = a10, (v147 & 1) == 0))
      {
        __break(1u);
        goto LABEL_68;
      }

      v64 = *a10;
      if (*a10)
      {
        *a10 = 0;
        a10[2] = 0;
        WTF::fastFree(v64, v61);
        v74 = v147;
        v75 = v145;
        v145 = 0;
        *a10 = v75;
        v76 = v146;
        v146 = 0;
        *(a10 + 1) = v76;
        if ((v74 & 1) == 0)
        {
LABEL_35:
          if (v36[7] == 2)
          {
            WebCore::Node::removedLastRef(v36);
          }

          else
          {
            v36[7] -= 2;
          }

LABEL_37:
          WTF::RefCounted<WebCore::Page>::deref(v89);
          v27 = v90;
          goto LABEL_38;
        }

LABEL_54:
        WebKit::WebLoaderStrategy::SyncLoadResult::~SyncLoadResult(buf, v61);
        goto LABEL_35;
      }
    }

    v65 = v145;
    v145 = 0;
    *v33 = v65;
    v66 = v146;
    v146 = 0;
    *(v33 + 1) = v66;
    goto LABEL_54;
  }

LABEL_39:
  CFRelease(*(v28 + 8));
LABEL_40:
  if (v27)
  {
    WebCore::LocalFrameLoaderClient::deref(v27);
  }
}

BOOL WebKit::shouldClearReferrerOnHTTPSToHTTPRedirect(WebKit *this, WebCore::LocalFrame *a2)
{
  if (!this)
  {
    return 1;
  }

  v2 = *(this + 28);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 208);
  *(v2 + 28) += 2;
  result = (*(v3 + 8))(v2 + 208, a2) == 2;
  if (*(v2 + 28) == 2)
  {
    v5 = result;
    WebCore::Node::removedLastRef(v2);
    return v5;
  }

  else
  {
    *(v2 + 28) -= 2;
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>(_BYTE *a1, IPC::Connection *a2, uint64_t *a3)
{
  IPC::Connection::createSyncMessageEncoder(0xFA6, 0, v22);
  IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(v22[0], *a3);
  v6 = IPC::Connection::sendSyncMessage(&v20, a2, v22[1], v22, 0, INFINITY);
  if (!v21)
  {
    v8 = v20;
    v19 = v20;
    v20 = 0;
    if (*(v19 + 25) == 3194)
    {
      *a1 = 11;
      a1[368] = 1;
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      v18 = 0;
      IPC::Decoder::operator>><std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v8, v17);
      if (v18 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::ConnectionSendSyncResult(a1, &v19, v17);
        if (v18)
        {
          std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(v17, v7);
        }
      }

      else
      {
        *a1 = 14;
        a1[368] = 1;
      }

      v8 = v19;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    IPC::Decoder::~Decoder(v8);
    bmalloc::api::tzoneFree(v13, v14);
LABEL_7:
    if (!v21)
    {
      v9 = v20;
      v20 = 0;
      if (v9)
      {
        IPC::Decoder::~Decoder(v9);
        bmalloc::api::tzoneFree(v15, v16);
      }
    }

    goto LABEL_10;
  }

  if (v21 != 1)
  {
    mpark::throw_bad_variant_access(v6);
  }

  *a1 = v20;
  a1[368] = 1;
LABEL_10:
  result = v22[0];
  v22[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t IPC::ConnectionSendSyncResult<Messages::NetworkConnectionToWebProcess::PerformSynchronousLoad>::takeReply(mpark *a1, uint64_t a2)
{
  if (*(a2 + 368))
  {
    mpark::throw_bad_variant_access(a1);
  }

  v3 = (a2 + 8);

  return std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::__tuple_impl(a1, v3);
}

uint64_t std::tuple<WebCore::ResourceError,WebCore::ResourceResponse,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~tuple(uint64_t a1, void *a2)
{
  v3 = *(a1 + 344);
  if (v3)
  {
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 328);
  *(a1 + 328) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((a1 + 80), a2);
  v6 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  return a1;
}

WebKit::WebProcess *WebKit::WebLoaderStrategy::pageLoadCompleted(WebKit::WebLoaderStrategy *this, WebCore::Page *a2)
{
  {
    result = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = a2;
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    result = WebKit::WebProcess::WebProcess(v12);
    a2 = v11;
    WebKit::WebProcess::singleton(void)::process = result;
  }

  v3 = *(result + 42);
  if (v3)
  {
    ++*(v3 + 20);
    v4 = *(v3 + 24);
    v5 = *(WebKit::WebPage::fromCorePage(a2) + 48);
    v7 = IPC::Encoder::operator new(0x238, v6);
    *v7 = 462;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v13 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v5);
    IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      result = bmalloc::api::tzoneFree(v9, v10);
    }

    if (*(v3 + 20) == 1)
    {
      return (*(*v3 + 24))(v3);
    }

    else
    {
      --*(v3 + 20);
    }
  }

  return result;
}

void WebKit::WebLoaderStrategy::browsingContextRemoved(WebKit::WebLoaderStrategy *this, WebCore::LocalFrame *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v19 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v19);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(v3 + 42);
  if (v4)
  {
    ++*(v4 + 20);
    v5 = *(*(a2 + 3) + 8);
    v6 = (v5 + 8);
    ++*(v5 + 8);
    v7 = WebKit::WebPage::fromCorePage(v5);
    CFRetain(*(v7 + 8));
    WTF::RefCounted<WebCore::Page>::deref(v6);
    v8 = *(v4 + 24);
    v9 = *(v7 + 1832);
    v10 = *(v7 + 48);
    WebKit::WebFrame::fromCoreFrame(a2, &v20);
    v11 = v20;
    v12 = *(v20 + 88);
    v14 = IPC::Encoder::operator new(0x238, v13);
    *v14 = 430;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = 0;
    IPC::Encoder::encodeHeader(v14);
    v21 = v14;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v9);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v10);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v12);
    IPC::Connection::sendMessageImpl(v8, &v21, 0, 0);
    v16 = v21;
    v21 = 0;
    if (v16)
    {
      IPC::Encoder::~Encoder(v16, v15);
      bmalloc::api::tzoneFree(v17, v18);
    }

    CFRelease(*(v11 + 8));
    CFRelease(*(v7 + 8));
    if (*(v4 + 20) == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --*(v4 + 20);
    }
  }
}

void WebKit::WebLoaderStrategy::startPingLoad(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v3;
  v154 = *MEMORY[0x1E69E9840];
  WebKit::WebFrame::fromCoreFrame(v14, &v98);
  v18 = *(v15 + 28);
  if (v18)
  {
    *(v18 + 28) += 2;
    v19 = v98;
    if (v98)
    {
      v93 = v16;
      v20 = WebKit::WebFrame::page(v98, v17);
      if (!v20)
      {
        if (*v5)
        {
          WebCore::ResourceRequestBase::url(v13);
          WebCore::internalError();
          WebCore::ResourceResponseBase::ResourceResponseBase(v99);
          cf = 0;
          v105 = 0;
          v101 = v101 & 0xF1 | 4;
          (*(**v5 + 16))(*v5, &v94, v99);
          v86 = cf;
          cf = 0;
          if (v86)
          {
            CFRelease(v86);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(v99, v85);
          v88 = v97;
          v97 = 0;
          if (v88)
          {
            CFRelease(v88);
          }

          v89 = v96;
          v96 = 0;
          if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v89, v87);
          }

          v90 = v95;
          v95 = 0;
          if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v90, v87);
          }

          v91 = v94;
          v94 = 0;
          if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v91, v87);
          }
        }

        goto LABEL_78;
      }

      v21 = v20;
      CFRetain(*(v20 + 8));
      v22 = *(v21 + 48);
      v99[0] = *(v21 + 1832);
      v99[1] = v22;
      v99[2] = *(v19 + 11);
      WebCore::ResourceRequest::ResourceRequest(&v100, v13);
      v103 = 0;
      v102 = 0u;
      LOWORD(cf) = 1;
      BYTE2(cf) = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0x10000;
      v108 = 1;
      v110 = 0;
      memset(v109, 0, 35);
      v111 = 0u;
      BYTE9(v111) = 2;
      *(&v111 + 10) = 0;
      BYTE14(v111) = 0;
      v113 = 0;
      v114[0] = 0;
      memset(v112, 0, 41);
      WTF::URL::invalidate(v114);
      v115 = 0;
      WTF::URL::invalidate(&v115);
      v118 = 0;
      v119 = 0u;
      v120 = 0;
      v121 = 0u;
      WebCore::HTTPHeaderMap::HTTPHeaderMap(v122);
      v124 = 0;
      v125 = 0;
      v128 = 0;
      v129 = 0;
      v126 = 0u;
      v127 = 0;
      v130 = 1;
      v131[0] = 0;
      WTF::URL::invalidate(v131);
      v134[0] = 0;
      v132 = 0;
      v133 = 0;
      WTF::URL::invalidate(v134);
      v135 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v136 = 0u;
      v137 = 0;
      v141 = 1;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v146 = 0;
      v147 = 0;
      v148 = 0;
      WTF::URL::invalidate(&v148);
      LOBYTE(v151) = 0;
      v152 = 0;
      v153 = 0;
      WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(v99);
      if (WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
      }

      else
      {
        *&v109[5] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
        v24 = WebCore::SecurityContext::securityOrigin((v18 + 208));
        atomic_fetch_add(v24, 1u);
        v25 = *(&v102 + 1);
        *(&v102 + 1) = v24;
        if (v25)
        {
          WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v25, v23);
        }

        v27 = WebCore::Document::topOrigin(v18);
        atomic_fetch_add(v27, 1u);
        v28 = v102;
        *&v102 = v27;
        if (v28)
        {
          v28 = WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v28, v26);
        }

        LODWORD(v103) = WTF::legacyPresentingApplicationPID(v28);
        BYTE6(v103) = *(v9 + 2) != 0;
        DWORD2(v111) = *v9;
        *(&v111 + 11) = *(v9 + 3);
        v30 = *(v9 + 8);
        if (v30)
        {
          atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
        }

        v31 = v112[0];
        v112[0] = v30;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v29);
        }

        v32 = *(v9 + 32);
        *&v112[1] = *(v9 + 16);
        *&v112[3] = v32;
        WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(v122, v11);
        WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(&v123, (v11 + 16));
        LOBYTE(cf) = WebKit::shouldClearReferrerOnHTTPSToHTTPRedirect(v15, v33);
        LOBYTE(v124) = 1;
        if (v7 != 1 || (WebCore::Document::shouldBypassMainWorldContentSecurityPolicy(v18) & 1) != 0 || (v34 = WebCore::SecurityContext::contentSecurityPolicy((v18 + 208))) == 0)
        {
LABEL_19:
          WebKit::addParametersShared(v15, v99, 0);
          *(&v107 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v98);
          v39 = *(v18 + 800);
          if (v39)
          {
            atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
          }

          v40 = v115;
          v115 = v39;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v38);
          }

          v41 = *(v18 + 808);
          v117 = *(v18 + 824);
          v116 = v41;
          v42 = *(v18 + 552);
          if (v42)
          {
            v43 = *(v42 + 8);
            if (v43)
            {
              v44 = *(v43 + 24);
              if (v44)
              {
                v45 = *(v44 + 8);
                if (v45)
                {
                  v46 = v45 + 2;
                  ++v45[2];
                  v48 = WebCore::Page::mainFrameURL(v45);
                  v49 = *v48;
                  if (*v48)
                  {
                    atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
                  }

                  v50 = v148;
                  v148 = v49;
                  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v50, v47);
                  }

                  v51 = *(v48 + 24);
                  v149 = *(v48 + 8);
                  v150 = v51;
                  WTF::RefCounted<WebCore::Page>::deref(v46);
                }
              }
            }
          }

          v52 = *(*(v21 + 584) + 64);
          if ((v152 & 1) == 0)
          {
            v152 = 1;
          }

          v151 = v52;
          if (!*v5)
          {
            goto LABEL_73;
          }

          v53 = *&v109[5];
          if (!*&v109[5])
          {
            __break(0xC471u);
            JUMPOUT(0x19E301BACLL);
          }

          if (*&v109[5] == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E301BCCLL);
          }

          v54 = *(v93 + 88);
          if (!v54)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v93 + 88), *&v109[5]);
            v54 = *(v93 + 88);
            v53 = *&v109[5];
          }

          v55 = *(v54 - 8);
          v56 = (v53 + ~(v53 << 32)) ^ ((v53 + ~(v53 << 32)) >> 22);
          v57 = 9 * ((v56 + ~(v56 << 13)) ^ ((v56 + ~(v56 << 13)) >> 8));
          v58 = (v57 ^ (v57 >> 15)) + ~((v57 ^ (v57 >> 15)) << 27);
          v59 = v55 & ((v58 >> 31) ^ v58);
          v60 = (v54 + 16 * v59);
          v61 = *v60;
          if (*v60)
          {
            v62 = 0;
            v63 = 1;
            while (v61 != v53)
            {
              if (v61 == -1)
              {
                v62 = v60;
              }

              v59 = (v59 + v63) & v55;
              v60 = (v54 + 16 * v59);
              v61 = *v60;
              ++v63;
              if (!*v60)
              {
                if (v62)
                {
                  *v62 = 0;
                  v62[1] = 0;
                  --*(*(v93 + 88) - 16);
                  v53 = *&v109[5];
                  v60 = v62;
                }

                goto LABEL_49;
              }
            }

            goto LABEL_73;
          }

LABEL_49:
          *v60 = v53;
          v64 = *v5;
          *v5 = 0;
          v65 = v60[1];
          v60[1] = v64;
          if (v65)
          {
            (*(*v65 + 8))(v65);
          }

          v66 = *(v93 + 88);
          if (v66)
          {
            v67 = *(v66 - 12) + 1;
          }

          else
          {
            v67 = 1;
          }

          *(v66 - 12) = v67;
          v75 = (*(v66 - 16) + v67);
          v76 = *(v66 - 4);
          if (v76 > 0x400)
          {
            if (v76 > 2 * v75)
            {
              goto LABEL_73;
            }
          }

          else
          {
            v76 *= 3;
            if (v76 > 4 * v75)
            {
LABEL_73:
              {
                v77 = WebKit::WebProcess::singleton(void)::process;
              }

              else
              {
                v92 = WebKit::WebProcess::operator new(0x370, v38);
                v77 = WebKit::WebProcess::WebProcess(v92);
                WebKit::WebProcess::singleton(void)::process = v77;
              }

              v78 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v77) + 24);
              v80 = IPC::Encoder::operator new(0x238, v79);
              *v80 = 454;
              *(v80 + 68) = 0;
              *(v80 + 70) = 0;
              *(v80 + 69) = 0;
              *(v80 + 2) = 0;
              *(v80 + 3) = 0;
              *(v80 + 1) = 0;
              IPC::Encoder::encodeHeader(v80);
              v94 = v80;
              IPC::ArgumentCoder<WebKit::NetworkResourceLoadParameters,void>::encode(v80, v99);
              IPC::Connection::sendMessageImpl(v78, &v94, 0, 0);
              v82 = v94;
              v94 = 0;
              if (v82)
              {
                IPC::Encoder::~Encoder(v82, v81);
                bmalloc::api::tzoneFree(v83, v84);
              }

              WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(v99, v81);
              CFRelease(*(v21 + 8));
LABEL_78:
              if (*(v18 + 28) == 2)
              {
                WebCore::Node::removedLastRef(v18);
              }

              else
              {
                *(v18 + 28) -= 2;
              }

              goto LABEL_80;
            }
          }

          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v93 + 88), v76);
          goto LABEL_73;
        }

        v35 = v34;
        atomic_fetch_add(v34, 1u);
        WebCore::ContentSecurityPolicy::responseHeaders(&v94, v34);
        std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(&v112[5], &v94);
        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v94, v36);
        if (atomic_load(v35))
        {
          atomic_fetch_add(v35, 0xFFFFFFFF);
          goto LABEL_19;
        }

        __break(0xC471u);
      }

      JUMPOUT(0x19E301B8CLL);
    }
  }

  if (*v5)
  {
    WebCore::ResourceRequestBase::url(v13);
    WebCore::internalError();
    WebCore::ResourceResponseBase::ResourceResponseBase(v99);
    cf = 0;
    v105 = 0;
    v101 = v101 & 0xF1 | 4;
    (*(**v5 + 16))(*v5, &v94, v99);
    v69 = cf;
    cf = 0;
    if (v69)
    {
      CFRelease(v69);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v99, v68);
    v71 = v97;
    v97 = 0;
    if (v71)
    {
      CFRelease(v71);
    }

    v72 = v96;
    v96 = 0;
    if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v72, v70);
    }

    v73 = v95;
    v95 = 0;
    if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v73, v70);
    }

    v74 = v94;
    v94 = 0;
    if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v74, v70);
    }
  }

  if (v18)
  {
    goto LABEL_78;
  }

LABEL_80:
  if (v98)
  {
    CFRelease(*(v98 + 1));
  }
}

void WebKit::WebLoaderStrategy::preconnectTo(WebKit::WebProcess *a1, void *a2, WebCore::ResourceRequestBase *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = WebKit::WebProcess::singleton(a1, a2);
  v11 = WebCore::FrameLoader::frameID(a2);
  v12 = WebKit::WebProcess::webFrame(v10, v11, 1);
  if (v12)
  {
    v13 = v12;
    CFRetain(*(v12 + 8));
    v15 = WebKit::WebFrame::page(v13, v14);
    if (v15)
    {
      v16 = v15;
      CFRetain(*(v15 + 8));
      WebKit::WebLoaderStrategy::preconnectTo(a1, a3, v16);
      CFRelease(*(v16 + 8));
    }

    else
    {
      WebCore::ResourceRequestBase::url(a3);
      WebCore::internalError();
      (*(**a6 + 16))(*a6, v19);
      WebCore::ResourceError::~ResourceError(v19, v18);
    }

    CFRelease(v13[1]);
  }

  else
  {
    WebCore::ResourceRequestBase::url(a3);
    WebCore::internalError();
    (*(**a6 + 16))(*a6, v19);
    WebCore::ResourceError::~ResourceError(v19, v17);
  }
}

void WebKit::WebLoaderStrategy::preconnectTo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v4;
  v16 = v3;
  v94 = *MEMORY[0x1E69E9840];
  v17 = *(v13 + 7);
  if (v17)
  {
    ++*(v17 + 8);
    WebCore::ResourceRequestBase::url(v4);
    if ((WebCore::Page::allowsLoadFromURL() & 1) == 0)
    {
      if (*v6)
      {
        v41 = 0;
        v42[0] = 0;
        WTF::URL::invalidate(v42);
        v44[2] = 0;
        v44[0] = 0;
        *(v44 + 6) = 0;
        v45 = 1;
        (*(**v6 + 16))(*v6, &v41);
        WebCore::ResourceError::~ResourceError(&v41, v36);
      }

      WTF::RefCounted<WebCore::Page>::deref((v17 + 8));
      return;
    }

    WTF::RefCounted<WebCore::Page>::deref((v17 + 8));
  }

  v37 = v16;
  v18 = WebKit::WebPage::mainFrame(v14);
  v19 = v18;
  LOWORD(v16) = 1;
  if (!v18)
  {
    goto LABEL_50;
  }

  if (*(v18 + 136))
  {
    goto LABEL_49;
  }

  ++*(v18 + 16);
  v20 = *(v18 + 224);
  if (v20)
  {
    v20[7] += 2;
    if (v8)
    {
      v21 = WebCore::ResourceRequestBase::url(v15);
    }

    else
    {
      v21 = (v20 + 268);
    }

    WebCore::ResourceRequestBase::setFirstPartyForCookies(v15, v21);
    v22 = WebCore::Document::loader(v20);
    if (v22)
    {
      v23 = v22;
      ++*(v22 + 24);
      WebCore::ResourceRequestBase::setIsAppInitiated(v15);
      if (v23[6] == 1)
      {
        (*(*v23 + 24))(v23);
      }

      else
      {
        --v23[6];
      }
    }

    if (v20[7] != 2)
    {
      i = 0;
      v20[7] -= 2;
      goto LABEL_14;
    }

    WebCore::Node::removedLastRef(v20);
  }

  for (i = 0; ; i = 1)
  {
LABEL_14:
    v25 = *(v14 + 6);
    v41 = *(v14 + 229);
    v42[0] = v25;
    v42[1] = *(v12 + 11);
    WebCore::ResourceRequest::ResourceRequest(v43, v15);
    v47 = 0;
    v46 = 0u;
    v48 = v16;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0x10000;
    v53 = v16;
    v55 = 0;
    memset(v54, 0, 35);
    v56 = 0u;
    BYTE9(v56) = 2;
    *(&v56 + 10) = 0;
    BYTE14(v56) = 0;
    v58[48] = 0;
    v59[0] = 0;
    v57 = 0u;
    memset(v58, 0, 25);
    WTF::URL::invalidate(v59);
    v60[0] = 0;
    WTF::URL::invalidate(v60);
    v61 = 0;
    v62 = 0u;
    v63 = 0;
    v64 = 0u;
    WebCore::HTTPHeaderMap::HTTPHeaderMap(&v65);
    v66 = 0;
    v67 = 0;
    v70 = 0;
    v71 = 0;
    v68 = 0u;
    v69 = 0;
    v72 = v16;
    v73[0] = 0;
    WTF::URL::invalidate(v73);
    v76[0] = 0;
    v74 = 0;
    v75 = 0;
    WTF::URL::invalidate(v76);
    v77 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v78 = 0u;
    v79 = 0;
    v83 = v16;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90[0] = 0;
    WTF::URL::invalidate(v90);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(&v41);
    WebCore::ResourceRequestBase::httpUserAgent(v38, v43);
    v27 = v38[0];
    if (!v38[0])
    {
      goto LABEL_54;
    }

    LODWORD(v16) = *(v38[0] + 1);
    v38[0] = 0;
    if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }

    if (!v16)
    {
LABEL_54:
      WebCore::ResourceRequestBase::url(v43);
      WebKit::WebPage::userAgent(v38, v14);
      v29 = v38[0];
      if (v38[0])
      {
        if (*(v38[0] + 1))
        {
          WebCore::ResourceRequestBase::setHTTPUserAgent(v43, v38);
          v29 = v38[0];
          v38[0] = 0;
          if (!v29)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v38[0] = 0;
        }

        if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v28);
        }
      }
    }

LABEL_23:
    if (WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      goto LABEL_48;
    }

    *&v54[5] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    LODWORD(v47) = WTF::legacyPresentingApplicationPID(*&v54[5]);
    BYTE6(v47) = v10;
    LOBYTE(v52) = 1;
    LOBYTE(v66) = 1;
    BYTE8(v56) = 0;
    *(&v52 + 1) = WebKit::WebFrame::isTopFrameNavigatingToAppBoundDomain(v12);
    WebKit::WebFrame::protectedCoreLocalFrame(&v39, v12);
    WebKit::policySourceDocumentLoaderForFrame(v38, v39, 0);
    v31 = v39;
    v39 = 0;
    LOWORD(v16) = v37;
    if (v31)
    {
      if (*(v31 + 4) == 1)
      {
        (*(*v31 + 8))(v31);
      }

      else
      {
        --*(v31 + 4);
      }
    }

    v32 = v38[0];
    if (v38[0])
    {
      v54[0] = *(v38[0] + 1773);
      v38[0] = 0;
      if (*(v32 + 6) == 1)
      {
        v32 = (*(*v32 + 24))(v32);
      }

      else
      {
        --*(v32 + 6);
      }
    }

    LOBYTE(v39) = 0;
    v40 = 0;
    if (!*v6)
    {
      goto LABEL_33;
    }

    v39 = *&v54[5];
    v40 = *&v54[5] != 0;
    if (*&v54[5])
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    v19 = 0;
LABEL_50:
    ;
  }

  v32 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Function<void ()(WebCore::ResourceError const&)>>(v38, (v37 + 96), &v39, v6);
LABEL_33:
  v33 = WebKit::WebProcess::singleton(v32, v30);
  v34 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v33) + 24);
  v38[0] = &v39;
  v38[1] = &v41;
  IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PreconnectTo>(v34, v38);
  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters(&v41, v35);
  if ((i & 1) == 0)
  {
    if (v19[4] == 1)
    {
      (*(*v19 + 8))(v19);
    }

    else
    {
      --v19[4];
    }
  }
}

uint64_t *WebKit::policySourceDocumentLoaderForFrame(WebKit *this, const WebCore::LocalFrame *a2, int a3)
{
  result = WebCore::LocalFrame::localMainFrame(&v8, a2);
  if (v8)
  {
    WebCore::FrameLoader::loaderForWebsitePolicies();
    if (v7)
    {
      ++v7[6];
      *this = v7;
      v6 = WebCore::ResourceRequestBase::url((v7 + 220));
      if ((WTF::URL::hasSpecialScheme(v6) & 1) == 0 && (*(*(a2 + 28) + 808) & 2) != 0)
      {
        WTF::RefPtr<WebCore::DocumentLoader,WTF::RawPtrTraits<WebCore::DocumentLoader>,WTF::DefaultRefDerefTraits<WebCore::DocumentLoader>>::operator=(this, *(*(a2 + 26) + 96));
      }

      if (v7[6] == 1)
      {
        (*(*v7 + 24))();
      }

      else
      {
        --v7[6];
      }
    }

    else
    {
      *this = 0;
    }

    result = v8;
    v8 = 0;
    if (result)
    {
      if (*(result + 4) == 1)
      {
        return (*(*result + 8))(result);
      }

      else
      {
        --*(result + 4);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Function<void ()(WebCore::ResourceError const&)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t *a4)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v9 = *a2;
  if (*a2 || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0, v8), (v9 = *a2) != 0))
  {
    v10 = *(v9 - 2);
  }

  else
  {
    v10 = 0;
  }

  result = WTF::ObjectIdentifierGenericBaseHash<unsigned long long>::hash(a3);
  v12 = result & v10;
  v13 = &v9[2 * (result & v10)];
  v14 = *v13;
  v15 = *a3;
  if (*v13)
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (v14 == v15)
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
        v21 = &v25[2 * v26];
        goto LABEL_11;
      }

      if (v14 == -1)
      {
        v23 = v13;
      }

      v12 = (v12 + v24) & v10;
      v13 = &v9[2 * v12];
      v14 = *v13;
      ++v24;
    }

    while (*v13);
    if (v23)
    {
      *v23 = 0;
      v23[1] = 0;
      --*(*a2 - 4);
      v15 = *a3;
      v13 = v23;
    }
  }

  *v13 = v15;
  v16 = *a4;
  *a4 = 0;
  result = v13[1];
  v13[1] = v16;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

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
      goto LABEL_10;
    }

LABEL_25:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v13, v17);
    v13 = result;
    v17 = *a2;
    if (*a2)
    {
      v20 = *(v17 - 1);
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_10;
  }

  if (3 * v20 <= 4 * v19)
  {
    goto LABEL_25;
  }

LABEL_10:
  v21 = &v17[2 * v20];
  v22 = 1;
LABEL_11:
  *a1 = v13;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PreconnectTo>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 465;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  Messages::NetworkConnectionToWebProcess::PreconnectTo::encode<IPC::Encoder>(a2, v4);
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

void *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(void *a1, uint64_t *a2, uint64_t *a3)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2, a3);
  v6 = *a2;
  if (*a2)
  {
    v6 += 16 * *(v6 - 4);
  }

  if (v6 == result)
  {
    v7 = 0;
  }

  else
  {
    v7 = result[1];
    result[1] = 0;
    result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::ResourceError const&)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Function<void ()(WebCore::ResourceError const&)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, result);
  }

  *a1 = v7;
  return result;
}

uint64_t *WebKit::WebLoaderStrategy::addOnlineStateChangeListener(uint64_t a1, uint64_t *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  result = WebKit::WebProcess::ensureNetworkProcessConnection(v4);
  v6 = *(a1 + 116);
  if (v6 == *(a1 + 112))
  {

    return WTF::Vector<WTF::Function<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Function<void ()(BOOL)>>((a1 + 104), a2);
  }

  else
  {
    v7 = *(a1 + 104);
    v8 = *a2;
    *a2 = 0;
    *(v7 + 8 * v6) = v8;
    *(a1 + 116) = v6 + 1;
  }

  return result;
}

uint64_t WebKit::WebLoaderStrategy::isResourceLoadFinished(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2[50])
  {
    v5 = &qword_1ED643000;
    {
      goto LABEL_16;
    }

    v6 = WebKit::WebProcess::singleton(void)::process;
    while (*(v6 + 42))
    {
      v7 = WebKit::WebProcess::ensureNetworkProcessConnection(v6);
      v8 = a2[50];
      v5 = v8[94];
      if (v5)
      {
        v9 = *(v7 + 24);
        v10 = *a3;
        *a3 = 0;
        v11 = WTF::fastMalloc(v8, 0x10);
        *v11 = &unk_1F112C860;
        v11[1] = v10;
        if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
        {
          result = 141;
          __break(0xC471u);
        }

        else
        {
          v12 = v11;
          IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
          v15 = IPC::Encoder::operator new(0x238, v14);
          *v15 = 452;
          *(v15 + 68) = 0;
          *(v15 + 70) = 0;
          *(v15 + 69) = 0;
          *(v15 + 2) = 0;
          *(v15 + 3) = 0;
          *(v15 + 1) = 0;
          IPC::Encoder::encodeHeader(v15);
          v25 = v15;
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v5);
          v24[0] = v12;
          v24[1] = IdentifierInternal;
          IPC::Connection::sendMessageWithAsyncReply(v9, &v25, v24, 0, 0);
          v17 = v24[0];
          v24[0] = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          result = v25;
          v25 = 0;
          if (result)
          {
            IPC::Encoder::~Encoder(result, v16);
            return bmalloc::api::tzoneFree(v21, v22);
          }
        }

        return result;
      }

      __break(1u);
LABEL_16:
      v23 = WebKit::WebProcess::operator new(0x370, a2);
      v6 = WebKit::WebProcess::WebProcess(v23);
      WebKit::WebProcess::singleton(void)::process = v6;
      *(v5 + 2024) = 1;
    }
  }

  v19 = *a3;
  *a3 = 0;
  (*(*v19 + 16))(v19, 1);
  v20 = *(*v19 + 8);

  return v20(v19);
}

IPC::Encoder *WebKit::WebLoaderStrategy::setCaptureExtraNetworkLoadMetricsEnabled(WebKit::WebLoaderStrategy *this, void *a2)
{
  v2 = a2;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v3) + 24);
  v12 = v2;
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 486;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, &v12);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void WebKit::WebLoaderStrategy::responseFromResourceLoadIdentifier(void *a1@<X1>, WebCore::ResourceResponse *a2@<X8>)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v42 = WebKit::WebProcess::operator new(0x370, a1);
    v4 = WebKit::WebProcess::WebProcess(v42);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  IPC::Connection::createSyncMessageEncoder(0xFA3, 0, v56);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56[0], a1);
  v6 = IPC::Connection::sendSyncMessage(&v54, v5, v56[1], v56, 0, INFINITY);
  if (v55)
  {
    if (v55 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    LOBYTE(v43) = v54;
    v48 = 1;
    goto LABEL_37;
  }

  v8 = v54;
  v54 = 0;
  if (*(v8 + 25) == 3194)
  {
    v9 = 11;
  }

  else
  {
    v49[0] = 0;
    v53 = 0;
    IPC::ArgumentCoder<std::tuple<WebCore::ResourceResponse>,void>::decode<IPC::Decoder>(v8, &v43);
    v11 = v47;
    if ((v47 & 1) == 0)
    {
      v10 = *v8;
      v40 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      v41 = *(v8 + 3);
      if (v41)
      {
        if (v40)
        {
          (*(*v41 + 16))(v41, v10);
          v11 = v47;
        }
      }
    }

    if (v53 == v11)
    {
      if (v53)
      {
        WebCore::ResourceResponseBase::operator=(v49, &v43);
        v12 = v45;
        v45 = 0;
        v13 = cf;
        cf = v12;
        if (v13)
        {
          CFRelease(v13);
        }

        v52 = v46;
      }
    }

    else if (v53)
    {
      v14 = cf;
      cf = 0;
      if (v14)
      {
        CFRelease(v14);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v49, v10);
      v53 = 0;
    }

    else
    {
      std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v49, &v43);
      v53 = 1;
    }

    if (v47 == 1)
    {
      v15 = v45;
      v45 = 0;
      if (v15)
      {
        CFRelease(v15);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v43, v10);
    }

    if (v53 == 1)
    {
      v57 = v8;
      std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v58, v49);
      v16 = v57;
      v57 = 0;
      v43 = v16;
      std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(v44, v58);
      v48 = 0;
      v18 = v60;
      v60 = 0;
      if (v18)
      {
        CFRelease(v18);
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v58, v17);
      v19 = v57;
      v57 = 0;
      if (v19)
      {
        IPC::Decoder::~Decoder(v19);
        bmalloc::api::tzoneFree(v38, v39);
      }

      if (v53)
      {
        v20 = cf;
        cf = 0;
        if (v20)
        {
          CFRelease(v20);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(v49, v7);
      }

      goto LABEL_34;
    }

    v9 = 14;
  }

  LOBYTE(v43) = v9;
  v48 = 1;
  IPC::Decoder::~Decoder(v8);
  bmalloc::api::tzoneFree(v21, v22);
LABEL_34:
  if (!v55)
  {
    v23 = v54;
    v54 = 0;
    if (v23)
    {
      IPC::Decoder::~Decoder(v23);
      bmalloc::api::tzoneFree(v34, v35);
    }
  }

LABEL_37:
  v24 = v56[0];
  v56[0] = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v7);
    bmalloc::api::tzoneFree(v32, v33);
  }

  WebCore::ResourceResponseBase::ResourceResponseBase(v49);
  cf = 0;
  v52 = 0;
  v50 = v50 & 0xF1 | 4;
  if (v48)
  {
    std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(&v57, v49);
  }

  else
  {
    std::__tuple_leaf<0ul,WebCore::ResourceResponse,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceResponse,0>(&v57, v44);
  }

  v26 = cf;
  cf = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v49, v25);
  WebCore::ResourceResponse::ResourceResponse(a2, &v57);
  v28 = v59;
  v59 = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v57, v27);
  if (!v48)
  {
    v30 = v46;
    v46 = 0;
    if (v30)
    {
      CFRelease(v30);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v44, v29);
    v31 = v43;
    v43 = 0;
    if (v31)
    {
      IPC::Decoder::~Decoder(v31);
      bmalloc::api::tzoneFree(v36, v37);
    }
  }
}

IPC::Decoder *WebKit::WebLoaderStrategy::intermediateLoadInformationFromResourceLoadIdentifier@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v40 = WebKit::WebProcess::operator new(0x370, a1);
    v4 = WebKit::WebProcess::WebProcess(v40);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  IPC::Connection::createSyncMessageEncoder(0xFA4, 0, v86);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v86[0], a1);
  v6 = IPC::Connection::sendSyncMessage(&v84, v5, v86[1], v86, 0, INFINITY);
  if (v85)
  {
    if (v85 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    LOBYTE(v89) = v84;
    v8 = 1;
    v92 = 1;
    goto LABEL_79;
  }

  v9 = v84;
  v84 = 0;
  if (*(v9 + 25) != 3194)
  {
    LOBYTE(v82[0]) = 0;
    v83 = 0;
    v13 = *(v9 + 1);
    v14 = ((*(v9 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = *v9;
    v16 = v14 - *v9;
    v17 = v13 >= v16;
    v18 = v13 - v16;
    if (v17 && v18 > 7)
    {
      *(v9 + 2) = v14 + 1;
      if (v14)
      {
        v20 = *v14;
        v98 = 0;
        v99 = 0;
        if (v20 >= 0x6D3)
        {
          do
          {
            IPC::Decoder::decode<WebCore::NetworkTransactionInformation>(&v89, v9);
            v28 = v97;
            if (v97 == 1)
            {
              if (HIDWORD(v99) == v99)
              {
                WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NetworkTransactionInformation>(&v98, &v89);
              }

              else
              {
                WebCore::NetworkTransactionInformation::NetworkTransactionInformation(&v98[75 * HIDWORD(v99)], &v89);
                ++HIDWORD(v99);
              }
            }

            if (v97 == 1)
            {
              v29 = v96;
              v96 = 0;
              if (v29)
              {
                WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v29, v15);
              }

              v30 = v95;
              v95 = 0;
              if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v30, v15);
              }

              v31 = cf;
              cf = 0;
              if (v31)
              {
                CFRelease(v31);
              }

              WebCore::ResourceResponseBase::~ResourceResponseBase(v93, v15);
              WebCore::ResourceRequest::~ResourceRequest(&v90);
            }

            if ((v28 & 1) == 0)
            {
              goto LABEL_51;
            }

            --v20;
          }

          while (v20);
          v35 = HIDWORD(v99);
          v26 = v98;
          if (v99 > HIDWORD(v99))
          {
            v36 = v98;
            if (HIDWORD(v99))
            {
              if (HIDWORD(v99) >= 0x6D3A07)
              {
                __break(0xC471u);
                goto LABEL_110;
              }

              v36 = WTF::fastMalloc(0x258, (600 * HIDWORD(v99)));
              LODWORD(v99) = 600 * v35 / 0x258;
              v98 = v36;
              if (v36 != v26)
              {
                WTF::VectorMover<false,WebCore::NetworkTransactionInformation>::move(v26, &v26[75 * v35], v36);
                v36 = v98;
              }
            }

            if (v26)
            {
              if (v36 == v26)
              {
                v98 = 0;
                LODWORD(v99) = 0;
              }

              WTF::fastFree(v26, v15);
LABEL_71:
              v26 = v98;
            }

            else
            {
              v26 = v36;
            }
          }

          v27 = v99;
        }

        else
        {
          if (v20)
          {
            v21 = WTF::fastMalloc(v14, (600 * v20));
            LODWORD(v99) = 600 * v20 / 0x258u;
            v98 = v21;
            while (1)
            {
              IPC::Decoder::decode<WebCore::NetworkTransactionInformation>(&v89, v9);
              v22 = v97;
              if (v97 == 1)
              {
                if (HIDWORD(v99) == v99)
                {
                  WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::NetworkTransactionInformation>(&v98, &v89);
                }

                else
                {
                  WebCore::NetworkTransactionInformation::NetworkTransactionInformation(&v98[75 * HIDWORD(v99)], &v89);
                  ++HIDWORD(v99);
                }
              }

              if (v97 == 1)
              {
                v23 = v96;
                v96 = 0;
                if (v23)
                {
                  WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v23, v15);
                }

                v24 = v95;
                v95 = 0;
                if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v24, v15);
                }

                v25 = cf;
                cf = 0;
                if (v25)
                {
                  CFRelease(v25);
                }

                WebCore::ResourceResponseBase::~ResourceResponseBase(v93, v15);
                WebCore::ResourceRequest::~ResourceRequest(&v90);
              }

              if ((v22 & 1) == 0)
              {
                break;
              }

              if (!--v20)
              {
                goto LABEL_71;
              }
            }

LABEL_51:
            WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v15);
            goto LABEL_52;
          }

          v26 = 0;
          v27 = 0;
        }

        v81 = v27;
        v98 = 0;
        v99 = 0;
        LOBYTE(v101) = 1;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v98, v15);
        *&v41 = 0;
        v80 = v41;
        v100 = v41;
        v88 = 1;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100, v42);
        v87 = v80;
        v83 = 1;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v43);
        v82[0] = 0;
        v82[1] = 0;
        v100 = 0uLL;
        v89 = v9;
        v90 = v26;
        v101 = 0;
        v91 = v81;
        v92 = 0;
        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100 + 2, v44);
        v46 = v100;
        *&v100 = 0;
        if (v46)
        {
          IPC::Decoder::~Decoder(v46);
          bmalloc::api::tzoneFree(v76, v77);
        }

        WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v82, v45);
        v8 = 0;
        goto LABEL_76;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      v78 = *(v9 + 3);
      if (v78)
      {
        if (v13)
        {
          (*(*v78 + 16))(v78);
          v13 = *(v9 + 1);
        }
      }

      else
      {
        v13 = 0;
      }
    }

    *v9 = 0;
    *(v9 + 1) = 0;
    v79 = *(v9 + 3);
    if (v79 && v13)
    {
      (*(*v79 + 16))(v79);
    }

LABEL_52:
    v32 = *v9;
    v33 = *(v9 + 1);
    *v9 = 0;
    *(v9 + 1) = 0;
    v34 = *(v9 + 3);
    if (v34 && v33)
    {
      (*(*v34 + 16))(v34, v32);
      v37 = *v9;
      v38 = *(v9 + 1);
      v39 = *(v9 + 3);
      *v9 = 0;
      *(v9 + 1) = 0;
      if (v39 && v38)
      {
        (*(*v39 + 16))(v39, v37);
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 1) = 0;
    }

    v10 = 14;
    goto LABEL_8;
  }

  v10 = 11;
LABEL_8:
  LOBYTE(v89) = v10;
  v92 = 1;
  IPC::Decoder::~Decoder(v9);
  bmalloc::api::tzoneFree(v11, v12);
  v8 = 1;
LABEL_76:
  if (!v85)
  {
    v47 = v84;
    v84 = 0;
    if (v47)
    {
      IPC::Decoder::~Decoder(v47);
      bmalloc::api::tzoneFree(v72, v73);
    }
  }

LABEL_79:
  v48 = v86[0];
  v86[0] = 0;
  if (v48)
  {
    IPC::Encoder::~Encoder(v48, v7);
    bmalloc::api::tzoneFree(v70, v71);
  }

  v87 = 0uLL;
  v49 = &v87 + 2;
  if (v8)
  {
    v50 = &v87;
  }

  else
  {
    v50 = &v90;
  }

  v51 = *v50;
  *v50 = 0;
  *&v100 = v51;
  if (!v8)
  {
    v49 = &v91;
  }

  v52 = *v49;
  *v49 = 0;
  v53 = &v87 + 12;
  if (!v8)
  {
    v53 = &v91 + 4;
  }

  v54 = *v53;
  *v53 = 0;
  *(&v100 + 1) = __PAIR64__(v54, v52);
  WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v7);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = v54;
  if (v54)
  {
    if (v54 < 0x6D3A07)
    {
      v56 = WTF::fastMalloc(0x6D3A07, (600 * v54));
      *(a2 + 8) = 600 * v54 / 0x258;
      *a2 = v56;
      v57 = &v51[75 * v54];
      v58 = v56 + 26;
      v59 = v51 + 26;
      do
      {
        v60 = v59 - 26;
        *(v58 - 208) = *(v59 - 208);
        WebCore::ResourceRequest::ResourceRequest(v58 - 25, (v59 - 25));
        WebCore::ResourceResponse::ResourceResponse(v58, v59);
        v61 = *(v59 + 35);
        *(v58 + 33) = *(v59 + 33);
        *(v58 + 35) = v61;
        v62 = *(v59 + 37);
        v63 = *(v59 + 39);
        v64 = *(v59 + 41);
        v58[43] = v59[43];
        *(v58 + 39) = v63;
        *(v58 + 41) = v64;
        *(v58 + 37) = v62;
        v65 = v59[44];
        if (v65)
        {
          atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
        }

        v58[44] = v65;
        v66 = *(v59 + 45);
        v58[47] = v59[47];
        *(v58 + 45) = v66;
        v67 = v59[48];
        if (v67)
        {
          ++*v67;
        }

        v58[48] = v67;
        v58 += 75;
        v59 += 75;
      }

      while (v60 + 75 != v57);
      v8 = v92;
      goto LABEL_97;
    }

    __break(0xC471u);
LABEL_110:
    JUMPOUT(0x19E3035F0);
  }

LABEL_97:
  result = WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100, v55);
  if (!v8)
  {
    WTF::Vector<WebCore::NetworkTransactionInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v90, v69);
    result = v89;
    v89 = 0;
    if (result)
    {
      IPC::Decoder::~Decoder(result);
      return bmalloc::api::tzoneFree(v74, v75);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebLoaderStrategy::networkMetricsFromResourceLoadIdentifier@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = &dword_1EB01E000;
  {
    v6 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v33 = WebKit::WebProcess::operator new(0x370, a1);
    v6 = WebKit::WebProcess::WebProcess(v33);
    WebKit::WebProcess::singleton(void)::process = v6;
  }

  v7 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v6) + 24);
  IPC::Connection::createSyncMessageEncoder(0xFA7, 0, v49);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49[0], a1);
  v8 = IPC::Connection::sendSyncMessage(v34, v7, v49[1], v49, 0, INFINITY);
  if (LOBYTE(v34[1]))
  {
    if (LOBYTE(v34[1]) != 1)
    {
      mpark::throw_bad_variant_access(v8);
    }

    v10 = LOBYTE(v34[0]);
    v11 = 1;
    goto LABEL_16;
  }

  v10 = v34[0];
  v34[0] = 0;
  if (*(v10 + 25) == 3194)
  {
    v12 = 11;
LABEL_12:
    IPC::Decoder::~Decoder(v10);
    bmalloc::api::tzoneFree(v14, v15);
    v11 = 1;
    v10 = v12;
    goto LABEL_13;
  }

  IPC::ArgumentCoder<std::tuple<WebCore::NetworkLoadMetrics>,void>::decode<IPC::Decoder>(v10, &v38);
  v13 = v48;
  if ((v48 & 1) == 0)
  {
    v9 = *v10;
    v31 = *(v10 + 1);
    *v10 = 0;
    *(v10 + 1) = 0;
    v32 = *(v10 + 3);
    if (v32)
    {
      if (v31)
      {
        (*(*v32 + 16))(v32, v9);
        v13 = v48;
      }
    }
  }

  if (!v13)
  {
    v12 = 14;
    goto LABEL_12;
  }

  v11 = 0;
  *v58 = *v43;
  v7 = v44;
  *&v58[15] = *&v43[15];
  v5 = v47;
  v37 = v46;
  v2 = v38;
  v56 = v41;
  v57 = v42;
  v54 = v39;
  v55 = v40;
  v36 = v45;
LABEL_13:
  if (!LOBYTE(v34[1]))
  {
    v16 = v34[0];
    v34[0] = 0;
    if (v16)
    {
      IPC::Decoder::~Decoder(v16);
      bmalloc::api::tzoneFree(v27, v28);
    }
  }

LABEL_16:
  v17 = v49[0];
  v49[0] = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v9);
    bmalloc::api::tzoneFree(v25, v26);
  }

  WebCore::NetworkLoadMetrics::NetworkLoadMetrics(&v38);
  if (v11)
  {
    v53[0] = *v43;
    v19 = v7;
    v7 = v44;
    *(v53 + 15) = *&v43[15];
    v20 = v5;
    v5 = v47;
    v35 = v46;
    v2 = v38;
    v51 = v41;
    v52 = v42;
    *v49 = v39;
    v50 = v40;
    *v34 = v45;
    v44 = 0;
    v47 = 0;
  }

  else
  {
    v51 = v56;
    v52 = v57;
    v53[0] = *v58;
    *(v53 + 15) = *&v58[15];
    *v49 = v54;
    v50 = v55;
    *v34 = v36;
    v35 = v37;
    v21 = v47;
    v47 = 0;
    if (v21)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v21, v18);
    }

    v20 = 0;
    v19 = 0;
  }

  result = v44;
  v44 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v18);
  }

  *a2 = v2;
  v23 = v52;
  *(a2 + 33) = v51;
  *(a2 + 49) = v23;
  *(a2 + 65) = v53[0];
  *(a2 + 80) = *(v53 + 15);
  v24 = v50;
  *(a2 + 1) = *v49;
  *(a2 + 17) = v24;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a2 + 88) = v7;
  *(a2 + 96) = *v34;
  *(a2 + 112) = v35;
  if (v5)
  {
    ++*v5;
    result = WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v5, v18);
  }

  *(a2 + 120) = v5;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v7, v18);
    if (v11)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  if (v20)
  {
    result = WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v20, v18);
    if (v19)
    {
LABEL_35:
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v19, v18);
      }
    }
  }

  else if (v19)
  {
    goto LABEL_35;
  }

  if (v10)
  {
    IPC::Decoder::~Decoder(v10);
    return bmalloc::api::tzoneFree(v29, v30);
  }

  return result;
}

IPC::Encoder *WebKit::WebLoaderStrategy::setResourceLoadSchedulingMode(uint64_t a1, void *a2, char a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v5) + 24);
  v7 = *(WebKit::WebPage::fromCorePage(a2) + 48);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 491;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  IPC::Encoder::encodeHeader(v9);
  v15 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, a3);
  IPC::Connection::sendMessageImpl(v6, &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

WTF *WebKit::WebLoaderStrategy::prioritizeResourceLoads(uint64_t a1, unint64_t a2)
{
  v2 = WTF::Vector<WebCore::SubresourceLoader *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::map<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebLoaderStrategy::prioritizeResourceLoads(WTF::Vector<WebCore::SubresourceLoader *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::$_0>(&v9, a2);
  v4 = WebKit::WebProcess::singleton(v2, v3);
  v5 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v4) + 24);
  v8 = &v9;
  IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PrioritizeResourceLoads>(v5, &v8);
  result = v9;
  if (v9)
  {
    v9 = 0;
    v10 = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkConnectionToWebProcess::PrioritizeResourceLoads>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 467;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v4, *a2);
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

unint64_t *WebKit::WebResourceInterceptController::beginInterceptingResponse(uint64_t **a1, uint64_t a2)
{
  v23 = 0u;
  v24 = 0u;
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E303E30);
  }

  v4 = *a1;
  if (!*a1)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1);
    v4 = *a1;
  }

  v5 = *(v4 - 2);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = &v4[5 * v9];
  v11 = *v10;
  if (*v10)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      if (v11 == a2)
      {
        v18 = *(v10 + 1);
        v10[1] = 0;
        v10[2] = 0;
        v23 = v18;
        v19 = v10[3];
        v10[3] = 0;
        *&v24 = v19;
        LODWORD(v19) = *(v10 + 8);
        *(v10 + 8) = 0;
        DWORD2(v24) = v19;
        return WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v23, a2);
      }

      if (v11 == -1)
      {
        v12 = v10;
      }

      v9 = (v9 + v13) & v5;
      v10 = &v4[5 * v9];
      v11 = *v10;
      ++v13;
    }

    while (*v10);
    if (v12)
    {
      v12[4] = 0;
      *v12 = 0u;
      *(v12 + 1) = 0u;
      --*(*a1 - 4);
      v10 = v12;
    }
  }

  *v10 = a2;
  v27 = 0;
  *&v24 = 0;
  DWORD2(v24) = 0;
  v23 = 0uLL;
  v14 = *(v10 + 1);
  v10[1] = 0;
  v10[2] = 0;
  v25 = v14;
  v15 = v10[3];
  v10[3] = 0;
  v26 = v15;
  LODWORD(v15) = *(v10 + 8);
  *(v10 + 8) = 0;
  LODWORD(v27) = v15;
  WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v25, a2);
  v16 = *a1;
  if (*a1)
  {
    v17 = *(v16 - 3) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 3) = v17;
  v20 = (*(v16 - 4) + v17);
  v21 = *(v16 - 1);
  if (v21 > 0x400)
  {
    if (v21 > 2 * v20)
    {
      return WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v23, a2);
    }

    goto LABEL_19;
  }

  if (3 * v21 <= 4 * v20)
  {
LABEL_19:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a1);
  }

  return WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v23, a2);
}

void WebKit::WebResourceInterceptController::continueResponse(unint64_t **a1, uint64_t a2)
{
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a1, a2);
  v4 = v3;
  v5 = *a1;
  if (*a1)
  {
    v5 += 40 * *(v5 - 4);
  }

  if (v5 == v3)
  {
    v11 = 0u;
    v12 = 0u;
    memset(v13, 0, sizeof(v13));
    WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(v13, v3);
LABEL_17:
    WTF::Deque<WTF::Function<void ()(void)>,0ul>::~Deque(&v11, v4);
    return;
  }

  *(&v12 + 1) = 0;
  v6 = v3[1];
  v7 = v3[2];
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v3[1] = 0;
  v3[2] = 0;
  v8 = v3[3];
  *&v12 = v8;
  v3[3] = 0;
  v9 = *(v3 + 8);
  DWORD2(v12) = *(v3 + 8);
  *(v3 + 8) = 0;
  if (*a1)
  {
    v10 = &(*a1)[5 * *(*a1 - 1)];
    if (v10 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    v10 = 0;
  }

  if (v10 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, v3);
  }

LABEL_12:
  if (v6 == v7)
  {
    goto LABEL_17;
  }

  while (v6 < v9)
  {
    (*(**(v8 + 8 * v6) + 16))(*(v8 + 8 * v6), v4);
    v6 += v9 + 1;
    do
    {
      v6 -= v9;
    }

    while (v6 >= v9);
    if (v7 == v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t *WebKit::WebResourceInterceptController::defer(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a1, a2);
  v6 = *a1;
  if (*a1)
  {
    v6 += 40 * *(v6 - 4);
  }

  if (v6 != result)
  {
    v7 = (result + 1);

    return WTF::Deque<WTF::Function<void ()(void)>,0ul>::append<WTF::Function<void ()(void)>>(v7, a3);
  }

  return result;
}

uint64_t WebKit::WebResourceLoader::WebResourceLoader(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F112C6F8;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 16) = v4;
  v5 = *a3;
  v6 = *(a3 + 4);
  *(a1 + 40) = a3[1];
  *(a1 + 24) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = WTF::MonotonicTime::now(a1);
  *(a1 + 88) = v8;
  *(a1 + 96) = 0;
  v9 = WebCore::logClient(v7);
  v10 = *v9;
  if (*v9)
  {
    if ((*(*v10 + 24))(*v9))
    {
      if (*(a1 + 56) == 1)
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *(a1 + 48);
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
      }

      os_unfair_lock_lock((v10 + 16));
      v15 = *(v10 + 8);
      v50 = v12;
      v51 = v11;
      v52 = v13;
      v16 = *(v10 + 24);
      v17 = *(v15 + 128);
      v18 = INFINITY;
      if (fabs(v17) != INFINITY)
      {
        WTF::ApproximateTime::now(v14);
        v18 = v17 + v19;
      }

      if (*(v15 + 64) == v16)
      {
LABEL_8:
        IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
        if (buf[16] == 1)
        {
          v20 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E304458);
          }

          v21 = *buf;
          **buf = 312;
          v22 = v21 + 2;
          v23 = -v22 & 7 | 8;
          v24 = v20 - 2 - v23;
          if (v20 - 2 >= v23)
          {
            *(v22 + (-v22 & 7)) = v50;
            v25 = v22 + v23;
            v26 = -v25 & 7 | 8;
            v27 = v24 - v26;
            if (v24 >= v26)
            {
              *(v25 + (-v25 & 7)) = v51;
              v28 = v25 + v26;
              v29 = -v28 & 7 | 8;
              if (v27 >= v29)
              {
                *(v28 + (-v28 & 7)) = v52;
                v30 = v20 - v27 + v29;
                if (v30 <= 0x10)
                {
                  v30 = 16;
                }

                v31 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v32 = *(v15 + 72);
                if (v31 + 16 >= v32)
                {
                  v31 = 0;
                }

                v33 = v31 + v30;
                if (v32 <= v33)
                {
                  v33 = 0;
                }

                *(v15 + 88) = v33;
                v34 = *(v15 + 80);
                if (*(v34 + 8) > 0xFFuLL)
                {
                  if (atomic_exchange((*(v34 + 16) + 128), v33) == 0x80000000 || *(v15 + 124))
                  {
                    if (*(v15 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(v15 + 100));
                    }

                    *(v15 + 124) = 0;
                  }

                  goto LABEL_22;
                }

LABEL_46:
                __break(1u);
              }
            }
          }

          if ((buf[16] & 1) == 0)
          {
            goto LABEL_46;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v15, *buf, *&buf[8]);
          IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_CONSTRUCTOR>(*(v15 + 8), &v50, v16);
        }

LABEL_22:
        os_unfair_lock_unlock((v10 + 16));
        return a1;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v15 + 72, buf, v18);
      if (buf[16] != 1)
      {
        goto LABEL_22;
      }

      v40 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v41 = *buf;
        **buf = 3198;
        v42 = v41 + 2;
        if (v40 - 2 < (-v42 & 7 | 8uLL))
        {
          goto LABEL_22;
        }

        v43 = -v42 & 7;
        *(v42 + v43) = v16;
        v44 = 6;
        if (v43 > 6)
        {
          v44 = v43;
        }

        v45 = v44 + 10;
        v46 = (*(v15 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v47 = *(v15 + 72);
        if (v46 + 16 >= v47)
        {
          v46 = 0;
        }

        v48 = v45 + v46;
        if (v47 <= v48)
        {
          v48 = 0;
        }

        *(v15 + 88) = v48;
        v49 = *(v15 + 80);
        if (*(v49 + 8) <= 0xFFuLL)
        {
          goto LABEL_46;
        }

        IPC::StreamClientConnection::wakeUpServerBatched(v15, atomic_exchange((*(v49 + 16) + 128), v48) == 0x80000000);
        *(v15 + 64) = v16;
        goto LABEL_8;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E304438);
  }

  v36 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56) == 1)
    {
      v38 = *(a1 + 32);
      v37 = *(a1 + 40);
      v39 = *(a1 + 48);
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
    }

    *buf = 134218496;
    *&buf[4] = v38;
    *&buf[12] = 2048;
    *&buf[14] = v37;
    v54 = 2048;
    v55 = v39;
    _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::WebResourceLoader", buf, 0x20u);
  }

  return a1;
}

void WebKit::WebResourceLoader::~WebResourceLoader(WebKit::WebResourceLoader *this, void *a2)
{
  *this = &unk_1F112C6F8;
  v3 = *(this + 8);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebResourceLoader::~WebResourceLoader(this, a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::WebResourceLoader::messageSenderConnection(WebKit::WebResourceLoader *this, void *a2)
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

uint64_t WebKit::WebResourceLoader::messageSenderDestinationID(WebKit::WebResourceLoader *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0)
  {
    result = 95;
    __break(0xC471u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = *(this + 2);
  if (result)
  {
    ++*(result + 16);
  }

  v4 = *(result + 752);
  if (!v4)
  {
    goto LABEL_10;
  }

  if (*(result + 16) == 1)
  {
    (*(*result + 8))(result);
  }

  else
  {
    --*(result + 16);
  }

  return v4;
}

uint64_t WebKit::WebResourceLoader::mainFrameMainResource(WebKit::WebResourceLoader *this)
{
  if (this)
  {
    ++*(this + 4);
  }

  v2 = WebCore::ResourceLoader::frame(this);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2;
  ++*(v2 + 16);
  v4 = *(v2 + 120);
  if (v4)
  {
    v4 = *(v4 + 8);
  }

  if (v4 == v2)
  {
    v5 = WebCore::ResourceLoader::frameLoader(this);
    if (v5)
    {
      v6 = v5;
      WebCore::FrameLoader::ref(v5);
      v7 = *(this + 94);
      if (v7)
      {
        if (*(v6 + 6) == v7)
        {
          v8 = *(v6 + 56);
        }

        else
        {
          v8 = 0;
        }

        WebCore::FrameLoader::deref(v6);
        goto LABEL_13;
      }

      __break(1u);
LABEL_23:
      v8 = 0;
      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_13:
  if (v3[4] == 1)
  {
    (*(*v3 + 8))(v3);
  }

  else
  {
    --v3[4];
  }

LABEL_15:
  if (this)
  {
    if (*(this + 4) == 1)
    {
      (*(*this + 8))(this);
    }

    else
    {
      --*(this + 4);
    }
  }

  return v8;
}

uint64_t WebKit::WebResourceLoader::willSendRequest(uint64_t a1, WebCore::ResourceRequestBase *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  ++*(a1 + 8);
  v9 = *(a1 + 16);
  if (v9)
  {
    ++*(v9 + 4);
  }

  v10 = *a3;
  *a3 = 0;
  *buf = v10;
  WebCore::ResourceRequestBase::setHTTPBody();
  v11 = *buf;
  *buf = 0;
  if (v11)
  {
    v11 = WTF::RefCounted<WebCore::FormData>::deref(v11);
  }

  v12 = WebCore::logClient(v11);
  v13 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v12);
  if (v13)
  {
    if (*(a1 + 56) == 1)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v16 = 0;
    }

    WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST(v13, v14, v15, v16);
  }

  else
  {
    v27 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 56) == 1)
      {
        v29 = *(a1 + 32);
        v28 = *(a1 + 40);
        v30 = *(a1 + 48);
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
      }

      *buf = 134218496;
      *&buf[4] = v29;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      *&buf[22] = 2048;
      v33 = v30;
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::willSendRequest", buf, 0x20u);
    }
  }

  v17 = WebCore::ResourceLoader::frame(v9);
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 16);
    *(v17 + 16) = v19 + 1;
    v20 = *(v17 + 24);
    if (v20)
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        ++*(v21 + 8);
        WebCore::ResourceRequestBase::url(a2);
        WebKit::WebResourceLoader::mainFrameMainResource(*(a1 + 16));
        if ((WebCore::Page::allowsLoadFromURL() & 1) == 0)
        {
          WebCore::ResourceRequest::ResourceRequest(buf);
          WebCore::ResourceRequest::operator=(a2, buf);
          WebCore::ResourceRequest::~ResourceRequest(buf);
        }

        WTF::RefCounted<WebCore::Page>::deref((v21 + 8));
        v19 = v18[4] - 1;
      }
    }

    if (v19)
    {
      v18[4] = v19;
    }

    else
    {
      (*(*v18 + 8))(v18);
    }
  }

  *buf = a1;
  v22 = (*(a1 + 8) + 1);
  *(a1 + 8) = v22;
  v23 = *a5;
  *a5 = 0;
  v24 = WTF::fastMalloc(v22, 0x20);
  *v24 = &unk_1F112C888;
  v24[1] = a1;
  v24[2] = a1;
  v24[3] = v23;
  *&buf[8] = 0;
  *&buf[16] = 0;
  v31 = v24;
  (*(*v9 + 192))(v9, a2, a4, &v31);
  v25 = v31;
  v31 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  result = WebKit::WebResourceLoader::willSendRequest(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)::$_0::~$_0(buf);
  if (*(v9 + 4) == 1)
  {
    result = (*(*v9 + 8))(v9);
  }

  else
  {
    --*(v9 + 4);
  }

  if (*(a1 + 8) == 1)
  {
    return (*(*a1 + 8))(a1);
  }

  --*(a1 + 8);
  return result;
}

void WebKit::LogClient::WEBRESOURCELOADER_WILLSENDREQUEST(os_unfair_lock_s *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v8 = *&this[2]._os_unfair_lock_opaque;
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::WEBRESOURCELOADER_WILLSENDREQUEST,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v9, *&this[6]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(this + 4);
}

uint64_t WebKit::WebResourceLoader::willSendRequest(WebCore::ResourceRequest &&,IPC::FormDataReference &&,WebCore::ResourceResponse &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &,BOOL)> &&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  return a1;
}

uint64_t WebKit::WebResourceLoader::didSendData(WebKit::WebResourceLoader *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    ++v1[4];
  }

  result = (*(*v1 + 200))(v1);
  if (v1[4] == 1)
  {
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    --v1[4];
  }

  return result;
}

IPC::Encoder *WebKit::WebResourceLoader::didReceiveResponse(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v99 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  if (v10)
  {
    ++*(v10 + 16);
  }

  v11 = WebCore::logClient(a1);
  v12 = *v11;
  if (!*v11)
  {
    v70 = qword_1ED6416F0;
    if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 56) == 1)
      {
        v72 = *(a1 + 32);
        v71 = *(a1 + 40);
        v12 = *(a1 + 48);
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v12 = 0;
      }

      *buf = 134218752;
      *&buf[4] = v72;
      *&buf[12] = 2048;
      *&buf[14] = v71;
      *&buf[22] = 2048;
      v96 = v12;
      v97 = 1024;
      v98 = WebCore::ResourceResponseBase::httpStatusCode(a2);
      _os_log_impl(&dword_19D52D000, v70, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveResponse: (httpStatusCode=%d)", buf, 0x26u);
    }

    goto LABEL_26;
  }

  if (((*(*v12 + 24))(*v11) & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_89;
  }

  v90 = a3;
  v91 = a4;
  if (*(a1 + 56) != 1)
  {
    goto LABEL_83;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  for (i = *(a1 + 48); ; i = 0)
  {
    v92 = a2;
    v16 = WebCore::ResourceResponseBase::httpStatusCode(a2);
    os_unfair_lock_lock((v12 + 16));
    a2 = *(v12 + 8);
    v18 = *(v12 + 24);
    v19 = *(a2 + 128);
    v20 = INFINITY;
    if (fabs(v19) != INFINITY)
    {
      WTF::ApproximateTime::now(v17);
      v20 = v19 + v21;
    }

    if (*(a2 + 64) != v18)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, buf, v20);
      if (buf[16] != 1)
      {
        goto LABEL_25;
      }

      v73 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
LABEL_89:
        JUMPOUT(0x19E30550CLL);
      }

      v74 = *buf;
      **buf = 3198;
      v75 = v74 + 2;
      if (v73 - 2 < (-v75 & 7 | 8uLL))
      {
        goto LABEL_25;
      }

      v76 = -v75 & 7;
      *(v75 + v76) = v18;
      v77 = 6;
      if (v76 > 6)
      {
        v77 = v76;
      }

      v78 = v77 + 10;
      v79 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v80 = *(a2 + 72);
      if (v79 + 16 >= v80)
      {
        v79 = 0;
      }

      v81 = v78 + v79;
      if (v80 <= v81)
      {
        v81 = 0;
      }

      *(a2 + 88) = v81;
      v82 = *(a2 + 80);
      if (*(v82 + 8) <= 0xFFuLL)
      {
        goto LABEL_82;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v82 + 16) + 128), v81) == 0x80000000);
      *(a2 + 64) = v18;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, buf, v20);
    if (buf[16] == 1)
    {
      v23 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E30552CLL);
      }

      v24 = *buf;
      **buf = 319;
      v25 = v24 + 2;
      v26 = -v25 & 7 | 8;
      v27 = v23 - 2 - v26;
      if (v23 - 2 < v26 || (*(v25 + (-v25 & 7)) = v13, v28 = v25 + v26, v29 = -v28 & 7 | 8, v30 = v27 - v29, v27 < v29) || (*(v28 + (-v28 & 7)) = v14, v31 = v28 + v29, v32 = -(v28 + v29), v33 = v32 & 7 | 8, v34 = v30 - v33, v30 < v33) || (*(v31 + (v32 & 7)) = i, v35 = v31 + v33, v36 = -v35 & 3 | 4, v34 < v36))
      {
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_82;
        }

        if (*&buf[8] <= 1uLL)
        {
          __break(0xC471u);
          JUMPOUT(0x19E30554CLL);
        }

        **buf = 3197;
        v60 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v61 = *(a2 + 72);
        if (v60 + 16 >= v61)
        {
          v60 = 0;
        }

        v62 = v60 + 16;
        v63 = v61 <= v62 ? 0 : v62;
        *(a2 + 88) = v63;
        v64 = *(a2 + 80);
        if (*(v64 + 8) <= 0xFFuLL)
        {
          goto LABEL_82;
        }

        atomic_exchange((*(v64 + 16) + 128), v63);
        *(a2 + 124) = 0;
        v89 = *(a2 + 8);
        v65 = IPC::Encoder::operator new(0x238, v22);
        *v65 = 319;
        *(v65 + 2) = 0;
        *(v65 + 3) = 0;
        *(v65 + 1) = v18;
        *(v65 + 68) = 0;
        *(v65 + 70) = 0;
        *(v65 + 69) = 0;
        IPC::Encoder::encodeHeader(v65);
        v94 = v65;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, v13);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, v14);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, i);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v65, v16);
        IPC::Connection::sendMessageImpl(v89, &v94, 1, 0);
        v67 = v94;
        v94 = 0;
        if (v67)
        {
          IPC::Encoder::~Encoder(v67, v66);
          bmalloc::api::tzoneFree(v68, v69);
        }
      }

      else
      {
        *(v35 + (-v35 & 3)) = v16;
        v37 = v23 - v34 + v36;
        if (v37 <= 0x10)
        {
          v37 = 16;
        }

        v38 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v39 = *(a2 + 72);
        if (v38 + 16 >= v39)
        {
          v38 = 0;
        }

        v40 = v38 + v37;
        if (v39 <= v40)
        {
          v40 = 0;
        }

        *(a2 + 88) = v40;
        v41 = *(a2 + 80);
        if (*(v41 + 8) <= 0xFFuLL)
        {
          goto LABEL_82;
        }

        if (atomic_exchange((*(v41 + 16) + 128), v40) == 0x80000000 || *(a2 + 124))
        {
          if (*(a2 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a2 + 100));
          }

          *(a2 + 124) = 0;
        }
      }
    }

LABEL_25:
    os_unfair_lock_unlock((v12 + 16));
    a2 = v92;
    a3 = v90;
    a4 = v91;
LABEL_26:
    ++*(a1 + 8);
    if (*(a5 + 128) == 1)
    {
      v47 = *(a1 + 96);
      *(a5 + 80) = v47;
      v49 = WTF::fastMalloc(v47, 0x88);
      *v49 = 1;
      v50 = *(a5 + 16);
      *(v49 + 1) = *a5;
      *(v49 + 3) = v50;
      v52 = *(a5 + 48);
      v51 = *(a5 + 64);
      v53 = *(a5 + 80);
      *(v49 + 5) = *(a5 + 32);
      v49[11] = v53;
      *(v49 + 9) = v51;
      *(v49 + 7) = v52;
      v54 = *(a5 + 88);
      *(a5 + 88) = 0;
      v49[12] = v54;
      v55 = *(a5 + 96);
      v49[15] = *(a5 + 112);
      *(v49 + 13) = v55;
      v56 = *(a5 + 120);
      *(a5 + 120) = 0;
      v49[16] = v56;
      v57 = *(a2 + 112);
      *(a2 + 112) = v49;
      if (v57)
      {
        WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v57, v48);
      }
    }

    if (a3)
    {
      v83 = WebKit::WebResourceLoader::mainFrameMainResource(*(a1 + 16));
      if (v83)
      {
        *(WebKit::WebProcess::singleton(v83, v84) + 816) = 1;
      }
    }

    v94 = 0;
    if (a4)
    {
      v58 = (*(a1 + 8) + 1);
      *(a1 + 8) = v58;
      v59 = WTF::fastMalloc(v58, 0x18);
      *v59 = &unk_1F112C8B0;
      v59[1] = a1;
      v59[2] = a1;
      v94 = v59;
    }

    v42 = WebCore::ResourceLoader::frame(v10);
    v44 = v42;
    if (!v42)
    {
      break;
    }

    ++v42[4];
    v45 = atomic_load(MEMORY[0x1E69E2708]);
    if (!v45 || !WebCore::InspectorInstrumentationWebKit::shouldInterceptResponseInternal(v42, a2, v43))
    {
      goto LABEL_32;
    }

    v85 = *(v10 + 752);
    if (v85)
    {
      WebKit::WebResourceInterceptController::beginInterceptingResponse((a1 + 64), *(v10 + 752));
      v86 = (*(a1 + 8) + 1);
      *(a1 + 8) = v86;
      *&buf[16] = v85;
      v87 = v94;
      v94 = 0;
      *buf = a1;
      v88 = WTF::fastMalloc(v86, 0x28);
      *v88 = &unk_1F112C8D8;
      v88[1] = a1;
      v88[2] = a1;
      v88[3] = v85;
      *&buf[8] = 0;
      v96 = 0;
      v88[4] = v87;
      v93 = v88;
      WebCore::InspectorInstrumentationWebKit::interceptResponseInternal();
      if (v93)
      {
        (*(*v93 + 8))(v93);
      }

      WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1::~$_1(buf);
      goto LABEL_33;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v14 = 0;
    v13 = 0;
  }

  atomic_load(MEMORY[0x1E69E2708]);
LABEL_32:
  (*(*v10 + 208))(v10, a2, &v94);
  if (v44)
  {
LABEL_33:
    if (v44[4] == 1)
    {
      (*(*v44 + 8))(v44);
    }

    else
    {
      --v44[4];
    }
  }

  result = v94;
  v94 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 8) == 1)
  {
    result = (*(*a1 + 8))(a1);
  }

  else
  {
    --*(a1 + 8);
  }

  if (*(v10 + 16) == 1)
  {
    return (*(*v10 + 8))(v10);
  }

  --*(v10 + 16);
  return result;
}

uint64_t WebKit::WebResourceLoader::didReceiveResponse(WebCore::ResourceResponse &&,WebKit::PrivateRelayed,BOOL,std::optional<WebCore::NetworkLoadMetrics> &&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    if (v3[2] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[2];
    }
  }

  return a1;
}

unsigned int *WebKit::WebResourceLoader::didReceiveData(WebCore *a1, IPC::SharedBufferReference *this, uint64_t a3)
{
  v5 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 2);
  if (v6)
  {
    ++v6[4];
  }

  v7 = *(v6 + 94);
  if (!v7)
  {
    goto LABEL_72;
  }

  if (*(a1 + 8))
  {
    a1 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1 + 8, v7);
    if (a1)
    {
      v54 = *(v6 + 94);
      if (v54)
      {
        v55 = (*(v5 + 2) + 1);
        *(v5 + 2) = v55;
        v56 = *this;
        *buf = v5;
        *&buf[16] = v56;
        v65 = a3;
        v59 = *(this + 8);
        *(this + 8) = 0u;
        v57 = WTF::fastMalloc(v55, 0x38);
        *v57 = &unk_1F112C928;
        v57[1] = v5;
        *&buf[8] = 0;
        v57[2] = v5;
        v57[3] = v56;
        *(v57 + 2) = v59;
        v64 = 0u;
        v57[6] = a3;
        v60 = v57;
        WebKit::WebResourceInterceptController::defer(v5 + 8, v54, &v60);
        v58 = v60;
        v60 = 0;
        if (v58)
        {
          (*(*v58 + 8))(v58);
        }

        result = WebKit::WebResourceLoader::didReceiveData(IPC::SharedBufferReference &&,unsigned long long)::$_0::~$_0(buf);
        goto LABEL_18;
      }

LABEL_72:
      __break(1u);
    }
  }

  if (!*(v5 + 9))
  {
    v14 = WebCore::logClient(a1);
    v15 = *v14;
    if (!*v14)
    {
      v40 = qword_1ED6416F0;
      if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v5 + 56) == 1)
        {
          v42 = *(v5 + 4);
          v41 = *(v5 + 5);
          v43 = *(v5 + 6);
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
        }

        *buf = 134218496;
        *&buf[4] = v42;
        *&buf[12] = 2048;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        *&v64 = v43;
        _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didReceiveData: Started receiving data", buf, 0x20u);
      }

      goto LABEL_6;
    }

    if ((*(*v15 + 24))(*v14))
    {
      if (*(v5 + 56) == 1)
      {
        v17 = *(v5 + 4);
        v16 = *(v5 + 5);
        v18 = *(v5 + 6);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      os_unfair_lock_lock((v15 + 16));
      v20 = *(v15 + 8);
      v60 = v17;
      v61 = v16;
      v62 = v18;
      v21 = *(v15 + 24);
      v22 = *(v20 + 128);
      v23 = INFINITY;
      if (fabs(v22) != INFINITY)
      {
        WTF::ApproximateTime::now(v19);
        v23 = v22 + v24;
      }

      if (*(v20 + 64) == v21)
      {
LABEL_27:
        IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, buf, v23);
        if (buf[16] == 1)
        {
          v25 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E305CBCLL);
          }

          v26 = *buf;
          **buf = 316;
          v27 = v26 + 2;
          v28 = -v27 & 7 | 8;
          v29 = v25 - 2 - v28;
          if (v25 - 2 < v28 || (*(v27 + (-v27 & 7)) = v60, v30 = v27 + v28, v31 = -v30 & 7 | 8, v32 = v29 - v31, v29 < v31) || (*(v30 + (-v30 & 7)) = v61, v33 = v30 + v31, v34 = -v33 & 7 | 8, v32 < v34))
          {
            if ((buf[16] & 1) == 0)
            {
              goto LABEL_72;
            }

            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v20, *buf, *&buf[8]);
            IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDRECEIVEDATA>(*(v20 + 8), &v60, v21);
          }

          else
          {
            *(v33 + (-v33 & 7)) = v62;
            v35 = v25 - v32 + v34;
            if (v35 <= 0x10)
            {
              v35 = 16;
            }

            v36 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v37 = *(v20 + 72);
            if (v36 + 16 >= v37)
            {
              v36 = 0;
            }

            v38 = v36 + v35;
            if (v37 <= v38)
            {
              v38 = 0;
            }

            *(v20 + 88) = v38;
            v39 = *(v20 + 80);
            if (*(v39 + 8) <= 0xFFuLL)
            {
              goto LABEL_72;
            }

            if (atomic_exchange((*(v39 + 16) + 128), v38) == 0x80000000 || *(v20 + 124))
            {
              if (*(v20 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v20 + 100));
              }

              *(v20 + 124) = 0;
            }
          }
        }

        goto LABEL_41;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v20 + 72, buf, v23);
      if (buf[16] != 1)
      {
LABEL_41:
        os_unfair_lock_unlock((v15 + 16));
        goto LABEL_6;
      }

      v44 = *&buf[8];
      if (*&buf[8] > 1uLL)
      {
        v45 = *buf;
        **buf = 3198;
        v46 = v45 + 2;
        if (v44 - 2 >= (-v46 & 7 | 8uLL))
        {
          v47 = -v46 & 7;
          *(v46 + v47) = v21;
          v48 = 6;
          if (v47 > 6)
          {
            v48 = v47;
          }

          v49 = v48 + 10;
          v50 = (*(v20 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v51 = *(v20 + 72);
          if (v50 + 16 >= v51)
          {
            v50 = 0;
          }

          v52 = v49 + v50;
          if (v51 <= v52)
          {
            v52 = 0;
          }

          *(v20 + 88) = v52;
          v53 = *(v20 + 80);
          if (*(v53 + 8) <= 0xFFuLL)
          {
            goto LABEL_72;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v20, atomic_exchange((*(v53 + 16) + 128), v52) == 0x80000000);
          *(v20 + 64) = v21;
          goto LABEL_27;
        }

        goto LABEL_41;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E305C9CLL);
  }

LABEL_6:
  v8 = *this;
  v9 = *(v5 + 10);
  *(v5 + 9) += *this;
  *(v5 + 10) = a3;
  if (v8 || *(this + 1))
  {
    IPC::SharedBufferReference::unsafeBuffer(buf, this);
    v10 = 0;
    v11 = *buf;
    *buf = 0;
  }

  else
  {
    v11 = WTF::fastMalloc(0, 0x40);
    WebCore::SharedBuffer::SharedBuffer(v11);
    v10 = 1;
  }

  result = (*(*v6 + 216))(v6, v11, a3 - v9, 1);
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    result = (*(*v11 + 8))(v11);
  }

  if ((v10 & 1) == 0)
  {
    result = *buf;
    *buf = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        result = (*(*result + 8))(result);
      }
    }
  }

  if (a3 != v9)
  {
    result = WebCore::ResourceLoader::resourceMonitorIfExists(v6);
    if (result)
    {
      v13 = result + 2;
      ++result[2];
      WebCore::ResourceMonitor::addNetworkUsage(result);
      result = WTF::RefCounted<WebCore::ResourceMonitor>::deref(v13);
    }
  }

LABEL_18:
  if (v6[4] == 1)
  {
    return (*(*v6 + 8))(v6);
  }

  --v6[4];
  return result;
}

void *WebKit::WebResourceLoader::didReceiveData(IPC::SharedBufferReference &&,unsigned long long)::$_0::~$_0(void *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  return a1;
}

void *WebKit::WebResourceLoader::didFinishResourceLoad(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (v4)
  {
    ++*(v4 + 16);
  }

  v5 = WebCore::logClient(a1);
  v6 = *v5;
  if (*v5)
  {
    if ((*(*v6 + 24))(*v5))
    {
      if (*(a1 + 56) == 1)
      {
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v9 = *(a1 + 48);
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
      }

      v10 = *(a1 + 72);
      os_unfair_lock_lock((v6 + 16));
      v12 = *(v6 + 8);
      *buf = v8;
      *&buf[8] = v7;
      *&buf[16] = v9;
      *&buf[24] = v10;
      v13 = *(v6 + 24);
      v14 = *(v12 + 128);
      v15 = INFINITY;
      if (fabs(v14) != INFINITY)
      {
        WTF::ApproximateTime::now(v11);
        v15 = v14 + v16;
      }

      if (*(v12 + 64) == v13)
      {
LABEL_10:
        IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v72, v15);
        if (v74 == 1)
        {
          v17 = v73;
          if (v73 <= 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E3063F4);
          }

          v18 = v72;
          *v72 = 315;
          v19 = v18 + 1;
          v20 = -v19 & 7 | 8;
          v21 = v17 - 2 - v20;
          if (v17 - 2 < v20 || (*(v19 + (-v19 & 7)) = *buf, v22 = v19 + v20, v23 = -v22 & 7 | 8, v24 = v21 - v23, v21 < v23) || (*&v22[-v22 & 7] = *&buf[8], v25 = &v22[v23], v26 = -(v22 + v23), v27 = v26 & 7 | 8, v28 = v24 - v27, v24 < v27) || (*&v25[v26 & 7] = *&buf[16], v29 = &v25[v27], v30 = -v29 & 7 | 8, v28 < v30))
          {
            if ((v74 & 1) == 0)
            {
              goto LABEL_63;
            }

            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, v72, v73);
            IPC::Connection::send<Messages::LogStream::WEBRESOURCELOADER_DIDFINISHRESOURCELOAD>(*(v12 + 8), buf, v13);
          }

          else
          {
            *&v29[-v29 & 7] = *&buf[24];
            v31 = v17 - v28 + v30;
            if (v31 <= 0x10)
            {
              v31 = 16;
            }

            v32 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v33 = *(v12 + 72);
            if (v32 + 16 >= v33)
            {
              v32 = 0;
            }

            v34 = v32 + v31;
            if (v33 <= v34)
            {
              v34 = 0;
            }

            *(v12 + 88) = v34;
            v35 = *(v12 + 80);
            if (*(v35 + 8) <= 0xFFuLL)
            {
              goto LABEL_63;
            }

            if (atomic_exchange((*(v35 + 16) + 128), v34) == 0x80000000 || *(v12 + 124))
            {
              if (*(v12 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v12 + 100));
              }

              *(v12 + 124) = 0;
            }
          }
        }

        goto LABEL_25;
      }

      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v72, v15);
      if (v74 != 1)
      {
LABEL_25:
        os_unfair_lock_unlock((v6 + 16));
        goto LABEL_26;
      }

      v44 = v73;
      if (v73 > 1)
      {
        v45 = v72;
        *v72 = 3198;
        v46 = v45 + 1;
        if (v44 - 2 >= (-v46 & 7 | 8uLL))
        {
          v47 = -v46 & 7;
          *(v46 + v47) = v13;
          v48 = 6;
          if (v47 > 6)
          {
            v48 = v47;
          }

          v49 = v48 + 10;
          v50 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v51 = *(v12 + 72);
          if (v50 + 16 >= v51)
          {
            v50 = 0;
          }

          v52 = v49 + v50;
          if (v51 <= v52)
          {
            v52 = 0;
          }

          *(v12 + 88) = v52;
          v53 = *(v12 + 80);
          if (*(v53 + 8) <= 0xFFuLL)
          {
            goto LABEL_63;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v12, atomic_exchange((*(v53 + 16) + 128), v52) == 0x80000000);
          *(v12 + 64) = v13;
          goto LABEL_10;
        }

        goto LABEL_25;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19E3063D4);
  }

  v40 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56) == 1)
    {
      v42 = *(a1 + 32);
      v41 = *(a1 + 40);
      v43 = *(a1 + 48);
    }

    else
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
    }

    v54 = *(a1 + 72);
    *buf = 134218752;
    *&buf[4] = v42;
    *&buf[12] = 2048;
    *&buf[14] = v41;
    *&buf[22] = 2048;
    *&buf[24] = v43;
    LOWORD(v76) = 2048;
    *(&v76 + 2) = v54;
    _os_log_impl(&dword_19D52D000, v40, OS_LOG_TYPE_DEFAULT, "[webPageID=%llu, frameID=%llu, resourceID=%llu] WebResourceLoader::didFinishResourceLoad: (length=%llu)", buf, 0x2Au);
  }

LABEL_26:
  v36 = *(v4 + 752);
  if (!v36)
  {
    goto LABEL_63;
  }

  if (*(a1 + 64) && WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Deque<WTF::Function<void ()(void)>,0ul>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Deque<WTF::Function<void ()(void)>,0ul>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 64), v36))
  {
    v57 = *(v4 + 752);
    if (v57)
    {
      ++*(a1 + 8);
      v59 = *(a2 + 88);
      v60 = *(a2 + 112);
      v61 = *(a2 + 120);
      v80 = *(a2 + 80);
      v58 = v80;
      v83 = v60;
      *buf = a1;
      v62 = *(a2 + 48);
      v77 = *(a2 + 32);
      v78 = v62;
      v79 = *(a2 + 64);
      v63 = *(a2 + 16);
      *&buf[16] = *a2;
      v76 = v63;
      *(a2 + 88) = 0;
      v82 = *(a2 + 96);
      *(a2 + 120) = 0;
      v64 = WTF::fastMalloc(v58, 0x98);
      *v64 = &unk_1F112C950;
      v64[1] = a1;
      v64[2] = a1;
      v65 = v80;
      v66 = v79;
      v67 = v77;
      *(v64 + 9) = v78;
      *(v64 + 11) = v66;
      *(v64 + 7) = v67;
      v64[13] = v65;
      v64[14] = v59;
      v68 = *&buf[16];
      *(v64 + 5) = v76;
      *(v64 + 3) = v68;
      *&buf[8] = 0;
      v81 = 0;
      v69 = v83;
      *(v64 + 15) = v82;
      v64[17] = v69;
      v64[18] = v61;
      v84 = 0;
      v72 = v64;
      WebKit::WebResourceInterceptController::defer((a1 + 64), v57, &v72);
      v71 = v72;
      v72 = 0;
      if (v71)
      {
        (*(*v71 + 8))(v71);
      }

      result = WebKit::WebResourceLoader::didFinishResourceLoad(WebCore::NetworkLoadMetrics &&)::$_0::~$_0(buf, v70);
      goto LABEL_31;
    }

LABEL_63:
    __break(1u);
  }

  *(a2 + 80) = *(a1 + 96);
  v37 = *(a2 + 104);
  if (v37 != -1)
  {
    v38 = *(a1 + 80);
    *(a1 + 80) = v37;
    if (v37 != v38)
    {
      v55 = WebCore::ResourceLoader::resourceMonitorIfExists(v4);
      if (v55)
      {
        v56 = v55 + 2;
        ++v55[2];
        WebCore::ResourceMonitor::addNetworkUsage(v55);
        WTF::RefCounted<WebCore::ResourceMonitor>::deref(v56);
      }
    }
  }

  result = (*(*v4 + 232))(v4, a2);
LABEL_31:
  if (*(v4 + 16) == 1)
  {
    return (*(*v4 + 8))(v4);
  }

  --*(v4 + 16);
  return result;
}