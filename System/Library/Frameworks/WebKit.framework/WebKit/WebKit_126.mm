void WebKit::VideoPresentationModelContext::didExitPictureInPicture(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v3 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v4 = *(*(this + 3) + 336);
    v7[0] = "VideoPresentationModelContext";
    v7[1] = 30;
    v7[2] = "didExitPictureInPicture";
    v7[3] = v4;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v7))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v7);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 4);
      WebKit::VideoPresentationManagerProxy::hasVideoInPictureInPictureDidChange(v6, 0);
      if (*(v6 + 4) == 1)
      {
        (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 4);
      }
    }
  }
}

void sub_19DCA0944(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::VideoPresentationModelContext::willEnterPictureInPicture(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v4 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v5 = *(*(this + 3) + 336);
    v8[0] = "VideoPresentationModelContext";
    v8[1] = 30;
    v8[2] = "willEnterPictureInPicture";
    v8[3] = v5;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v8))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v8);
    }

    v3 = (v4 + 2);
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      (*(*v4 + 8))(v4);
    }
  }

  v6 = WTF::fastMalloc(v3, 0x10);
  *v6 = &unk_1F1102D70;
  v8[0] = v6;
  WTF::WeakHashSet<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(this + 6, v8);
  return (*(*v6 + 8))(v6);
}

uint64_t WebKit::VideoPresentationModelContext::failedToEnterPictureInPicture(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v4 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v5 = *(*(this + 3) + 336);
    v8[0] = "VideoPresentationModelContext";
    v8[1] = 30;
    v8[2] = "failedToEnterPictureInPicture";
    v8[3] = v5;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v8))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v8);
    }

    v3 = (v4 + 2);
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      (*(*v4 + 8))(v4);
    }
  }

  v6 = WTF::fastMalloc(v3, 0x10);
  *v6 = &unk_1F1102D98;
  v8[0] = v6;
  WTF::WeakHashSet<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(this + 6, v8);
  return (*(*v6 + 8))(v6);
}

uint64_t WebKit::VideoPresentationModelContext::willExitPictureInPicture(WebKit::VideoPresentationModelContext *this)
{
  v2 = WebKit::VideoPresentationModelContext::loggerPtr(this);
  if (v2)
  {
    v4 = v2;
    atomic_fetch_add(v2 + 2, 1u);
    v5 = *(*(this + 3) + 336);
    v8[0] = "VideoPresentationModelContext";
    v8[1] = 30;
    v8[2] = "willExitPictureInPicture";
    v8[3] = v5;
    if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v8))
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v8);
    }

    v3 = (v4 + 2);
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      (*(*v4 + 8))(v4);
    }
  }

  v6 = WTF::fastMalloc(v3, 0x10);
  *v6 = &unk_1F1102DC0;
  v8[0] = v6;
  WTF::WeakHashSet<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(this + 6, v8);
  return (*(*v6 + 8))(v6);
}

void WebKit::VideoPresentationModelContext::setRequiresTextTrackRepresentation(WebKit::VideoPresentationModelContext *this, char a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = v4 + 1;
      v5 = *(this + 5);
      v19 = *(this + 4);
      v20 = v5;
      v18[0] = a2;
      v6 = *(v3 + 48);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          CFRetain(*(v7 - 8));
          v21[0] = v5;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v8 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v21);
          if (v8)
          {
            v9 = v8;
            atomic_fetch_add(v8 + 4, 1u);
            v10 = WebKit::WebPageProxy::webPageIDInProcess((v7 - 16), v8);
            v12 = IPC::Encoder::operator new(0x238, v11);
            *v12 = 1806;
            *(v12 + 2) = 0;
            *(v12 + 3) = 0;
            *(v12 + 1) = v10;
            *(v12 + 68) = 0;
            *(v12 + 70) = 0;
            *(v12 + 69) = 0;
            IPC::Encoder::encodeHeader(v12);
            v23 = v12;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v19);
            IPC::Encoder::operator<<<BOOL &>(v12, v18);
            LOBYTE(v21[0]) = 0;
            v22 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v9, &v23, 0, v21, 1);
            if (v22 == 1)
            {
              v14 = v21[0];
              v21[0] = 0;
              if (v14)
              {
                (*(*v14 + 8))(v14);
              }
            }

            v15 = v23;
            v23 = 0;
            if (v15)
            {
              IPC::Encoder::~Encoder(v15, v13);
              bmalloc::api::tzoneFree(v16, v17);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v13);
          }

          CFRelease(*(v7 - 8));
          v4 = *(v3 + 16) - 1;
        }
      }

      if (v4)
      {
        *(v3 + 16) = v4;
      }

      else
      {
        (*(*v3 + 24))(v3);
      }
    }
  }
}

void sub_19DCA1104(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, IPC::Encoder *a16)
{
  if (a15 == 1 && a13)
  {
    (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a16)
  {
    IPC::Encoder::~Encoder(a16, a2);
    bmalloc::api::tzoneFree(v20, v21);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v17, a2);
  CFRelease(*(v18 - 8));
  if (v16[4] == 1)
  {
    (*(*v16 + 24))(v16);
  }

  else
  {
    --v16[4];
  }

  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationModelContext::setTextTrackRepresentationBounds(WebKit::VideoPresentationModelContext *this, const WebCore::IntRect *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = v4 + 1;
      v5 = *(v3 + 48);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          v9 = *(this + 4);
          v8 = *(this + 5);
          CFRetain(*(v6 - 8));
          v20[0] = v8;
          {
            WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
          }

          v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v20);
          if (v10)
          {
            v11 = v10;
            atomic_fetch_add(v10 + 4, 1u);
            v12 = WebKit::WebPageProxy::webPageIDInProcess((v6 - 16), v10);
            v14 = IPC::Encoder::operator new(0x238, v13);
            *v14 = 1807;
            *(v14 + 2) = 0;
            *(v14 + 3) = 0;
            *(v14 + 1) = v12;
            *(v14 + 68) = 0;
            *(v14 + 70) = 0;
            *(v14 + 69) = 0;
            IPC::Encoder::encodeHeader(v14);
            v22 = v14;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v9);
            IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v14, a2);
            LOBYTE(v20[0]) = 0;
            v21 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v11, &v22, 0, v20, 1);
            if (v21 == 1)
            {
              v16 = v20[0];
              v20[0] = 0;
              if (v16)
              {
                (*(*v16 + 8))(v16);
              }
            }

            v17 = v22;
            v22 = 0;
            if (v17)
            {
              IPC::Encoder::~Encoder(v17, v15);
              bmalloc::api::tzoneFree(v18, v19);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16), v15);
          }

          CFRelease(*(v6 - 8));
          v4 = *(v3 + 16) - 1;
        }
      }

      if (v4)
      {
        *(v3 + 16) = v4;
      }

      else
      {
        (*(*v3 + 24))(v3, a2);
      }
    }
  }
}

void sub_19DCA13A4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v16, v17);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13, a2);
  CFRelease(*(v14 - 8));
  if (v12[4] == 1)
  {
    (*(*v12 + 24))(v12);
  }

  else
  {
    --v12[4];
  }

  _Unwind_Resume(a1);
}

unint64_t WebKit::VideoPresentationModelContext::nextChildIdentifier(WebKit::VideoPresentationModelContext *this)
{
  v1 = *(*(this + 3) + 336);
  v2 = *(this + 10) + 1;
  *(this + 10) = v2;
  return v1 & 0xFFFFFFFFFFFF0000 | v2;
}

void WebKit::VideoPresentationManagerProxy::~VideoPresentationManagerProxy(WebKit::VideoPresentationManagerProxy *this)
{
  *this = &unk_1F11027A0;
  v2 = *(*(this + 7) + 80);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(*(this + 7) + 88);
  v12[0] = "PlaybackSessionManagerProxy";
  v12[1] = 28;
  v12[2] = "~VideoPresentationManagerProxy";
  v12[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v12))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v12);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  WebKit::VideoPresentationManagerProxy::callCloseCompletionHandlers(this);
  WebKit::VideoPresentationManagerProxy::invalidate(this);
  v5 = *(this + 12);
  if (v5)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v5, v4);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, v4);
  v7 = *(this + 9);
  if (v7)
  {
    WTF::fastFree((v7 - 16), v6);
  }

  v8 = *(this + 8);
  if (v8)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    if (v9[4] == 1)
    {
      (*(*v9 + 24))(v9);
    }

    else
    {
      --v9[4];
    }
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v6);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v6);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v11);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::VideoPresentationManagerProxy::~VideoPresentationManagerProxy(this);

  WTF::fastFree(v1, v2);
}

void sub_19DCA1688(_Unwind_Exception *a1, void *a2)
{
  v4 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = (v4 + 8);
    if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      (*(*v6 + 8))(v6, a2);
    }
  }

  v8 = *(v2 + 96);
  if (v8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 80, a2);
  v10 = *(v2 + 72);
  if (v10)
  {
    WTF::fastFree((v10 - 16), v9);
  }

  v11 = *(v2 + 64);
  if (v11)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v11, v9);
  }

  v12 = *(v2 + 56);
  *(v2 + 56) = 0;
  if (v12)
  {
    if (v12[4] == 1)
    {
      (*(*v12 + 24))(v12);
    }

    else
    {
      --v12[4];
    }
  }

  v13 = *(v2 + 48);
  *(v2 + 48) = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, v9);
  }

  *v2 = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), v9);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 24), v14);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::VideoPresentationManagerProxy::callCloseCompletionHandlers(WebKit::VideoPresentationManagerProxy *this)
{
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v5, this + 20);
  if (v6)
  {
    v2 = v5;
    v3 = 8 * v6;
    do
    {
      WTF::CompletionHandler<void ()(void)>::operator()(v2++);
      v3 -= 8;
    }

    while (v3);
  }

  return WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v5, v1);
}

uint64_t WebKit::VideoPresentationManagerProxy::invalidate(WebKit::VideoPresentationManagerProxy *this)
{
  v2 = *(*(this + 7) + 80);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(*(this + 7) + 88);
  v18[0] = "PlaybackSessionManagerProxy";
  v18[1] = 28;
  v18[2] = "invalidate";
  v18[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v18))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v18);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      CFRetain(*(v6 - 8));
      v7 = *(v6 + 336);
      atomic_fetch_add((v7 + 16), 1u);
      IPC::MessageReceiverMap::removeMessageReceiver(v7 + 96, 0x97u, *(v6 + 32));
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v8);
      }

      v9 = *(this + 6);
      *(this + 6) = 0;
      if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, v8);
      }

      CFRelease(*(v6 - 8));
    }
  }

  v11 = *(this + 8);
  v10 = *(this + 9);
  *(this + 8) = 0;
  if (v10)
  {
    *(this + 9) = 0;
    WTF::fastFree((v10 - 16), v4);
  }

  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v11);
  v14 = result;
  v15 = v13;
  if (v11)
  {
    v16 = v11 + 32 * *(v11 - 4);
  }

  else
  {
    v16 = 0;
  }

  if (v16 != result)
  {
    do
    {
      result = WebKit::VideoPresentationManagerProxy::invalidateInterface(*(v14 + 24), v13);
      do
      {
        v14 += 32;
        if (v14 == v15)
        {
          break;
        }
      }

      while (*v14 == 0 || *(v14 + 8) == -1);
    }

    while (v14 != v16);
  }

  if (v11)
  {
    return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v11, v13);
  }

  return result;
}

void sub_19DCA1A24(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::VideoPresentationManagerProxy::invalidateInterface(WebKit::VideoPresentationManagerProxy *this, WebCore::VideoPresentationInterfaceIOS *a2)
{
  WebCore::VideoPresentationInterfaceIOS::setVideoPresentationModel();
  v3 = *(this + 9);
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
    v5 = *(this + 9);
    *(this + 9) = 0;
    if (v5)
    {
    }
  }

  v6 = *(this + 10);
  if (v6)
  {
    v7 = v6;
    [v6 setPresentationModel:0];
    v13 = 0;
    (*(*(this + 8) + 16))(this + 64, &v13);
    v8 = v13;
    v13 = 0;
    if (v8)
    {
    }
  }

  v9 = *(this + 11);
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *(this + 11);
    *(this + 11) = 0;
    if (v10)
    {
    }
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
  }

  return WebCore::VideoPresentationInterfaceIOS::invalidate(this);
}

void sub_19DCA1BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::VideoPresentationManagerProxy::requestHideAndExitFullscreen(WebKit::VideoPresentationManagerProxy *this)
{
  v2 = *(*(this + 7) + 80);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(*(this + 7) + 88);
  v10[0] = "PlaybackSessionManagerProxy";
  v10[1] = 28;
  v10[2] = "requestHideAndExitFullscreen";
  v10[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v10))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v10);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 8);
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v4);
  v6 = result;
  v8 = v7;
  if (v4)
  {
    v4 += 32 * *(v4 - 4);
  }

  if (v4 != result)
  {
    do
    {
      result = (*(**(v6 + 24) + 192))(*(v6 + 24));
      do
      {
        v6 += 32;
        if (v6 == v8)
        {
          break;
        }
      }

      while (*v6 == 0 || *(v6 + 8) == -1);
    }

    while (v6 != v4);
  }

  return result;
}

void sub_19DCA1D24(_Unwind_Exception *exception_object)
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

BOOL WebKit::VideoPresentationManagerProxy::hasMode(WebKit::VideoPresentationManagerProxy *this, int a2)
{
  v4 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(this + 8);
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6 + 32 * *(v6 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v4)
  {
    return 0;
  }

  do
  {
    v8 = *(*(v4 + 24) + 212) & a2;
    v9 = v8 != 0;
    if (v8)
    {
      break;
    }

    do
    {
      v4 += 32;
      if (v4 == v5)
      {
        break;
      }
    }

    while (*v4 == 0 || *(v4 + 8) == -1);
  }

  while (v4 != v7);
  return v9;
}

uint64_t WebKit::VideoPresentationManagerProxy::mayAutomaticallyShowVideoPictureInPicture(WebKit::VideoPresentationManagerProxy *this)
{
  v2 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(this + 8);
  v3 = v2;
  v5 = v4;
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6 + 32 * *(v6 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v2)
  {
    return 0;
  }

  while (1)
  {
    result = (*(**(v3 + 24) + 256))(*(v3 + 24));
    if (result)
    {
      break;
    }

    do
    {
      v3 += 32;
      if (v3 == v5)
      {
        break;
      }
    }

    while (*v3 == 0 || *(v3 + 8) == -1);
    if (v3 == v7)
    {
      return result;
    }
  }

  return 1;
}

unint64_t *WebKit::VideoPresentationManagerProxy::controlsManagerInterface@<X0>(unint64_t *this@<X0>, unint64_t *a2@<X8>)
{
  v3 = this[7];
  v4 = *(v3 + 48);
  if (v4)
  {
    this = WebKit::VideoPresentationManagerProxy::ensureInterface(this, v4, *(v3 + 56), &v6);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return this;
}

unint64_t *WebKit::VideoPresentationManagerProxy::ensureInterface@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(a1, a2, a3);
  v6 = result[1];
  while (1)
  {
    v7 = *(v6 + 104);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(v6 + 104);
    atomic_compare_exchange_strong_explicit((v6 + 104), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 104));
LABEL_6:
  *a4 = v6;
  return result;
}

uint64_t WebKit::VideoPresentationManagerProxy::applicationDidBecomeActive(WebKit::VideoPresentationManagerProxy *this)
{
  v2 = *(*(this + 7) + 80);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(*(this + 7) + 88);
  v10[0] = "PlaybackSessionManagerProxy";
  v10[1] = 28;
  v10[2] = "applicationDidBecomeActive";
  v10[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogFullscreen, 0, v10))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v10);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 8);
  result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v4);
  v6 = result;
  v8 = v7;
  if (v4)
  {
    v4 += 32 * *(v4 - 4);
  }

  if (v4 != result)
  {
    do
    {
      result = WebCore::VideoPresentationInterfaceIOS::applicationDidBecomeActive(*(v6 + 24));
      do
      {
        v6 += 32;
        if (v6 == v8)
        {
          break;
        }
      }

      while (*v6 == 0 || *(v6 + 8) == -1);
    }

    while (v6 != v4);
  }

  return result;
}

void sub_19DCA20B0(_Unwind_Exception *exception_object)
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

unint64_t *WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v33 = a2;
  *(&v33 + 1) = a3;
  if (!(a2 | a3))
  {
    __break(0xC471u);
    JUMPOUT(0x19DCA24B4);
  }

  if (a3 == -1)
  {
    __break(0xC471u);
LABEL_42:
    JUMPOUT(0x19DCA2494);
  }

  v4 = *(a1 + 64);
  if (v4
    || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 64), 0),
        (v4 = *(a1 + 64)) != 0))
  {
    v5 = *(v4 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v33) & v5;
  v7 = (v4 + 32 * v6);
  v9 = *v7;
  v8 = v7[1];
  if (*v7 != 0)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (__PAIR128__(v8, v9) == v33)
      {
        return v7 + 2;
      }

      if (v8 == -1)
      {
        v10 = v7;
      }

      v6 = (v6 + v11) & v5;
      v7 = (v4 + 32 * v6);
      v9 = *v7;
      v8 = v7[1];
      ++v11;
    }

    while (*v7 != 0);
    if (v10)
    {
      *v10 = 0u;
      *(v10 + 1) = 0u;
      --*(*(a1 + 64) - 16);
      v7 = v10;
    }
  }

  *v7 = v33;
  v12 = *(a1 + 48);
  if (!v12 || (v13 = *(v12 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_42;
  }

  v14 = v33;
  CFRetain(*(v13 - 8));
  v15 = *(a1 + 56);
  ++*(v15 + 16);
  v32 = v13;
  v16 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(v15, v14, *(&v14 + 1));
  v17 = *v16;
  v18 = (*(*v16 + 16) + 1);
  *(*v16 + 16) = v18;
  v19 = WTF::fastMalloc(v18, 0x58);
  v19[1] = 3;
  *v19 = &unk_1F1102670;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1);
  v20 = *(a1 + 24);
  atomic_fetch_add(v20, 1u);
  v19[2] = v20;
  ++v17[4];
  v19[3] = v17;
  v19[4] = v14;
  v19[10] = 0;
  v19[5] = *(&v14 + 1);
  v19[6] = 0;
  v19[7] = 0;
  v19[8] = 0;
  *(v19 + 36) = 0;
  v21 = WebKit::PlaybackSessionManagerProxy::ensureModelAndInterface(v15, v14, *(&v14 + 1))[1];
  ++*(v21 + 4);
  WebCore::VideoPresentationInterfaceAVKitLegacy::create(v34, v21, v22);
  v23 = v34[0];
  v35 = v14;
  v36 = 0;
  WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>((v15 + 72), &v35, &v36, v34);
  ++*(v34[0] + 16);
  WebCore::VideoPresentationInterfaceIOS::setVideoPresentationModel();
  if (*(v21 + 4) == 1)
  {
    (*(*v21 + 8))(v21);
  }

  else
  {
    --*(v21 + 4);
  }

  if (v17[4] == 1)
  {
    (*(*v17 + 8))(v17);
  }

  else
  {
    --v17[4];
  }

  if (*(v15 + 16) == 1)
  {
    (*(*v15 + 24))(v15);
  }

  else
  {
    --*(v15 + 16);
  }

  CFRelease(*(v32 - 8));
  v25 = v7[2];
  v7[2] = v19;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v25 + 8), v24);
  }

  v26 = v7[3];
  v7[3] = v23;
  if (v26)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v26 + 104), v24);
  }

  v27 = *(a1 + 64);
  if (v27)
  {
    v28 = *(v27 - 12) + 1;
  }

  else
  {
    v28 = 1;
  }

  *(v27 - 12) = v28;
  v29 = (*(v27 - 16) + v28);
  v30 = *(v27 - 4);
  if (v30 > 0x400)
  {
    if (v30 > 2 * v29)
    {
      return v7 + 2;
    }

    goto LABEL_31;
  }

  if (3 * v30 <= 4 * v29)
  {
LABEL_31:
    v7 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand((a1 + 64), v7);
  }

  return v7 + 2;
}

void sub_19DCA24D8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v13[4] == 1)
  {
    (*(*v13 + 8))(v13, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    --v13[4];
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref(v12, a2);
  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 24))(v10);
  }

  else
  {
    --v10[4];
  }

  CFRelease(*(a10 - 8));
  _Unwind_Resume(a1);
}

uint64_t WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCA27ACLL);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v11 = result & v9;
  v12 = v8 + 24 * (result & v9);
  v14 = *v12;
  v13 = *(v12 + 8);
  if (*v12 != 0)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == *a2 && v13 == a2[1])
      {
        v21 = *a1;
        if (*a1)
        {
          v22 = *(v21 - 4);
        }

        else
        {
          v22 = 0;
        }

        v24 = 0;
        v23 = v21 + 24 * v22;
        goto LABEL_29;
      }

      if (v13 == -1)
      {
        v15 = v12;
      }

      v11 = (v11 + v16) & v9;
      v12 = v8 + 24 * v11;
      v14 = *v12;
      v13 = *(v12 + 8);
      ++v16;
    }

    while (*v12 != 0);
    if (v15)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      --*(*a1 - 16);
      v12 = v15;
    }
  }

  *v12 = *a2;
  *(v12 + 16) = *a3;
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
  v19 = (*(v17 - 16) + v18);
  v20 = *(v17 - 4);
  if (v20 > 0x400)
  {
    if (v20 <= 2 * v19)
    {
LABEL_20:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, v12);
      v12 = result;
      v17 = *a1;
      if (*a1)
      {
        LODWORD(v20) = *(v17 - 4);
      }

      else
      {
        LODWORD(v20) = 0;
      }
    }
  }

  else if (3 * v20 <= 4 * v19)
  {
    goto LABEL_20;
  }

  v23 = v17 + 24 * v20;
  v24 = 1;
LABEL_29:
  *a4 = v12;
  *(a4 + 8) = v23;
  *(a4 + 16) = v24;
  return result;
}

uint64_t WebKit::VideoPresentationManagerProxy::addClientForContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = 1;
  result = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>((a1 + 72), v7, &v4, &v5);
  if ((v6 & 1) == 0)
  {
    ++*(v5 + 16);
  }

  return result;
}

void WebKit::VideoPresentationManagerProxy::removeClientForContext(void *a1, uint64_t a2, uint64_t a3)
{
  v119[2] = *MEMORY[0x1E69E9840];
  *&v112 = a2;
  *(&v112 + 1) = a3;
  v3 = a1 + 9;
  v4 = a1[9];
  if (!v4)
  {
    return;
  }

  if (!(a2 | a3))
  {
    __break(0xC471u);
    goto LABEL_175;
  }

  if (a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCA3160);
  }

  v6 = *(v4 - 8);
  v7 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v112);
  v8 = v7 & v6;
  v9 = (v4 + 24 * (v7 & v6));
  v10 = *v9;
  v11 = v9[1];
  if (*v9 == v112 && v11 == *(&v112 + 1))
  {
LABEL_15:
    if (v112 == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA3180);
    }

    if (*(&v112 + 1) == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA31A0);
    }

    v16 = *v3;
    if (*v3)
    {
      v17 = *(v16 - 8);
      v7 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v112);
      v18 = v7 & v17;
      v19 = (v16 + 24 * (v7 & v17));
      v20 = *v19;
      v21 = v19[1];
      if (*v19 == v112 && v21 == *(&v112 + 1))
      {
LABEL_29:
        v26 = (*(v16 + 24 * v18 + 16) - 1);
LABEL_31:
        v27 = *(a1[7] + 80);
        atomic_fetch_add((v27 + 8), 1u);
        v28 = *(a1[7] + 88);
        v111[0] = "PlaybackSessionManagerProxy";
        v111[1] = 28;
        v111[2] = "removeClientForContext";
        v111[3] = v28;
        v29 = MEMORY[0x1E696EBD0];
        while (1)
        {
          v30 = *v29;
          if (v30)
          {
            break;
          }

          v31 = *v29;
          atomic_compare_exchange_strong_explicit(v29, &v31, v30 | 1, memory_order_acquire, memory_order_acquire);
          if (v31 == v30)
          {
            v32 = WTF::Logger::messageHandlerObservers(v7);
            v33 = *(v32 + 12);
            if (v33)
            {
              v34 = *v32;
              v35 = *v32 + 8 * v33;
              do
              {
                v36 = *v34;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], v111);
                v118 = 0;
                WTF::String::number(v119, v26);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v113, buf, 2uLL);
                (*(*v36 + 16))(v36, &WebKit2LogFullscreen, 0, v113);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v113, v37);
                for (i = 24; i != -8; i -= 16)
                {
                  v40 = *&buf[i];
                  *&buf[i] = 0;
                  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v40, v38);
                  }
                }

                ++v34;
              }

              while (v34 != v35);
            }

            v41 = 1;
            atomic_compare_exchange_strong_explicit(v29, &v41, 0, memory_order_release, memory_order_relaxed);
            if (v41 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
            }

            if ((*(v27 + 12) & 1) == 0)
            {
              goto LABEL_77;
            }

            WTF::Logger::LogSiteIdentifier::toString(&v115, v111);
            WTF::String::number(&v114, v26);
            *buf = v115;
            v113[0] = v114;
            WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v113, &v116);
            if (!v116)
            {
              __break(0xC471u);
              JUMPOUT(0x19DCA31E8);
            }

            v43 = v114;
            v114 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v42);
            }

            v44 = v115;
            v115 = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v42);
            }

            v45 = qword_1ED640AE0;
            v46 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
            if (v46)
            {
              WTF::String::utf8();
              v48 = v113[0] ? v113[0] + 16 : 0;
              *buf = 136446210;
              *&buf[4] = v48;
              _os_log_impl(&dword_19D52D000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
              v46 = v113[0];
              v113[0] = 0;
              if (v46)
              {
                if (*v46 == 1)
                {
                  v46 = WTF::fastFree(v46, v47);
                }

                else
                {
                  --*v46;
                }
              }
            }

            if (WebKit2LogFullscreen)
            {
              v49 = MEMORY[0x1E696EBC0];
              while (1)
              {
                v50 = *v49;
                if (v50)
                {
                  break;
                }

                v51 = *v49;
                atomic_compare_exchange_strong_explicit(v49, &v51, v50 | 1, memory_order_acquire, memory_order_acquire);
                if (v51 == v50)
                {
                  v52 = WTF::Logger::observers(v46);
                  v53 = *(v52 + 12);
                  if (v53)
                  {
                    v54 = *v52;
                    v55 = *v52 + 8 * v53;
                    do
                    {
                      v56 = *v54;
                      *buf = 0;
                      WTF::Logger::LogSiteIdentifier::toString(&buf[8], v111);
                      v118 = 0;
                      WTF::String::number(v119, v26);
                      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v113, buf, 2uLL);
                      (*(*v56 + 16))(v56, &WebKit2LogFullscreen, 0, v113);
                      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v113, v57);
                      for (j = 24; j != -8; j -= 16)
                      {
                        v59 = *&buf[j];
                        *&buf[j] = 0;
                        if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v59, v47);
                        }
                      }

                      ++v54;
                    }

                    while (v54 != v55);
                  }

                  v60 = 1;
                  atomic_compare_exchange_strong_explicit(v49, &v60, 0, memory_order_release, memory_order_relaxed);
                  if (v60 != 1)
                  {
                    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                  }

                  break;
                }
              }
            }

            v61 = v116;
            v116 = 0;
            if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v61, v47);
            }

            break;
          }
        }

        if (!v27)
        {
          goto LABEL_79;
        }

LABEL_77:
        if (atomic_fetch_add((v27 + 8), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v27 + 8));
          (*(*v27 + 8))(v27);
        }

LABEL_79:
        if (v26 > 0)
        {
          if (v112 == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DCA31C0);
          }

          if (*(&v112 + 1) == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19DCA31E0);
          }

          v62 = *v3;
          if (*v3 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v3, 0), (v62 = *v3) != 0))
          {
            v63 = *(v62 - 8);
          }

          else
          {
            v63 = 0;
          }

          v64 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v112) & v63;
          v65 = (v62 + 24 * v64);
          v67 = *v65;
          v66 = v65[1];
          if (*v65 != 0)
          {
            v68 = 0;
            v69 = 1;
            do
            {
              if (__PAIR128__(v66, v67) == v112)
              {
                *(v65 + 4) = v26;
                return;
              }

              if (v66 == -1)
              {
                v68 = v65;
              }

              v64 = (v64 + v69) & v63;
              v65 = (v62 + 24 * v64);
              v67 = *v65;
              v66 = v65[1];
              ++v69;
            }

            while (*v65 != 0);
            if (v68)
            {
              *v68 = 0;
              v68[1] = 0;
              v68[2] = 0;
              --*(*v3 - 16);
              v65 = v68;
            }
          }

          *v65 = v112;
          *(v65 + 4) = v26;
          v70 = *v3;
          if (*v3)
          {
            v71 = *(v70 - 12) + 1;
          }

          else
          {
            v71 = 1;
          }

          *(v70 - 12) = v71;
          v85 = (*(v70 - 16) + v71);
          v86 = *(v70 - 4);
          if (v86 > 0x400)
          {
            if (v86 > 2 * v85)
            {
              return;
            }
          }

          else if (3 * v86 > 4 * v85)
          {
            return;
          }

          WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v3, v65);
          return;
        }

        WebKit::VideoPresentationManagerProxy::ensureInterface(a1, v112, *(&v112 + 1), buf);
        v72 = *buf;
        WebKit::VideoPresentationManagerProxy::invalidateInterface(*buf, v73);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v72 + 104), v74);
        WebKit::PlaybackSessionManagerProxy::removeClientForContext(a1[7], v112, *(&v112 + 1));
        v75 = a1[9];
        if (!v75)
        {
          goto LABEL_127;
        }

        if (v112 == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCA3208);
        }

        if (*(&v112 + 1) == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCA3228);
        }

        v76 = *(v75 - 8);
        v77 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v112) & v76;
        v78 = (v75 + 24 * v77);
        v79 = *v78;
        v80 = v78[1];
        if (*v78 == v112 && v80 == *(&v112 + 1))
        {
LABEL_110:
          v84 = *v3;
          if (!*v3)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v82 = 1;
          while (v79 | v80)
          {
            v77 = (v77 + v82) & v76;
            v78 = (v75 + 24 * v77);
            v79 = *v78;
            v80 = v78[1];
            ++v82;
            if (*v78 == v112 && v80 == *(&v112 + 1))
            {
              goto LABEL_110;
            }
          }

          v84 = *v3;
          if (!*v3)
          {
            goto LABEL_127;
          }

          v78 = (v84 + 24 * *(v84 - 4));
        }

        v84 += 24 * *(v84 - 4);
        if (v84 == v78)
        {
LABEL_127:
          v91 = (a1 + 8);
          v92 = a1[8];
          if (!v92)
          {
            goto LABEL_157;
          }

          if (v112 == 0)
          {
            __break(0xC471u);
            JUMPOUT(0x19DCA3248);
          }

          if (*(&v112 + 1) != -1)
          {
            v93 = *(v92 - 8);
            v95 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v112) & v93;
            v96 = (v92 + 32 * v95);
            v97 = *v96;
            v98 = v96[1];
            if (*v96 == v112 && v98 == *(&v112 + 1))
            {
LABEL_141:
              v102 = *v91;
              if (!*v91)
              {
LABEL_146:
                if (v102 != v96)
                {
                  *v96 = -1;
                  v96[1] = -1;
                  v103 = v96[3];
                  v96[3] = 0;
                  if (v103)
                  {
                    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v103 + 104), v94);
                  }

                  v104 = v96[2];
                  v96[2] = 0;
                  if (v104)
                  {
                    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v104 + 8), v94);
                  }

                  v105 = *v91;
                  v106 = vadd_s32(*(*v91 - 2), 0xFFFFFFFF00000001);
                  *(v105 - 2) = v106;
                  v107 = *(v105 - 1);
                  if (6 * v106.i32[1] < v107 && v107 >= 9)
                  {
                    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash( a1 + 8,  v107 >> 1,  0);
                  }
                }

                goto LABEL_157;
              }
            }

            else
            {
              v100 = 1;
              while (v97 | v98)
              {
                v95 = (v95 + v100) & v93;
                v96 = (v92 + 32 * v95);
                v97 = *v96;
                v98 = v96[1];
                ++v100;
                if (*v96 == v112 && v98 == *(&v112 + 1))
                {
                  goto LABEL_141;
                }
              }

              v102 = *v91;
              if (!*v91)
              {
                goto LABEL_157;
              }

              v96 = &v102[4 * *(v102 - 1)];
            }

            v102 += 4 * *(v102 - 1);
            if (v102 != v96)
            {
              goto LABEL_146;
            }

LABEL_157:
            v109 = a1[6];
            if (v109)
            {
              v110 = *(v109 + 8);
              if (v110)
              {
                CFRetain(*(v110 - 8));
                WebKit::WebPageProxy::didCleanupFullscreen((v110 - 16));
                CFRelease(*(v110 - 8));
              }
            }

            return;
          }

          __break(0xC471u);
LABEL_175:
          JUMPOUT(0x19DCA3140);
        }

LABEL_120:
        if (v84 != v78)
        {
          *v78 = -1;
          v78[1] = -1;
          v87 = *v3;
          v88 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
          *(v87 - 16) = v88;
          v89 = *(v87 - 4);
          if (6 * v88.i32[1] < v89 && v89 >= 9)
          {
            WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,unsigned int,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v3, v89 >> 1, 0);
          }
        }

        goto LABEL_127;
      }

      v23 = 1;
      while (v20 | v21)
      {
        v18 = (v18 + v23) & v17;
        v24 = (v16 + 24 * v18);
        v20 = *v24;
        v21 = v24[1];
        ++v23;
        if (v20 == v112 && v21 == *(&v112 + 1))
        {
          goto LABEL_29;
        }
      }
    }

    v26 = 0xFFFFFFFFLL;
    goto LABEL_31;
  }

  v13 = 1;
  while (v10 | v11)
  {
    v8 = (v8 + v13) & v6;
    v14 = (v4 + 24 * v8);
    v10 = *v14;
    v11 = v14[1];
    ++v13;
    if (v10 == v112 && v11 == *(&v112 + 1))
    {
      goto LABEL_15;
    }
  }
}

void sub_19DCA326C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, WTF::StringImpl *a20, char a21, WTF::StringImpl *a22)
{
  v24 = 1;
  atomic_compare_exchange_strong_explicit(v22, &v24, 0, memory_order_release, memory_order_relaxed);
  if (v24 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9 + 2);
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::VideoPresentationManagerProxy::forEachSession(unsigned int *result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 - 12);
    if (v3)
    {
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(*(result + 8));
      v6 = *(v2 - 4);
      v7 = (v3 >> 28);
      v20 = 0;
      v21 = 0;
      if (v7)
      {
        __break(0xC471u);
      }

      else
      {
        v8 = result;
        v9 = v5;
        v11 = WTF::fastMalloc(v7, (16 * v3));
        v12 = v2 + 32 * v6;
        LODWORD(v21) = v3;
        v20 = v11;
        if (v8 != v12)
        {
          v13 = 0;
          do
          {
            std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100]<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>,0>(&v22, (v8 + 16));
            v14 = &v11[2 * v13];
            *v14 = v22;
            v14[1] = v23;
            do
            {
              v8 += 32;
              if (v8 == v9)
              {
                break;
              }
            }

            while (*v8 == 0 || *(v8 + 8) == -1);
            ++v13;
          }

          while (v8 != v12);
          HIDWORD(v21) = v13;
          v16 = v20;
          if (v13)
          {
            v17 = 16 * v13;
            do
            {
              std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v22, v16);
              (*(**a2 + 16))(*a2, v22, v23);
              v18 = v23;
              v23 = 0;
              if (v18)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v18 + 104), v10);
              }

              v19 = v22;
              v22 = 0;
              if (v19)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v19 + 8), v10);
              }

              v16 += 2;
              v17 -= 16;
            }

            while (v17);
          }
        }

        return WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v10);
      }
    }
  }

  return result;
}

void WebKit::VideoPresentationManagerProxy::requestBitmapImageForCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 48);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    LOBYTE(v23[0]) = 0;
    v26 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>::operator()(a4);
    return;
  }

  CFRetain(*(v6 - 8));
  {
    if (WebKit::singleton(void)::singleton)
    {
      v10 = *(WebKit::singleton(void)::singleton + 8);
      if (v10)
      {
        atomic_fetch_add((v10 + 16), 1u);
        WebKit::VideoPresentationManagerProxy::findInterface(a1, a2, a3, &v22);
        v11 = v22;
        if (v22)
        {
          v12 = WebCore::VideoPresentationInterfaceIOS::playerIdentifier(v22);
          if (v13)
          {
            v14 = *(v6 + 336);
            v15 = (v14 + 16);
            atomic_fetch_add((v14 + 16), 1u);
            v16 = *(v14 + 120);
            v27 = v12;
            v28 = v16;
            v23[0] = &v28;
            v23[1] = &v27;
            WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::RequestBitmapImageForCurrentTime,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>(v10, v23, a4, 0, 0, 1);
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v15, v17);
          }

          else
          {
            LOBYTE(v23[0]) = 0;
            v26 = 0;
            WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>::operator()(a4);
            if (v26 == 1)
            {
              if (v25 == 1)
              {
                v21 = cf;
                cf = 0;
                if (v21)
                {
                  CFRelease(v21);
                }
              }

              WTF::MachSendRight::~MachSendRight(v23);
            }
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref(v11 + 13, v18);
        }

        else
        {
          LOBYTE(v23[0]) = 0;
          v26 = 0;
          WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>::operator()(a4);
          if (v26 == 1)
          {
            if (v25 == 1)
            {
              v20 = cf;
              cf = 0;
              if (v20)
              {
                CFRelease(v20);
              }
            }

            WTF::MachSendRight::~MachSendRight(v23);
          }
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v19);
        goto LABEL_24;
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  LOBYTE(v23[0]) = 0;
  v26 = 0;
  WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>::operator()(a4);
LABEL_24:
  CFRelease(*(v6 - 8));
}

void sub_19DCA38AC(_Unwind_Exception *a1, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef cf, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    if (a14 == 1)
    {
      v24 = cf;
      cf = 0;
      if (v24)
      {
        CFRelease(v24);
      }
    }

    WTF::MachSendRight::~MachSendRight(&a10);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v21 + 104), a2);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v20, v25);
  CFRelease(*(v22 - 8));
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int *WTF::WeakHashSet<WTF::Observer<void ()(BOOL)>,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WTF::Observer<void ()(BOOL)>>@<X0>(uint64_t *a1@<X0>, atomic_uint *volatile *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 3);
  v7 = *(a1 + 2) + 1;
  *(a1 + 2) = v7;
  if (v7 > v6)
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_15:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v8 = *a1;
          *(a1 + 2) = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 2) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v17 = 2 * v8;
LABEL_24:
        *(a1 + 3) = v17;
        goto LABEL_25;
      }

      v10 = 0;
      v11 = 8 * v9;
      v12 = v8 - 8;
      do
      {
        v13 = *(v12 + v11);
        if ((v13 + 1) >= 2 && !*(v13 + 8))
        {
          *(v12 + v11) = 0;
          if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, a2);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *a1;
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v8) = 0;
    *(a1 + 2) = 0;
    goto LABEL_22;
  }

LABEL_25:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v18 = *a2;
  atomic_fetch_add(*a2, 1u);
  v21 = v18;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, &v21, a3);
  result = v21;
  v21 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v19);
    }
  }

  return result;
}

void sub_19DCA3C18(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
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

void WebKit::VideoPresentationManagerProxy::createLayerHostViewWithID(WKLayerHostView **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v9 = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(a2, a3, a4);
  std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v34, v9);
  v10 = *(v35 + 72);
  *a1 = v10;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v10 = objc_alloc_init(WKLayerHostView);
    *a1 = v10;
    [(WKLayerHostView *)v10 setUserInteractionEnabled:0];
    v12 = v35;
    if (v10)
    {
      v13 = v10;
    }

    v14 = *(v12 + 72);
    *(v12 + 72) = v10;
    if (v14)
    {
    }

    v15 = objc_alloc_init(MEMORY[0x1E695AA58]);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    m_ptr = v10->_hostingView.m_ptr;
    v10->_hostingView.m_ptr = v16;
    if (m_ptr)
    {
    }

    [(WKLayerHostView *)v10 addSubview:v16];
    v19 = [(BELayerHierarchyHostingView *)v16 layer];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    [v20 setMasksToBounds:0];
    [v20 setName:@"WKLayerHostView layer"];
    [v20 setFrame:{0.0, 0.0, *a6, a6[1]}];
    if (v20)
    {
    }

    if (v16)
    {
    }
  }

  WTF::MachSendRight::MachSendRight(&v31, (a5 + 8));
  v22 = *(a5 + 16);
  if (v22)
  {
    WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>((v22 + 1), (v22 + *v22 + 4), &v36);
    v23 = v36;
  }

  else
  {
    v23 = 0;
  }

  v32 = v23;
  WebKit::LayerHostingContext::createHostingHandle(&v31, &v33);
  v25 = v32;
  v26 = v33;
  v32 = 0;
  v33 = 0;
  if (v25)
  {
    WTF::fastFree(v25, v24);
  }

  WTF::MachSendRight::~MachSendRight(&v31);
  if (v26)
  {
    [(BELayerHierarchyHostingView *)v10->_hostingView.m_ptr setHandle:v26];
  }

  else
  {
    v27 = qword_1ED640D38;
    if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "VideoPresentationManagerProxy::createLayerHostViewWithID: could not create layer handle", &v31, 2u);
    }
  }

  (*(*(v35 + 32) + 24))(v35 + 32, [(WKLayerHostView *)v10 layer], a6);
  if (v26)
  {
  }

  v29 = v35;
  v35 = 0;
  if (v29)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v29 + 104), v28);
  }

  v30 = v34;
  v34 = 0;
  if (v30)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v30 + 8), v28);
  }
}

void sub_19DCA3EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v13 = 0;

  if (a13)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((a13 + 104), v16);
  }

  if (a12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((a12 + 8), v16);
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::VideoPresentationManagerProxy::setVisibilityPropagationViewForLayerHostView(WebKit::VideoPresentationManagerProxy *this, UIView *a2, WKLayerHostView *a3)
{
  if (this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      CFRetain(*(v5 - 8));
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          (*(*v7 + 1712))(v7);
          v8 = [(WKLayerHostView *)a3 visibilityPropagationView];
          v9 = v8;
          if (v8)
          {
            v10 = v8;
            (*(*v7 + 680))(v7, v9);
          }

          (*(*v7 + 1720))(v7);
        }
      }

      CFRelease(*(v5 - 8));
    }
  }

  return [(WKLayerHostView *)a3 setVisibilityPropagationView:a2];
}

void sub_19DCA40AC(_Unwind_Exception *a1)
{
  (*(*v1 + 1720))(v1);
  CFRelease(*(v3 - 8));
  _Unwind_Resume(a1);
}

unsigned int *WebKit::VideoPresentationManagerProxy::returningToStandbyInterface@<X0>(unsigned int *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 16);
  v3 = *(this + 8);
  if (!v3 || !*(v3 - 12))
  {
    goto LABEL_11;
  }

  v5 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(this + 8);
  v7 = *v4;
  if (*v4)
  {
    v8 = *(v7 - 4);
    v9 = (v7 + 32 * v8);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v9;
  v14[4] = (v7 + 32 * v8);
  WTF::map<0ul,WTF::CrashOnOverflow,16ul,WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>>(WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const&)::{lambda(std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>&&)#1},WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const>( v14,  &v15);
  if (!v16)
  {
LABEL_10:
    this = WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v10);
LABEL_11:
    *a2 = 0;
    return this;
  }

  v11 = 16 * v16;
  v12 = (v15 + 8);
  while (1)
  {
    v13 = *v12;
    *v12 = 0;
    if (*(v13 + 262))
    {
      break;
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v13 + 104), v10);
    v12 += 2;
    v11 -= 16;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  *a2 = v13;
  return WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v10);
}

void WebKit::VideoPresentationManagerProxy::createViewWithID(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, float *a5@<X4>, const WebCore::FloatSize *a6@<X5>, void *a7@<X8>)
{
  v99[1] = *MEMORY[0x1E69E9840];
  v14 = qword_1ED640D38;
  if (os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *a4;
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "VideoPresentationManagerProxy::createViewWithID: context ID %d", buf, 8u);
  }

  v16 = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(a1, a2, a3);
  std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v88, v16);
  WebKit::VideoPresentationManagerProxy::addClientForContext(a1, a2, a3);
  WebKit::VideoPresentationManagerProxy::createLayerHostViewWithID(&v87, a1, a2, a3, a4, a5);
  if (!*(v89 + 96))
  {
    v19 = *(*(a1 + 56) + 80);
    atomic_fetch_add(v19 + 2, 1u);
    v20 = *(*(a1 + 56) + 88);
    v86[0] = "PlaybackSessionManagerProxy";
    v86[1] = 28;
    v86[2] = "createViewWithID";
    v86[3] = v20;
    v21 = *(*(v88 + 3) + 336);
    v22 = MEMORY[0x1E696EBD0];
    while (1)
    {
      v23 = *v22;
      if (v23)
      {
        break;
      }

      v24 = *v22;
      atomic_compare_exchange_strong_explicit(v22, &v24, v23 | 1, memory_order_acquire, memory_order_acquire);
      if (v24 == v23)
      {
        v84 = a7;
        v85 = v19;
        v17 = WTF::Logger::messageHandlerObservers(v17);
        v25 = v17[3];
        if (v25)
        {
          v26 = *v17;
          v27 = *v17 + 8 * v25;
          do
          {
            v28 = *v26;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], v86);
            v96 = 0;
            WTF::String::number(&v97, v21);
            v98 = 0;
            WTF::String::String(v99, ", Creating AVPlayerLayerView");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v90, buf, 3uLL);
            (*(*v28 + 16))(v28, &WebKit2LogFullscreen, 0, v90);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v90, v29);
            for (i = 40; i != -8; i -= 16)
            {
              v17 = *&buf[i];
              *&buf[i] = 0;
              if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v17 = WTF::StringImpl::destroy(v17, v30);
              }
            }

            ++v26;
          }

          while (v26 != v27);
        }

        v32 = 1;
        atomic_compare_exchange_strong_explicit(v22, &v32, 0, memory_order_release, memory_order_relaxed);
        if (v32 != 1)
        {
          v17 = WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
        }

        v19 = v85;
        if ((v85[3] & 1) == 0)
        {
          a7 = v84;
          goto LABEL_54;
        }

        WTF::Logger::LogSiteIdentifier::toString(&v93, v86);
        a7 = v84;
        WTF::String::number(&v92, v21);
        WTF::String::String(&v91, ", Creating AVPlayerLayerView");
        WTF::makeString<WTF::String,WTF::String,WTF::String>(&v93, &v92, &v91, &v94);
        v34 = v91;
        v91 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v33);
        }

        v35 = v92;
        v92 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v33);
        }

        v36 = v93;
        v93 = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v33);
        }

        v37 = qword_1ED640AE0;
        v38 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
        if (v38)
        {
          WTF::String::utf8();
          v40 = v90[0] ? v90[0] + 16 : 0;
          *buf = 136446210;
          *&buf[4] = v40;
          _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v38 = v90[0];
          v90[0] = 0;
          if (v38)
          {
            if (*v38 == 1)
            {
              v38 = WTF::fastFree(v38, v39);
            }

            else
            {
              --*v38;
            }
          }
        }

        if (WebKit2LogFullscreen)
        {
          v41 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v42 = *v41;
            if (v42)
            {
              break;
            }

            v43 = *v41;
            atomic_compare_exchange_strong_explicit(v41, &v43, v42 | 1, memory_order_acquire, memory_order_acquire);
            if (v43 == v42)
            {
              v44 = WTF::Logger::observers(v38);
              v45 = *(v44 + 12);
              if (v45)
              {
                v46 = *v44;
                v47 = *v44 + 8 * v45;
                do
                {
                  v48 = *v46;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString(&buf[8], v86);
                  v96 = 0;
                  WTF::String::number(&v97, v21);
                  v98 = 0;
                  WTF::String::String(v99, ", Creating AVPlayerLayerView");
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v90, buf, 3uLL);
                  (*(*v48 + 16))(v48, &WebKit2LogFullscreen, 0, v90);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v90, v49);
                  for (j = 40; j != -8; j -= 16)
                  {
                    v51 = *&buf[j];
                    *&buf[j] = 0;
                    if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v51, v39);
                    }
                  }

                  ++v46;
                }

                while (v46 != v47);
              }

              v52 = 1;
              atomic_compare_exchange_strong_explicit(v41, &v52, 0, memory_order_release, memory_order_relaxed);
              a7 = v84;
              v19 = v85;
              if (v52 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v17 = v94;
        v94 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v17 = WTF::StringImpl::destroy(v17, v39);
        }

        break;
      }
    }

    if (!v19)
    {
      goto LABEL_56;
    }

LABEL_54:
    if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 2);
      v17 = (*(*v19 + 8))(v19);
    }

LABEL_56:
    v53 = *a5;
    v54 = a5[1];
    v55 = [WebCore::allocWebAVPlayerLayerViewInstance(v17) initWithFrame:{0.0, 0.0, v53, v54}];
    WebKit::VideoPresentationModelContext::setVideoDimensions(v88, a6);
    v56 = [v55 layer];
    *buf = v56;
    if (v56)
    {
      v57 = v56;
      v58 = *buf;
    }

    else
    {
      v58 = 0;
    }

    WebCore::FloatSize::operator CGSize();
    [v58 setVideoDimensions:?];
    [*buf setPresentationModel:v88];
    v59 = v87;
    [*buf setVideoSublayer:{-[WKLayerHostView layer](v87, "layer")}];
    [v55 addSubview:v59];
    [v55 setUserInteractionEnabled:0];
    if (![-[WKLayerHostView layer](v59 "layer")])
    {
      [*buf addSublayer:{-[WKLayerHostView layer](v59, "layer")}];
    }

    v60 = [[WKVideoView alloc] initWithFrame:v55 playerView:0.0, 0.0, v53, v54];
    (*(*(v89 + 64) + 16))(v89 + 64, buf);
    v61 = v89;
    if (v55)
    {
      v62 = v55;
    }

    v63 = *(v61 + 88);
    *(v61 + 88) = v55;
    if (v63)
    {
    }

    v64 = v89;
    if (v60)
    {
      v65 = v60;
    }

    v66 = *(v64 + 96);
    *(v64 + 96) = v60;
    if (v66)
    {
    }

    if (v60)
    {
    }

    v67 = *buf;
    *buf = 0;
    if (v67)
    {
    }

    if (v55)
    {
    }
  }

  v68 = *(a1 + 48);
  if (v68)
  {
    v69 = *(v68 + 8);
    if (v69)
    {
      CFRetain(*(v69 - 8));
      *buf = a3;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v70 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, buf);
      if (v70)
      {
        v71 = v70;
        atomic_fetch_add(v70 + 4, 1u);
        v72 = WebKit::WebPageProxy::webPageIDInProcess((v69 - 16), v70);
        v74 = IPC::Encoder::operator new(0x238, v73);
        *v74 = 1797;
        *(v74 + 2) = 0;
        *(v74 + 3) = 0;
        *(v74 + 1) = v72;
        *(v74 + 68) = 0;
        *(v74 + 70) = 0;
        *(v74 + 69) = 0;
        IPC::Encoder::encodeHeader(v74);
        v86[0] = v74;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v74, a2);
        IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v74, a6);
        buf[0] = 0;
        LOBYTE(v96) = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v71, v86, 0, buf, 1);
        if (v96 == 1)
        {
          v76 = *buf;
          *buf = 0;
          if (v76)
          {
            (*(*v76 + 8))(v76);
          }
        }

        v77 = v86[0];
        v86[0] = 0;
        if (v77)
        {
          IPC::Encoder::~Encoder(v77, v75);
          bmalloc::api::tzoneFree(v82, v83);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v71 + 16), v75);
      }

      CFRelease(*(v69 - 8));
    }
  }

  v78 = *(v89 + 96);
  if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *a7 = v78;
    v79 = v78;
  }

  else
  {
    *a7 = 0;
  }

  if (v87)
  {
  }

  v80 = v89;
  v89 = 0;
  if (v80)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v80 + 104), v18);
  }

  v81 = v88;
  v88 = 0;
  if (v81)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref(v81 + 1, v18);
  }
}

void sub_19DCA4AD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int *a17, IPC::Encoder *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, WTF::StringImpl *a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  v32 = 1;
  atomic_compare_exchange_strong_explicit(v30, &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a30 && atomic_fetch_add_explicit(a30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a30, a2);
  }

  if (a17 && atomic_fetch_add(a17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a17 + 2);
    (*(*a17 + 8))(a17);
  }

  if (a22)
  {
  }

  if (a24)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((a24 + 104), a2);
  }

  if (a23)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((a23 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WebKit::VideoPresentationManagerProxy::swapFullscreenModes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WebKit::VideoPresentationManagerProxy::findInterface(a1, a2, a3, &v18);
  result = WebKit::VideoPresentationManagerProxy::findInterface(a1, a4, a5, &v17);
  v13 = v17;
  v12 = v18;
  if (v18)
  {
    if (v17)
    {
      v14 = *(v18 + 53);
      v15 = *(v17 + 212);
      (*(*v18 + 320))(v18, v17);
      if ((*(v12 + 53) & 1) != (v14 & 1))
      {
        if (*(v12 + 53))
        {
          WebKit::VideoPresentationManagerProxy::addClientForContext(a1, a2, a3);
        }

        else
        {
          WebKit::VideoPresentationManagerProxy::removeClientForContext(a1, a2, a3);
        }
      }

      if ((*(v13 + 212) & 1) != (v15 & 1))
      {
        if (*(v13 + 212))
        {
          WebKit::VideoPresentationManagerProxy::addClientForContext(a1, a4, a5);
        }

        else
        {
          WebKit::VideoPresentationManagerProxy::removeClientForContext(a1, a4, a5);
        }
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v13 + 104), v16);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref(v12 + 13, v11);
  }

  else if (v17)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v17 + 104), v11);
  }

  return result;
}

void sub_19DCA4FD4(_Unwind_Exception *a1, unint64_t a2)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v3 + 104), a2);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104), v5);
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationManagerProxy::setupFullscreenWithID(unint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, float *a6, const WebCore::FloatSize *a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 48);
  if (!v11)
  {
    return;
  }

  v12 = *(v11 + 8);
  if (!v12)
  {
    return;
  }

  CFRetain(*(v12 - 8));
  v21 = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(a1, a2, a3);
  std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v43, v21);
  if ((*(v44 + 212) | 4) == 4)
  {
    WebKit::VideoPresentationManagerProxy::addClientForContext(a1, a2, a3);
  }

  if (*(a1 + 32) != 1)
  {
    if (a8 >= 8)
    {
      v38 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "void WebKit::VideoPresentationManagerProxy::setupFullscreenWithID(PlaybackSessionContextIdentifier, const WebCore::HostingContext &, const WebCore::FloatRect &, const WebCore::FloatSize &, const WebCore::FloatSize &, float, HTMLMediaElementEnums::VideoFullscreenMode, BOOL, BOOL, BOOL)";
        _os_log_fault_impl(&dword_19D52D000, v38, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/VideoPresentationManagerProxy.mm 1086: Invalid message dispatched %{public}s", &buf, 0xCu);
      }

      v39 = *(a1 + 48);
      if (!v39 || (v40 = *(v39 + 8)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCA5414);
      }

      v41 = *(*(v40 + 336) + 88);
      if (!v41 || (*(v41 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
      {
        __break(0xC471u);
        JUMPOUT(0x19DCA5390);
      }

      goto LABEL_33;
    }

    if (!*(v44 + 96))
    {
      WebKit::VideoPresentationManagerProxy::createViewWithID(a1, a2, a3, a4, a6, a7, &v42);
      if (v42)
      {
      }
    }

    v24 = *(v44 + 72);
    if (v24)
    {
      *&buf = *(v44 + 72);
      v25 = v24;
    }

    else
    {
      WebKit::VideoPresentationManagerProxy::createLayerHostViewWithID(&buf, a1, a2, a3, a4, a6);
    }

    v26 = *(v12 + 40);
    if (v26)
    {
      v27 = *(v26 + 8);
      if (v27)
      {
        (*(*v27 + 1712))(v27);
        v28 = (*(*v27 + 672))(v27);
        v29 = v28;
        if (v28)
        {
          v30 = v28;
          WebKit::VideoPresentationManagerProxy::setVisibilityPropagationViewForLayerHostView(*(a1 + 48), v29, buf);
        }

        v31 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v27 = 0;
    }

    v31 = 1;
LABEL_24:
    v32 = *(v12 + 312);
    if (*(v32 + 36))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA53F4);
    }

    v33 = *(*(v32 + 80) + 8);
    if (v33 && (v34 = *(v33 + 8)) != 0)
    {
      v35 = *(v34 + 56);
    }

    else
    {
      v35 = 0;
    }

    (*(*v44 + 160))(v44, a5, a7, v35, a8, a9, a10, a11);
    if ((v31 & 1) == 0)
    {
      (*(*v27 + 1720))(v27);
    }

    if (buf)
    {
    }

    goto LABEL_33;
  }

  if (*a7 > 0.0)
  {
    v22 = *(a7 + 1);
    if (v22 > 0.0)
    {
      *(a1 + 40) = 100.0 / (*a7 / v22);
    }
  }

  *&buf = a2;
  *(&buf + 1) = a3;
  p_buf = &buf;
  WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::RequestVideoContentLayer>(*(a1 + 48), a2, a3, &p_buf);
LABEL_33:
  v36 = v44;
  v44 = 0;
  if (v36)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v36 + 104), v23);
  }

  v37 = v43;
  v43 = 0;
  if (v37)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v37 + 8), v23);
  }

  CFRelease(*(v12 - 8));
}

void sub_19DCA5438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  (*(*v13 + 1720))(v13);
  if (a13)
  {
  }

  if (a11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((a11 + 104), v17);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((a10 + 8), v17);
  }

  CFRelease(*(v15 - 8));
  _Unwind_Resume(a1);
}

uint64_t *WebKit::VideoPresentationManagerProxy::setPlayerIdentifier(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result[4] & 1) == 0)
  {
    result = WebKit::VideoPresentationManagerProxy::findInterface(result, a2, a3, &v9);
    v7 = v9;
    if (v9)
    {
      (*(*v9 + 104))(v9, a4, a5);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v7 + 104), v8);
    }
  }

  return result;
}

atomic_ullong *WebKit::VideoPresentationManagerProxy::audioSessionCategoryChanged(unint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  WebKit::VideoPresentationManagerProxy::ensureModel(&v14, a1, a2, a3);
  v9 = v14;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v11 = WTF::fastMalloc(v10, 0x20);
  *v11 = &unk_1F1102D48;
  v11[1] = &v18;
  v11[2] = &v17;
  v11[3] = &v16;
  v15 = v11;
  WTF::WeakHashSet<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach((v9 + 48), &v15);
  result = (*(*v11 + 8))(v11);
  if (v9)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v9 + 8), v13);
  }

  return result;
}

void sub_19DCA5668(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v2 + 8), v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *WebKit::VideoPresentationManagerProxy::setHasVideo(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result[4] & 1) == 0)
  {
    v5 = result;
    v9[0] = a2;
    v9[1] = a3;
    result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( result + 8,  v9);
    v6 = v5[8];
    if (v6)
    {
      v6 += 4 * *(v6 - 1);
    }

    if (v6 != result)
    {
      v8 = result[2];
      v7 = result[3];
      *(v8 + 72) = a4;
      return (*(*v7 + 48))(v7, a4);
    }
  }

  return result;
}

void WebKit::VideoPresentationManagerProxy::setVideoDimensions(unint64_t a1, uint64_t a2, uint64_t a3, const WebCore::FloatSize *a4)
{
  v6 = WebKit::VideoPresentationManagerProxy::ensureModelAndInterface(a1, a2, a3);
  std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v13, v6);
  if (*(v13 + 16) == *a4 && *(v13 + 17) == *(a4 + 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v13 + 73);
  }

  WebKit::VideoPresentationModelContext::setVideoDimensions(v13, a4);
  if (*(a1 + 32) == 1)
  {
    if (*a4 > 0.0)
    {
      v10 = *(a4 + 1);
      if (v10 > 0.0)
      {
        *(a1 + 40) = 100.0 / (*a4 / v10);
      }
    }
  }

  else if (v8)
  {
    WebKit::VideoPresentationManagerProxy::videosInElementFullscreenChanged(a1);
  }

  v11 = v14;
  v14 = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v11 + 104), v9);
  }

  v12 = v13;
  v13 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref(v12 + 1, v9);
  }
}

void sub_19DCA5820(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((a10 + 104), a2);
  }

  if (a9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((a9 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::exitFullscreen(unint64_t a1, uint64_t a2, uint64_t a3, WTF::RefCountedBase *a4, float a5, float a6, float a7, float a8)
{
  v29 = a2;
  v30 = a3;
  *v28 = a5;
  *&v28[1] = a6;
  *&v28[2] = a7;
  *&v28[3] = a8;
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRetain(*(v10 - 8));
      v14 = *(a1 + 64);
      if (v14)
      {
        if (!(a2 | a3) || a3 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DCA5A4CLL);
        }

        v15 = *(v14 - 8);
        v16 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v29) & v15;
        v17 = (v14 + 32 * v16);
        v18 = *v17;
        v19 = v17[1];
        if (*v17 == v29 && v19 == v30)
        {
LABEL_17:
          if (WebKit::VideoPresentationManagerProxy::hasMode(a1, 1))
          {
            (*(**(v10 + 104) + 32))(*(v10 + 104), v10 - 16);
          }

          if (*(a1 + 32) != 1)
          {
            WebKit::VideoPresentationManagerProxy::ensureInterface(a1, v29, v30, v32);
            v25 = v32[0];
            v26 = (*(*v32[0] + 176))(v32[0], v28);
            WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, v26);
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v25 + 104), v27);
            goto LABEL_27;
          }

          v32[0] = v29;
          v32[1] = v30;
          v31 = v32;
          WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::ReturnVideoContentLayer>(*(a1 + 48), v29, v30, &v31);
          v24 = 1;
LABEL_25:
          WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, v24);
LABEL_27:
          CFRelease(*(v10 - 8));
          return;
        }

        v21 = 1;
        while (v18 | v19)
        {
          v16 = (v16 + v21) & v15;
          v22 = (v14 + 32 * v16);
          v18 = *v22;
          v19 = v22[1];
          ++v21;
          if (v18 == v29 && v19 == v30)
          {
            goto LABEL_17;
          }
        }
      }

      v24 = 0;
      goto LABEL_25;
    }
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(a4, 0);
}

void WebKit::VideoPresentationManagerProxy::exitFullscreenWithoutAnimationToMode(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4 >= 8)
  {
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "void WebKit::VideoPresentationManagerProxy::exitFullscreenWithoutAnimationToMode(PlaybackSessionContextIdentifier, WebCore::HTMLMediaElementEnums::VideoFullscreenMode)";
      _os_log_fault_impl(&dword_19D52D000, v8, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/VideoPresentationManagerProxy.mm 1226: Invalid message dispatched %{public}s", &buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (!v9 || (v10 = *(v9 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA5C44);
    }

    v11 = *(*(v10 + 336) + 88);
    if (!v11 || (*(v11 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA5BE0);
    }
  }

  else
  {
    v5 = a4;
    if (*(a1 + 32) == 1)
    {
      *&buf = a2;
      *(&buf + 1) = a3;
      p_buf = &buf;
      v13 = a4;
      WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::FullscreenModeChanged>(*(a1 + 48), a2, a3, &p_buf);
    }

    else
    {
      WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &buf);
      v6 = buf;
      WebCore::VideoPresentationInterfaceIOS::exitFullscreenWithoutAnimationToMode(buf);
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v6 + 104), v7);
      }

      WebKit::VideoPresentationManagerProxy::hasVideoInPictureInPictureDidChange(a1, (v5 & 2) != 0);
    }
  }
}

void sub_19DCA5C68(_Unwind_Exception *exception_object, unint64_t a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104), a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::setVideoFullscreenMode(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4 >= 8)
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v11 = 136446210;
      *&v11[4] = "void WebKit::VideoPresentationManagerProxy::setVideoFullscreenMode(PlaybackSessionContextIdentifier, WebCore::HTMLMediaElementEnums::VideoFullscreenMode)";
      _os_log_fault_impl(&dword_19D52D000, v7, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/VideoPresentationManagerProxy.mm 1240: Invalid message dispatched %{public}s", v11, 0xCu);
    }

    v8 = *(a1 + 48);
    if (!v8 || (v9 = *(v8 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA5DC4);
    }

    v10 = *(*(v9 + 336) + 88);
    if (!v10 || (*(v10 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA5D60);
    }
  }

  else
  {
    WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, v11);
    v5 = *v11;
    WebCore::VideoPresentationInterfaceIOS::setMode(*v11);
    if (v5)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v5 + 104), v6);
    }
  }
}

void sub_19DCA5DE8(_Unwind_Exception *exception_object, unint64_t a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104), a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::clearVideoFullscreenMode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4 >= 8)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136446210;
      v10 = "void WebKit::VideoPresentationManagerProxy::clearVideoFullscreenMode(PlaybackSessionContextIdentifier, WebCore::HTMLMediaElementEnums::VideoFullscreenMode)";
      _os_log_fault_impl(&dword_19D52D000, v5, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/VideoPresentationManagerProxy.mm 1247: Invalid message dispatched %{public}s", &v9, 0xCu);
    }

    v6 = *(a1 + 48);
    if (!v6 || (v7 = *(v6 + 8)) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA5F14);
    }

    v8 = *(*(v7 + 336) + 88);
    if (!v8 || (*(v8 + 94) = 1, IPC::s_shouldCrashOnMessageCheckFailure == 1))
    {
      __break(0xC471u);
      JUMPOUT(0x19DCA5EB0);
    }
  }
}

atomic_ullong *WebKit::VideoPresentationManagerProxy::setInlineRect(atomic_ullong *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result[4] & 1) == 0)
  {
    WebKit::VideoPresentationManagerProxy::ensureInterface(result, a2, a3, &v9);
    v7 = v9;
    (*(*v9 + 208))(v9, a4, a5);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v7 + 104), v8);
  }

  return result;
}

void WebKit::VideoPresentationManagerProxy::setHasVideoContentLayer(WebKit::VideoPresentationManagerProxy *a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  if (*(a1 + 32) == 1)
  {
    if (a4)
    {

      WebKit::VideoPresentationManagerProxy::didSetupFullscreen(a1, a2, a3);
    }

    else
    {

      WebKit::VideoPresentationManagerProxy::didExitFullscreen(a1, a2, a3);
    }
  }

  else
  {
    WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &v6);
    v4 = v6;
    WebCore::VideoPresentationInterfaceIOS::setHasVideoContentLayer(v6);
    if (v4)
    {

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref(v4 + 13, v5);
    }
  }
}

void sub_19DCA6084(_Unwind_Exception *exception_object, unint64_t a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104), a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::cleanupFullscreen(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {

    WebKit::VideoPresentationManagerProxy::didCleanupFullscreen(a1, a2, a3);
  }

  else
  {
    WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &v5);
    v3 = v5;
    (*(*v5 + 184))(v5);

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v3 + 104), v4);
  }
}

void WebKit::VideoPresentationManagerProxy::preparedToReturnToInline(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8)
{
  *v17 = a5;
  *&v17[1] = a6;
  *&v17[2] = a7;
  *&v17[3] = a8;
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      CFRetain(*(v9 - 8));
      (*(**(v9 + 104) + 32))(*(v9 + 104), v9 - 16);
      if ((*(a1 + 32) & 1) == 0)
      {
        WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &v16);
        v14 = v16;
        (*(*v16 + 200))(v16, a4, v17);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v14 + 104), v15);
      }

      CFRelease(*(v9 - 8));
    }
  }
}

void sub_19DCA623C(_Unwind_Exception *a1, unint64_t a2)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104), a2);
  CFRelease(*(v3 - 8));
  _Unwind_Resume(a1);
}

atomic_ullong *WebKit::VideoPresentationManagerProxy::preparedToExitFullscreen(atomic_ullong *result, uint64_t a2, uint64_t a3)
{
  if ((result[4] & 1) == 0)
  {
    WebKit::VideoPresentationManagerProxy::ensureInterface(result, a2, a3, &v5);
    v3 = v5;
    result = WebCore::VideoPresentationInterfaceIOS::preparedToExitFullscreen(v5);
    if (v3)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref(v3 + 13, v4);
    }
  }

  return result;
}

void sub_19DCA62AC(_Unwind_Exception *exception_object, unint64_t a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104), a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WebKit::VideoPresentationManagerProxy::textTrackRepresentationUpdate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebCore::ShareableBitmap::create();
  result = v14;
  if (!v14)
  {
    return result;
  }

  WebCore::ShareableBitmap::createPlatformImage();
  WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &v12);
  v8 = v12;
  cf = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  WebCore::VideoFullscreenCaptions::setTrackRepresentationImage();
  if (cf)
  {
    CFRelease(cf);
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v8)
  {
LABEL_6:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v8 + 104), v9);
  }

LABEL_7:
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v9);
  }

  return result;
}

void sub_19DCA639C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, uint64_t a10, CFTypeRef cf, WTF *a12)
{
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v12 + 104), a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a12, a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::VideoPresentationManagerProxy::textTrackRepresentationSetContentsScale(unint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &v8);
  v5 = v8;
  result = WebCore::VideoFullscreenCaptions::setTrackRepresentationContentsScale((v8 + 32), a4);
  if (v5)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v5 + 104), v7);
  }

  return result;
}

void sub_19DCA647C(_Unwind_Exception *exception_object, unint64_t a2)
{
  v3 = v2;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v3 + 104), a2);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WebKit::VideoPresentationManagerProxy::textTrackRepresentationSetHidden(unint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  WebKit::VideoPresentationManagerProxy::ensureInterface(a1, a2, a3, &v7);
  v4 = v7;
  result = WebCore::VideoFullscreenCaptions::setTrackRepresentationHidden((v7 + 32));
  if (v4)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v4 + 104), v6);
  }

  return result;
}

void sub_19DCA6500(_Unwind_Exception *exception_object, unint64_t a2)
{
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v2 + 104), a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::RequestFullscreenMode>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v17[0] = a3;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v17);
      if (v7)
      {
        v8 = v7;
        atomic_fetch_add(v7 + 4, 1u);
        v9 = WebKit::WebPageProxy::webPageIDInProcess((v4 - 16), v7);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 1801;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v19 = v11;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a4);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, *(a4 + 8));
        IPC::Encoder::operator<<<BOOL &>(v11, (a4 + 12));
        LOBYTE(v17[0]) = 0;
        v18 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v19, 0, v17, 1);
        if (v18 == 1)
        {
          v13 = v17[0];
          v17[0] = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        v14 = v19;
        v19 = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v12);
          bmalloc::api::tzoneFree(v15, v16);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v12);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void sub_19DCA66A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12, a2);
  CFRelease(*(v13 - 8));
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::RequestVideoContentLayer>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v17[0] = a3;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v17);
      if (v7)
      {
        v8 = v7;
        atomic_fetch_add(v7 + 4, 1u);
        v9 = WebKit::WebPageProxy::webPageIDInProcess((v4 - 16), v7);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 1804;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v19 = v11;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a4);
        LOBYTE(v17[0]) = 0;
        v18 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v19, 0, v17, 1);
        if (v18 == 1)
        {
          v13 = v17[0];
          v17[0] = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        v14 = v19;
        v19 = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v12);
          bmalloc::api::tzoneFree(v15, v16);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v12);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void sub_19DCA6890(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12, a2);
  CFRelease(*(v13 - 8));
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::ReturnVideoContentLayer>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v17[0] = a3;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v17);
      if (v7)
      {
        v8 = v7;
        atomic_fetch_add(v7 + 4, 1u);
        v9 = WebKit::WebPageProxy::webPageIDInProcess((v4 - 16), v7);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 1805;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v19 = v11;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a4);
        LOBYTE(v17[0]) = 0;
        v18 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v19, 0, v17, 1);
        if (v18 == 1)
        {
          v13 = v17[0];
          v17[0] = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        v14 = v19;
        v19 = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v12);
          bmalloc::api::tzoneFree(v15, v16);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v12);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void sub_19DCA6A7C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12, a2);
  CFRelease(*(v13 - 8));
  _Unwind_Resume(a1);
}

uint64_t WTF::dynamic_objc_cast<WKLayerHostView>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::SetVideoLayerFrameFenced>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v17[0] = a3;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v17);
      if (v7)
      {
        v8 = v7;
        atomic_fetch_add(v7 + 4, 1u);
        v9 = WebKit::WebPageProxy::webPageIDInProcess((v4 - 16), v7);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 1809;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v19 = v11;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a4);
        IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v11, *(a4 + 8));
        IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::encode(v11, *(a4 + 16));
        LOBYTE(v17[0]) = 0;
        v18 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v19, 0, v17, 1);
        if (v18 == 1)
        {
          v13 = v17[0];
          v17[0] = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        v14 = v19;
        v19 = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v12);
          bmalloc::api::tzoneFree(v15, v16);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v12);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void sub_19DCA6CC8(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12, a2);
  CFRelease(*(v13 - 8));
  _Unwind_Resume(a1);
}

void WebKit::VideoPresentationManagerProxy::sendToWebProcess<Messages::VideoPresentationManager::FullscreenModeChanged>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v17[0] = a3;
      {
        WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
      }

      v7 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v17);
      if (v7)
      {
        v8 = v7;
        atomic_fetch_add(v7 + 4, 1u);
        v9 = WebKit::WebPageProxy::webPageIDInProcess((v4 - 16), v7);
        v11 = IPC::Encoder::operator new(0x238, v10);
        *v11 = 1800;
        *(v11 + 2) = 0;
        *(v11 + 3) = 0;
        *(v11 + 1) = v9;
        *(v11 + 68) = 0;
        *(v11 + 70) = 0;
        *(v11 + 69) = 0;
        IPC::Encoder::encodeHeader(v11);
        v19 = v11;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a4);
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, *(a4 + 8));
        LOBYTE(v17[0]) = 0;
        v18 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v19, 0, v17, 1);
        if (v18 == 1)
        {
          v13 = v17[0];
          v17[0] = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        v14 = v19;
        v19 = 0;
        if (v14)
        {
          IPC::Encoder::~Encoder(v14, v12);
          bmalloc::api::tzoneFree(v15, v16);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v12);
      }

      CFRelease(*(v4 - 8));
    }
  }
}

void sub_19DCA6EC4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v15, v16);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12, a2);
  CFRelease(*(v13 - 8));
  _Unwind_Resume(a1);
}

uint64_t WebKit::VideoPresentationManagerProxy::playerViewController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WebKit::VideoPresentationManagerProxy::findInterface(a1, a2, a3, &v7);
  v3 = v7;
  if (!v7)
  {
    return 0;
  }

  v4 = (*(*v7 + 168))(v7);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v3 + 104), v5);
  return v4;
}

uint64_t *WebKit::VideoPresentationManagerProxy::bestVideoForElementFullscreen@<X0>(uint64_t *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = this;
  if (!this[14])
  {
    goto LABEL_10;
  }

  v4 = *(this + 15);
  *&v64.origin.x = this[14];
  v64.origin.y = v4;
  this = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>( this + 8,  &v64);
  v5 = v2[8];
  if (v5)
  {
    v5 += 4 * *(v5 - 1);
  }

  if (v5 != this && *(this[2] + 73) == 1)
  {
    v6 = this[3];
    while (1)
    {
      v7 = *(v6 + 104);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(v6 + 104);
      atomic_compare_exchange_strong_explicit((v6 + 104), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_65;
      }
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 104));
LABEL_65:
    *a2 = v6;
  }

  else
  {
LABEL_10:
    v9 = v2[6];
    if (v9 && (v10 = *(v9 + 8)) != 0 && (v11 = *(v10 + 40)) != 0 && (v12 = *(v11 + 8)) != 0)
    {
      (*(*v12 + 1712))(v12);
      v13 = (*(*v12 + 936))(v12);
      v14 = v13;
      if (v13)
      {
        v15 = v13;
        [v14 bounds];
        v64.origin.x = v16;
        v64.origin.y = v17;
        v64.size.width = v18;
        v64.size.height = v19;
        v62 = 0;
        v63 = 0;
        v20 = v2[8];
        v21 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(v20);
        v22 = v21;
        v24 = v23;
        if (v20)
        {
          v20 += 32 * *(v20 - 4);
        }

        if (v20 != v21)
        {
          do
          {
            std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100]<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>,0>(&v61, (v22 + 16));
            if (*(*&v61.origin.x + 73))
            {
              v26 = HIDWORD(v63);
              if (HIDWORD(v63) == v63)
              {
                v27 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v62, HIDWORD(v63) + 1, &v61.origin.y);
                v28 = HIDWORD(v63);
                v29 = v62;
                v30 = *v27;
                while (1)
                {
                  v31 = *(v30 + 104);
                  if ((v31 & 1) == 0)
                  {
                    break;
                  }

                  v32 = *(v30 + 104);
                  atomic_compare_exchange_strong_explicit((v30 + 104), &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v32 == v31)
                  {
                    v33 = v28;
                    goto LABEL_31;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v30 + 104));
                v33 = HIDWORD(v63);
LABEL_31:
                *&v29[8 * v28] = v30;
              }

              else
              {
                v34 = v62;
                y = v61.origin.y;
                while (1)
                {
                  v36 = *(*&y + 104);
                  if ((v36 & 1) == 0)
                  {
                    break;
                  }

                  v37 = *(*&y + 104);
                  atomic_compare_exchange_strong_explicit((*&y + 104), &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v37 == v36)
                  {
                    v33 = v26;
                    goto LABEL_29;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(*&y + 104));
                v33 = HIDWORD(v63);
LABEL_29:
                *&v34[8 * v26] = y;
              }

              HIDWORD(v63) = v33 + 1;
            }

            v38 = v61.origin.y;
            v61.origin.y = 0.0;
            if (v38 != 0.0)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((*&v38 + 104), v25);
            }

            x = v61.origin.x;
            v61.origin.x = 0.0;
            if (x != 0.0)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((*&x + 8), v25);
            }

            do
            {
              v22 += 32;
              if (v22 == v24)
              {
                break;
              }
            }

            while (*v22 == 0 || *(v22 + 8) == -1);
          }

          while (v22 != v20);
        }

        WebCore::FloatRect::FloatRect(&v61, &v64);
        v42 = v61.origin.y;
        *a2 = 0;
        if (HIDWORD(v63))
        {
          v43 = 0;
          v44 = v62;
          v45 = &v62[8 * HIDWORD(v63)];
          v46 = 0.0;
          do
          {
            v47 = *(*v44 + 80);
            if (v47)
            {
              v48 = v47;
              memset(&v61, 0, sizeof(v61));
              [v47 bounds];
              [v47 convertRect:0 toLayer:?];
              v61.origin.x = v49;
              v61.origin.y = v50;
              v61.size.width = v51;
              v61.size.height = v52;
              WebCore::FloatRect::FloatRect(&v60, &v64);
              WebCore::FloatRect::FloatRect(v59, &v61);
              v65 = v60;
              WebCore::FloatRect::intersect(&v65, v59);
              if (*(&v65 + 2) > 0.0 && *(&v65 + 3) > 0.0)
              {
                v54 = *(&v65 + 2) * *(&v65 + 3);
                if ((*(&v65 + 2) * *(&v65 + 3)) > v46 && v54 >= ((*&v42 * *(&v42 + 1)) * 0.25))
                {
                  v56 = *v44;
                  if (*v44)
                  {
                    while (1)
                    {
                      v57 = *(v56 + 104);
                      if ((v57 & 1) == 0)
                      {
                        break;
                      }

                      v58 = *(v56 + 104);
                      atomic_compare_exchange_strong_explicit((v56 + 104), &v58, v57 + 2, memory_order_relaxed, memory_order_relaxed);
                      if (v58 == v57)
                      {
                        goto LABEL_57;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v56 + 104));
                  }

LABEL_57:
                  *a2 = v56;
                  if (v43)
                  {
                    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v43 + 104), v53);
                  }

                  v43 = v56;
                  v46 = v54;
                }
              }
            }

            v44 += 8;
          }

          while (v44 != v45);
        }

        WTF::Vector<WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v41);
      }

      else
      {
        *a2 = 0;
      }

      return (*(*v12 + 1720))(v12);
    }

    else
    {
      *a2 = 0;
    }
  }

  return this;
}

void sub_19DCA73EC(_Unwind_Exception *a1, __n128 a2, __n128 a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  WTF::Vector<WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a4);

  (*(*v18 + 1720))(v18);
  _Unwind_Resume(a1);
}

void sub_19DCA7790(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCA7930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    CFRelease(v10);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCA7E08(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCA8314(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    WTF::Vector<WebCore::ContactInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DCA8664(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  v29 = *(v26 - 80);
  *(v26 - 80) = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v28);
  }

  if (v25)
  {
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24 + 32, v28);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24 + 16, v30);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v31);
  _Unwind_Resume(a1);
}

void sub_19DCA87EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  objc_destroyWeak((v12 + 40));
  if (a11)
  {
  }

  objc_destroyWeak((v11 + 8));
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c53_ZTSKZ39__WKContactPicker_dismissWithContacts__E4__48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 40) = 0;
  v4 = a1 + 40;
  *(a1 + 32) = v3;
  objc_copyWeak((a1 + 40), (a2 + 40));
  v5 = *(a2 + 48);
  *(v4 + 8) = v5;
  if (v5)
  {
    v6 = v5;
  }
}

void __destroy_helper_block_e8_32c53_ZTSKZ39__WKContactPicker_dismissWithContacts__E4__48(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
  }

  objc_destroyWeak((a1 + 40));
}

API::Object *API::UIClient::configurationForLocalInspector@<X0>(API::Object **a1@<X8>)
{
  v2 = API::Object::newObject(0x28uLL, 71);
  result = API::Object::Object(v2);
  *result = &unk_1F111B510;
  *(result + 3) = 0;
  *(result + 4) = 0;
  *(result + 2) = 0;
  *a1 = result;
  return result;
}

_DWORD *WebKit::VideoPresentationManagerProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

Class initARQuickLookWebKitItem(void)
{
  if ((byte_1EB01D44B & 1) == 0)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/AssetViewer.framework/AssetViewer", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1EB01D488 = v1;
    byte_1EB01D44B = 1;
  }

  result = objc_getClass("ARQuickLookWebKitItem");
  qword_1EB01D480 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DCA932CLL);
  }

  getARQuickLookWebKitItemClass = ARQuickLookWebKitItemFunction;
  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void const*)#1}::__invoke(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[15];
  a1[15] = 0;
  if (v3)
  {
  }

  v4 = a1[10];
  a1[10] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor((a1 + 5));
  result = a1[4];
  a1[4] = 0;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

void WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, int a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          v6 = *(v5 + 8);
          if (v6)
          {
            CFRetain(*(v6 - 8));
            v7 = qword_1ED6413A0;
            if (os_log_type_enabled(qword_1ED6413A0, OS_LOG_TYPE_DEFAULT))
            {
              v8 = *(v4 + 96);
              *buf = 134217984;
              v41 = v8;
              _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "SystemPreview began on %lld", buf, 0xCu);
            }

            v10 = (a1 + 80);
            v9 = *(a1 + 80);
            if (v9)
            {
              atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
            }

            *v38 = v9;
            *&v38[8] = *(a1 + 88);
            v39 = *(a1 + 104);
            WebCore::ResourceRequestBase::ResourceRequestBase(buf, v38, 0);
            v42 = 0;
            v12 = *v38;
            *v38 = 0;
            if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v11);
            }

            v38[0] = 0;
            LOBYTE(v39) = -1;
            LODWORD(v13) = *(a1 + 64);
            if (*(a1 + 64))
            {
              if (v13 == 255)
              {
                goto LABEL_20;
              }

              *v38 = *(a1 + 40);
            }

            else
            {
              v14 = *(a1 + 40);
              if (v14)
              {
                atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
              }

              *v38 = v14;
              v13 = *(a1 + 48);
              if (v13)
              {
                atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
              }

              *&v38[8] = v13;
              *&v38[16] = *(a1 + 56);
              LOBYTE(v13) = *(a1 + 64);
            }

            LOBYTE(v39) = v13;
LABEL_20:
            add = 1;
            BYTE8(v39) = 1;
            v16 = *(a1 + 72);
            if (v16)
            {
              add = atomic_fetch_add(v16, 1u);
            }

            v17 = *(a1 + 32);
            *(a1 + 32) = 0;
            v18 = WTF::fastMalloc(add, 0x18);
            *v18 = &unk_1F1102868;
            v18[1] = v16;
            v18[2] = v17;
            v37 = v18;
            WebKit::WebPageProxy::dataTaskWithRequest(v6 - 16, buf, v38, 0, &v37);
            v19 = v37;
            v37 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            if (BYTE8(v39) == 1)
            {
              mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v38);
            }

            WTF::String::operator=((v4 + 144), (a1 + 80));
            v20 = *(a1 + 88);
            *(v4 + 168) = *(a1 + 104);
            *(v4 + 152) = v20;
            WTF::URL::fragmentIdentifier((a1 + 80));
            if ((v21 & 0x100000000) != 0)
            {
              WTF::String::String();
            }

            else
            {
              WTF::String::String();
            }

            v23 = *v38;
            *v38 = 0;
            v24 = *(v4 + 224);
            *(v4 + 224) = v23;
            if (v24)
            {
              if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v24, v22);
              }

              v24 = *v38;
              *v38 = 0;
              if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v24 = WTF::StringImpl::destroy(v24, v22);
              }
            }

            v25 = [objc_alloc((*MEMORY[0x1E69E2338])(v24)) init];
            v26 = *(v4 + 232);
            *(v4 + 232) = v25;
            if (v26)
            {
            }

            v27 = [[_WKPreviewControllerDelegate alloc] initWithSystemPreviewController:v4];
            v28 = *(v4 + 240);
            *(v4 + 240) = v27;
            if (v28)
            {

              v27 = *(v4 + 240);
            }

            [*(v4 + 232) setDelegate:v27];
            v29 = [_WKPreviewControllerDataSource alloc];
            v30 = *v10;
            if (*v10)
            {
              atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
            }

            *v38 = v30;
            *&v38[8] = *(a1 + 88);
            v39 = *(a1 + 104);
            v31 = [(_WKPreviewControllerDataSource *)v29 initWithSystemPreviewController:v4 MIMEType:@"model/vnd.usdz+zip" originatingPageURL:v38];
            v33 = *(v4 + 248);
            *(v4 + 248) = v31;
            if (v33)
            {
            }

            v34 = *v38;
            *v38 = 0;
            if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v34, v32);
            }

            [*(v4 + 232) setDataSource:*(v4 + 248)];
            [*(a1 + 120) presentViewController:*(v4 + 232) animated:1 completion:0];
            *(v4 + 12) = 0;
            v35 = v42;
            v42 = 0;
            if (v35)
            {
            }

            WebCore::ResourceRequestBase::~ResourceRequestBase(buf);
            CFRelease(*(v6 - 8));
            return;
          }
        }
      }
    }
  }

  v36 = (a1 + 32);

  WTF::CompletionHandler<void ()(void)>::operator()(v36);
}

void sub_19DCA9860(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  v43 = a41;
  a41 = 0;
  if (v43)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a17);
  CFRelease(*(v41 - 8));
  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(BOOL)::{lambda(WTF::Ref<API::DataTask,WTF::RawPtrTraits<API>,WTF::DefaultRefDerefTraits<API>> &&)#1},void,API&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1102868;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(BOOL)::{lambda(WTF::Ref<API::DataTask,WTF::RawPtrTraits<API>,WTF::DefaultRefDerefTraits<API>> &&)#1},void,API&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1102868;
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

void WTF::Detail::CallableWrapper<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_1::operator()(BOOL)::{lambda(WTF::Ref<API::DataTask,WTF::RawPtrTraits<API>,WTF::DefaultRefDerefTraits<API>> &&)#1},void,API&>::call(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  CFRetain(*(a2 + 8));
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
      goto LABEL_20;
    }
  }

  v7 = [[_WKSystemPreviewDataTaskDelegate alloc] initWithSystemPreviewController:v5];
  v8 = v5[32];
  v5[32] = v7;
  if (v8)
  {

    v7 = v5[32];
  }

  [v6 setDelegate:v7];
  v9 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    v21 = v5;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - UIProcess is taking a background assertion because it is downloading a system preview", &v20, 0xCu);
  }

  v10 = v5[2];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      CFRetain(*(v11 - 8));
      v13 = *(v11 + 336);
      v14 = *(*(v13 + 160) + 8);
      if (v14)
      {
        atomic_fetch_add((v14 + 16), 1u);
        v15 = WebKit::ProcessThrottlerActivity::operator new(0x30, v12);
        v16 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v15, v13 + 144, "System preview download", 24, 0, 0);
        v18 = v5[33];
        v5[33] = v16;
        if (v18)
        {
          WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v18 + 8), v17);
        }

        WebKit::ProcessThrottler::deref((v13 + 144), v17);
        CFRelease(*(v11 - 8));
        goto LABEL_15;
      }

      __break(0xC471u);
LABEL_20:
      JUMPOUT(0x19DCA9C80);
    }
  }

LABEL_15:
  WTF::CompletionHandler<void ()(void)>::operator()((a1 + 16));
  v19 = *(a2 + 8);

  CFRelease(v19);
}

void WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0>(WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
  }
}

void WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0>(WebKit::UIDelegate::UIClient::createNewPage(WebKit::WebPageProxy &,WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&,WTF::Ref<API::NavigationAction,WTF::RawPtrTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>,WTF::DefaultRefDerefTraits<WTF::Ref<API::PageConfiguration,WTF::RawPtrTraits<API::PageConfiguration>,WTF::DefaultRefDerefTraits<API::PageConfiguration>> &&>> &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)> &&)::$_0)::{lambda(void *,WKWebView *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if ((WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 56)) & 1) == 0)
  {
    *(*(a1 + 56) + 24) = 1;
    if (!a2)
    {
      v7 = 0;
      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()((a1 + 48));
LABEL_14:
      if (v7)
      {
        CFRelease(*(v7 + 8));
      }

      return;
    }

    if (*(a1 + 32) == 1)
    {
      v4 = *(a2 + 416);
      v5 = *(v4 + 1496);
      if ((v5 & 1) != 0 && *(a1 + 72))
      {
        if (*(a1 + 64) == *(v4 + 1488))
        {
          goto LABEL_11;
        }
      }

      else if (((v5 ^ *(a1 + 72)) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ([*(a2 + 408) _relatedWebView] == *(a1 + 40))
    {
LABEL_11:
      v6 = *(a2 + 416);
      if (v6)
      {
        CFRetain(*(v6 + 8));
      }

      v7 = v6;
      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>> &&)>::operator()((a1 + 48));
      goto LABEL_14;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Returned WKWebView was not created with the given configuration."];
    goto LABEL_11;
  }
}

void sub_19DCA9E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptAlert(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(void)> &&)::$_0)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    result = (*(**(a1 + 32) + 16))(*(a1 + 32));
    *(*(a1 + 40) + 24) = 1;
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptConfirm(WebKit::WebPageProxy &,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    result = (*(**(a1 + 32) + 16))(*(a1 + 32), a2);
    *(*(a1 + 40) + 24) = 1;
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(NSString *)>::fromCallable<WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0>(WebKit::UIDelegate::UIClient::runJavaScriptPrompt(WebKit::WebPageProxy &,WTF::String const&,WTF::String const&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(WTF::String const&)> &&)::$_0)::{lambda(void *,NSString *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    MEMORY[0x19EB02040](&v6, a2);
    (*(**(a1 + 32) + 16))(*(a1 + 32), &v6);
    result = v6;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }

    *(*(a1 + 40) + 24) = 1;
  }

  return result;
}

void sub_19DCAA150(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    result = WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 32), a2);
    *(*(a1 + 40) + 24) = 1;
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1>(WebKit::UIDelegate::UIClient::requestStorageAccessConfirm(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebCore::RegistrableDomain const&,WebCore::RegistrableDomain const&,std::optional<WebCore::OrganizationStorageAccessPromptQuirk> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    result = WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 32), a2);
    *(*(a1 + 40) + 24) = 1;
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0)::{lambda(void const*)#1}::__invoke(void *a1, void *a2)
{
  v3 = a1[10];
  a1[10] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v4);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor((a1 + 5));
  result = a1[4];
  a1[4] = 0;
  if (result)
  {
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 72));
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 80);
  *(*(a1 + 72) + 24) = 1;
  if (v5 && (v6 = *(v5 + 8)) != 0 && a2 != 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        v7 = v6 - 16;
        v8 = *(a1 + 32);
        *(a1 + 32) = 0;
        v10 = v8;
        WebKit::alertForPermission(v7, 4, a1 + 40, &v10);
        result = v10;
        v10 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }
      }

      return result;
    }

    v9 = *(**(a1 + 32) + 16);
  }

  else
  {
    v9 = *(**(a1 + 32) + 16);
  }

  return v9();
}

void sub_19DCAA4C8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForGeolocationPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData const&,WTF::Function<void ()(BOOL)> &)::$_1)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    v4 = *(*v3 + 16);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::runBeforeUnloadConfirmPanel(WebKit::WebPageProxy &,WTF::String &&,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,WTF::Function<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    result = (*(**(a1 + 32) + 16))(*(a1 + 32), a2);
    *(*(a1 + 40) + 24) = 1;
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_0)::{lambda(void *,unsigned long long)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    v4 = *(*v3 + 16);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(unsigned long long)>::fromCallable<WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1>(WebKit::UIDelegate::UIClient::exceededDatabaseQuota(WebKit::WebPageProxy *,WebKit::WebFrameProxy *,API::SecurityOrigin *,WTF::String const&,WTF::String const&,unsigned long long,unsigned long long,unsigned long long,unsigned long long,WTF::Function<void ()(unsigned long long)> &&)::$_1)::{lambda(void *,unsigned long long)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    v4 = *(*v3 + 16);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForNotificationPermissionRequest(WebKit::WebPageProxy &,API::SecurityOrigin &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 32), a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestCookieConsent(WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(WebCore::CookieConsentDecisionResult)>::operator()((a1 + 32));
  }

  return result;
}

atomic_uint *WTF::BlockPtr<void ()(NSArray *)>::fromCallable<WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0>(WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0)::{lambda(void const*)#1}::__invoke(void *a1)
{
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  result = a1[4];
  a1[4] = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

void WTF::BlockPtr<void ()(NSArray *)>::fromCallable<WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0>(WebKit::UIDelegate::UIClient::runOpenPanel(WebKit::WebPageProxy &,WebKit::WebFrameProxy *,WebKit::FrameInfoData &&,API::OpenPanelParameters *,WebKit::WebOpenPanelResultListenerProxy *)::$_0)::{lambda(void *,NSArray *)#1}::__invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32)) & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;
    if (a2)
    {
      v25 = 0;
      v26 = 0;
      v4 = objc_alloc_init(MEMORY[0x1E696ABF8]);
      v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [a2 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v6)
      {
        v7 = *v22;
        do
        {
          v8 = 0;
          do
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(a2);
            }

            objc_msgSend__moveToNewTemporaryDirectory_fileCoordinator_fileManager_asCopy_(WKFileUploadPanel, v17);
            if (v18 == 1)
            {
              v17 = [v19 path];
              if (HIDWORD(v26) == v26)
              {
                WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,NSString *&>(&v25, &v17);
              }

              else
              {
                MEMORY[0x19EB02040](v25 + 8 * HIDWORD(v26));
                ++HIDWORD(v26);
              }
            }

            v9 = v20;
            v20 = 0;
            if (v9)
            {
            }

            v10 = v19;
            v19 = 0;
            if (v10)
            {
            }

            ++v8;
          }

          while (v6 != v8);
          v11 = [a2 countByEnumeratingWithState:&v21 objects:v27 count:16];
          v6 = v11;
        }

        while (v11);
      }

      v12 = *(a1 + 48);
      API::OpenPanelParameters::allowedMIMETypes(&v17);
      API::Array::toStringVector(&v18, v17);
      WebKit::WebOpenPanelResultListenerProxy::chooseFiles(v12, &v25, &v18);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v13);
      v15 = v17;
      v17 = 0;
      if (v15)
      {
        CFRelease(*(v15 + 1));
      }

      if (v5)
      {
      }

      if (v4)
      {
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v14);
    }

    else
    {
      v16 = *(a1 + 48);

      WebKit::WebOpenPanelResultListenerProxy::cancel(v16);
    }
  }
}

void sub_19DCAAD50(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  if (v22)
  {
  }

  if (v21)
  {
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(void *a1, void *a2)
{
  v3 = a1[10];
  a1[10] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v4);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor((a1 + 5));
  result = a1[4];
  a1[4] = 0;
  if (result)
  {
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

void WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::shouldAllowDeviceOrientationAndMotionAccess(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 72)))
  {
    return;
  }

  v4 = *(a1 + 80);
  *(*(a1 + 72) + 24) = 1;
  if (v4 && (v5 = *(v4 + 8)) != 0 && a2 != 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {

        WebKit::alertForPermission(v5 - 16, 3, a1 + 40, (a1 + 32));
      }

      return;
    }

    v6 = (a1 + 32);
    v7 = 1;
  }

  else
  {
    v6 = (a1 + 32);
    v7 = 0;
  }

  WTF::CompletionHandler<void ()(BOOL)>::operator()(v6, v7);
}

void WTF::BlockPtr<void ()(WKDisplayCapturePermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

uint64_t WTF::BlockPtr<void ()(WKDisplayCapturePermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0)::{lambda(void *,WKDisplayCapturePermissionDecision)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    *(a1 + 32) = 0;
    v6 = WTF::fastMalloc(1, 0x18);
    *v6 = &unk_1F1102A90;
    v6[1] = v5;
    v6[2] = a2;
    v7 = v6;
    WTF::ensureOnMainRunLoop();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

void sub_19DCAB048(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0::operator()(WKDisplayCapturePermissionDecision)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102A90;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0::operator()(WKDisplayCapturePermissionDecision)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102A90;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::callDisplayCapturePermissionDelegate(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WebKit::UserMediaPermissionRequestProxy &)::$_0::operator()(WKDisplayCapturePermissionDecision)::{lambda(void)#1},void>::call(_DWORD *result)
{
  v1 = *(result + 2);
  switch(v1)
  {
    case 0:
      return WebKit::UserMediaPermissionRequestProxy::deny(*(result + 1), 5u);
    case 2:
      return (*(**(result + 1) + 24))(*(result + 1), 0);
    case 1:
      return (*(**(result + 1) + 24))(*(result + 1), 1);
  }

  return result;
}

void WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

uint64_t WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);
    *(*(a1 + 40) + 24) = 1;
    *(a1 + 32) = 0;
    v6 = WTF::fastMalloc(1, 0x18);
    *v6 = &unk_1F1102AD8;
    v6[1] = v5;
    v6[2] = a2;
    v7 = v6;
    WTF::ensureOnMainRunLoop();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

void sub_19DCAB2DC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0::operator()(WKPermissionDecision)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102AD8;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0::operator()(WKPermissionDecision)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102AD8;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_0::operator()(WKPermissionDecision)::{lambda(void)#1},void>::call(WTF::StringImpl *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      if (!v2)
      {
        v3 = *(result + 1);

        return WebKit::UserMediaPermissionRequestProxy::promptForGetUserMedia(v3);
      }

      return result;
    }

    v4 = *(result + 1);
    if (*(v4 + 448) - 1 >= 2 && *(v4 + 428))
    {
      WebKit::UserMediaPermissionRequestProxy::videoDeviceUIDs(&v13, v4);
      if (!v14)
      {
        goto LABEL_30;
      }

      v6 = *v13;
      if (*v13)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      v15 = v6;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v5);
      v4 = *(v1 + 1);
    }

    else
    {
      v15 = 0;
    }

    if (!*(v4 + 444))
    {
      v12 = 0;
LABEL_23:
      WebKit::UserMediaPermissionRequestProxy::allow(v4, &v12, &v15);
      v11 = v12;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }

      result = v15;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }

      return result;
    }

    WebKit::UserMediaPermissionRequestProxy::audioDeviceUIDs(&v13, v4);
    if (v14)
    {
      v9 = *v13;
      if (*v13)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v12 = v9;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v8);
      v4 = *(v1 + 1);
      goto LABEL_23;
    }

LABEL_30:
    __break(0xC471u);
    JUMPOUT(0x19DCAB54CLL);
  }

  v7 = *(result + 1);

  return WebKit::UserMediaPermissionRequestProxy::deny(v7, 5u);
}

void WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1>(WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_1)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if (result)
  {
    return result;
  }

  *(*(a1 + 40) + 24) = 1;
  if (a2)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 448) - 1 >= 2 && *(v5 + 428))
    {
      WebKit::UserMediaPermissionRequestProxy::videoDeviceUIDs(&v14, v5);
      if (!v15)
      {
        goto LABEL_26;
      }

      v7 = *v14;
      if (*v14)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v16 = v7;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v6);
      v5 = *(a1 + 32);
    }

    else
    {
      v16 = 0;
    }

    if (!*(v5 + 444))
    {
      v13 = 0;
LABEL_19:
      WebKit::UserMediaPermissionRequestProxy::allow(v5, &v13, &v16);
      v12 = v13;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      result = v16;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v11);
        }
      }

      return result;
    }

    WebKit::UserMediaPermissionRequestProxy::audioDeviceUIDs(&v14, v5);
    if (v15)
    {
      v10 = *v14;
      if (*v14)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v13 = v10;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v9);
      v5 = *(a1 + 32);
      goto LABEL_19;
    }

LABEL_26:
    __break(0xC471u);
    JUMPOUT(0x19DCAB708);
  }

  v8 = *(a1 + 32);

  return WebKit::UserMediaPermissionRequestProxy::deny(v8, 5u);
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::decidePolicyForScreenCaptureUnmuting(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,API::SecurityOrigin &,API::SecurityOrigin,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 32), a2);
  }

  return result;
}

atomic_uint *WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::UIDelegate::UIClient::printFrame(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebCore::FloatSize const&,WTF::CompletionHandler<void ()(void)> &&)::$_0)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 32));
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 24) = 1;

    return WTF::CompletionHandler<void ()(void)>::operator()((a1 + 40));
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::UIDelegate::UIClient::confirmPDFOpening(WebKit::WebPageProxy &,WTF::URL const&,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, char a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 32), a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(_WKWebAuthenticationPanelResult)>::fromCallable<WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(_WKWebAuthenticationPanelResult)>::fromCallable<WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0>(WebKit::UIDelegate::UIClient::runWebAuthenticationPanel(WebKit::WebPageProxy &,API::WebAuthenticationPanel &,WebKit::WebFrameProxy &,WebKit::FrameInfoData &&,WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)> &&)::$_0)::{lambda(void *,_WKWebAuthenticationPanelResult)#1}::__invoke(uint64_t a1)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(WebKit::WebAuthenticationPanelResult)>::operator()((a1 + 32));
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0>(WebKit::UIDelegate::UIClient::requestWebAuthenticationConditonalMediationRegistration(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke(uint64_t a1, __int16 a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(std::optional<BOOL>)>::operator()((a1 + 32), a2 | 0x100u);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0>(WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(WKPermissionDecision)>::fromCallable<WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0>(WebKit::UIDelegate::UIClient::queryPermission(WTF::String const&,API::SecurityOrigin &,WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)> &&)::$_0)::{lambda(void *,WKPermissionDecision)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if ((result & 1) == 0)
  {
    *(*(a1 + 40) + 24) = 1;
    if (a2 <= 2)
    {
      v5 = qword_19E703988[a2];

      return WTF::CompletionHandler<void ()(std::optional<WebCore::PermissionState>)>::operator()((a1 + 32), v5);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 24);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v5 + 104), a2);
        }

        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v6 + 8), a2);
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref(atomic_ullong *result, unint64_t a2)
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
        *v5 = &unk_1F1102BE0;
        v5[1] = v2;
        v7 = v5;
        WTF::ensureOnMainRunLoop();
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

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>(v6, a2);
}

void sub_19DCABDA0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>(atomic_uchar *this, unint64_t a2)
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
  *v7 = &unk_1F1102C08;
  v7[1] = v2;
  v7[2] = v5;
  v9 = v7;
  WTF::ensureOnMainRunLoop();
  this = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return this;
}

void sub_19DCABEE0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
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

void *std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](void *a1, uint64_t *a2)
{
  v4 = *a2;
  while (1)
  {
    v5 = *(v4 + 8);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(v4 + 8);
    atomic_compare_exchange_strong_explicit((v4 + 8), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 8));
LABEL_6:
  *a1 = v4;
  v7 = a2[1];
  while (1)
  {
    v8 = *(v7 + 104);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v7 + 104);
    atomic_compare_exchange_strong_explicit((v7 + 104), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v7 + 104));
LABEL_11:
  a1[1] = v7;
  return a1;
}

void sub_19DCAC0A4(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100]<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  while (1)
  {
    v5 = *(v4 + 8);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(v4 + 8);
    atomic_compare_exchange_strong_explicit((v4 + 8), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 8));
LABEL_6:
  *a1 = v4;
  v7 = a2[1];
  while (1)
  {
    v8 = *(v7 + 104);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(v7 + 104);
    atomic_compare_exchange_strong_explicit((v7 + 104), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v7 + 104));
LABEL_11:
  a1[1] = v7;
  return a1;
}

void sub_19DCAC15C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

Class initCNContactPickerViewController(void)
{
  if ((byte_1EB01D44C & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1EB01D498 = v1;
    byte_1EB01D44C = 1;
  }

  result = objc_getClass("CNContactPickerViewController");
  qword_1EB01D490 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DCAC210);
  }

  getCNContactPickerViewControllerClass = CNContactPickerViewControllerFunction;
  return result;
}

Class initCNContactFormatter(void)
{
  if ((byte_1EB01D44D & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1EB01D4A8 = v1;
    byte_1EB01D44D = 1;
  }

  result = objc_getClass("CNContactFormatter");
  qword_1EB01D4A0 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DCAC2D4);
  }

  getCNContactFormatterClass = CNContactFormatterFunction;
  return result;
}

Class initCNMutableContact(void)
{
  if ((byte_1EB01D44D & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1EB01D4A8 = v1;
    byte_1EB01D44D = 1;
  }

  result = objc_getClass("CNMutableContact");
  qword_1EB01D4B0 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DCAC398);
  }

  off_1ED63B640 = CNMutableContactFunction;
  return result;
}

Class initCNLabeledValue(void)
{
  if ((byte_1EB01D44D & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1EB01D4A8 = v1;
    byte_1EB01D44D = 1;
  }

  result = objc_getClass("CNLabeledValue");
  qword_1EB01D4B8 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DCAC45CLL);
  }

  _MergedGlobals_244 = CNLabeledValueFunction;
  return result;
}

Class initCNPhoneNumber(void)
{
  if ((byte_1EB01D44D & 1) == 0)
  {
    v1 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v1)
    {
      goto LABEL_6;
    }

    *algn_1EB01D4A8 = v1;
    byte_1EB01D44D = 1;
  }

  result = objc_getClass("CNPhoneNumber");
  qword_1EB01D4C0 = result;
  if (!result)
  {
LABEL_6:
    __break(0xC471u);
    JUMPOUT(0x19DCAC520);
  }

  off_1ED63B638 = CNPhoneNumberFunction;
  return result;
}

unsigned int **WTF::RefCounted<WebKit::SystemPreviewController>::deref(unsigned int **result)
{
  if (*result == 1)
  {
    WebKit::SystemPreviewController::~SystemPreviewController(result - 1);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::SystemPreviewController::~SystemPreviewController(unsigned int **this)
{
  _Block_release(this[35]);
  v3 = this[34];
  this[34] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = this[33];
  this[33] = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v4 + 2, v2);
  }

  v5 = this[32];
  this[32] = 0;
  if (v5)
  {
  }

  v6 = this[31];
  this[31] = 0;
  if (v6)
  {
  }

  v7 = this[30];
  this[30] = 0;
  if (v7)
  {
  }

  v8 = this[29];
  this[29] = 0;
  if (v8)
  {
  }

  v9 = this[28];
  this[28] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v2);
  }

  v10 = this[23];
  this[23] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v2);
  }

  v11 = this[18];
  this[18] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v2);
  }

  v12 = this[2];
  this[2] = 0;
  if (v12 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    WTF::fastFree(v12, v2);
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1102C30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SystemPreviewController::begin(WTF::URL const&,WebCore::SecurityOriginData const&,WebCore::SystemPreviewInfo const&,WTF::CompletionHandler<void ()(void)> &&)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1102C30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_2,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102C58;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102C58;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_3,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102C80;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_3,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102C80;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_4,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102CA8;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UIDelegate::UIClient::decidePolicyForUserMediaPermissionRequest(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,API::SecurityOrigin &,API::SecurityOrigin &,WebKit::UserMediaPermissionRequestProxy &)::$_4,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102CA8;
  *(this + 1) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<AVCaptureDeviceRotationCoordinator>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
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
      v13 = v6 + 16 * v11;
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

          v18 = *(v14 + 4);
          if (v18 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = v19 & v17;
            v19 = ++v20 + v21;
          }

          while (*(v16 + 16 * v21));
          v22 = v16 + 16 * v21;
          v23 = *(v22 + 8);
          *(v22 + 8) = 0;
          if (v23)
          {

            v24 = *v22;
            *v22 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v10);
            }
          }

          else
          {
            *v22 = 0;
          }

          v25 = *v13;
          *v13 = 0;
          *v22 = v25;
          v26 = *(v13 + 8);
          *(v13 + 8) = 0;
          *(v22 + 8) = v26;
          v27 = *(v13 + 8);
          *(v13 + 8) = 0;
          if (v27)
          {
          }

          v28 = *v13;
          *v13 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v10);
          }

          if (v13 == a3)
          {
            v12 = v22;
          }
        }

        else
        {
          v15 = *(v13 + 8);
          *(v13 + 8) = 0;
          if (v15)
          {

            v14 = *v13;
          }

          *v13 = 0;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, v10);
            }
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

void *WTF::Detail::CallableWrapper<WebKit::UserMediaPermissionRequestManagerProxy::requestSystemValidation(WebKit::WebPageProxy const&,WebKit::UserMediaPermissionRequestProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1102CF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaPermissionRequestManagerProxy::requestSystemValidation(WebKit::WebPageProxy const&,WebKit::UserMediaPermissionRequestProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1102CF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::UserMediaPermissionRequestManagerProxy::requestSystemValidation(WebKit::WebPageProxy const&,WebKit::UserMediaPermissionRequestProxy &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,BOOL>::call(uint64_t a1, char a2)
{
  if (*(a1 + 8) == 1)
  {
    WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 16), a2);
  }

  else
  {
    WebKit::requestAVCaptureAccessForType(2, (a1 + 16));
  }
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>(*result, a2);
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

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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

uint64_t WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, a2);
      }

      ++v4;
      v5 -= 8;
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

uint64_t WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::FloatRect>(WTF::Logger *a1, WTF::Logger::LogSiteIdentifier *a2, WebCore::FloatRect *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696EBD0];
  do
  {
    v6 = *v5;
    if (v6)
    {
      v18 = 0;
      return v18 & 1;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v7 != v6);
  v8 = WTF::Logger::messageHandlerObservers(a1);
  v9 = *(v8 + 12);
  if (v9)
  {
    v10 = *v8;
    v11 = *v8 + 8 * v9;
    do
    {
      v12 = *v10;
      v22[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v23, a2);
      v24 = 1;
      WebCore::FloatRect::toJSONString(v25, a3);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v21, v22, 2uLL);
      (*(*v12 + 16))(v12, &WebKit2LogFullscreen, 0, v21);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v13);
      for (i = 6; i != -2; i -= 4)
      {
        v16 = *&v22[i];
        *&v22[i] = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v17 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  v18 = *(a1 + 12);
  return v18 & 1;
}

void sub_19DCAD288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, WTF::StringImpl *a13)
{
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v13, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::FloatRect>(WTF::Logger::LogSiteIdentifier *a1, WebCore::FloatRect *a2)
{
  v30[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v26, a1);
  WebCore::FloatRect::toJSONString(&v25, a2);
  *buf = v26;
  v24[0] = v25;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v24, &v27);
  if (v27)
  {
    v6 = v25;
    v25 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = v26;
    v26 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = qword_1ED640AE0;
    v9 = os_log_type_enabled(qword_1ED640AE0, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      WTF::String::utf8();
      v11 = v24[0] ? v24[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v9 = v24[0];
      v24[0] = 0;
      if (v9)
      {
        if (*v9 == 1)
        {
          v9 = WTF::fastFree(v9, v10);
        }

        else
        {
          --*v9;
        }
      }
    }

    if (WebKit2LogFullscreen)
    {
      v12 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v13 = *v12;
        if (v13)
        {
          break;
        }

        v14 = *v12;
        atomic_compare_exchange_strong_explicit(v12, &v14, v13 | 1, memory_order_acquire, memory_order_acquire);
        if (v14 == v13)
        {
          v15 = WTF::Logger::observers(v9);
          v16 = *(v15 + 12);
          if (v16)
          {
            v17 = *v15;
            v18 = *v15 + 8 * v16;
            do
            {
              v19 = *v17;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], a1);
              v29 = 1;
              WebCore::FloatRect::toJSONString(v30, a2);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v24, buf, 2uLL);
              (*(*v19 + 16))(v19, &WebKit2LogFullscreen, 0, v24);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v20);
              for (i = 24; i != -8; i -= 16)
              {
                v22 = *&buf[i];
                *&buf[i] = 0;
                if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v10);
                }
              }

              ++v17;
            }

            while (v17 != v18);
          }

          v23 = 1;
          atomic_compare_exchange_strong_explicit(v12, &v23, 0, memory_order_release, memory_order_relaxed);
          if (v23 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void sub_19DCAD5F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v16, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::FloatSize>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, WebCore::FloatSize *a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696EBD0];
  do
  {
    v10 = *v9;
    if (v10)
    {
      return 0;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v11 != v10);
  v12 = WTF::Logger::messageHandlerObservers(a1);
  v13 = *(v12 + 12);
  if (v13)
  {
    v14 = *v12;
    v15 = *v12 + 8 * v13;
    do
    {
      v16 = *v14;
      v26[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v27, a4);
      v28 = 1;
      WebCore::FloatSize::toJSONString(v29, a5);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v25, v26, 2uLL);
      (*(*v16 + 16))(v16, a2, a3, v25);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v17);
      for (i = 6; i != -2; i -= 4)
      {
        v20 = *&v26[i];
        *&v26[i] = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v21 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    return 0;
  }

  if (a3 < 2)
  {
    return 1;
  }

  return *a2 && a2[16] >= a3;
}

void sub_19DCAD8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, WTF::StringImpl *a13)
{
  v15 = 1;
  atomic_compare_exchange_strong_explicit(v13, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::FloatSize>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, WebCore::FloatSize *a4)
{
  v34[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v30, this);
  WebCore::FloatSize::toJSONString(&v29, a4);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v9 = v29;
    v29 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v30;
    v30 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = *(a1 + 32);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      WTF::String::utf8();
      v14 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v14;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v12 = v28[0];
      v28[0] = 0;
      if (v12)
      {
        if (*v12 == 1)
        {
          v12 = WTF::fastFree(v12, v13);
        }

        else
        {
          --*v12;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v15 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v16 = *v15;
        if (v16)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
        if (v17 == v16)
        {
          v18 = WTF::Logger::observers(v12);
          v19 = *(v18 + 12);
          if (v19)
          {
            v20 = *v18;
            v21 = *v18 + 8 * v19;
            do
            {
              v22 = *v20;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v33 = 1;
              WebCore::FloatSize::toJSONString(v34, a4);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v22 + 16))(v22, a1, a2, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v23);
              for (i = 24; i != -8; i -= 16)
              {
                v25 = *&buf[i];
                *&buf[i] = 0;
                if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v25, v13);
                }
              }

              ++v20;
            }

            while (v20 != v21);
          }

          v26 = 1;
          atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
          if (v26 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void sub_19DCADC4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v16, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v1 - 12))
  {
    return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::makeConstIterator(a1, v1);
  }

  return v1 + 32 * *(v1 - 4);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 + 32 * v4;
  if (v5 != a2)
  {
    while (*a2 == 0 || *(a2 + 8) == -1)
    {
      a2 += 32;
      if (a2 == v5)
      {
        return v3 + 32 * v4;
      }
    }
  }

  return a2;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::VideoPresentationManager::RequestRouteSharingPolicyAndContextUID,WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>>(WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1102DE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::VideoPresentationManager::RequestRouteSharingPolicyAndContextUID,WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>>(WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1102DE8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::VideoPresentationManager::RequestRouteSharingPolicyAndContextUID,WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>>(WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    v5 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a3);
    if (v5 & 0x100) != 0 && (v6 = v5, IPC::Decoder::decode<WTF::String>(a3, &v13), (v14))
    {
      WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>::operator()((a1 + 8), v6, &v13);
      result = v13;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }

    else
    {
      v10 = *a3;
      v11 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v12 = a3[3];
      if (v12 && v11)
      {
        (*(*v12 + 16))(v12, v10);
      }

      return IPC::Connection::cancelReply<Messages::VideoPresentationManager::RequestRouteSharingPolicyAndContextUID,WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>>((a1 + 8));
    }
  }

  else
  {
    v9 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::VideoPresentationManager::RequestRouteSharingPolicyAndContextUID,WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>>(v9);
  }

  return result;
}

void sub_19DCAE05C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Connection::cancelReply<Messages::VideoPresentationManager::RequestRouteSharingPolicyAndContextUID,WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>>(uint64_t *a1)
{
  v3 = 0;
  WTF::CompletionHandler<void ()(WebCore::RouteSharingPolicy,WTF::String)>::operator()(a1, 0, &v3);
  result = v3;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, v1);
  }

  return result;
}

void sub_19DCAE0F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
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

  v9 = WTF::fastZeroedMalloc(((32 * a2) | 0x10));
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
      v13 = v6 + 32 * v11;
      if (*(v13 + 8) != -1)
      {
        if (*v13 == 0)
        {
          v16 = *(v13 + 24);
          *(v13 + 24) = 0;
          if (v16)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v16 + 104), v10);
          }

          v17 = *(v13 + 16);
          *(v13 + 16) = 0;
          if (v17)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v17 + 8), v10);
          }
        }

        else
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v18 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash((v6 + 32 * v11));
          v19 = 0;
          do
          {
            v20 = v18 & v15;
            v21 = v14 + 32 * v20;
            v18 = ++v19 + v20;
          }

          while (*v21 != 0);
          v22 = *(v21 + 24);
          *(v21 + 24) = 0;
          if (v22)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v22 + 104), v10);
          }

          v23 = *(v21 + 16);
          *(v21 + 16) = 0;
          if (v23)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v23 + 8), v10);
          }

          *v21 = *v13;
          v24 = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v21 + 16) = v24;
          v25 = *(v13 + 24);
          *(v13 + 24) = 0;
          *(v21 + 24) = v25;
          v26 = *(v13 + 24);
          *(v13 + 24) = 0;
          if (v26)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v26 + 104), v10);
          }

          v27 = *(v13 + 16);
          *(v13 + 16) = 0;
          if (v27)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v27 + 8), v10);
          }

          if (v13 == a3)
          {
            v12 = v21;
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

uint64_t *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCAE400);
  }

  v5 = *(v2 - 8);
  v6 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(a2);
  v7 = a2[1];
  v8 = v6 & v5;
  result = (v2 + 32 * v8);
  v10 = *result;
  v11 = result[1];
  if (*result != *a2 || v11 != v7)
  {
    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v5;
      result = (v2 + 32 * v8);
      v10 = *result;
      v11 = result[1];
      ++v13;
      if (*result == *a2 && v11 == v7)
      {
        return result;
      }
    }

    if (*a1)
    {
      return (*a1 + 32 * *(*a1 - 4));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned int *WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 16 * v3;
    v5 = (*a1 + 8);
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v6 + 104), a2);
      }

      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v7 + 8), a2);
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

uint64_t *WTF::map<0ul,WTF::CrashOnOverflow,16ul,WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>>(WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const&)::{lambda(std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>&&)#1},WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const>@<X0>(uint64_t **a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  return WTF::Mapper<WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>>(WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const&)::{lambda(std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>&&)#1},WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const&,void>::map( a3,  a1);
}

uint64_t *WTF::Mapper<WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>>(WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const&)::{lambda(std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>&&)#1},WTF::Vector<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableConstValuesIterator<WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>> const&,void>::map(uint64_t *result, uint64_t **a2)
{
  v3 = result;
  v4 = **a2;
  if (v4)
  {
    v5 = *(v4 - 12);
    if (v5)
    {
      v6 = (v5 >> 28);
      if (v6)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(v6, (16 * v5));
      *(v3 + 2) = v5;
      *v3 = result;
    }
  }

  v7 = a2[1];
  v8 = a2[3];
  if (v7 != v8)
  {
    v9 = a2[2];
    do
    {
      result = std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>::pair[abi:sn200100](&v19, v7 + 2);
      v11 = *(v3 + 3);
      v12 = v11 + 1;
      v13 = (*v3 + 16 * v11);
      v14 = v19;
      v19 = 0;
      *v13 = v14;
      v15 = v20;
      v20 = 0;
      v13[1] = v15;
      *(v3 + 3) = v12;
      v16 = v20;
      v20 = 0;
      if (v16)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v16 + 104), v10);
      }

      v17 = v19;
      v19 = 0;
      if (v17)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationModel,(WTF::DestructionThread)0>::deref((v17 + 8), v10);
      }

      do
      {
        v7 += 4;
        if (v7 == v9)
        {
          break;
        }
      }

      while (*v7 == 0 || v7[1] == -1);
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::begin(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 4);
  v2 = result + 32 * v1;
  if (!*(result - 12))
  {
    return result + 32 * v1;
  }

  if (v1)
  {
    v3 = 32 * v1;
    while (*result == 0 || *(result + 8) == -1)
    {
      result += 32;
      v3 -= 32;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

void *WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19DCAE6BC(_Unwind_Exception *exception_object, void *a2)
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

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 3) <= a3)
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

    WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::encode<IPC::Encoder,std::optional<WebCore::FloatSize> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return WTF::Vector<WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t WTF::Vector<WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::VideoPresentationInterfaceIOS,(WTF::DestructionThread)2>::deref((v6 + 104), a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
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

uint64_t **WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t **result, atomic_uint **a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  v4 = a3;
  if (!(a3 >> 29))
  {
    v6 = 8 * a3;
    v7 = WTF::fastMalloc(0, (8 * a3));
    *(v3 + 2) = v4;
    *v3 = v7;
    v8 = *(v3 + 3);
    do
    {
      v9 = *v3;
      v10 = *a2;
      v11 = v8;
      if (*a2)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        v11 = *(v3 + 3);
      }

      v9[v8] = v10;
      v8 = v11 + 1;
      *(v3 + 3) = v11 + 1;
      ++a2;
      v6 -= 8;
    }

    while (v6);
    return v3;
  }

  __break(0xC471u);
  return result;
}

void sub_19DCAE910(_Unwind_Exception *exception_object, void *a2)
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

uint64_t WebKit::NetworkResourceLoadMap::NetworkResourceLoadMap(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 8) = 0;
  v2 = *a2;
  *a2 = 0;
  *(result + 16) = v2;
  return result;
}

void WebKit::NetworkResourceLoadMap::~NetworkResourceLoadMap(WebKit::NetworkResourceLoadMap *this, void *a2)
{
  WebKit::NetworkResourceLoadMap::clear(this, a2);
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*this)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*this, v3);
  }
}

void *WebKit::NetworkResourceLoadMap::clear(WebKit::NetworkResourceLoadMap *this, void *a2)
{
  result = *this;
  if (result)
  {
    *this = 0;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  if (*(this + 8))
  {
    *(this + 8) = 0;
    result = *(this + 2);
    if (result)
    {
      v4 = *(*result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t *WebKit::NetworkResourceLoadMap::add@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a2;
  hasUpload = WebCore::ResourceRequestBase::hasUpload((*a3 + 104));
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>(a1, &v9, a3, a4);
  if (hasUpload && (*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
    result = *(a1 + 16);
    if (result)
    {
      return (*(*result + 16))(result, 1);
    }
  }

  return result;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCAECECLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
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
        v25 = 0;
        v24 = v9 + 16 * *(v9 - 4);
        goto LABEL_19;
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
  v19 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v19;
  if (result)
  {
    if (*(result + 5) == 1)
    {
      result = (*(*result + 24))(result);
    }

    else
    {
      --*(result + 5);
    }
  }

  v20 = *v8;
  if (*v8)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v22 = (*(v20 - 16) + v21);
  v23 = *(v20 - 4);
  if (v23 > 0x400)
  {
    if (v23 > 2 * v22)
    {
      goto LABEL_18;
    }

LABEL_23:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
    v15 = result;
    v20 = *v8;
    if (*v8)
    {
      v23 = *(v20 - 4);
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_18;
  }

  if (3 * v23 <= 4 * v22)
  {
    goto LABEL_23;
  }

LABEL_18:
  v24 = v20 + 16 * v23;
  v25 = 1;
LABEL_19:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v25;
  return result;
}

BOOL WebKit::NetworkResourceLoadMap::remove(uint64_t a1, uint64_t a2)
{
  WebKit::NetworkResourceLoadMap::take(a1, a2, &v4);
  v2 = v4;
  if (v4)
  {
    if (v4[5] == 1)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      --v4[5];
    }
  }

  return v2 != 0;
}

void *WebKit::NetworkResourceLoadMap::take@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v16 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( a1,  &v16);
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(a1, v5, &v15);
  v7 = v15;
  if (v15)
  {
    result = WebCore::ResourceRequestBase::hasUpload((v15 + 104));
    if (result)
    {
      v8 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a1);
      v10 = *a1;
      if (*a1)
      {
        v11 = *(v10 - 4);
        v12 = v10 + 16 * v11;
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      v14[0] = a1;
      v14[1] = v8;
      v14[2] = v9;
      v14[3] = v12;
      v14[4] = v10 + 16 * v11;
      result = std::ranges::__any_of::operator()[abi:sn200100]<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,std::identity,WebKit::NetworkResourceLoadMap::take(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0>(v14);
      if (*(a1 + 8) != result)
      {
        v13 = result;
        *(a1 + 8) = result;
        result = *(a1 + 16);
        if (result)
        {
          result = (*(*result + 16))(result, v13);
        }
      }
    }

    v7 = v15;
  }

  *a3 = v7;
  return result;
}

uint64_t std::ranges::__any_of::operator()[abi:sn200100]<WTF::SizedIteratorRange<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,std::identity,WebKit::NetworkResourceLoadMap::take(WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0>(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  if (v1 == v2)
  {
    return 0;
  }

  v4 = a1[2];
  while (1)
  {
    result = WebCore::ResourceRequestBase::hasUpload((v1[1] + 104));
    if (result)
    {
      break;
    }

    do
    {
      v1 += 2;
    }

    while (v1 != v4 && (*v1 + 1) <= 1);
    if (v1 == v2)
    {
      return result;
    }
  }

  return 1;
}

void WebKit::NetworkResourceLoadParameters::createSandboxExtensionHandlesIfNecessary(WebKit::NetworkResourceLoadParameters *this)
{
  v43 = *MEMORY[0x1E69E9840];
  WebCore::ResourceRequestBase::httpBody(&v41, (this + 24));
  v3 = v41;
  *&v41 = 0;
  if (!v3)
  {
    goto LABEL_2;
  }

  WTF::RefCounted<WebCore::FormData>::deref(v3);
  WebCore::ResourceRequestBase::httpBody(v37, (this + 24));
  v16 = *&v37[0];
  v17 = *(*&v37[0] + 20);
  if (!v17)
  {
    *&v37[0] = 0;
    goto LABEL_47;
  }

  v18 = *(*&v37[0] + 8);
  v19 = 48 * v17;
  do
  {
    if (v18 && *(v18 + 40) == 1)
    {
      v35 = v18;
      v36 = v19;
      v28 = *v18;
      if (v28)
      {
        v29 = *(v28 + 16);
        v30 = *(v28 + 8);
        v28 = *(v28 + 4);
        v31 = ((v29 >> 2) & 1) << 32;
      }

      else
      {
        v30 = 0;
        v31 = 0x100000000;
      }

      v1 = v28 | v1 & 0xFFFFFF0000000000 | v31;
      WebKit::SandboxExtension::createHandle(0, &v41, v30, v1);
      if (BYTE8(v41) != 1)
      {
        goto LABEL_43;
      }

      v32 = *(this + 805);
      if (v32 == *(this + 804))
      {
        WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::SandboxExtensionHandle>(this + 401, &v41);
        if ((BYTE8(v41) & 1) == 0)
        {
LABEL_43:
          v18 = v35;
          v19 = v36;
          goto LABEL_16;
        }
      }

      else
      {
        v33 = *(this + 401);
        v34 = v41;
        *&v41 = 0;
        *(v33 + 8 * v32) = v34;
        *(this + 805) = v32 + 1;
      }

      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v41);
      goto LABEL_43;
    }

LABEL_16:
    v18 += 6;
    v19 -= 48;
  }

  while (v19);
  v16 = *&v37[0];
  *&v37[0] = 0;
  if (v16)
  {
LABEL_47:
    WTF::RefCounted<WebCore::FormData>::deref(v16);
  }

LABEL_2:
  WebCore::ResourceRequestBase::url((this + 24));
  v4 = WTF::URL::protocolIs();
  if (v4)
  {
    v6 = WebKit::WebProcess::singleton(v4, v5);
    v7 = WebKit::WebProcess::ensureNetworkProcessConnection(v6);
    v8 = *(v7 + 48);
    v41 = *(v7 + 32);
    v42 = v8;
    if (*(v7 + 64))
    {
      v9 = WebCore::ResourceRequestBase::url((this + 24));
      WTF::URL::fileSystemPath(&v38, v9);
      if (v38)
      {
        v10 = *(v38 + 1);
        v11 = *(v38 + 1) | (((*(v38 + 4) >> 2) & 1) << 32);
      }

      else
      {
        v10 = 0;
        v11 = 0x100000000;
      }

      v37[0] = v41;
      v37[1] = v42;
      WebKit::SandboxExtension::createHandleForReadByAuditToken(v10, v11, v37, &v39);
      v13 = v38;
      v38 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }

      if (v40 != 1)
      {
        return;
      }

      v14 = *(this + 3232);
      v15 = v39;
      v39 = 0;
      if (v14 == 1)
      {
        std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](this + 403, v15);
        if ((v40 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        *(this + 403) = v15;
        *(this + 3232) = 1;
      }

      v27 = &v39;
    }

    else
    {
      v20 = WebCore::ResourceRequestBase::url((this + 24));
      WTF::URL::fileSystemPath(&v39, v20);
      if (v39)
      {
        v21 = *(v39 + 1);
        v22 = *(v39 + 1) | (((*(v39 + 4) >> 2) & 1) << 32);
      }

      else
      {
        v21 = 0;
        v22 = 0x100000000;
      }

      WebKit::SandboxExtension::createHandle(0, v37, v21, v22);
      v24 = v39;
      v39 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }

      if (BYTE8(v37[0]) != 1)
      {
        return;
      }

      v25 = *(this + 3232);
      v26 = *&v37[0];
      *&v37[0] = 0;
      if (v25 == 1)
      {
        std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](this + 403, v26);
        if ((BYTE8(v37[0]) & 1) == 0)
        {
          return;
        }
      }

      else
      {
        *(this + 403) = v26;
        *(this + 3232) = 1;
      }

      v27 = v37;
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v27);
  }
}

double WebKit::NetworkResourceLoadParameters::networkLoadParameters@<D0>(uint64_t *__return_ptr a1@<X8>, WebKit::NetworkResourceLoadParameters *this@<X0>)
{
  *a1 = *this;
  a1[2] = *(this + 2);
  v4 = *(this + 28);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  a1[3] = v4;
  v5 = *(this + 29);
  if (v5)
  {
    atomic_fetch_add(v5, 1u);
  }

  a1[4] = v5;
  *(a1 + 10) = *(this + 60);
  WebCore::ResourceRequest::ResourceRequest(a1 + 6, (this + 24));
  *(a1 + 62) = *(this + 61);
  *(a1 + 252) = *(this + 248);
  *(a1 + 253) = *(this + 249);
  *(a1 + 256) = 0;
  *(a1 + 3168) = 0;
  if (*(this + 3168) == 1)
  {
    WebKit::NavigationActionData::NavigationActionData((a1 + 32), (this + 256));
    *(a1 + 3168) = 1;
  }

  result = 0.0;
  *(a1 + 199) = 0u;
  *(a1 + 3200) = *(this + 3184);
  *(a1 + 3208) = 0;
  *(a1 + 3232) = 0;
  *(a1 + 810) = *(this + 3185);
  *(a1 + 1622) = *(this + 1595);
  a1[406] = *(this + 399);
  return result;
}

uint64_t WebKit::NetworkResourceLoader::NetworkResourceLoader(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t **a4)
{
  v7 = (a1 + 4096);
  *(a1 + 16) = 0x100000000;
  *(a1 + 48) = 1;
  *a1 = &unk_1F1102E38;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_1F1102F38;
  *(a1 + 32) = &unk_1F1102F88;
  *(a1 + 40) = &unk_1F1102FB8;
  *(a1 + 56) = &unk_1F1102FE0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F1103038;
  WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(a1 + 80, a2);
  *(a1 + 4128) = 0u;
  ++*(a3 + 20);
  *(a1 + 4144) = a3;
  *(a1 + 4152) = 0;
  WebCore::ResourceResponseBase::ResourceResponseBase((a1 + 4160));
  *(a1 + 4408) = 0;
  v7[320] = 0;
  v7[202] = v7[202] & 0xF1 | 4;
  *(a1 + 4424) = 0;
  *(a1 + 4432) = 0;
  *(a1 + 4440) = 0;
  WebKit::NetworkConnectionToWebProcess::resolveBlobReferences(a3, (a1 + 80), (a1 + 4448));
  *(a1 + 4464) = 0;
  v7[370] = *(a1 + 327);
  *(a1 + 4472) = 0u;
  *(a1 + 4488) = 0;
  WebCore::TimerBase::TimerBase((a1 + 4496));
  *(a1 + 4496) = &unk_1F10EB388;
  v9 = WTF::fastMalloc(v8, 0x20);
  *v9 = &unk_1F11033B0;
  v9[1] = a1;
  v9[2] = WebKit::NetworkResourceLoader::bufferingTimerFired;
  v9[3] = 0;
  *(a1 + 4544) = v9;
  v10 = (a1 + 4552);
  *(a1 + 4616) = 0;
  *(a1 + 4584) = 0;
  *(a1 + 4552) = 0u;
  *(a1 + 4568) = 0u;
  *(a1 + 4608) = 0;
  *(a1 + 4592) = 0u;
  v7[528] = *(*(a1 + 4144) + 216);
  v7[529] = 0;
  *(a1 + 4632) = 0;
  v7[544] = 0;
  v7[568] = 0;
  *(a1 + 4672) = 0;
  *(a1 + 4680) = 0u;
  *(a1 + 4696) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WebCore::ResourceResponseBase::ResourceResponseBase((a1 + 4704));
  *(a1 + 4952) = 0;
  v7[864] = 0;
  v7[746] = v7[746] & 0xF1 | 4;
  *(a1 + 4968) = 0;
  WTF::URL::invalidate((a1 + 4968));
  v7[912] = 0;
  v7[992] = 0;
  *(a1 + 5096) = 0;
  *(a1 + 5104) = 0u;
  WTF::URL::invalidate((a1 + 5112));
  *(a1 + 5176) = 0;
  v7[1088] = 0;
  v7[1128] = 0;
  *(a1 + 5256) = 0;
  *(a1 + 5240) = 0u;
  *(a1 + 5232) = 0;
  *(a1 + 5264) = 0;
  v7[1176] = 0;
  *(a1 + 5280) = 0u;
  *(a1 + 5293) = 0;
  *(a1 + 5304) = 0;
  v11 = *(a3 + 88);
  v74 = *(*(a1 + 4144) + 96);
  v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 240), &v74);
  if (v12)
  {
    v14 = v12;
    v15 = *(v12 + 16) + 1;
    *(v12 + 16) = v15;
    v16 = *(v12 + 624);
    if (v16)
    {
      ++*(v16 + 8);
    }

    v17 = *v10;
    *v10 = v16;
    if (v17)
    {
      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v17 + 8), v13);
      v15 = *(v14 + 16);
    }

    if (!v15)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v14 + 16) = v15 - 1;
  }

  if (*a4 || (*(a1 + 3568) & 1) != 0 || *(a1 + 3334) == 1)
  {
    v18 = 1;
    if (*(a1 + 251) == 1)
    {
      v18 = *(a1 + 3588) != 0;
    }

    v19 = *(a3 + 88);
    atomic_fetch_add(v19 + 36, 1u);
    v60 = *(a3 + 296);
    v61 = a4;
    LODWORD(v74) = *(a1 + 3328);
    *(&v74 + 3) = *(a1 + 3331);
    v20 = *(a1 + 3336);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    *v75 = v20;
    v21 = *(a1 + 3360);
    *&v75[8] = *(a1 + 3344);
    *&v75[24] = v21;
    v22 = *(*(a1 + 4144) + 96);
    v23 = *(a1 + 80);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(v72, a1 + 3536);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(v73, a1 + 3552);
    v24 = WebCore::ResourceRequestBase::url((a1 + 104));
    v25 = *v24;
    if (*v24)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v69 = v25;
    v26 = *(v24 + 24);
    v70 = *(v24 + 8);
    v71 = v26;
    v27 = *(a1 + 3624);
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
    }

    v66 = v27;
    v67 = *(a1 + 3632);
    v68 = *(a1 + 3648);
    v28 = *(a1 + 312);
    if (v28)
    {
      atomic_fetch_add(v28, 1u);
    }

    v65 = v28;
    v29 = *(a1 + 304);
    if (v29)
    {
      atomic_fetch_add(v29, 1u);
    }

    v64 = v29;
    if (*(a1 + 3588))
    {
      v30 = **(a1 + 3576);
      atomic_fetch_add(v30, 1u);
    }

    else
    {
      v30 = 0;
    }

    v63 = v30;
    v31 = *(a1 + 3569);
    WebCore::ResourceRequestBase::httpReferrer(&v62, (a1 + 104));
    v32 = *(a1 + 3268);
    v33 = *(a1 + 3270);
    v34 = v7[528];
    v36 = WebKit::NetworkLoadChecker::operator new(0x4A0, v35);
    Checker = WebKit::NetworkLoadChecker::NetworkLoadChecker(v36, v19, a1, v60, &v74, v22, v23, 1, v72, &v69, &v66, &v65, &v64, &v63, v31, &v62, v32, v59, v33, SHIDWORD(v33), v34, v18);
    v39 = *(a1 + 4600);
    *(a1 + 4600) = Checker;
    if (v39)
    {
      WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v39 + 8), v38);
    }

    v40 = v62;
    v62 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v38);
    }

    if (v63)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v63, v38);
    }

    if (v64)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v64, v38);
    }

    if (v65)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v65, v38);
    }

    v41 = v66;
    v66 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v38);
    }

    v42 = v69;
    v69 = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v38);
    }

    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v73, v38);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v72, v43);
    v45 = *v75;
    if (*v75 && atomic_fetch_add_explicit(*v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v44);
    }

    if (atomic_fetch_add(v19 + 36, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 36);
      (*(*v19 + 24))(v19);
    }

    v46 = *(a1 + 4600);
    if (v46)
    {
      ++*(v46 + 8);
    }

    if (*(a1 + 3400) == 1)
    {
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v74, (a1 + 3376));
      *&v75[8] = *(a1 + 3392);
      v75[12] = *(a1 + 3396);
      std::optional<WebCore::ContentSecurityPolicyResponseHeaders>::operator=[abi:sn200100]<WebCore::ContentSecurityPolicyResponseHeaders,void>(v46 + 264, &v74);
      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v47);
    }

    *(v46 + 296) = *(a1 + 3488);
    WTF::String::operator=((v46 + 304), (a1 + 3496));
    WTF::String::operator=((v46 + 312), (a1 + 3504));
    *(v46 + 320) = *(a1 + 3512);
    WTF::String::operator=((v46 + 328), (a1 + 3520));
    WTF::String::operator=((v46 + 336), (a1 + 3528));
    v48 = *(a1 + 4064);
    if (v48)
    {
      atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
    }

    v74 = v48;
    v49 = *(a1 + 4088);
    *v75 = *(a1 + 4072);
    *&v75[16] = v49;
    v50 = *(a1 + 3448);
    if (v50)
    {
      atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
    }

    v69 = v50;
    v51 = *(a1 + 3472);
    v70 = *(a1 + 3456);
    v71 = v51;
    v52 = *(a1 + 4104);
    v53 = *(a1 + 4112);
    WTF::URL::operator=((v46 + 344), &v74);
    WTF::URL::operator=((v46 + 384), &v69);
    *(v46 + 424) = v52;
    *(v46 + 432) = v53;
    v55 = v69;
    v69 = 0;
    if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v54);
    }

    v56 = v74;
    v74 = 0;
    if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, v54);
    }

    WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v46 + 8), v54);
    if (*v61)
    {
      v58 = WTF::fastMalloc(*v61, 0x228);
      WebKit::NetworkResourceLoader::SynchronousLoadData::SynchronousLoadData(v58, v61);
      std::unique_ptr<WebKit::NetworkResourceLoader::SynchronousLoadData>::reset[abi:sn200100]((a1 + 4440), v58);
    }
  }

  return a1;
}

uint64_t WebKit::NetworkResourceLoader::bufferingTimerFired(uint64_t this)
{
  v1 = *(this + 4424);
  if (v1 && *(v1 + 56))
  {
    v2 = this;
    WebCore::SharedBufferBuilder::takeAsContiguous(&v6, (this + 4424));
    v3 = v2[637];
    if (!v3)
    {
      goto LABEL_6;
    }

    ++*(v3 + 8);
    v4 = WebCore::ContentFilter::continueAfterDataReceived();
    v5 = *(v3 + 8);
    if (!v5)
    {
      this = 290;
      __break(0xC471u);
      return this;
    }

    *(v3 + 8) = v5 - 1;
    if (v4)
    {
LABEL_6:
      WebKit::NetworkResourceLoader::sendDidReceiveDataMessage(v2, v6);
    }

    WebCore::SharedBufferBuilder::empty((v2 + 553));
    this = v6;
    v6 = 0;
    if (this)
    {
      if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (this + 8));
        return (*(*this + 8))(this);
      }
    }
  }

  return this;
}

uint64_t WebKit::NetworkLoadChecker::create(uint64_t *a1, void *a2, _DWORD *a3, int *a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, char a14, uint64_t *a15, char a16, int a17, __int16 a18)
{
  v23 = WebKit::NetworkLoadChecker::operator new(0x4A0, a2);
  result = WebKit::NetworkLoadChecker::NetworkLoadChecker(v23, a2, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, v25, a18, 0, 0, 1);
  *a1 = result;
  return result;
}

uint64_t *WebKit::NetworkLoadChecker::setParentCrossOriginEmbedderPolicy(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 16);
  *(a1 + 296) = *a2;
  WTF::String::operator=((a1 + 304), (a2 + 8));

  return WTF::String::operator=((a1 + 312), v3);
}

uint64_t *WebKit::NetworkLoadChecker::setCrossOriginEmbedderPolicy(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 16);
  *(a1 + 320) = *a2;
  WTF::String::operator=((a1 + 328), (a2 + 8));

  return WTF::String::operator=((a1 + 336), v3);
}

void WebKit::NetworkResourceLoader::~NetworkResourceLoader(WebKit::NetworkResourceLoader *this)
{
  v2 = *(this + 577);
  if (v2)
  {
    *(this + 577) = 0;
    (*(*v2 + 16))(v2, 2);
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WebCore::ResourceResponse>::reset[abi:sn200100](this + 663, 0);
  v4 = *(this + 660);
  if (v4)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v4, *(this + 1322));
  }

  v5 = *(this + 658);
  *(this + 658) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler((this + 5104), v3);
  v7 = *(this + 637);
  *(this + 637) = 0;
  if (v7)
  {
    WebCore::ContentFilter::operator delete();
  }

  if (*(this + 5088) == 1)
  {
    v31 = *(this + 634);
    *(this + 634) = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v6);
    }

    v32 = *(this + 633);
    *(this + 633) = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v6);
    }

    v33 = *(this + 631);
    *(this + 631) = 0;
    if (v33)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v33, v6);
    }

    v34 = *(this + 626);
    *(this + 626) = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v6);
    }
  }

  v8 = *(this + 621);
  *(this + 621) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(this + 619);
  *(this + 619) = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 4704), v6);
  v11 = *(this + 585);
  *(this + 585) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v10);
  }

  v12 = *(this + 584);
  *(this + 584) = 0;
  if (v12)
  {
    WTF::RefCounted<WebKit::ServiceWorkerFetchTask>::deref((v12 + 8));
  }

  if (*(this + 4664) == 1)
  {
    v35 = *(this + 582);
    *(this + 582) = 0;
    if (v35)
    {
    }
  }

  v13 = *(this + 579);
  *(this + 579) = 0;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  v14 = *(this + 577);
  *(this + 577) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 575);
  *(this + 575) = 0;
  if (v15)
  {
    WTF::RefCounted<WebKit::NetworkLoadChecker>::deref((v15 + 8), v10);
  }

  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 574, 0);
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 572, 0);
  std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100](this + 571, 0);
  v17 = *(this + 570);
  *(this + 570) = 0;
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 569);
  *(this + 569) = 0;
  if (v18)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v18 + 8), v16);
  }

  *(this + 562) = &unk_1F10EB388;
  v19 = *(this + 568);
  *(this + 568) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  WebCore::TimerBase::~TimerBase((this + 4496));
  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 4448, v20);
  std::unique_ptr<WebKit::NetworkResourceLoader::SynchronousLoadData>::reset[abi:sn200100](this + 555, 0);
  v22 = *(this + 553);
  *(this + 553) = 0;
  if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v22 + 2);
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 551);
  *(this + 551) = 0;
  if (v23)
  {
    CFRelease(v23);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 4160), v21);
  v25 = *(this + 519);
  *(this + 519) = 0;
  if (v25)
  {
    WTF::RefCounted<WebKit::NetworkLoad>::deref((v25 + 16), v24);
  }

  v26 = *(this + 518);
  *(this + 518) = 0;
  if (v26)
  {
    if (v26[5] == 1)
    {
      (*(*v26 + 8))(v26);
    }

    else
    {
      --v26[5];
    }
  }

  WTF::Vector<WTF::Ref<WebKit::SandboxExtension,WTF::RawPtrTraits<WebKit::SandboxExtension>,WTF::DefaultRefDerefTraits<WebKit::SandboxExtension>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 4128, v24);
  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters((this + 80), v27);
  v29 = *(this + 8);
  if (v29)
  {
    *(v29 + 8) = 0;
    v30 = *(this + 8);
    *(this + 8) = 0;
    if (v30)
    {
      if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30);
        WTF::fastFree(v30, v28);
      }
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v28);
  if (*(this + 5) != 1)
  {
    __break(0xC471u);
  }
}