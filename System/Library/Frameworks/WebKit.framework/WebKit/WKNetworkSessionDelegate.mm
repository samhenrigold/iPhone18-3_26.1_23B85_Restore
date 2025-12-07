@interface WKNetworkSessionDelegate
- (RefPtr<WebKit::NetworkDataTaskCocoa,)existingTask:(id)task;
- (RefPtr<WebKit::WebSocketTask,)existingWebSocketTask:(id)task;
- (WKNetworkSessionDelegate)initWithNetworkSession:(reference_wrapper<WebKit:(void *)session :(BOOL)a5 NetworkSessionCocoa>)a3 wrapper:withCredentials:;
- (id).cxx_construct;
- (uint64_t)URLSession:(const void *)session dataTask:didReceiveResponse:completionHandler:;
- (uint64_t)URLSession:(const void *)session task:_schemeUpgraded:completionHandler:;
- (uint64_t)URLSession:(const void *)session task:didReceiveChallenge:completionHandler:;
- (uint64_t)URLSession:(const void *)session task:willPerformHTTPRedirection:newRequest:completionHandler:;
- (uint64_t)URLSession:(uint64_t)session dataTask:didReceiveResponse:completionHandler:;
- (uint64_t)URLSession:(uint64_t)session task:_schemeUpgraded:completionHandler:;
- (uint64_t)URLSession:(uint64_t)session task:didReceiveChallenge:completionHandler:;
- (uint64_t)URLSession:(uint64_t)session task:willPerformHTTPRedirection:newRequest:completionHandler:;
- (void)URLSession:(WebCore::Credential *)this task:didReceiveChallenge:completionHandler:;
- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task _didReceiveInformationalResponse:(id)response;
- (void)URLSession:(id)session task:(id)task _schemeUpgraded:(id)upgraded completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didReceiveInformationalResponse:(id)response;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session webSocketTask:(id)task didCloseWithCode:(int64_t)code reason:(id)reason;
- (void)URLSession:(id)session webSocketTask:(id)task didOpenWithProtocol:(id)protocol;
- (void)URLSession:(uint64_t)session task:(uint64_t)task _schemeUpgraded:completionHandler:;
- (void)URLSession:(uint64_t)session task:(uint64_t)task willPerformHTTPRedirection:newRequest:completionHandler:;
- (void)URLSession:task:didReceiveChallenge:completionHandler:;
- (void)sessionFromTask:(id)task;
- (void)sessionInvalidated;
@end

@implementation WKNetworkSessionDelegate

- (WKNetworkSessionDelegate)initWithNetworkSession:(reference_wrapper<WebKit:(void *)session :(BOOL)a5 NetworkSessionCocoa>)a3 wrapper:withCredentials:
{
  v16.receiver = self;
  v16.super_class = WKNetworkSessionDelegate;
  v8 = [(WKNetworkSessionDelegate *)&v16 init];
  if (v8)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3.var0 + 2, a3.var0);
    v10 = *(a3.var0 + 1);
    atomic_fetch_add(v10, 1u);
    m_ptr = v8->_session.m_impl.m_ptr;
    v8->_session.m_impl.m_ptr = v10;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v9);
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(session, session);
    v13 = *session;
    atomic_fetch_add(*session, 1u);
    v14 = v8->_sessionWrapper.m_impl.m_ptr;
    v8->_sessionWrapper.m_impl.m_ptr = v13;
    if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v12);
    }

    v8->_withCredentials = a5;
  }

  return v8;
}

- (void)sessionInvalidated
{
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  self->_sessionWrapper.m_impl.m_ptr = 0;
  if (m_ptr)
  {
    if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, a2);
    }
  }
}

- (RefPtr<WebKit::NetworkDataTaskCocoa,)existingTask:(id)task
{
  v4 = v3;
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr)
  {
    goto LABEL_10;
  }

  v6 = *(m_ptr + 1);
  if (!v6 || !task)
  {
    goto LABEL_10;
  }

  self = [task taskIdentifier];
  if (self == -1 || !self)
  {
    __break(0xC471u);
    JUMPOUT(0x19D932D2CLL);
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v7 - 8);
  v9 = (self + ~(self << 32)) ^ ((self + ~(self << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = *(v7 + 24 * v12);
  if (v13 != self)
  {
    v16 = 1;
    while (v13)
    {
      v12 = (v12 + v16) & v8;
      v13 = *(v7 + 24 * v12);
      ++v16;
      if (v13 == self)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  v14 = v7 + 24 * v12;
  self = *(v14 + 16);
  if (!self || (v15 = *(v14 + 8), (self = WTF::ThreadSafeWeakPtrControlBlock::weakRef(self)) == 0))
  {
LABEL_10:
    *v4 = 0;
    return self;
  }

  selfCopy = self;
  v18 = v4;
  v19 = selfCopy;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkDataTaskCocoa>(v18, selfCopy, v15);

  return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v19, v20);
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  if (self)
  {
    objc_msgSend_existingTask_(self, a2, task);
    if (v10)
    {
      WebKit::NetworkDataTaskCocoa::didSendData(v10, sent, send);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v10 + 1, v9);
    }
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  if (!self)
  {
    v12 = 0;
    goto LABEL_8;
  }

  objc_msgSend_existingTask_(self, a2, task);
  if (!v12)
  {
LABEL_8:
    (*(stream + 2))(stream, 0);
    goto LABEL_12;
  }

  WebCore::ResourceRequestBase::httpBody(&v11, (v12 + 128));
  if (v11)
  {
    v9 = v11;
    v11 = 0;
    WebCore::createHTTPBodyNSInputStream();
    (*(stream + 2))(stream);
    if (v10)
    {
    }

    WTF::RefCounted<WebCore::FormData>::deref(v9);
  }

  else
  {
    (*(stream + 2))(stream, 0);
  }

  v7 = v11;
  v11 = 0;
  if (v7)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v7);
  }

LABEL_12:
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v8 + 8), v6);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskIdentifier = [task taskIdentifier];
  if (!self)
  {
    v54 = 0;
    v49 = 0;
    goto LABEL_10;
  }

  v12 = taskIdentifier;
  objc_msgSend_existingTask_(self);
  if (!v54)
  {
    objc_msgSend_existingWebSocketTask_(self);
    if (v49)
    {
      WebCore::ResourceResponse::ResourceResponse(&v52, redirection);
      v20 = v49;
      MEMORY[0x19EB06210](v50, request);
      v21 = _Block_copy(handler);
      v23 = WTF::fastMalloc(v22, 0x18);
      *v23 = &unk_1F10ED7D8;
      v23[1] = v21;
      v23[2] = v12;
      v48 = v23;
      WebKit::NetworkTaskCocoa::willPerformHTTPRedirection(v20, &v52, v50, &v48);
      v24 = v48;
      v48 = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      _Block_release(0);
      v25 = v51;
      v51 = 0;
      if (v25)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(v50);
      v27 = v53;
      v53 = 0;
      if (v27)
      {
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(&v52, v26);
      goto LABEL_19;
    }

LABEL_10:
    (*(handler + 2))(handler, 0);
LABEL_19:
    v28 = v49;
    v49 = 0;
    if (v28)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(v28 + 5, v19);
    }

    goto LABEL_55;
  }

  v13 = *(v54 + 16);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      ++*(v14 + 16);
      v15 = *(v14 + 32);
      v52.super.isa = *(v14 + 24);
      v16 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 248), &v52);
      v17 = v16;
      if (v16)
      {
        ++*(v16 + 8);
      }

      if (*(v54 + 545) == 1)
      {
        mainDocumentURL = [request URL];
      }

      else
      {
        mainDocumentURL = [request mainDocumentURL];
      }

      v29 = mainDocumentURL;
      if (mainDocumentURL)
      {
        v30 = mainDocumentURL;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [request _schemeWasUpgradedDueToDynamicHSTS])
      {
        if (!v17)
        {
          __break(0xC471u);
          JUMPOUT(0x19D93340CLL);
        }

        MEMORY[0x19EB01DE0](&v52, v29);
        MEMORY[0x19EB01DE0](v50, [request URL]);
        WebKit::NetworkTaskCocoa::shouldRelaxThirdPartyCookieBlocking((v54 + 552));
        shouldBlockCookies = WebCore::NetworkStorageSession::shouldBlockCookies();
        v33 = v50[0];
        v50[0] = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v31);
        }

        isa = v52.super.isa;
        v52.super.isa = 0;
        if (isa && atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(isa, v31);
        }

        if (shouldBlockCookies)
        {
          downgradeRequest(&v52, request);
          updateIgnoreStrictTransportSecuritySetting(&v52.super.isa, 1);
          v35 = v52.super.isa;
          (*(handler + 2))(handler, v52.super.isa);
          if (v35)
          {
          }

          if (v29)
          {
          }

          v36 = *(v17 + 8);
          if (v36)
          {
            *(v17 + 8) = v36 - 1;
            v37 = *(v14 + 16);
            if (v37)
            {
              *(v14 + 16) = v37 - 1;
              goto LABEL_55;
            }
          }

LABEL_61:
          __break(0xC471u);
          JUMPOUT(0x19D9333CCLL);
        }
      }

      if (v29)
      {
      }

      if (v17)
      {
        v38 = *(v17 + 8);
        if (!v38)
        {
          __break(0xC471u);
          JUMPOUT(0x19D9333ECLL);
        }

        *(v17 + 8) = v38 - 1;
      }

      v39 = *(v14 + 16);
      if (!v39)
      {
        goto LABEL_61;
      }

      *(v14 + 16) = v39 - 1;
    }
  }

  WebCore::ResourceResponse::ResourceResponse(&v52, redirection);
  v40 = v54;
  MEMORY[0x19EB06210](v50, request);
  v41 = _Block_copy(handler);
  v43 = WTF::fastMalloc(v42, 0x20);
  *v43 = &unk_1F10ED7B0;
  v43[1] = v41;
  v43[2] = v12;
  *(v43 + 24) = 0;
  v49 = v43;
  WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(v40, &v52, v50, &v49);
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  _Block_release(0);
  v44 = v51;
  v51 = 0;
  if (v44)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v50);
  v46 = v53;
  v53 = 0;
  if (v46)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v52, v45);
LABEL_55:
  v47 = v54;
  v54 = 0;
  if (v47)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v47 + 8), v19);
  }
}

- (void)URLSession:(id)session task:(id)task _schemeUpgraded:(id)upgraded completionHandler:(id)handler
{
  taskIdentifier = [task taskIdentifier];
  if (!self)
  {
    v47 = 0;
    goto LABEL_19;
  }

  v11 = taskIdentifier;
  objc_msgSend_existingTask_(self);
  if (!v47)
  {
LABEL_19:
    (*(handler + 2))(handler, 0);
    goto LABEL_38;
  }

  v12 = *(v47 + 16);
  if (v12)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      ++*(v13 + 16);
      v14 = *(v13 + 32);
      v44.super.isa = *(v13 + 24);
      v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v14 + 248), &v44);
      v16 = v15;
      if (v15)
      {
        ++*(v15 + 8);
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [upgraded _schemeWasUpgradedDueToDynamicHSTS])
      {
        if (!v16)
        {
          __break(0xC471u);
          JUMPOUT(0x19D933CBCLL);
        }

        MEMORY[0x19EB06210](&v44, upgraded);
        WebKit::NetworkTaskCocoa::shouldRelaxThirdPartyCookieBlocking((v47 + 552));
        shouldBlockCookies = WebCore::NetworkStorageSession::shouldBlockCookies();
        v18 = v45;
        v45 = 0;
        if (v18)
        {
        }

        WebCore::ResourceRequestBase::~ResourceRequestBase(&v44);
        if (shouldBlockCookies)
        {
          downgradeRequest(&v44, upgraded);
          updateIgnoreStrictTransportSecuritySetting(&v44.super.isa, 1);
          isa = v44.super.isa;
          (*(handler + 2))(handler, v44.super.isa);
          if (isa)
          {
          }

          v21 = *(v16 + 8);
          if (v21)
          {
            *(v16 + 8) = v21 - 1;
            v22 = *(v13 + 16);
            if (v22)
            {
              *(v13 + 16) = v22 - 1;
              goto LABEL_38;
            }
          }

LABEL_44:
          __break(0xC471u);
          JUMPOUT(0x19D933C7CLL);
        }
      }

      else if (!v16)
      {
LABEL_23:
        v24 = *(v13 + 16);
        if (!v24)
        {
          goto LABEL_44;
        }

        *(v13 + 16) = v24 - 1;
        goto LABEL_25;
      }

      v23 = *(v16 + 8);
      if (!v23)
      {
        __break(0xC471u);
        JUMPOUT(0x19D933C9CLL);
      }

      *(v16 + 8) = v23 - 1;
      goto LABEL_23;
    }
  }

LABEL_25:
  currentRequest = [task currentRequest];
  v27 = WebCore::synthesizeRedirectResponseIfNecessary(currentRequest, upgraded, 0, v26);
  WebCore::ResourceResponse::ResourceResponse(&v44, v27);
  v28 = [upgraded valueForHTTPHeaderField:@"Origin"];
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = @"*";
  }

  v30 = v29;
  MEMORY[0x19EB02040](v42, v29);
  WebCore::ResourceResponseBase::setHTTPHeaderField();
  v32 = v42[0];
  v42[0] = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v31);
  }

  v33 = v47;
  MEMORY[0x19EB06210](v42, upgraded);
  v34 = _Block_copy(handler);
  v36 = WTF::fastMalloc(v35, 0x20);
  *v36 = &unk_1F10ED800;
  v36[1] = v34;
  v36[2] = v11;
  *(v36 + 24) = 0;
  v41 = v36;
  WebKit::NetworkDataTaskCocoa::willPerformHTTPRedirection(v33, &v44, v42, &v41);
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  _Block_release(0);
  v37 = v43;
  v43 = 0;
  if (v37)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(v42);

  v39 = v46;
  v46 = 0;
  if (v39)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&v44, v38);
LABEL_38:
  v40 = v47;
  v47 = 0;
  if (v40)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v40 + 8), v20);
  }
}

- (void)sessionFromTask:(id)task
{
  if (self)
  {
    objc_msgSend_existingTask_(self, a2, task);
    v6 = v38;
    if (v38)
    {
      v7 = *(v38 + 16);
      if (v7 && (v8 = *(v7 + 8)) != 0)
      {
        if (((*(*v8 + 288))(v8) & 1) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19D9341B4);
        }

        v6 = v38;
        v38 = 0;
      }

      else
      {
        v8 = 0;
        v38 = 0;
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v6 + 8), v5);
      return v8;
    }
  }

  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v10 = *(m_ptr + 1);
  if (!v10)
  {
    return 0;
  }

  taskIdentifier = [task taskIdentifier];
  if (taskIdentifier == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934174);
  }

  if (!taskIdentifier)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934194);
  }

  v12 = *(v10 + 40);
  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = *(v12 - 8);
  v14 = (taskIdentifier + ~(taskIdentifier << 32)) ^ ((taskIdentifier + ~(taskIdentifier << 32)) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = v13 & ((v16 >> 31) ^ v16);
  v18 = *(v12 + 16 * v17);
  if (v18 == taskIdentifier)
  {
LABEL_16:
    v20 = self->_session.m_impl.m_ptr;
    if (v20)
    {
      v21 = *(v20 + 1);
      if (v21)
      {
        v22 = *(v12 + 16 * v17 + 8);
        ++*(v21 + 16);
        v23 = *(v21 + 32);
        ++*(v23 + 184);
        v38 = v22;
        v24 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v23 + 216), &v38);
        if (v24)
        {
          v25 = (v24 + 16);
          ++*(v24 + 16);
          v26 = *(v23 + 184);
          if (v26)
          {
            *(v23 + 184) = v26 - 1;
            v27 = *(v21 + 32);
            v38 = *(v24 + 160);
            v28 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v27 + 240), &v38);
            v8 = v28;
            if (v28 && ((*(*v28 + 288))(v28) & 1) == 0)
            {
              goto LABEL_43;
            }

            WTF::RefCounted<WebKit::Download>::deref(v25);
            v29 = *(v21 + 16);
            if (v29)
            {
LABEL_23:
              *(v21 + 16) = v29 - 1;
              return v8;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v37 = *(v23 + 184);
          if (v37)
          {
            *(v23 + 184) = v37 - 1;
            v29 = *(v21 + 16);
            if (v29)
            {
              v8 = 0;
              goto LABEL_23;
            }

LABEL_42:
            __break(0xC471u);
            JUMPOUT(0x19D9341F4);
          }
        }

        __break(0xC471u);
        JUMPOUT(0x19D9341D4);
      }
    }

    return 0;
  }

  v19 = 1;
  while (v18)
  {
    v17 = (v17 + v19) & v13;
    v18 = *(v12 + 16 * v17);
    ++v19;
    if (v18 == taskIdentifier)
    {
      goto LABEL_16;
    }
  }

LABEL_24:
  v30 = self->_sessionWrapper.m_impl.m_ptr;
  if (!v30 || (v31 = *(v30 + 1)) == 0)
  {
LABEL_43:
    __break(0xC471u);
    JUMPOUT(0x19D934154);
  }

  WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,unsigned long long>(&v38, (v31 + 48), [task taskIdentifier]);
  v32 = v39;
  if (!v39)
  {
    return 0;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v40, v39, v38);
  WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v32, v33);
  if (!v40)
  {
    return 0;
  }

  v8 = WebKit::WebSocketTask::networkSession(v40);
  v35 = v40;
  v40 = 0;
  if (v35)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(v35 + 5, v34);
  }

  return v8;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  v130 = *MEMORY[0x1E69E9840];
  v10 = [(WKNetworkSessionDelegate *)self sessionFromTask:task];
  v11 = v10;
  if (!v10 || (++v10[4], [taskCopy state] == 2))
  {
    (*(handler + 2))(handler, 2, 0);
LABEL_4:
    if (v11)
    {
      goto LABEL_51;
    }

    return;
  }

  taskIdentifier = [taskCopy taskIdentifier];
  if ([objc_msgSend(challenge "protectionSpace")] && !*(v11 + 1204) && (*(v11 + 1232) & 1) == 0)
  {
    (*(handler + 2))(handler, 0, 0);
    goto LABEL_51;
  }

  v13 = [objc_msgSend(challenge "protectionSpace")];
  if (![v13 isEqualToString:*MEMORY[0x1E695AB80]])
  {
LABEL_38:
    v29 = 0;
    goto LABEL_39;
  }

  MEMORY[0x19EB0B400](&to, challenge);
  WebKit::NetworkProcess::sourceApplicationAuditData(&location, *(*(v11 + 32) + 40));
  v15 = location;
  if (!location)
  {
    goto LABEL_18;
  }

  v16 = v122;
  if (v122)
  {
    v17 = v122;
  }

  v18 = [-[WTF::StringImpl protectionSpace](v16 "protectionSpace")];
  if (v18)
  {
    goto LABEL_161;
  }

  while (1)
  {
    SecTrustSetClientAuditToken();
    if (v18)
    {
      CFRelease(v18);
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_17:
    CFRelease(v15);
LABEL_18:
    v19 = v122;
    v122 = 0;
    if (v19)
    {
    }

    v20 = v121;
    v121 = 0;
    if (v20)
    {
    }

    WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&to, v14);
    v15 = checkForLegacyTLS([objc_msgSend(objc_msgSend(taskCopy "_incompleteTaskMetrics")]);
    if (v15)
    {
      break;
    }

    if (*(v11 + 1219) != 1)
    {
      goto LABEL_38;
    }

    if (!self)
    {
      v115 = 0;
LABEL_143:
      location = 0;
      objc_initWeak(&location, self);
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v11 + 8), v11);
      v87 = *(v11 + 8);
      if (v87)
      {
        atomic_fetch_add(v87, 1u);
      }

      *&v126 = v87;
      *(&v126 + 1) = _Block_copy(handler);
      v127 = taskIdentifier;
      v88 = v115;
      if (v115)
      {
        while (1)
        {
          v89 = *(v88 + 8);
          if ((v89 & 1) == 0)
          {
            break;
          }

          v90 = *(v88 + 8);
          atomic_compare_exchange_strong_explicit((v88 + 8), &v90, v89 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v90 == v89)
          {
            goto LABEL_150;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v88 + 8));
      }

LABEL_150:
      v128 = v88;
      v129 = 0;
      to = 0;
      objc_moveWeak(&to, &location);
      v91 = v126;
      v126 = 0uLL;
      *v117 = v91;
      v92 = v128;
      v128 = 0;
      v118 = v127;
      v119 = v92;
      v120 = v129;
      v93 = malloc_type_malloc(0x50uLL, 0x10E00402AFD4002uLL);
      *v93 = MEMORY[0x1E69E9818];
      *(v93 + 1) = 50331650;
      *(v93 + 2) = WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<[WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16>([WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16)::{lambda(void *,NSURLAuthenticationChallenge *,int)#1}::__invoke;
      *(v93 + 3) = &WTF::BlockPtr<void ()(NSURLAuthenticationChallenge *,int)>::fromCallable<[WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16>([WKNetworkSessionDelegate URLSession:task:didReceiveChallenge:completionHandler:]::$_16)::descriptor;
      *(v93 + 4) = 0;
      objc_moveWeak(v93 + 4, &to);
      v94 = *v117;
      v117[0] = 0;
      v117[1] = 0;
      *(v93 + 40) = v94;
      v95 = v119;
      *(v93 + 7) = v118;
      *(v93 + 8) = v95;
      v93[72] = v120;
      v119 = 0;
      _Block_release(0);
      v97 = v117[0];
      v117[0] = 0;
      if (v97 && atomic_fetch_add(v97, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v97);
        WTF::fastFree(v97, v96);
      }

      objc_destroyWeak(&to);
      v99 = v128;
      v128 = 0;
      if (v99)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v99 + 8), v98);
      }

      _Block_release(*(&v126 + 1));
      v101 = v126;
      *&v126 = 0;
      if (v101 && atomic_fetch_add(v101, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v101);
        WTF::fastFree(v101, v100);
      }

      objc_destroyWeak(&location);
      [MEMORY[0x1E695AC78] _strictTrustEvaluate:challenge queue:objc_msgSend(objc_msgSend(MEMORY[0x1E696ADC8] completionHandler:{"mainQueue"), "underlyingQueue"), v93}];
      _Block_release(v93);
      v103 = v115;
      v115 = 0;
      if (v103)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v103 + 8), v102);
      }

      goto LABEL_4;
    }

    objc_msgSend_existingTask_(self);
    if (!v115)
    {
      goto LABEL_143;
    }

    protectionSpace = [challenge protectionSpace];
    taskCopy = protectionSpace;
    if (protectionSpace)
    {
      v22 = protectionSpace;
    }

    v109 = v115;
    MEMORY[0x19EB02040](&v113, [taskCopy protocol]);
    MEMORY[0x19EB02040](&v112, [taskCopy host]);
    port = [taskCopy port];
    v18 = port;
    v16 = v113;
    v110 = v112;
    if (v113)
    {
      v24 = *(v113 + 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = v112;
    if (v112)
    {
      v25 = *(v112 + 1);
    }

    if (port < 0)
    {
      v42 = -port;
      v26 = 1;
      do
      {
        ++v26;
        v43 = v42 >= 0xA;
        v42 /= 0xAuLL;
      }

      while (v43);
    }

    else
    {
      v26 = 0;
      v27 = port;
      do
      {
        ++v26;
        v28 = v27 > 9;
        v27 /= 0xAuLL;
      }

      while (v28);
    }

    if (v26 < 0)
    {
      goto LABEL_172;
    }

    v44 = __OFADD__(v26, 1);
    v45 = v26 + 1;
    v46 = v44;
    if (v25 < 0)
    {
      goto LABEL_172;
    }

    if (v46)
    {
      goto LABEL_172;
    }

    v44 = __OFADD__(v25, v45);
    v47 = v25 + v45;
    if (v44)
    {
      goto LABEL_172;
    }

    v44 = __OFADD__(v47, 3);
    v48 = v47 + 3;
    v49 = v44;
    if (v24 < 0)
    {
      goto LABEL_172;
    }

    if (v49)
    {
      goto LABEL_172;
    }

    v50 = (v24 + v48);
    if (__OFADD__(v24, v48))
    {
      goto LABEL_172;
    }

    if ((!v113 || (*(v113 + 16) & 4) != 0) && (!v112 || (*(v112 + 16) & 4) != 0))
    {
      if (!v50)
      {
LABEL_109:
        v70 = MEMORY[0x1E696EB88];
        atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        goto LABEL_126;
      }

      if ((v50 & 0x80000000) != 0)
      {
        goto LABEL_172;
      }

      WTF::tryFastCompactMalloc(&location, (v50 + 20));
      v61 = location;
      if (!location)
      {
        goto LABEL_172;
      }

      v106 = location;
      v108 = taskCopy;
      taskCopy = location + 20;
      *location = 2;
      *(v61 + 1) = v50;
      *(v61 + 1) = v61 + 20;
      *(v61 + 4) = 4;
      v123 = v16;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v123, v61 + 20);
      if (v123)
      {
        v62 = *(v123 + 1);
        if (v62 > v50)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v62 = 0;
      }

      v63 = v50 - v62;
      v105 = v62;
      v64 = &taskCopy[v62];
      v64[2] = 47;
      *v64 = 12090;
      if (v63 <= 2)
      {
        goto LABEL_160;
      }

      v16 = (v63 - 3);
      taskCopy = v64 + 3;
      v124 = v110;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v124, v64 + 3);
      if (!v124)
      {
        v65 = 0;
LABEL_100:
        if (v16 == v65)
        {
          goto LABEL_160;
        }

        taskCopy[v65] = 58;
        v66 = &taskCopy[v65 + 1];
        if ((v18 & 0x8000000000000000) == 0)
        {
          v67 = 0;
          taskCopy = v108;
          while (v67 != -25)
          {
            *(&v127 + v67--) = (v18 % 0xA) | 0x30;
            v28 = v18 > 9;
            v18 /= 0xAuLL;
            if (!v28)
            {
              v68 = 0;
              v69 = v50 - v65 - v105 - 4;
              while (v69 != v68)
              {
                v66[v68] = *(&v127 + v68 + v67 + 1);
                if (-v67 == ++v68)
                {
                  goto LABEL_125;
                }
              }

              goto LABEL_160;
            }
          }

          goto LABEL_160;
        }

        v75 = -v18;
        v76 = 24;
        taskCopy = v108;
        do
        {
          if (v76 == -1)
          {
            goto LABEL_160;
          }

          *(&location + v76--) = (v75 % 0xA) | 0x30;
          v28 = v75 > 9;
          v75 /= 0xAuLL;
        }

        while (v28);
        if (v76 >= 0x19)
        {
          goto LABEL_160;
        }

        v77 = v76 - 24;
        v78 = v76 - 23;
        *(&location + v76) = 45;
        v79 = v65 + v105 - v50 + 4;
        do
        {
          if (!v79)
          {
            goto LABEL_160;
          }

          *v66++ = *(&v127 + v77);
          ++v78;
          ++v77;
          ++v79;
        }

        while (v78 != 2);
LABEL_125:
        v70 = v106;
LABEL_126:
        v114 = v70;
        MEMORY[0x19EB01DD0](&to, &v114, 0);
        v81 = *(v109 + 24);
        if (v81)
        {
          v82 = *(v81 + 8);
          if (v82)
          {
            (**v82)(v82);
            (*(*v82 + 128))(v82, &to);
            (*(*v82 + 8))(v82);
          }
        }

        v83 = to;
        to = 0;
        if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v83, v80);
        }

        v84 = v114;
        v114 = 0;
        if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v84, v80);
        }

        v85 = v112;
        v112 = 0;
        if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v85, v80);
        }

        v86 = v113;
        v113 = 0;
        if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v86, v80);
        }

        if (taskCopy)
        {
        }

        goto LABEL_143;
      }

      v65 = *(v124 + 1);
      if (v16 >= v65)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (!v50)
      {
        goto LABEL_109;
      }

      if (v50 > 0x7FFFFFEF || (WTF::tryFastCompactMalloc(&location, (2 * v50 + 20)), (v51 = location) == 0))
      {
LABEL_172:
        __break(0xC471u);
LABEL_173:
        JUMPOUT(0x19D934EB0);
      }

      v106 = location;
      v107 = taskCopy;
      taskCopy = location + 20;
      *location = 2;
      *(v51 + 1) = v50;
      *(v51 + 1) = v51 + 20;
      *(v51 + 4) = 0;
      v123 = v16;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v123, v51 + 20);
      if (v123)
      {
        v52 = *(v123 + 1);
        if (v52 > v50)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v52 = 0;
      }

      v53 = &taskCopy[2 * v52];
      *v53 = 3080250;
      *(v53 + 2) = 47;
      v104 = v52;
      if ((v50 - v52) > 2)
      {
        taskCopy = v53 + 6;
        v16 = (v50 - v52 - 3);
        v124 = v110;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v124, v53 + 6);
        if (!v124)
        {
          v54 = 0;
LABEL_83:
          if (v16 != v54)
          {
            v55 = &taskCopy[2 * v54];
            *v55 = 58;
            v56 = v55 + 2;
            if ((v18 & 0x8000000000000000) != 0)
            {
              v71 = -v18;
              v72 = 24;
              taskCopy = v107;
              while (v72 != -1)
              {
                *(&location + v72--) = (v71 % 0xA) | 0x30;
                v28 = v71 > 9;
                v71 /= 0xAuLL;
                if (!v28)
                {
                  if (v72 < 0x19)
                  {
                    v73 = v72 + 1;
                    *(&location + v72) = 45;
                    v74 = v54 + v104 - v50 + 4;
                    while (v74)
                    {
                      *v56++ = *(&location + v72);
                      ++v73;
                      ++v72;
                      ++v74;
                      if (v73 == 26)
                      {
                        goto LABEL_125;
                      }
                    }
                  }

                  goto LABEL_160;
                }
              }
            }

            else
            {
              v57 = 24;
              taskCopy = v107;
              while (v57 != -1)
              {
                *(&location + v57--) = (v18 % 0xA) | 0x30;
                v28 = v18 > 9;
                v18 /= 0xAuLL;
                if (!v28)
                {
                  v58 = v54 + v104 - v50 + 4;
                  v59 = v57 + 1;
                  v60 = v57 + 2;
                  while (v58)
                  {
                    *v56++ = *(&location + v59);
                    ++v60;
                    ++v59;
                    ++v58;
                    if (v60 == 26)
                    {
                      goto LABEL_125;
                    }
                  }

                  goto LABEL_160;
                }
              }
            }
          }

          goto LABEL_160;
        }

        v54 = *(v124 + 1);
        if (v16 >= v54)
        {
          goto LABEL_83;
        }
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    CFRetain(v18);
  }

  if ([taskCopy _preconnect])
  {
    (*(handler + 2))(handler, 2, 0);
    goto LABEL_51;
  }

  v29 = 1;
LABEL_39:
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr || (v31 = *(m_ptr + 1)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934ED0);
  }

  ++*(v31 + 8);
  MEMORY[0x19EB0B400](&to, challenge);
  objc_msgSend_existingTask_(self);
  v32 = _Block_copy(handler);
  v34 = WTF::fastMalloc(v33, 0x10);
  *v34 = &unk_1F10ED828;
  v34[1] = v32;
  location = v34;
  WebKit::NetworkSessionCocoa::continueDidReceiveChallenge(v11, v31, &to, v29, taskIdentifier, &v111, &location);
  v35 = location;
  location = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  _Block_release(0);
  v37 = v111;
  v111 = 0;
  if (v37)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v37 + 8), v36);
  }

  v38 = v122;
  v122 = 0;
  if (v38)
  {
  }

  v39 = v121;
  v121 = 0;
  if (v39)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&to, v36);
  v40 = *(v31 + 8);
  if (!v40)
  {
    __break(0xC471u);
    JUMPOUT(0x19D934EF0);
  }

  *(v31 + 8) = v40 - 1;
LABEL_51:
  v41 = *(v11 + 16);
  if (!v41)
  {
    __break(0xC471u);
    goto LABEL_173;
  }

  *(v11 + 16) = v41 - 1;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v91 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (error)
  {
    errorCopy2 = error;
    userInfo = [error userInfo];
    v39 = userInfo;
    if (userInfo)
    {
      v40 = userInfo;
      dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v39];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v42 = dictionary;
    if (dictionary)
    {
      v43 = dictionary;
    }

    [v42 setObject:objc_msgSend(task forKeyedSubscript:{"description"), @"networkTaskDescription"}];
    if (self)
    {
      objc_msgSend_existingTask_(self);
      if (*v77)
      {
        if (*(*v77 + 715) - 1 > 4)
        {
          v44 = @"Unknown";
        }

        else
        {
          v44 = off_1E7630BA8[(*(*v77 + 715) - 1)];
        }

        v45 = v44;
        [v42 setObject:v44 forKeyedSubscript:@"networkTaskMetricsPrivacyStance"];

        ResolutionReport = extractResolutionReport(errorCopy);
        if (ResolutionReport)
        {
          [v42 setObject:ResolutionReport forKeyedSubscript:@"networkResolutionReport"];
        }

        else
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          underlyingErrors = [(NSError *)errorCopy underlyingErrors];
          v49 = [(NSArray *)underlyingErrors countByEnumeratingWithState:&v72 objects:v81 count:16];
          if (v49)
          {
            v53 = *v73;
            while (2)
            {
              for (i = 0; i != v49; ++i)
              {
                if (*v73 != v53)
                {
                  objc_enumerationMutation(underlyingErrors);
                }

                v55 = extractResolutionReport(*(*(&v72 + 1) + 8 * i));
                if (v55)
                {
                  [v42 setObject:v55 forKeyedSubscript:@"networkResolutionReport"];
                  goto LABEL_66;
                }
              }

              v49 = [(NSArray *)underlyingErrors countByEnumeratingWithState:&v72 objects:v81 count:16];
              if (v49)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_66:
        v50 = *v77;
        *v77 = 0;
        if (v50)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v50 + 8), v48);
        }
      }
    }

    v51 = MEMORY[0x1E696ABC0];
    domain = [(NSError *)errorCopy domain];
    WTF::RetainPtr<NSError>::operator=(&errorCopy, [v51 errorWithDomain:domain code:-[NSError code](errorCopy userInfo:{"code"), v42}]);
    if (v42)
    {
    }

    if (v39)
    {
    }
  }

  if (!self)
  {
    v71 = 0;
    *buf = 0;
LABEL_16:
    if (errorCopy)
    {
      m_ptr = self->_sessionWrapper.m_impl.m_ptr;
      if (m_ptr)
      {
        v14 = *(m_ptr + 1);
        if (v14)
        {
          v15 = WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional((v14 + 40), [task taskIdentifier]);
          if (a2)
          {
            v16 = self->_session.m_impl.m_ptr;
            if (v16)
            {
              v17 = *(v16 + 1);
              if (v17)
              {
                ++*(v17 + 16);
                v18 = *(v17 + 32);
                ++*(v18 + 184);
                *v77 = v15;
                v19 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v18 + 216), v77);
                v20 = v19;
                if (v19)
                {
                  ++*(v19 + 16);
                }

                v21 = *(v18 + 184);
                if (!v21 || (*(v18 + 184) = v21 - 1, (v22 = *(v17 + 16)) == 0))
                {
                  __break(0xC471u);
                  JUMPOUT(0x19D936C90);
                }

                *(v17 + 16) = v22 - 1;
                if (v19)
                {
                  v70 = 0;
                  userInfo2 = [(NSError *)errorCopy userInfo];
                  v24 = userInfo2;
                  if (userInfo2 && WTF::ObjCTypeCastTraits<NSDictionary>::isType<NSObject>(userInfo2))
                  {
                    v64 = v24;
                    WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*>::operator=(&v70, [(NSDictionary *)v24 objectForKeyedSubscript:@"NSURLSessionDownloadTaskResumeData"]);
                    if (v70)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v65 = qword_1ED640E78;
                        if (os_log_type_enabled(qword_1ED640E78, OS_LOG_TYPE_DEFAULT))
                        {
                          taskIdentifier = [task taskIdentifier];
                          v67 = objc_opt_class();
                          uTF8String = [NSStringFromClass(v67) UTF8String];
                          *v77 = 134218242;
                          *&v77[4] = taskIdentifier;
                          *&v77[12] = 2080;
                          *&v77[14] = uTF8String;
                          _os_log_impl(&dword_19D52D000, v65, OS_LOG_TYPE_DEFAULT, "Download task %llu finished with resume data of wrong class: %s", v77, 0x16u);
                        }

                        v69 = v70;
                        v70 = 0;
                        if (v69)
                        {
                        }
                      }
                    }
                  }

                  v25 = v70;
                  if (v70)
                  {
                    bytes = [v70 bytes];
                    v25 = [v25 length];
                  }

                  else
                  {
                    bytes = 0;
                  }

                  MEMORY[0x19EB04D40](v77, errorCopy);
                  WebKit::Download::didFail(v20, v77, bytes, v25);
                  v28 = v80;
                  v80 = 0;
                  if (v28)
                  {
                  }

                  v29 = v78;
                  v78 = 0;
                  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v29, v27);
                  }

                  v30 = *&v77[8];
                  *&v77[8] = 0;
                  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v30, v27);
                  }

                  v31 = *v77;
                  *v77 = 0;
                  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v31, v27);
                  }

                  v32 = v70;
                  v70 = 0;
                  if (v32)
                  {
                  }

                  WTF::RefCounted<WebKit::Download>::deref((v20 + 16));
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_38;
  }

  objc_msgSend_existingTask_(self, a2, task);
  if (v71)
  {
    MEMORY[0x19EB04D40](v77, errorCopy);
    if (!kdebug_is_enabled())
    {
LABEL_5:
      v7 = *(v71 + 24);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          (**v8)(v8);
          (*(*v8 + 72))(v8, v77, v71 + 616);
          (*(*v8 + 8))(v8);
        }
      }

      v9 = v80;
      v80 = 0;
      if (v9)
      {
      }

      v10 = v78;
      v78 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, a2);
      }

      v11 = *&v77[8];
      *&v77[8] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v12 = *v77;
      *v77 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, a2);
      }

      goto LABEL_40;
    }

    v56 = *MEMORY[0x1E696EB68];
    v57 = WTFSignpostLogHandle();
    v58 = v57;
    if (v56)
    {
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(v71 + 608);
        v60 = WTFCurrentContinuousTime();
        *buf = 67110144;
        *&buf[4] = 0;
        v83 = 1024;
        v84 = 0;
        v85 = 2048;
        v86 = v59;
        v87 = 2048;
        v88 = v60;
        v89 = 1024;
        v90 = v79 != 0;
        _os_log_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu completed with error: %d", buf, 0x28u);
      }

      goto LABEL_5;
    }

    if (v57)
    {
      v61 = v57;
    }

    v62 = *(v71 + 608);
    if (v62)
    {
      v63 = os_signpost_id_make_with_pointer(v58, v62);
      if (v63 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_97:
        if (v58)
        {
        }

        goto LABEL_5;
      }
    }

    else
    {
      v63 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v58))
    {
      *buf = 67109120;
      *&buf[4] = v79 != 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v58, OS_SIGNPOST_EVENT, v63, "DataTask", "completed with error: %d", buf, 8u);
    }

    goto LABEL_97;
  }

  objc_msgSend_existingWebSocketTask_(self);
  if (!*buf)
  {
    goto LABEL_16;
  }

  WebKit::WebSocketTask::didClose(*buf, 0x3EE, MEMORY[0x1E696EBA8]);
LABEL_38:
  v33 = *buf;
  *buf = 0;
  if (v33)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v33 + 40), a2);
  }

LABEL_40:
  v34 = v71;
  v71 = 0;
  if (v34)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v34 + 8), a2);
  }

  v35 = errorCopy;
  errorCopy = 0;
  if (v35)
  {
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v113 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  objc_msgSend_existingTask_(self, a2, task);
  if (!v111)
  {
    return;
  }

  transactionMetrics = [metrics transactionMetrics];
  v8 = transactionMetrics;
  if (transactionMetrics)
  {
    v9 = transactionMetrics;
  }

  lastObject = [v8 lastObject];
  v11 = lastObject;
  if (lastObject)
  {
    v12 = lastObject;
  }

  v13 = v111;
  [objc_msgSend(objc_msgSend(v8 "firstObject")];
  v15 = v14;
  v16 = 0;
  if (*&v15 != 0.0)
  {
    v101 = v15;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 77) = v16;
  [objc_msgSend(v11 "fetchStartDate")];
  v18 = v17;
  v19 = 0;
  if (*&v18 != 0.0)
  {
    v101 = v18;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 78) = v19;
  [objc_msgSend(v11 "domainLookupStartDate")];
  v21 = v20;
  v22 = 0;
  if (*&v21 != 0.0)
  {
    v101 = v21;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 79) = v22;
  [objc_msgSend(v11 "domainLookupEndDate")];
  v24 = v23;
  v25 = 0;
  if (*&v24 != 0.0)
  {
    v101 = v24;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 80) = v25;
  [objc_msgSend(v11 "connectStartDate")];
  v27 = v26;
  v28 = 0;
  if (*&v27 != 0.0)
  {
    v101 = v27;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 81) = v28;
  if ([v11 isReusedConnection] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v11, "response"), "URL"), "scheme"), "isEqualToString:", @"https"))
  {
    *(v13 + 82) = 0xBFF0000000000000;
  }

  else
  {
    [objc_msgSend(v11 "secureConnectionStartDate")];
    v30 = v29;
    v31 = 0;
    if (*&v30 != 0.0)
    {
      v101 = v30;
      WTF::WallTime::approximateMonotonicTime(&v101);
    }

    *(v13 + 82) = v31;
  }

  [objc_msgSend(v11 "connectEndDate")];
  v33 = v32;
  v34 = 0;
  if (*&v33 != 0.0)
  {
    v101 = v33;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 83) = v34;
  [objc_msgSend(v11 "requestStartDate")];
  v36 = v35;
  v37 = 0;
  if (*&v36 != 0.0)
  {
    v101 = v36;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 84) = v37;
  [objc_msgSend(v11 "responseStartDate")];
  v39 = v38;
  v40 = 0.0;
  if (*&v39 != 0.0)
  {
    v101 = v39;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  if (*(v13 + 84) >= v40)
  {
    v40 = *(v13 + 84);
  }

  *(v13 + 85) = v40;
  [objc_msgSend(v11 "responseEndDate")];
  v42 = v41;
  v43 = 0;
  if (*&v42 != 0.0)
  {
    v101 = v42;
    WTF::WallTime::approximateMonotonicTime(&v101);
  }

  *(v13 + 86) = v43;
  *(v13 + 714) |= 1u;
  *(v13 + 356) = [metrics redirectCount];
  MEMORY[0x19EB02040](&v101, [v11 networkProtocolName]);
  v45 = v101;
  v101 = 0;
  v46 = *(v13 + 88);
  *(v13 + 88) = v45;
  if (v46)
  {
    if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v44);
    }

    v57 = v101;
    v101 = 0;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, v44);
    }
  }

  if ([v11 isCellular])
  {
    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xFD | v47;
  if ([v11 isExpensive])
  {
    v48 = 4;
  }

  else
  {
    v48 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xFB | v48;
  if ([v11 isConstrained])
  {
    v49 = 8;
  }

  else
  {
    v49 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xF7 | v49;
  if ([v11 isMultipath])
  {
    v50 = 16;
  }

  else
  {
    v50 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xEF | v50;
  if ([v11 isReusedConnection])
  {
    v51 = 32;
  }

  else
  {
    v51 = 0;
  }

  *(v13 + 714) = *(v13 + 714) & 0xDF | v51;
  _privacyStance = [v11 _privacyStance];
  if (_privacyStance >= 6)
  {
    v53 = 0;
  }

  else
  {
    v53 = _privacyStance;
  }

  *(v13 + 715) = v53;
  if (WebKit::NetworkDataTask::shouldCaptureExtraNetworkLoadMetrics(v111))
  {
    WebCore::AdditionalNetworkLoadMetricsForWebInspector::create(&v110);
    [task priority];
    if (*MEMORY[0x1E695ABC8] > v58)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    if (*MEMORY[0x1E695ABD0] >= v58)
    {
      v59 = 0;
    }

    *(v110 + 4) = v59;
    v60 = [objc_msgSend(v11 "remotePort")];
    if (v60)
    {
      MEMORY[0x19EB02040](&v109, [v11 remoteAddress]);
      WTF::makeString<WTF::String,char,unsigned int>(&v101, v109, v60);
      v62 = *(v110 + 8);
      *(v110 + 8) = v101;
      if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, v61);
      }

      v63 = v109;
      v109 = 0;
      if (!v63)
      {
        goto LABEL_82;
      }
    }

    else
    {
      MEMORY[0x19EB02040](&v101, [v11 remoteAddress]);
      v64 = v101;
      v101 = 0;
      v65 = *(v110 + 8);
      *(v110 + 8) = v64;
      if (!v65)
      {
        goto LABEL_82;
      }

      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v61);
      }

      v63 = v101;
      v101 = 0;
      if (!v63)
      {
        goto LABEL_82;
      }
    }

    if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v63, v61);
    }

LABEL_82:
    MEMORY[0x19EB02040](&v101, [objc_msgSend(v11 "_connectionIdentifier")]);
    v67 = v101;
    v101 = 0;
    v68 = *(v110 + 16);
    *(v110 + 16) = v67;
    if (v68)
    {
      if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v66);
      }

      v93 = v101;
      v101 = 0;
      if (v93 && atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v93, v66);
      }
    }

    stringForTLSProtocolVersion(&v101, [objc_msgSend(v11 "negotiatedTLSProtocolVersion")]);
    v70 = *(v110 + 24);
    *(v110 + 24) = v101;
    if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v70, v69);
    }

    stringForTLSCipherSuite(&v101, [objc_msgSend(v11 "negotiatedTLSCipherSuite")]);
    v72 = *(v110 + 32);
    *(v110 + 32) = v101;
    if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v72, v71);
    }

    v101 = 0;
    v102 = &v101;
    v103 = 0x5012000000;
    v104 = __Block_byref_object_copy__0;
    v105 = __Block_byref_object_dispose__0;
    v106 = 0;
    WebCore::HTTPHeaderMap::HTTPHeaderMap(v107);
    v73 = [objc_msgSend(v11 "request")];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __71__WKNetworkSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke;
    v100[3] = &unk_1E7630B20;
    v100[4] = &v101;
    [v73 enumerateKeysAndObjectsUsingBlock:v100];
    v74 = v102;
    v75 = v110;
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::operator=(v110 + 40, v102 + 6);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::operator=(v75 + 56, v74 + 8);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    transactionMetrics2 = [metrics transactionMetrics];
    v77 = [transactionMetrics2 countByEnumeratingWithState:&v96 objects:v112 count:16];
    taskCopy = task;
    v78 = 0;
    v79 = 0;
    if (v77)
    {
      v80 = *v97;
      obj = transactionMetrics2;
      do
      {
        for (i = 0; i != v77; ++i)
        {
          if (*v97 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v82 = *(*(&v96 + 1) + 8 * i);
          v78 += [v82 countOfRequestHeaderBytesSent];
          v79 += [v82 countOfResponseHeaderBytesReceived];
        }

        v77 = [obj countByEnumeratingWithState:&v96 objects:v112 count:16];
      }

      while (v77);
    }

    *(v110 + 72) = v78;
    countOfBytesSent = [taskCopy countOfBytesSent];
    v84 = v110;
    *(v110 + 80) = v79;
    *(v84 + 88) = countOfBytesSent;
    isProxyConnection = [v11 isProxyConnection];
    v87 = v110;
    *(v110 + 96) = isProxyConnection;
    v110 = 0;
    v88 = *(v13 + 92);
    *(v13 + 92) = v87;
    if (v88)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v88, v86);
    }

    _Block_object_dispose(&v101, 8);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v108, v89);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v107, v90);
    v92 = v110;
    v110 = 0;
    if (v92)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v92, v91);
    }
  }

  *(v13 + 90) = [v11 countOfResponseBodyBytesReceived];
  countOfResponseBodyBytesAfterDecoding = [v11 countOfResponseBodyBytesAfterDecoding];
  *(v13 + 91) = countOfResponseBodyBytesAfterDecoding;
  if (!countOfResponseBodyBytesAfterDecoding)
  {
    *(v13 + 90) = 0;
  }

  if (v11)
  {
  }

  if (v8)
  {
  }

  v56 = v111;
  v111 = 0;
  if (v56)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v56 + 1, v55);
  }
}

WTF::StringImpl *__71__WKNetworkSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  MEMORY[0x19EB02040](&v9, a2);
  MEMORY[0x19EB02040](&v8, a3);
  WebCore::HTTPHeaderMap::set((v4 + 48), &v9, &v8);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

- (void)URLSession:(id)session task:(id)task didReceiveInformationalResponse:(id)response
{
  if (self)
  {
    objc_msgSend_existingTask_(self, a2, task);
    if (v12)
    {
      WebCore::ResourceResponse::ResourceResponse(v10, response);
      WebKit::NetworkDataTask::didReceiveInformationalResponse(v12, v10);
      v7 = v11;
      v11 = 0;
      if (v7)
      {
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v10, v6);
      v9 = v12;
      v12 = 0;
      if (v9)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v9 + 8), v8);
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task _didReceiveInformationalResponse:(id)response
{
  v8 = WTF::dynamic_objc_cast<NSHTTPURLResponse>(response);
  if (v8)
  {
    v10 = v8;
    v9 = v8;
    [(WKNetworkSessionDelegate *)self URLSession:session task:task didReceiveInformationalResponse:v10];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v81 = *MEMORY[0x1E69E9840];
  taskIdentifier = [task taskIdentifier];
  if (!self)
  {
    v72 = 0;
    goto LABEL_40;
  }

  v11 = taskIdentifier;
  objc_msgSend_existingTask_(self);
  if (!v72)
  {
LABEL_40:
    (*(handler + 2))(handler, 0);
    goto LABEL_36;
  }

  _incompleteTaskMetrics = [task _incompleteTaskMetrics];
  v13 = _incompleteTaskMetrics;
  if (_incompleteTaskMetrics)
  {
    v14 = _incompleteTaskMetrics;
  }

  v15 = [objc_msgSend(v13 "transactionMetrics")];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  v66 = [(NSURLSessionTaskTransactionMetrics *)v16 _privacyStance]!= 4 && [(NSURLSessionTaskTransactionMetrics *)v16 _privacyStance]!= 1;
  if ([(NSURLSessionTaskTransactionMetrics *)v16 _establishmentReport]&& (v18 = nw_establishment_report_copy_proxy_endpoint([(NSURLSessionTaskTransactionMetrics *)v16 _establishmentReport]), (v19 = v18) != 0))
  {
    hostname = nw_endpoint_get_hostname(v18);
    if (hostname)
    {
      strlen(hostname);
      WTF::String::fromUTF8();
      v20 = v68[0];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v64 = checkForLegacyTLS(v16);
  v21 = WTF::dynamic_objc_cast<NSHTTPURLResponse>(response);
  v22 = v21;
  if (!v21)
  {
    v26 = 0;
    v65 = 1;
LABEL_50:
    [response _CFURLResponse];
    WebCore::adjustMIMETypeIfNecessary();
    goto LABEL_16;
  }

  v23 = v21;
  statusCode = [v22 statusCode];
  v25 = [v22 valueForHTTPHeaderField:@"X-Content-Type-Options"];
  v26 = v25;
  v65 = v25 == 0;
  if (v25)
  {
    v47 = v25;
    [v26 caseInsensitiveCompare:@"nosniff"];
  }

  if (statusCode != 304)
  {
    goto LABEL_50;
  }

LABEL_16:
  WebCore::ResourceResponse::ResourceResponse(v68, response);
  v27 = WebCore::ResourceResponseBase::url(v68);
  if ((WTF::URL::hasSpecialScheme(v27) & 1) == 0)
  {
    v66 = 0;
  }

  WebCore::ResourceResponse::disableLazyInitialization(v68);
  WebCore::copyTimingData();
  v29 = *buf;
  *buf = 0;
  v30 = v69;
  v69 = v29;
  if (v30)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v30, v28);
    v48 = *buf;
    *buf = 0;
    if (v48)
    {
      WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v48, v28);
    }
  }

  v31 = v70;
  v70 = v20;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v28);
  }

  v32 = v72;
  v33 = _Block_copy(handler);
  v35 = WTF::fastMalloc(v34, 0x18);
  *v35 = &unk_1F10ED850;
  v35[1] = v33;
  v35[2] = v11;
  v67 = v35;
  if (!kdebug_is_enabled())
  {
    goto LABEL_21;
  }

  v50 = *MEMORY[0x1E696EB68];
  v51 = WTFSignpostLogHandle();
  v52 = v51;
  if (!v50)
  {
    if (v51)
    {
      v61 = v51;
    }

    v62 = *(v32 + 608);
    if (v62)
    {
      v63 = os_signpost_id_make_with_pointer(v52, v62);
      if (v63 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_71:
        if (v52)
        {
        }

        goto LABEL_21;
      }
    }

    else
    {
      v63 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v52))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v52, OS_SIGNPOST_EVENT, v63, "DataTask", "received response headers", buf, 2u);
    }

    goto LABEL_71;
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v53 = *(v32 + 608);
    v54 = WTFCurrentContinuousTime();
    *buf = 67109888;
    *&buf[4] = 0;
    v75 = 1024;
    v76 = 0;
    v77 = 2048;
    v78 = v53;
    v79 = 2048;
    v80 = v54;
    _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received response headers", buf, 0x22u);
  }

LABEL_21:
  if (*(v32 + 545) == 1)
  {
    v49 = WebCore::ResourceResponseBase::url(v68);
    WebKit::NetworkDataTaskCocoa::updateFirstPartyInfoForSession(v32, v49);
  }

  else
  {
    _incompleteTaskMetrics2 = [*(v32 + 608) _incompleteTaskMetrics];
    if (WebKit::NetworkIssueReporter::shouldReport(_incompleteTaskMetrics2, v37))
    {
      v56 = *(v32 + 16);
      if (v56)
      {
        v57 = *(v56 + 8);
        if (v57)
        {
          ++*(v57 + 16);
          v58 = *(v32 + 760);
          if (!v58 || (v59 = WebCore::ResourceRequestBase::url((v32 + 128)), WebKit::NetworkSession::reportNetworkIssue(v57, v58, v59), (v60 = *(v57 + 16)) == 0))
          {
            __break(0xC471u);
            JUMPOUT(0x19D938C74);
          }

          *(v57 + 16) = v60 - 1;
        }
      }
    }
  }

  v38 = MEMORY[0x19EB02040](&v73, [objc_msgSend(objc_msgSend(objc_msgSend(*(v32 + 608) "_incompleteTaskMetrics")]);
  WebCore::IPAddress::fromString(buf, v38, v39);
  WebKit::NetworkDataTask::didReceiveResponse(v32, v68, v64, v66, buf, &v67);
  v41 = v73;
  v73 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v40);
  }

  v42 = v67;
  v67 = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  _Block_release(0);
  v44 = v71;
  v71 = 0;
  if (v44)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v68, v43);
  if (!v65)
  {
  }

  if (v22)
  {
  }

  if (v16)
  {
  }

  if (v13)
  {
  }

LABEL_36:
  v46 = v72;
  v72 = 0;
  if (v46)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v46 + 8), v45);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!self)
  {
    return;
  }

  objc_msgSend_existingTask_(self, a2, task);
  v6 = v24;
  if (!v24)
  {
    return;
  }

  WebCore::SharedBuffer::create<NSData *&>(&dataCopy, v5, &v23);
  v7 = v23;
  if (kdebug_is_enabled())
  {
    v13 = *MEMORY[0x1E696EB68];
    v14 = WTFSignpostLogHandle();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v6 + 608);
        v17 = WTFCurrentContinuousTime();
        v18 = v7[7];
        *buf = 67110144;
        *v27 = 0;
        *&v27[4] = 1024;
        *&v27[6] = 0;
        v28 = 2048;
        v29 = v16;
        v30 = 2048;
        v31 = v17;
        v32 = 2048;
        v33 = v18;
        _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "type=%d name=%d p=%lu ts=%llu received %zd bytes", buf, 0x2Cu);
      }

      goto LABEL_4;
    }

    if (v14)
    {
      v19 = v14;
    }

    v20 = *(v6 + 608);
    if (v20)
    {
      v21 = os_signpost_id_make_with_pointer(v15, v20);
      if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_24:
        if (v15)
        {
        }

        goto LABEL_4;
      }
    }

    else
    {
      v21 = 0xEEEEB0B5B2B2EEEELL;
    }

    if (os_signpost_enabled(v15))
    {
      v22 = v7[7];
      *buf = 134217984;
      *v27 = v22;
      _os_signpost_emit_with_name_impl(&dword_19D52D000, v15, OS_SIGNPOST_EVENT, v21, "DataTask", "received %zd bytes", buf, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_4:
  *(v6 + 536) = [*(v6 + 608) _countOfBytesReceivedEncoded];
  v9 = *(v6 + 24);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      (**v10)(v10);
      (*(*v10 + 64))(v10, v7);
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v23;
  v23 = 0;
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    (*(*v11 + 8))(v11);
  }

  v12 = v24;
  v24 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v12 + 8), v8);
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (m_ptr)
  {
    v6 = *(m_ptr + 1);
    if (v6)
    {
      v8 = WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional((v6 + 40), [task taskIdentifier]);
      if (v9)
      {
        v10 = self->_session.m_impl.m_ptr;
        if (v10)
        {
          v11 = *(v10 + 1);
          if (v11)
          {
            ++*(v11 + 16);
            v12 = *(v11 + 32);
            ++*(v12 + 184);
            v18 = v8;
            v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v12 + 216), &v18);
            if (v13)
            {
              v14 = v13 + 4;
              ++v13[4];
              v15 = *(v12 + 184);
              if (!v15)
              {
                goto LABEL_14;
              }

              *(v12 + 184) = v15 - 1;
              WebKit::Download::didFinish(v13);
              WTF::RefCounted<WebKit::Download>::deref(v14);
            }

            else
            {
              v17 = *(v12 + 184);
              if (!v17)
              {
                goto LABEL_14;
              }

              *(v12 + 184) = v17 - 1;
            }

            v16 = *(v11 + 16);
            if (v16)
            {
              *(v11 + 16) = v16 - 1;
              return;
            }

LABEL_14:
            __break(0xC471u);
            JUMPOUT(0x19D939394);
          }
        }
      }
    }
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v8 = *(m_ptr + 1);
  if (!v8)
  {
    return;
  }

  taskIdentifier = [task taskIdentifier];
  if (taskIdentifier == -1)
  {
    __break(0xC471u);
    goto LABEL_24;
  }

  if (!taskIdentifier)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9395C0);
  }

  v14 = *(v8 + 40);
  if (!v14)
  {
    return;
  }

  v15 = *(v14 - 8);
  v16 = (taskIdentifier + ~(taskIdentifier << 32)) ^ ((taskIdentifier + ~(taskIdentifier << 32)) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = v15 & ((v18 >> 31) ^ v18);
  v20 = *(v14 + 16 * v19);
  if (v20 == taskIdentifier)
  {
LABEL_10:
    v22 = self->_session.m_impl.m_ptr;
    if (!v22)
    {
      return;
    }

    v23 = *(v22 + 1);
    if (!v23)
    {
      return;
    }

    v24 = *(v14 + 16 * v19 + 8);
    ++*(v23 + 16);
    v25 = *(v23 + 32);
    ++*(v25 + 184);
    v31 = v24;
    v26 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::Download,WTF::RawPtrTraits<WebKit::Download>,WTF::DefaultRefDerefTraits<WebKit::Download>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v25 + 216), &v31);
    if (v26)
    {
      v27 = v26 + 4;
      ++v26[4];
      v28 = *(v25 + 184);
      if (v28)
      {
        *(v25 + 184) = v28 - 1;
        WebKit::Download::didReceiveData(v26, data, written, write);
        WTF::RefCounted<WebKit::Download>::deref(v27);
LABEL_15:
        v29 = *(v23 + 16);
        if (v29)
        {
          *(v23 + 16) = v29 - 1;
          return;
        }

        __break(0xC471u);
LABEL_24:
        JUMPOUT(0x19D9395A0);
      }
    }

    else
    {
      v30 = *(v25 + 184);
      if (v30)
      {
        *(v25 + 184) = v30 - 1;
        goto LABEL_15;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D9395E0);
  }

  v21 = 1;
  while (v20)
  {
    v19 = (v19 + v21) & v15;
    v20 = *(v14 + 16 * v19);
    ++v21;
    if (v20 == taskIdentifier)
    {
      goto LABEL_10;
    }
  }
}

- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask
{
  if (!self)
  {
    return;
  }

  objc_msgSend_existingTask_(self, a2, task);
  v8 = v46;
  if (!v46)
  {
    return;
  }

  v9 = *(v46 + 2);
  if (!v9 || (v10 = *(v9 + 8)) == 0)
  {
    v46 = 0;
LABEL_33:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v8 + 1, v7);
    return;
  }

  ++*(v10 + 16);
  v11 = (v8 + 8);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
  v8 = v46;
LABEL_10:
  v14 = *(v8 + 5);
  if (!v14)
  {
    __break(1u);
    goto LABEL_37;
  }

  v45 = *(v8 + 5);
  v15 = *(v10 + 32);
  v17 = *(v15 + 184);
  v16 = (v15 + 184);
  *v16 = v17 + 1;
  WebKit::NetworkDataTaskCocoa::suggestedFilename(v8, v42);
  v19 = WebKit::Download::operator new(0x1C8, v18);
  v44 = WebKit::Download::Download(v19, v16, v14, downloadTask, v10);
  v21 = v42[0];
  v42[0] = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = v46;
  v23 = v44;
  v24 = *(v46 + 75);
  *(v46 + 75) = 0;
  v25 = *(v23 + 8);
  *(v23 + 8) = v24;
  if (v25)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v25);
    v23 = v44;
    v22 = v46;
  }

  WebKit::Download::didCreateDestination(v23, (v22 + 120));
  WebKit::DownloadManager::dataTaskBecameDownloadTask(v16, v45, &v44);
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (!m_ptr || (v27 = *(m_ptr + 1)) == 0)
  {
LABEL_37:
    __break(0xC471u);
    JUMPOUT(0x19D9398F8);
  }

  taskIdentifier = [downloadTask taskIdentifier];
  v29 = *(v27 + 40);
  if (v29)
  {
    if (taskIdentifier == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D939978);
    }

    if (!taskIdentifier || (v30 = *(v29 - 8), v31 = (taskIdentifier + ~(taskIdentifier << 32)) ^ ((taskIdentifier + ~(taskIdentifier << 32)) >> 22), v32 = 9 * ((v31 + ~(v31 << 13)) ^ ((v31 + ~(v31 << 13)) >> 8)), v33 = (v32 ^ (v32 >> 15)) + ~((v32 ^ (v32 >> 15)) << 27), v34 = v30 & ((v33 >> 31) ^ v33), v35 = *(v29 + 16 * v34), v35 == taskIdentifier))
    {
LABEL_42:
      __break(0xC471u);
      JUMPOUT(0x19D939820);
    }

    v36 = 1;
    while (v35)
    {
      v34 = (v34 + v36) & v30;
      v35 = *(v29 + 16 * v34);
      ++v36;
      if (v35 == taskIdentifier)
      {
        goto LABEL_42;
      }
    }
  }

  v37 = self->_sessionWrapper.m_impl.m_ptr;
  if (!v37 || (v38 = *(v37 + 1)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D939918);
  }

  taskIdentifier2 = [downloadTask taskIdentifier];
  WTF::HashMap<unsigned long long,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>((v38 + 40), &taskIdentifier2, &v45, v42);
  v40 = v44;
  v44 = 0;
  if (v40)
  {
    WTF::RefCounted<WebKit::Download>::deref(v40 + 4);
  }

  if (!*v16)
  {
    __break(0xC471u);
    JUMPOUT(0x19D939938);
  }

  --*v16;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v11, v39);
  v41 = *(v10 + 16);
  if (!v41)
  {
    __break(0xC471u);
    JUMPOUT(0x19D939958);
  }

  *(v10 + 16) = v41 - 1;
  v8 = v46;
  v46 = 0;
  if (v8)
  {
    goto LABEL_33;
  }
}

- (RefPtr<WebKit::WebSocketTask,)existingWebSocketTask:(id)task
{
  v4 = v3;
  m_ptr = self->_sessionWrapper.m_impl.m_ptr;
  if (m_ptr && (v6 = *(m_ptr + 1)) != 0 && task && (self = WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::WebSocketTask,WTF::NoTaggingTraits<WebKit::WebSocketTask>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,unsigned long long>(&v9, (v6 + 48), [task taskIdentifier]), (v7 = v10) != 0))
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v4, v10, v9);
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v8);
  }

  else
  {
    *v4 = 0;
  }

  return self;
}

- (void)URLSession:(id)session webSocketTask:(id)task didOpenWithProtocol:(id)protocol
{
  if (self)
  {
    objc_msgSend_existingWebSocketTask_(self, a2, task);
    v6 = v11;
    if (v11)
    {
      MEMORY[0x19EB02040](&v10, protocol);
      WebKit::WebSocketTask::didConnect(v6, &v10);
      v8 = v10;
      v10 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v9 = v11;
      v11 = 0;
      if (v9)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref(v9 + 5, v7);
      }
    }
  }
}

- (void)URLSession:(id)session webSocketTask:(id)task didCloseWithCode:(int64_t)code reason:(id)reason
{
  if (self)
  {
    codeCopy = code;
    objc_msgSend_existingWebSocketTask_(self, a2, task);
    if (v14)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:reason encoding:4];
      v9 = v14;
      MEMORY[0x19EB02040](&v13, v8);
      WebKit::WebSocketTask::didClose(v9, codeCopy, &v13);
      v11 = v13;
      v13 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
        if (!v8)
        {
LABEL_7:
          v12 = v14;
          v14 = 0;
          if (v12)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebSocketTask,(WTF::DestructionThread)0>::deref((v12 + 40), v10);
          }

          return;
        }
      }

      else if (!v8)
      {
        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)URLSession:task:didReceiveChallenge:completionHandler:
{
  WeakRetained = objc_loadWeakRetained((self + 32));
  v7 = WeakRetained;
  if (!WeakRetained || (v8 = *(WeakRetained + 2)) == 0 || !*(v8 + 8))
  {
    (*(*(self + 48) + 16))();
    goto LABEL_34;
  }

  v9 = *(self + 64);
  *(self + 64) = 0;
  v10 = *(self + 40);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_28;
  }

  v11 = *(v10 + 8);
  if (!v11)
  {
LABEL_28:
    LOBYTE(a3) = 1;
LABEL_29:
    (*(*(self + 48) + 16))();
    if (a3)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  ++*(v11 + 16);
  if (!a3)
  {
    goto LABEL_29;
  }

  v12 = *(WeakRetained + 2);
  if (!v12 || (v13 = *(v12 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D943C7CLL);
  }

  v14 = (*(v13 + 8) + 1);
  *(v13 + 8) = v14;
  v15 = *(self + 72);
  v16 = *(self + 56);
  v17 = WTF::fastMalloc(v14, 0x10);
  v18 = *(self + 48);
  *(self + 48) = 0;
  *v17 = &unk_1F10ED478;
  v17[1] = v18;
  MEMORY[0x19EB0B400](v34, a2);
  if (v9)
  {
    while (1)
    {
      v19 = *(v9 + 8);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = *(v9 + 8);
      atomic_compare_exchange_strong_explicit((v9 + 8), &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
  }

LABEL_15:
  v33 = v9;
  v21 = [objc_msgSend(a2 "protectionSpace")];
  v23 = v21;
  if (v21)
  {
    CFRetain(v21);
  }

  v24 = WTF::fastMalloc(v22, 0x18);
  *v24 = &unk_1F10ED450;
  v24[1] = v17;
  v24[2] = v23;
  v32 = v24;
  WebKit::NetworkSessionCocoa::continueDidReceiveChallenge(v11, v13, v34, v15, v16, &v33, &v32);
  v26 = v32;
  v32 = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v9 + 8), v25);
  }

  v27 = v36;
  v36 = 0;
  if (v27)
  {
  }

  v28 = v35;
  v35 = 0;
  if (v28)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v34, v25);
  v30 = *(v13 + 8);
  if (!v30)
  {
LABEL_39:
    __break(0xC471u);
    JUMPOUT(0x19D943C5CLL);
  }

  *(v13 + 8) = v30 - 1;
LABEL_30:
  v31 = *(v11 + 16);
  if (!v31)
  {
    goto LABEL_39;
  }

  *(v11 + 16) = v31 - 1;
LABEL_32:
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v9 + 8), v29);
  }

LABEL_34:
  if (v7)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)session task:willPerformHTTPRedirection:newRequest:completionHandler:
{
  *session = &unk_1F10ED7D8;
  _Block_release(*(session + 8));
  return session;
}

- (uint64_t)URLSession:(const void *)session task:willPerformHTTPRedirection:newRequest:completionHandler:
{
  *session = &unk_1F10ED7D8;
  _Block_release(session[1]);

  return WTF::fastFree(session, v2);
}

- (void)URLSession:(uint64_t)session task:(uint64_t)task willPerformHTTPRedirection:newRequest:completionHandler:
{
  v4 = WebCore::ResourceRequest::nsURLRequest();
  if (v4)
  {
    v3 = v4;
  }

  (*(*(session + 8) + 16))();
  if (v4)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)session task:_schemeUpgraded:completionHandler:
{
  *session = &unk_1F10ED800;
  _Block_release(*(session + 8));
  return session;
}

- (uint64_t)URLSession:(const void *)session task:_schemeUpgraded:completionHandler:
{
  *session = &unk_1F10ED800;
  _Block_release(session[1]);

  return WTF::fastFree(session, v2);
}

- (void)URLSession:(uint64_t)session task:(uint64_t)task _schemeUpgraded:completionHandler:
{
  v3 = WebCore::ResourceRequest::nsURLRequest();
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  updateIgnoreStrictTransportSecuritySetting(&v6, *(session + 24));
  v5 = v6;
  (*(*(session + 8) + 16))();
  if (v5)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)session task:didReceiveChallenge:completionHandler:
{
  *session = &unk_1F10ED828;
  _Block_release(*(session + 8));
  return session;
}

- (uint64_t)URLSession:(const void *)session task:didReceiveChallenge:completionHandler:
{
  *session = &unk_1F10ED828;
  _Block_release(session[1]);

  return WTF::fastFree(session, v2);
}

- (void)URLSession:(WebCore::Credential *)this task:didReceiveChallenge:completionHandler:
{
  v5 = WebCore::Credential::nsCredential(this);
  if (v5)
  {
    v4 = v5;
  }

  (*(*(self + 8) + 16))();
  if (v5)
  {
  }
}

- (uint64_t)URLSession:(uint64_t)session dataTask:didReceiveResponse:completionHandler:
{
  *session = &unk_1F10ED850;
  _Block_release(*(session + 8));
  return session;
}

- (uint64_t)URLSession:(const void *)session dataTask:didReceiveResponse:completionHandler:
{
  *session = &unk_1F10ED850;
  _Block_release(session[1]);

  return WTF::fastFree(session, v2);
}

@end