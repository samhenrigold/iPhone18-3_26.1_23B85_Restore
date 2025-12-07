unint64_t classesForSelectorArgument(_WKRemoteObjectInterface *a1, objc_selector *a2, unint64_t a3, int a4)
{
  v15 = a2;
  v8 = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,MethodInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,MethodInfo>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<objc_selector *,MethodInfo,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<MethodInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<objc_selector *>>,(WTF::ShouldValidateKey)1,objc_selector *>(&a1->_methods, &v15);
  v9 = v8;
  m_table = a1->_methods.m_impl.m_table;
  if (m_table)
  {
    m_table += 7 * *(m_table - 1);
  }

  if (m_table == v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Interface does not contain selector %s", sel_getName(a2)}];
    if (a4)
    {
LABEL_5:
      if (!v9[6])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Selector %s does not have a reply block", sel_getName(a2)}];
      }

      v11 = v9 + 4;
      v12 = *(v9 + 11);
      if (v12 <= a3)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Argument index %ld is out of range for reply block of selector %s", a3, sel_getName(a2)}];
        v12 = *(v9 + 11);
      }

      if (v12 <= a3)
      {
        goto LABEL_16;
      }

      return *v11 + 8 * a3;
    }
  }

  else if (a4)
  {
    goto LABEL_5;
  }

  v11 = v9 + 1;
  v13 = *(v9 + 5);
  if (v13 <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Argument index %ld is out of range for selector %s", a3, sel_getName(a2)}];
    v13 = *(v9 + 5);
  }

  if (v13 <= a3)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19D5E6504);
  }

  return *v11 + 8 * a3;
}

WebKit::RemoteObjectRegistry *WebKit::RemoteObjectRegistry::RemoteObjectRegistry(WebKit::RemoteObjectRegistry *this, _WKRemoteObjectRegistry *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F10EEB58;
  *(this + 2) = 0;
  objc_initWeak(this + 2, a2);
  *(this + 3) = 0;
  return this;
}

void sub_19D5E66E4(_Unwind_Exception *a1, void *a2)
{
  *v2 = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, a2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<WTF::RetainPtr<objc_object *>,WTF::RetainPtr<_WKRemoteObjectInterface>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
  }

  return a1;
}

void sub_19D5E6800(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebKit::PageLoadState::deref((v10 + 1120));
  _Unwind_Resume(a1);
}

uint64_t *WebKit::PageLoadState::activeURL@<X0>(atomic_uint **__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this[2];
  if (v2 || (v2 = this[9]) != 0 && v2[1])
  {
LABEL_9:
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    goto LABEL_10;
  }

  if (*this - 1 < 2)
  {
    v2 = this[4];
    if (!v2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (*this)
  {
    v2 = 0;
    goto LABEL_10;
  }

  v2 = this[3];
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *a1 = v2;
  return this;
}

uint64_t WebKit::PageLoadState::hasOnlySecureContent(WebKit::PageLoadState *this, const Data *a2)
{
  if (*(this + 1))
  {
    return 0;
  }

  else
  {
    return WTF::protocolIs();
  }
}

void sub_19D5E6B88(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    WTF::fastFree(v10, a2);
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::RegisterUIProcessAccessibilityTokens>(uint64_t a1, const void ***a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2657;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, **a2, (*a2)[1]);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v8, *a2[1], a2[1][1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19D5E6CD0(_Unwind_Exception *exception_object, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::registerUIProcessAccessibilityTokens(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v7[0] = a4;
  v7[1] = a5;
  if ((*(result + 865) & 1) == 0 && *(result + 864) == 1)
  {
    v5 = *(result + 352);
    v6[0] = v8;
    v6[1] = v7;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::RegisterUIProcessAccessibilityTokens>(v5, v6, *(result + 48), 0);
  }

  return result;
}

void sub_19D5E6EA4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ApplicationStateTracker::setWindow(id *this, UIWindow *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 3);
  v5 = WeakRetained;
  if (WeakRetained)
  {
  }

  if (v5 != a2)
  {
    v6 = objc_loadWeakRetained(this + 3);
    if (v6)
    {

      if (*(this + 56) - 1 <= 1)
      {
        WebKit::ApplicationStateTracker::setViewController(this, 0);
      }
    }

    objc_storeWeak(this + 3, a2);
    [this[6] setObservedWindow:a2];
    v7 = objc_loadWeakRetained(this + 3);
    if (v7)
    {

      v9 = WebKit::applicationType(a2, v8);
      *(this + 56) = v9;
      if (v9)
      {
        v10 = objc_loadWeakRetained(this + 2);
        if (v10)
        {
          v11 = v10;

          while (1)
          {
            v13 = WebCore::viewController(v11, v12);
            if ([(UIViewController *)v13 _hostProcessIdentifier])
            {
              break;
            }

            v11 = [(WebCore *)v11 superview];
            if (!v11)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v13 = 0;
        }

        WebKit::ApplicationStateTracker::setScene(this, 0);
        WebKit::ApplicationStateTracker::setViewController(this, v13);
      }

      else
      {
        WebKit::ApplicationStateTracker::setViewController(this, 0);
        WebKit::ApplicationStateTracker::setScene(this, [(UIWindow *)a2 windowScene]);
      }

      WebKit::updateApplicationBackgroundState(v14);
    }
  }
}

uint64_t WebKit::applicationType(WebKit *this, UIWindow *a2)
{
  if (_UIApplicationIsExtension())
  {
    return 2;
  }

  return WTF::processHasEntitlement() && ([(WebKit *)this _isHostedInAnotherProcess]& 1) != 0;
}

void WebKit::ApplicationStateTracker::setViewController(id *this, UIViewController *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 5);
  v5 = WeakRetained;
  if (WeakRetained)
  {
  }

  if (v5 != a2)
  {
    WebKit::ApplicationStateTracker::removeAllObservers(this);
    objc_storeWeak(this + 5, a2);
    v6 = objc_loadWeakRetained(this + 5);
    if (v6)
    {

      v7 = [(UIViewController *)a2 _hostProcessIdentifier];
      v8 = v7;
      isApplicationForeground = WebKit::EndowmentStateTracker::isApplicationForeground(v7);
      WebKit::ApplicationStateTracker::setIsInBackground(this, (([-[UIViewController _hostApplicationBundleIdentifier](a2 "_hostApplicationBundleIdentifier")] | isApplicationForeground) & 1) == 0);
      v10 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        if (_UIApplicationIsExtension())
        {
          v11 = "Extension";
        }

        else
        {
          v11 = "ViewService";
        }

        v12 = getpid();
        v13 = *(this + 96);
        *buf = 136446978;
        v28 = v11;
        v29 = 1024;
        v30 = v12;
        v31 = 1024;
        v32 = v8;
        v33 = 1024;
        v34 = v13;
        _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s has PID %d, host application PID=%d, isInBackground=%d", buf, 0x1Eu);
      }

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3321888768;
      v24[2] = ___ZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewController_block_invoke;
      v24[3] = &__block_descriptor_56_e8_32c83_ZTSKZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewControllerE3__0_e24_v16__0__NSNotification_8l;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
      v15 = *this;
      atomic_fetch_add(*this, 1u);
      v24[4] = this;
      if (v15)
      {
        atomic_fetch_add(v15, 1u);
      }

      v25 = v15;
      v26 = v8;
      objc_storeWeak(this + 13, [v14 addObserverForName:@"_UIViewServiceHostSceneDidEnterBackgroundNotification" object:a2 queue:0 usingBlock:v24]);
      if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v16);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3321888768;
      v21[2] = ___ZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewController_block_invoke_37;
      v21[3] = &__block_descriptor_56_e8_32c83_ZTSKZN6WebKit23ApplicationStateTracker17setViewControllerEP16UIViewControllerE3__1_e24_v16__0__NSNotification_8l;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
      v17 = *this;
      atomic_fetch_add(*this, 1u);
      v21[4] = this;
      if (v17)
      {
        atomic_fetch_add(v17, 1u);
      }

      v22 = v17;
      v23 = v8;
      objc_storeWeak(this + 14, [v14 addObserverForName:@"_UIViewServiceHostSceneWillEnterForegroundNotification" object:a2 queue:0 usingBlock:v21]);
      if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v18);
      }

      v19 = v22;
      v22 = 0;
      if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, v18);
      }

      v20 = v25;
      v25 = 0;
      if (v20)
      {
        if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v20);
          WTF::fastFree(v20, v18);
        }
      }
    }

    else
    {

      WebKit::ApplicationStateTracker::setIsInBackground(this, 1);
    }
  }
}

void sub_19D5E75C4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, WTF *a21)
{
  if (a21)
  {
    if (atomic_fetch_add(a21, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a21);
      WTF::fastFree(a21, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ApplicationStateTracker::setScene(id *this, UIScene *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(this + 4);
  v5 = WeakRetained;
  if (WeakRetained)
  {
  }

  if (v5 != a2)
  {
    WebKit::ApplicationStateTracker::removeAllObservers(this);
    if (!a2)
    {
      v10 = objc_loadWeakRetained(this + 4);
      if (v10)
      {

        if (*(this + 96) == 1)
        {

          objc_storeWeak(this + 4, 0);
          return;
        }
      }
    }

    objc_storeWeak(this + 4, a2);
    v6 = objc_loadWeakRetained(this + 4);
    if (v6)
    {

      if ([objc_loadWeak(this + 4) activationState] != 2)
      {
        v7 = [objc_loadWeak(this + 4) activationState] == -1;
        goto LABEL_19;
      }
    }

    else
    {
      v11 = objc_loadWeakRetained(this + 3);
      if (v11)
      {

        v7 = 0;
        goto LABEL_19;
      }
    }

    v7 = 1;
LABEL_19:
    WebKit::ApplicationStateTracker::setIsInBackground(this, v7);
    v12 = objc_loadWeakRetained(this + 4);
    if (v12)
    {

      v13 = qword_1ED641490;
      if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v41 = this;
        _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - ApplicationStateTracker: add observers for scene", buf, 0xCu);
      }

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3321888768;
      v38[2] = ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke;
      v38[3] = &__block_descriptor_48_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__1_e24_v16__0__NSNotification_8l;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
      v15 = *MEMORY[0x1E69DE348];
      v16 = *this;
      atomic_fetch_add(*this, 1u);
      v38[4] = this;
      if (v16)
      {
        atomic_fetch_add(v16, 1u);
      }

      v39 = v16;
      objc_storeWeak(this + 13, [v14 addObserverForName:v15 object:a2 queue:0 usingBlock:v38]);
      if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v17);
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3321888768;
      v36[2] = ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke_19;
      v36[3] = &__block_descriptor_48_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__2_e24_v16__0__NSNotification_8l;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
      v18 = *MEMORY[0x1E69DE360];
      v19 = *this;
      atomic_fetch_add(*this, 1u);
      v36[4] = this;
      if (v19)
      {
        atomic_fetch_add(v19, 1u);
      }

      v37 = v19;
      objc_storeWeak(this + 14, [v14 addObserverForName:v18 object:a2 queue:0 usingBlock:v36]);
      if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, v20);
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3321888768;
      v34[2] = ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke_21;
      v34[3] = &__block_descriptor_48_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__3_e24_v16__0__NSNotification_8l;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
      v21 = *MEMORY[0x1E69DEA30];
      v22 = *this;
      atomic_fetch_add(*this, 1u);
      v34[4] = this;
      if (v22)
      {
        atomic_fetch_add(v22, 1u);
      }

      v35 = v22;
      objc_storeWeak(this + 15, [v14 addObserverForName:v21 object:a2 queue:0 usingBlock:v34]);
      if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22);
        WTF::fastFree(v22, v23);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3321888768;
      v32[2] = ___ZN6WebKit23ApplicationStateTracker8setSceneEP7UIScene_block_invoke_23;
      v32[3] = &__block_descriptor_48_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__4_e24_v16__0__NSNotification_8l;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
      v24 = *MEMORY[0x1E69DEA28];
      v25 = *this;
      atomic_fetch_add(*this, 1u);
      v32[4] = this;
      if (v25)
      {
        atomic_fetch_add(v25, 1u);
      }

      v33 = v25;
      objc_storeWeak(this + 16, [v14 addObserverForName:v24 object:a2 queue:0 usingBlock:v32]);
      if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25);
        WTF::fastFree(v25, v26);
      }

      v27 = v33;
      v33 = 0;
      if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27);
        WTF::fastFree(v27, v26);
      }

      v28 = v35;
      v35 = 0;
      if (v28 && atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v28);
        WTF::fastFree(v28, v26);
      }

      v29 = v37;
      v37 = 0;
      if (v29 && atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29);
        WTF::fastFree(v29, v26);
      }

      v30 = v39;
      v39 = 0;
      if (v30)
      {
        if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v30);
          WTF::fastFree(v30, v26);
        }
      }
    }

    return;
  }

  v8 = objc_loadWeakRetained(this + 4);
  if (!v8)
  {
    v31 = objc_loadWeakRetained(this + 3);
    if (v31)
    {

      v9 = 0;
      goto LABEL_58;
    }

LABEL_57:
    v9 = 1;
    goto LABEL_58;
  }

  if ([objc_loadWeak(this + 4) activationState] == 2)
  {
    goto LABEL_57;
  }

  v9 = [objc_loadWeak(this + 4) activationState] == -1;
LABEL_58:

  WebKit::ApplicationStateTracker::setIsInBackground(this, v9);
}

void sub_19D5E7C84(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF *a32)
{
  if (a20 && atomic_fetch_add(a20, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a20);
    WTF::fastFree(a20, a2);
  }

  if (a26 && atomic_fetch_add(a26, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a26);
    WTF::fastFree(a26, a2);
  }

  if (a32)
  {
    if (atomic_fetch_add(a32, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a32);
      WTF::fastFree(a32, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

id WebKit::ApplicationStateTracker::removeAllObservers(id *this)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(this + 13);
  if (WeakRetained)
  {

    v4 = objc_loadWeakRetained(this + 13);
    [v2 removeObserver:v4];
    if (v4)
    {
    }

    objc_storeWeak(this + 13, 0);
  }

  v5 = objc_loadWeakRetained(this + 14);
  if (v5)
  {

    v6 = objc_loadWeakRetained(this + 14);
    [v2 removeObserver:v6];
    if (v6)
    {
    }

    objc_storeWeak(this + 14, 0);
  }

  v7 = objc_loadWeakRetained(this + 15);
  if (v7)
  {

    v8 = objc_loadWeakRetained(this + 15);
    [v2 removeObserver:v8];
    if (v8)
    {
    }

    objc_storeWeak(this + 15, 0);
  }

  result = objc_loadWeakRetained(this + 16);
  if (result)
  {

    v10 = objc_loadWeakRetained(this + 16);
    [v2 removeObserver:v10];
    if (v10)
    {
    }

    return objc_storeWeak(this + 16, 0);
  }

  return result;
}

void sub_19D5E7F84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ApplicationStateTracker::setIsInBackground(WebKit::ApplicationStateTracker *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 96) != a2)
  {
    v4 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134218240;
      v6 = this;
      v7 = 1024;
      v8 = a2;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - ApplicationStateTracker::setIsInBackground: %d", &v5, 0x12u);
    }

    *(this + 96) = a2;
  }
}

uint64_t __copy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__1(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 40);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 40) = v2;
  return result;
}

uint64_t __copy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__2(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 40);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 40) = v2;
  return result;
}

uint64_t __copy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__3(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 40);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 40) = v2;
  return result;
}

uint64_t __copy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__4(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 40);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 40) = v2;
  return result;
}

void *WebKit::updateApplicationBackgroundState(WebKit *this)
{
  {
    WebKit::allApplicationStateTrackers(void)::trackers = 0;
    *&dword_1ED643398 = 0;
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&WebKit::allApplicationStateTrackers(void)::trackers, &v11);
  if (WebKit::allApplicationStateTrackers(void)::trackers)
  {
    v1 = *(WebKit::allApplicationStateTrackers(void)::trackers - 4);
    v2 = WebKit::allApplicationStateTrackers(void)::trackers + 8 * v1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  v6 = &WebKit::allApplicationStateTrackers(void)::trackers;
  v7 = v2;
  v8 = v2;
  v9 = v2;
  v10 = WebKit::allApplicationStateTrackers(void)::trackers + 8 * v1;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v6);
  v4 = v12;
  if (v12 == v7)
  {
    v5 = 1;
  }

  else
  {
    do
    {
      v5 = *(*(*v4 + 8) + 96);
      if (v5 != 1)
      {
        break;
      }

      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v11);
      v4 = v12;
    }

    while (v12 != v7);
  }

  if (WebKit::updateApplicationBackgroundState(void)::s_isApplicationInBackground != v5)
  {
    WebKit::updateApplicationBackgroundState(void)::s_isApplicationInBackground = v5;
    return WebKit::ProcessAndUIAssertion::setProcessStateMonitorEnabled(v5);
  }

  return result;
}

void sub_19D5E8760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15)
{
  if (v15)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5E8908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5E89AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 112 * v3;
    v6 = v4 + 88;
    do
    {
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2);
      WTF::Vector<WebKit::WKTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6 - 16, v7);
      v8 = *(v6 - 32);
      if (v8)
      {
        *(v6 - 32) = 0;
        *(v6 - 24) = 0;
        WTF::fastFree(v8, a2);
      }

      v6 += 112;
      v5 -= 112;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

id WebKit::supportedRichTextPasteboardTypesForPasteConfiguration(WebKit *this)
{
  if (byte_1EB01D9EB == 1)
  {
    return qword_1EB01D9F8;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:{objc_msgSend(*MEMORY[0x1E6983098], "identifier")}];
  [v2 addObjectsFromArray:{WebKit::supportedPlainTextPasteboardTypes(objc_msgSend(v2, "addObjectsFromArray:", *MEMORY[0x1E69DE2A0]))}];
  result = v2;
  qword_1EB01D9F8 = v2;
  byte_1EB01D9EB = 1;
  return result;
}

void sub_19D5E96D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebKit::supportedPlainTextPasteboardTypes(WebKit *this)
{
  if (byte_1EB01D9ED == 1)
  {
    return qword_1EB01DA30;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", WebCore::PasteboardCustomData::cocoaType(v2))}];
  [v2 addObject:{objc_msgSend(*MEMORY[0x1E6983030], "identifier")}];
  [v2 addObjectsFromArray:*MEMORY[0x1E69DE2A8]];
  result = v2;
  qword_1EB01DA30 = v2;
  byte_1EB01D9ED = 1;
  return result;
}

void sub_19D5E97B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

WebKit::SmartMagnificationController *WebKit::SmartMagnificationController::create@<X0>(WebKit::SmartMagnificationController **__return_ptr a1@<X8>, WKContentView *this@<X0>, WKContentView *a3@<X1>)
{
  v5 = WebKit::SmartMagnificationController::operator new(0x28, a3);
  result = WebKit::SmartMagnificationController::SmartMagnificationController(v5, this);
  *a1 = v5;
  return result;
}

uint64_t WebKit::SmartMagnificationController::operator new(WebKit::SmartMagnificationController *this, void *a2)
{
  if (this == 40 && WebKit::SmartMagnificationController::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SmartMagnificationController::s_heapRef, a2);
  }

  else
  {
    return WebKit::SmartMagnificationController::operatorNewSlow(this);
  }
}

WebKit::SmartMagnificationController *WebKit::SmartMagnificationController::SmartMagnificationController(WebKit::SmartMagnificationController *this, WKContentView *a2)
{
  *(this + 1) = 0;
  *(this + 4) = 1;
  *this = &unk_1F110D518;
  v4 = [(WKContentView *)a2 page];
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v4 + 6, (v4 + 4));
  v5 = *(v4 + 3);
  atomic_fetch_add(v5, 1u);
  *(this + 3) = v5;
  *(this + 4) = a2;
  if (!v5 || (v6 = *(v5 + 8)) == 0 || (v7 = *(v6 + 336), atomic_fetch_add((v7 + 16), 1u), (v8 = *(this + 3)) == 0) || (v9 = *(v8 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5E9B3CLL);
  }

  v10 = *(v9 + 32);
  v14[0] = 141;
  v14[1] = v10;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v7 + 104), v14, this, v13);
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v11);
  }

  return this;
}

WebKit *WebKit::WebProcessProxy::updateTextCheckerState(WebKit *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (v2 && (*(v2 + 104) & 1) != 0 || *(this + 11))
  {
    WebKit::mutableState(this);
    v3 = WebKit::mutableState(void)::state;
    v4 = &v3;
    return WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetTextCheckerState>(v1, &v4, 0, 0);
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetTextCheckerState>(uint64_t a1, _BYTE **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3011;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, **a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void std::__optional_destruct_base<WebKit::RemoveBackgroundData,false>::reset[abi:sn200100](uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 96) == 1)
  {
    v3 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 96) = 0;
  }
}

uint64_t std::optional<WebKit::ImageAnalysisContextMenuActionData>::operator=[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v2)
    {
    }

    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

void WebKit::WebPageProxy::activityStateDidChange(uint64_t a1, __int16 a2, int a3, char a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 56);
  if (!v8)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  (*(*v9 + 1712))(v9);
  v10 = 0;
LABEL_6:
  v11 = *(a1 + 32);
  v12 = *(v11 + 1528) | a2;
  *(v11 + 1528) = v12;
  *(a1 + 1096) |= a4;
  if ((v12 & 4) != 0 && *(a1 + 994) == 1 && (v13 = (*(*v9 + 80))(v9), v13) && (WTF::RunLoop::mainSingleton(v13), WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 24), a1 + 16), v14 = *(a1 + 24), v15 = WTF::fastMalloc(atomic_fetch_add(v14, 1u), 0x10), *v15 = &unk_1F1117A80, v15[1] = v14, *v22 = v15, WTF::RunLoop::dispatch(), v16 = *v22, *v22 = 0, v16))
  {
    (*(*v16 + 8))(v16);
    if (a3)
    {
      goto LABEL_17;
    }
  }

  else if (a3)
  {
    goto LABEL_17;
  }

  if (*(a1 + 1017))
  {
    v17 = qword_1ED641490;
    if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      v20 = *(*(a1 + 352) + 80);
      if (v20)
      {
        LODWORD(v20) = *(v20 + 108);
      }

      *v22 = 134218752;
      *&v22[4] = a1;
      v23 = 2048;
      v24 = v19;
      v25 = 2048;
      v26 = v18;
      v27 = 1024;
      v28 = v20;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::activityStateDidChange: Returning early due to m_suppressVisibilityUpdates", v22, 0x26u);
    }

    goto LABEL_24;
  }

LABEL_17:
  v21 = 0;
  if ((a2 & 0x10) != 0 && (*(*(a1 + 32) + 80) & 0x10) == 0)
  {
    v21 = (*(*v9 + 120))(v9);
  }

  if ((a3 & 1) != 0 || v21)
  {
    WebKit::WebPageProxy::dispatchActivityStateChange(a1);
  }

  else
  {
    WebKit::WebPageProxy::scheduleActivityStateUpdate(a1);
  }

LABEL_24:
  if ((v10 & 1) == 0)
  {
    (*(*v9 + 1720))(v9);
  }
}

WebKit::WebPageProxy *WebKit::WebPageProxy::dispatchActivityStateChange(WebCore::RunLoopObserver **this)
{
  v95 = *MEMORY[0x1E69E9840];
  result = WebCore::RunLoopObserver::isScheduled(this[129]);
  if (result)
  {
    result = WebCore::RunLoopObserver::invalidate(this[129]);
  }

  *(this + 1049) = 0;
  if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
  {
    v3 = this[4];
    v4 = *(v3 + 764);
    if ((v4 & 4) != 0)
    {
      v4 |= 0x28u;
      *(v3 + 764) = v4;
    }

    v5 = *(v3 + 40);
    updated = WebKit::WebPageProxy::updateActivityState(this, v4);
    v8 = this[4];
    v9 = *(v8 + 40);
    v10 = v9 ^ v5;
    v11 = (v9 ^ v5) & 1;
    if ((v11 & v9) != 0)
    {
      LOBYTE(v87) = WebCore::PlatformKeyboardEvent::currentStateOfModifierKeys(updated);
      *buf = &v87;
      WebKit::WebPageProxy::send<Messages::WebPage::UpdateCurrentModifierState>(this, buf);
      v8 = this[4];
    }

    if ((*(v8 + 764) & 4) != 0)
    {
      v12 = *(v8 + 40);
      v13 = qword_1ED641490;
      v14 = os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT);
      if ((v12 & 4) != 0)
      {
        if (v14)
        {
          v24 = this[5];
          v23 = this[6];
          v25 = *(this[44] + 10);
          if (v25)
          {
            LODWORD(v25) = *(v25 + 108);
          }

          *buf = 134218752;
          *&buf[4] = this;
          *&buf[12] = 2048;
          *&buf[14] = v24;
          v91 = 2048;
          v92 = v23;
          v93 = 1024;
          v94 = v25;
          _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::viewIsBecomingVisible:", buf, 0x26u);
        }

        v26 = this[44];
        v27 = (v26 + 16);
        atomic_fetch_add(v26 + 4, 1u);
        {
          WebKit::liveProcessesLRU(void)::processes = 0u;
          *algn_1ED643678 = 0u;
        }

        WTF::WeakListHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::moveToLastIfPresent<WebKit::WebProcessProxy>(&WebKit::liveProcessesLRU(void)::processes, v26);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v27, v28);
        v30 = this[41];
        if (v30)
        {
          (**v30)(this[41]);
          (*(*v30 + 168))(v30);
          (*(*v30 + 8))(v30);
        }

        v31 = this[81];
        if (v31)
        {
          v32 = (v31 + 16);
          ++*(v31 + 4);
          WebKit::UserMediaPermissionRequestManagerProxy::viewIsBecomingVisible(v31, v29);
          WTF::RefCounted<WebKit::UserMediaPermissionRequestManagerProxy>::deref(v32, v33);
        }

        v34 = this[7];
        if (v34)
        {
          v22 = *(v34 + 1);
          if (v22)
          {
            (*(*v22 + 1712))(v22);
          }
        }

        else
        {
          v22 = 0;
        }

        (*(*v22 + 88))(v22);
      }

      else
      {
        if (v14)
        {
          v16 = this[5];
          v15 = this[6];
          v17 = *(this[44] + 10);
          if (v17)
          {
            LODWORD(v17) = *(v17 + 108);
          }

          *buf = 134218752;
          *&buf[4] = this;
          *&buf[12] = 2048;
          *&buf[14] = v16;
          v91 = 2048;
          v92 = v15;
          v93 = 1024;
          v94 = v17;
          _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::viewIsBecomingInvisible:", buf, 0x26u);
        }

        v18 = this[44];
        atomic_fetch_add(v18 + 4, 1u);
        WebKit::WebProcessProxy::pageIsBecomingInvisible(v18, this[6]);
        if (v18)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v18 + 4, v19);
        }

        v20 = this[41];
        if (v20)
        {
          (**v20)(this[41]);
          (*(*v20 + 176))(v20);
          (*(*v20 + 8))(v20);
        }

        v21 = this[7];
        if (v21)
        {
          v22 = *(v21 + 1);
          if (v22)
          {
            (*(*v22 + 1712))(v22);
          }
        }

        else
        {
          v22 = 0;
        }

        (*(*v22 + 96))(v22);
      }

      (*(*v22 + 1720))(v22);
    }

    if (((v9 ^ v5) & 0x10) != 0)
    {
      v36 = *(this[4] + 40);
      v35 = (v36 >> 4) & 1;
      if (*(this + 672) == 1 && (v36 & 0x10) != 0)
      {
        v37 = this[41];
        if (v37)
        {
          (**v37)(this[41]);
        }

        if ((*(*v37 + 224))(v37) && *(this + 721) == 1)
        {
          v38 = *(this + 722);
          (*(*v37 + 8))(v37);
          if ((v38 & 1) == 0)
          {
            *(this + 1096) = 1;
          }
        }

        else
        {
          (*(*v37 + 8))(v37);
        }

        *(this + 722) = 0;
        v35 = 1;
      }
    }

    else
    {
      v35 = 0;
    }

    if ((*(this[4] + 40) & 4) != 0)
    {
      if (this[137])
      {
        v39 = (this[136] + 1);
        this[136] = v39;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
      *(this + 1096) = 0;
    }

    v89 = v39;
    v40 = *(this + 279);
    if (v5 != v9 || v39 || v40)
    {
      *&v7 = 0;
      *buf = this[138];
      *&buf[8] = *(this + 278);
      v41 = *&buf[8];
      *&buf[12] = v40;
      v87 = v7;
      *(this + 69) = v7;
      v42 = WTF::fastMalloc(v41, 0x18);
      *v42 = &unk_1F1117AA8;
      v43 = *buf;
      v44 = *&buf[8];
      *buf = 0uLL;
      v42[1] = v43;
      v42[2] = v44;
      v45 = WTF::fastMalloc(v43, 0x10);
      *v45 = 1;
      v45[1] = v42;
      v88 = v45;
      WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v46);
      WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v47);
      v49 = WTF::fastMalloc(v48, 0x20);
      *v49 = &unk_1F1117AD0;
      v49[1] = this;
      v49[2] = &v88;
      v49[3] = &v89;
      *buf = v49;
      WebKit::WebPageProxy::forEachWebContentProcess(this, buf);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }

      v50 = v88;
      v88 = 0;
      if (v50)
      {
        WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v50);
      }
    }

    WebKit::WebPageProxy::updateThrottleState(this);
    if (((v9 ^ v5) & 4) == 0)
    {
      goto LABEL_83;
    }

    v51 = this[4];
    if ((*(v51 + 40) & 4) == 0)
    {
      v52 = *(v51 + 268);
      *(v51 + 268) = 0;
      if (v52)
      {
        v53 = *v52;
        v54 = *(v52 + 8) - 1;
        *(v52 + 8) = v54;
        if (!v53)
        {
          goto LABEL_71;
        }

        v55 = *v53;
        if (*v53)
        {
          v56 = *(v52 + 16);
          *(v52 + 16) = 1;
          (*(*v55 + 16))(v55, 0);
          *(v52 + 16) = v56;
          if (!*v52)
          {
            v54 = *(v52 + 8);
LABEL_71:
            if (!v54)
            {
              MEMORY[0x19EB14CF0](v52, 0x1020C40545B2139);
            }
          }
        }
      }

      v57 = this[44];
      v58 = (v57 + 16);
      atomic_fetch_add(v57 + 4, 1u);
      v59 = *(v57 + 7);
      ++*v59;
      WebKit::ResponsivenessTimer::stop(v59);
      WTF::RefCounted<WebKit::ResponsivenessTimer>::deref(v59);
LABEL_82:
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v58, v60);
      goto LABEL_83;
    }

    v61 = this[44];
    v58 = (v61 + 16);
    atomic_fetch_add(v61 + 4, 1u);
    WebKit::WebProcessProxy::visiblePageToken(buf, v61);
    v62 = this[4];
    v63 = *(v62 + 268);
    *(v62 + 268) = *buf;
    if (v63)
    {
      v64 = *v63;
      v65 = *(v63 + 8) - 1;
      *(v63 + 8) = v65;
      if (v64)
      {
        v66 = *v64;
        if (!*v64)
        {
          goto LABEL_81;
        }

        v67 = *(v63 + 16);
        *(v63 + 16) = 1;
        (*(*v66 + 16))(v66, 0);
        *(v63 + 16) = v67;
        if (*v63)
        {
          goto LABEL_81;
        }

        v65 = *(v63 + 8);
      }

      if (!v65)
      {
        MEMORY[0x19EB14CF0](v63, 0x1020C40545B2139);
      }
    }

LABEL_81:
    if (v61)
    {
      goto LABEL_82;
    }

LABEL_83:
    if ((v10 & 0x10) != 0 && (*(this[4] + 40) & 0x10) == 0)
    {
      WebKit::WebPageProxy::closeOverlayedViews(this);
      v68 = this[66];
      if (v68)
      {
        ++*(v68 + 4);
        if (WebKit::VideoPresentationManagerProxy::hasMode(v68, 1))
        {
          WebKit::VideoPresentationManagerProxy::requestHideAndExitFullscreen(v68);
        }

        if (*(v68 + 4) == 1)
        {
          (*(*v68 + 24))(v68);
        }

        else
        {
          --*(v68 + 4);
        }
      }
    }

    v69 = this[72];
    if (v69)
    {
      v70 = *(v69 + 4);
      *(v69 + 4) = v70 + 1;
      if (v11)
      {
        v71 = this[7];
        if (v71)
        {
          v72 = *(v71 + 1);
          if (v72)
          {
            (*(*v72 + 1712))(v72);
            if ((*(*v72 + 56))(v72))
            {
              WebKit::WebAuthenticatorCoordinatorProxy::makeActiveConditionalAssertion(v69);
            }

            (*(*v72 + 1720))(v72);
            v70 = *(v69 + 4) - 1;
          }
        }
      }

      if (!v70)
      {
        (*(*v69 + 24))(v69);
        if (v35)
        {
          goto LABEL_100;
        }

        goto LABEL_103;
      }

      *(v69 + 4) = v70;
    }

    if (v35)
    {
LABEL_100:
      v73 = this[41];
      if (v73)
      {
        (**v73)(this[41]);
      }

      (*(*v73 + 216))(v73, v89);
      (*(*v73 + 8))(v73);
    }

LABEL_103:
    WebKit::WebPageProxy::updateBackingStoreDiscardableState(this);
    v75 = v89;
    if (v89)
    {
      if ((*(this + 865) & 1) == 0 && *(this + 864) == 1)
      {
        v76 = this[44];
        v77 = *(v76 + 10);
        if ((!v77 || (*(v77 + 104) & 1) == 0) && *(v76 + 11) && (*(this + 1027) & 1) == 0 && WebKit::WebPageProxy::hasValidVisibleActivity(this, v74))
        {
          *(this + 1027) = 1;
          v78 = this[41];
          if (v78)
          {
            (**v78)(this[41]);
          }

          (*(*v78 + 192))(v78, v75);
          (*(*v78 + 8))(v78);
        }
      }
    }

    *(this[4] + 764) = 0;
    *(this + 1096) = 0;
    *(this + 672) |= v35;
    result = WebKit::WebPageProxy::updateMediaCapability(this);
    v80 = *(this + 267);
    if (v80)
    {
      v81 = this[132];
      v82 = 8 * v80;
      do
      {
        v83 = *v81;
        *v81 = 0;
        v81 = (v81 + 8);
        (*(*v83 + 16))(v83);
        result = (*(*v83 + 8))(v83);
        v82 -= 8;
      }

      while (v82);
    }

    if (*(this + 266))
    {
      v84 = *(this + 267);
      v85 = this[132];
      if (v84)
      {
        v86 = 8 * v84;
        do
        {
          result = *v85;
          *v85 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v85 = (v85 + 8);
          v86 -= 8;
        }

        while (v86);
        *(this + 267) = 0;
        v85 = this[132];
      }

      if (v85)
      {
        this[132] = 0;
        *(this + 266) = 0;
        return WTF::fastFree(v85, v79);
      }
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::UpdateCurrentModifierState>(uint64_t a1, char **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2837;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  v19 = **a2;
  IPC::Encoder::operator<<<unsigned char>(v8, &v19);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::UpdateCurrentModifierState>(uint64_t a1, char **a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::UpdateCurrentModifierState>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16), v4);
  }

  return result;
}

void WebKit::PageClientImpl::viewIsBecomingVisible(id *this)
{
  [objc_loadWeak(this + 2) _updateScreenTimeBasedOnWindowVisibility];
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(WKWebView *)WeakRetained _updatePageLoadObserverState];
  }
}

void sub_19D5EB620(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6, a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageProxy::dispatchActivityStateChange(void)::$_1,void,WebKit::WebProcessProxy &,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::call(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 8) + 32);
  v6 = *(a1 + 24);
  v7 = **(a1 + 16);
  atomic_fetch_add(v7, 1u);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2711;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v8, *(v5 + 80));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *v6);
  v10 = WTF::fastMalloc(v9, 0x10);
  *v10 = &unk_1F1117AF8;
  v10[1] = v7;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v17 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v18, 0, v16, 1);
    if (v17 == 1)
    {
      v12 = v16[0];
      v16[0] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    result = v18;
    v18 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v11);
      return bmalloc::api::tzoneFree(v14, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebProcessPool::updateProcessSuppressionState(WebKit::WebProcessPool *this, void *a2)
{
  if (*(*(this + 69) + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(this + 71) + 8) == 0;
  }

  WebKit::NetworkProcessProxy::allNetworkProcesses(&v9, a2);
  if (v10)
  {
    v4 = v9;
    v5 = 8 * v10;
    do
    {
      v6 = *v4;
      v7 = (*v4 + 16);
      atomic_fetch_add(v7, 1u);
      WebKit::AuxiliaryProcessProxy::setProcessSuppressionEnabled(v6, v2);
      if (v6)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v3);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v3);
}

atomic_ullong *WebKit::AuxiliaryProcessProxy::setProcessSuppressionEnabled(atomic_ullong *this, char a2)
{
  v3 = this[10];
  if (!v3 || (*(v3 + 104) & 1) == 0)
  {
    if (this[11])
    {
      WebKit::AuxiliaryProcessProxy::protectedConnection(&v6, this);
      v5 = a2;
      IPC::Connection::send<Messages::AuxiliaryProcess::SetProcessSuppressionEnabled>(v6, &v5, 0, 0, 0);
      this = v6;
      v6 = 0;
      if (this)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this, v4);
      }
    }
  }

  return this;
}

uint64_t WebKit::WebProcessActivityState::process(WebKit::WebProcessActivityState *this)
{
  if (*(this + 8) == 255)
  {
    mpark::throw_bad_variant_access(this);
  }

  v1 = *(*this + 8);
  if (!*(this + 8))
  {
    if (v1)
    {
      v2 = 336;
      return *(v1 + v2);
    }

LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19D5EB9E0);
  }

  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = 32;
  return *(v1 + v2);
}

uint64_t WebKit::WebProcessActivityState::takeVisibleActivity(WebKit::WebProcessActivityState *this)
{
  v2 = WebKit::WebProcessActivityState::process(this);
  v4 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  v5 = *(*(v2 + 160) + 8);
  if (v5)
  {
    v6 = v2;
    atomic_fetch_add((v5 + 16), 1u);
    v7 = WebKit::ProcessThrottlerActivity::operator new(0x30, v3);
    v8 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v7, v6 + 144, "View is visible", 16, 1, 0);
    v10 = *(this + 2);
    *(this + 2) = v8;
    if (v10)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v10 + 8), v9);
    }

    WebKit::ProcessThrottler::deref((v6 + 144), v9);

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4, v11);
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WebKit::WebProcessProxy::visiblePageToken@<X0>(uint64_t ****__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v3 = this[99];
  if (v3)
  {
    v4 = *v3;
    ++*(v3 + 8);
    if (v4)
    {
      this = *v4;
      if (*v4)
      {
        this = (*(*this + 16))(this, 1);
      }
    }
  }

  *a1 = v3;
  return this;
}

uint64_t WebKit::WebAuthenticatorCoordinatorProxy::makeActiveConditionalAssertion(WebKit::WebAuthenticatorCoordinatorProxy *this)
{
  v9 = this;
  WebKit::WebAuthenticatorCoordinatorProxy::activeConditionalMediationProxy(this);
  v8 = v2;
  if (!WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator BOOL(v2))
  {
    return WebKit::WebAuthenticatorCoordinatorProxy::unpauseConditionalAssertion(this);
  }

  result = WTF::operator==<WebKit::WebAuthenticatorCoordinatorProxy,WebKit::WebAuthenticatorCoordinatorProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>(v8, this);
  if (result & 1) == 0 || (*(this + 56))
  {
    v4 = WTF::WeakPtr<WebKit::WebAuthenticatorCoordinatorProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(v8);
    WTF::WeakPtr<WebKit::WebAuthenticatorCoordinatorProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v6, this);
    WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v5);
    WTF::CompletionHandler<void ()(void)>::CompletionHandler<WebKit::WebAuthenticatorCoordinatorProxy::makeActiveConditionalAssertion(void)::$_0,void>(&v7, &v6, &v5);
    WebKit::WebAuthenticatorCoordinatorProxy::pauseConditionalAssertion(v4, &v7);
    WTF::CompletionHandler<void ()(void)>::~CompletionHandler(&v7);
    WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v5);
    return WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(&v6);
  }

  return result;
}

void WebKit::WebAuthenticatorCoordinatorProxy::activeConditionalMediationProxy(WebKit::WebAuthenticatorCoordinatorProxy *this)
{
  {
    WTF::NeverDestroyed<WTF::WeakPtr<WebKit::WebAuthenticatorCoordinatorProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::MainRunLoopAccessTraits>::NeverDestroyed<>();
  }

  WTF::NeverDestroyed<WTF::WeakPtr<WebKit::WebAuthenticatorCoordinatorProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::MainRunLoopAccessTraits>::get();
}

BOOL WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator BOOL(void *a1)
{
  v2 = WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1);
  v3 = 0;
  if (v2)
  {
    v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1);
    return WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::operator BOOL(v4);
  }

  return v3;
}

uint64_t WebKit::WebAuthenticatorCoordinatorProxy::unpauseConditionalAssertion(uint64_t this)
{
  v4[1] = this;
  v1 = this;
  if (*(this + 56))
  {
    this = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::operator BOOL[abi:sn200100]((this + 48));
    if (this & 1) != 0 && (*(v1 + 57))
    {
      v2 = WTF::WeakPtr<WebKit::WebAuthenticatorCoordinatorProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(v4, v1);
      WebKit::WebAuthenticatorCoordinatorProxy::activeConditionalMediationProxy(v2);
      WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator=(v3, v4);
      WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(v4);
      this = [std::span<char const 18446744073709551615ul>:"performAutoFillAssistedRequests" :? data[abi:?sn200100](v1 + 48)];
    }

    *(v1 + 56) = 0;
  }

  return this;
}

void *WebKit::WebPageProxy::updateBackingStoreDiscardableState(void *this)
{
  v1 = this[41];
  if (!v1)
  {
    return this;
  }

  v2 = this;
  (**v1)(this[41]);
  v4 = v2[44];
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  if (*(*(v4 + 56) + 72))
  {
    v6 = *(v4 + 536);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v3);
    if (v6 == 1)
    {
      v7 = v2[7];
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          (*(*v8 + 1712))(v8);
        }
      }

      else
      {
        v8 = 0;
      }

      if ((*(*v8 + 56))(v8))
      {
        v9 = (*(v2[4] + 80) & 4) == 0;
      }

      else
      {
        v9 = 1;
      }

      (*(*v8 + 1720))(v8);
      goto LABEL_14;
    }
  }

  else
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v3);
  }

  v9 = 0;
LABEL_14:
  (*(*v1 + 120))(v1, v9);
  v10 = *(*v1 + 8);

  return v10(v1);
}

WebKit::WebPageProxy *WebKit::WebPageProxy::updateMediaCapability(WebKit::WebPageProxy *this)
{
  v1 = *(*(this + 4) + 2872);
  if (v1)
  {
    v2 = this;
    ++*(v1 + 24);
    if (WebKit::WebPageProxy::shouldDeactivateMediaCapability(this))
    {
      WebKit::WebPageProxy::deactivateMediaCapability(v2, v1);
    }

    else
    {
      v4 = *(v2 + 44);
      v5 = (v4 + 16);
      atomic_fetch_add((v4 + 16), 1u);
      v6 = *(*(v4 + 552) + 8);
      if (v6)
      {
        v7 = (v6 - 16);
      }

      else
      {
        v7 = 0;
      }

      CFRetain(v7[1]);
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v8);
      v10 = *(v2 + 4);
      if ((*(v10 + 80) & 4) != 0 && (*(v10 + 968) & 0x36C7803) != 0)
      {
        v11 = WebKit::WebProcessPool::extensionCapabilityGranter(v7, v9);
        WebKit::ExtensionCapabilityGranter::setMediaCapabilityActive(v11, v1, 1);
      }

      if (WebKit::MediaCapability::isActivatingOrActive(v1))
      {
        v12 = WebKit::WebProcessPool::extensionCapabilityGranter(v7, v3);
        WebKit::ExtensionCapabilityGranter::grant(v12, v1);
      }

      if (v6)
      {
        CFRelease(*(v6 - 8));
      }
    }

    return WTF::RefCounted<WebKit::MediaCapability>::deref(v1 + 24, v3);
  }

  return this;
}

void sub_19D5EC0B0(_Unwind_Exception *a1, unint64_t a2)
{
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3, a2);
  WTF::RefCounted<WebKit::MediaCapability>::deref(v2, v5);
  _Unwind_Resume(a1);
}

uint64_t *WebKit::WebPageProxy::webViewDidMoveToWindow@<X0>(WebKit::WebPageProxy *this@<X0>, uint64_t *x8_0@<X8>)
{
  result = WTF::fastMalloc(x8_0, 0x10);
  v5 = result;
  *result = &unk_1F1119498;
  v6 = *(this + 162);
  if (v6 && (v7 = *(v6 - 12), v7))
  {
    if (v7 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v8 = WTF::fastMalloc(v7, (8 * v7));
  }

  else
  {
    v8 = 0;
  }

  v9 = (this + 1296);
  v10 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 162);
  v12 = v10;
  v13 = v11;
  v40 = this;
  if (*(this + 162))
  {
    v14 = *(this + 162) + 8 * *(*(this + 162) - 4);
  }

  else
  {
    v14 = 0;
  }

  if (v14 != v10)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = v16;
      v18 = *(*v12 + 8);
      if (v18)
      {
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v18 + 8), *(*v12 + 8));
        v19 = *(v18 + 8);
        if (v19)
        {
          atomic_fetch_add(v19, 1u);
        }
      }

      else
      {
        v19 = 0;
      }

      v8[v15] = v19;
      do
      {
        ++v12;
      }

      while (v12 != v13 && (*v12 + 1) <= 1);
      ++v15;
      v16 = v17 + 1;
    }

    while (v12 != v14);
    if (v15)
    {
      v20 = v8;
      do
      {
        v21 = *v20;
        if (*v20)
        {
          v11 = *(v21 + 8);
          if (v11)
          {
            v22 = *v9;
            if (*v9)
            {
              v23 = *(v22 - 8);
              v24 = (~(v21 << 32) + v21) ^ ((~(v21 << 32) + v21) >> 22);
              v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
              v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
              v27 = v23 & ((v26 >> 31) ^ v26);
              for (i = 1; ; ++i)
              {
                v29 = *(v22 + 8 * v27);
                if (!v29)
                {
                  break;
                }

                if (v29 != -1 && v29 == v21)
                {
                  (*(*v5 + 16))(v5);
                  break;
                }

                v27 = (v27 + i) & v23;
              }
            }
          }
        }

        ++v20;
      }

      while (v20 != &v8[v15]);
      v31 = 8 * v17;
      v32 = v8;
      do
      {
        v33 = *v32;
        *v32 = 0;
        if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v33);
          WTF::fastFree(v33, v11);
        }

        ++v32;
        v31 -= 8;
      }

      while (v31);
    }
  }

  if (v8)
  {
    WTF::fastFree(v8, v11);
  }

  result = (*(*v5 + 8))(v5);
  v34 = *(v40 + 7);
  if (v34)
  {
    v35 = *(v34 + 8);
    if (v35)
    {
      (*(*v35 + 1712))(v35);
      v36 = (*(*v35 + 136))(v35);
      v37 = *(v40 + 4);
      if (*(v37 + 2168) != v36)
      {
        *(v37 + 2168) = v36;
        v38 = *(v40 + 41);
        if (v38)
        {
          (**v38)(v38);
          (*(*v38 + 144))(v38);
          (*(*v38 + 8))(v38);
        }
      }

      v39 = *(*v35 + 1720);

      return v39(v35);
    }
  }

  return result;
}

uint64_t WebKit::PageClientImplCocoa::windowKind(id *this)
{
  v1 = [objc_loadWeak(this + 2) window];
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    NSClassFromString(&cfstr_Scnsnapshotwin.isa);
    if (objc_opt_isKindOfClass())
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::windowKindDidChange(WebKit::RemoteLayerTreeDrawingAreaProxy *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (*(*(v2 + 16) + 2168) == 2)
      {
        v5 = *(*(this + 10) + 8);
        if (v5 && (v6 = *(v5 + 8)) != 0)
        {
          v7 = *(v6 + 48);
        }

        else
        {
          v7 = 0;
        }

        WebKit::recursivelyMapIOSurfaceBackingStore(v7, v4);
      }

      v8 = *(v2 - 8);

      CFRelease(v8);
    }
  }
}

void sub_19D5EC83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::send<Messages::WebPage::SetIsWindowResizingEnabled>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 352);
  atomic_fetch_add((v2 + 16), 1u);
  result = WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetIsWindowResizingEnabled>(v2, a2, *(a1 + 48), 0);
  if (v2)
  {

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16), v4);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetIsWindowResizingEnabled>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2748;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19D5ECA78(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v11);
  _Unwind_Resume(a1);
}

void sub_19D5ECD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5ECF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5ED218(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5ED3F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPageProxy::insertionPointColorDidChange(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = this;
      (*(*v2 + 1712))(v2);
      v4 = *(v3 + 352);
      (*(*v2 + 1264))(&v7, v2);
      v8 = &v7;
      WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetInsertionPointColor>(v4, &v8, *(v3 + 48), 0);
      if ((v7 & 0x8000000000000) != 0)
      {
        v6 = (v7 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v6);
          WTF::fastFree(v6, v5);
        }
      }

      return (*(*v2 + 1720))(v2);
    }
  }

  return this;
}

void sub_19D5ED558(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  (*(*v9 + 1720))(v9, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::SetInsertionPointColor>(uint64_t a1, WebCore::Color **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2744;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void sub_19D5ED750(_Unwind_Exception *exception_object, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkProcess::addSupplementWithoutRefCountedCheck<WebKit::WebCookieManager>(WebKit::WebCookieManager *a1, void *a2)
{
  v7[0] = "WebCookieManager";
  v7[1] = 17;
  v3 = WebKit::WebCookieManager::operator new(a1, a2);
  v6 = WebKit::WebCookieManager::WebCookieManager(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::NetworkProcessSupplement>>(&v5, (a1 + 224), v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

unint64_t WebKit::NetworkProcess::NetworkProcess(unint64_t a1, uint64_t a2)
{
  v4 = WebKit::AuxiliaryProcess::AuxiliaryProcess(a1);
  *(v4 + 36) = 1;
  *v4 = &unk_1F1100F88;
  *(v4 + 3) = &unk_1F11010B8;
  *(v4 + 17) = &unk_1F1101108;
  *(v4 + 22) = 0;
  *(v4 + 19) = 0;
  *(v4 + 20) = 0;
  *(v4 + 167) = 0;
  WebKit::DownloadManager::DownloadManager(v4 + 184, v4 + 136);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 224) = 0u;
  WebKit::NetworkContentRuleListManager::NetworkContentRuleListManager((a1 + 272), a1);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v5 = *(a1 + 8);
  v6 = WTF::fastMalloc(atomic_fetch_add(v5, 1u), 0x10);
  *v6 = &unk_1F1101338;
  v6[1] = v5;
  v18 = v6;
  WebKit::WebSQLiteDatabaseTracker::create(&v18, (a1 + 296));
  v7 = v18;
  v18 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  WebCore::MessagePortChannelRegistry::MessagePortChannelRegistry((a1 + 328));
  *(a1 + 352) = 0x4051800000000000;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1;
  *(a1 + 396) = -1;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  if ((_MergedGlobals_73 & 1) == 0)
  {
    unk_1ED6425C0 = 0u;
    unk_1ED6425B0 = 0u;
    unk_1ED6425A0 = 0u;
    qword_1ED642598[0] = &unk_1F1101188;
    _MergedGlobals_73 = 1;
  }

  WebCore::setPlatformStrategies(qword_1ED642598, v8);
  WebKit::NetworkProcess::addSupplementWithoutRefCountedCheck<WebKit::AuthenticationManager>(a1, v9);
  WebKit::NetworkProcess::addSupplementWithoutRefCountedCheck<WebKit::WebCookieManager>(a1, v10);
  WebKit::NetworkProcess::addSupplementWithoutRefCountedCheck<WebKit::LegacyCustomProtocolManager>(a1, v11);
  WebKit::NetworkProcess::addSupplement<WebKit::LaunchServicesDatabaseObserver>(a1);
  v13 = WebKit::LegacyCustomProtocolManager::networkProcessCreated(a1, v12);
  WebCore::NetworkStateNotifier::singleton(v13);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v14 = *(a1 + 8);
  v15 = WTF::fastMalloc(atomic_fetch_add(v14, 1u), 0x10);
  *v15 = &unk_1F1101360;
  v15[1] = v14;
  v18 = v15;
  WebCore::NetworkStateNotifier::addListener();
  v16 = v18;
  v18 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WebKit::AuxiliaryProcess::initialize(a1, a2);
  return a1;
}

void WebKit::XPCServiceInitializer<WebKit::NetworkProcess,WebKit::NetworkServiceInitializerDelegate,false>(id *a1, uint64_t a2)
{
  v2 = a2;
  v24 = *a1;
  *a1 = 0;
  WebKit::NetworkServiceInitializerDelegate::NetworkServiceInitializerDelegate(&v25, &v24, a2);
  if (v24)
  {
  }

  v19 = 0;
  v20 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  LOBYTE(v18) = 0;
  v21 = 0;
  v22 = 0;
  if (WebKit::XPCServiceInitializerDelegate::getExtraInitializationData(&v25, &v22))
  {
    if (v2)
    {
      v13 = "enable-lockdown-mode";
      v14 = 21;
      v3 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(&v22, &v13);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = MEMORY[0x19EB01EF0](v4, "1", 1);
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }

      WebKit::setJSCOptions(v2, v6);
    }

    v12 = 0;
    v11 = 0;
    WebKit::XPCServiceInitializerDelegate::getClientSDKAlignedBehaviors(&v25, &v11);
    WTF::setSDKAlignedBehaviors();
    v23 = 1;
    v7 = WTF::setAuxiliaryProcessType();
    WebKit::InitializeWebKit2(v7);
    if ((WebKit::XPCServiceInitializerDelegate::checkEntitlements(&v25) & 1) == 0 || !WebKit::XPCServiceInitializerDelegate::getConnectionIdentifier(&v25, &v20) || !WebKit::XPCServiceInitializerDelegate::getClientIdentifier(&v25, &v16) || (WebKit::XPCServiceInitializerDelegate::getClientBundleIdentifier(&v25, &v17), LOBYTE(v13) = 0, LOBYTE(v14) = 0, ProcessIdentifier = WebKit::XPCServiceInitializerDelegate::getProcessIdentifier(&v25, &v13), (ProcessIdentifier & 1) == 0))
    {
LABEL_31:
      ProcessIdentifier = WTF::exitProcess(1);
      goto LABEL_32;
    }

    if (v14)
    {
      if ((v19 & 1) == 0)
      {
        v19 = 1;
      }

      v18 = v13;
      if (WebKit::XPCServiceInitializerDelegate::getClientProcessName(&v25, &v15))
      {
        voucher_replace_default_voucher();
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        ProcessIdentifier = v27;
        v10 = v27;
        if (v22)
        {
          LODWORD(v2) = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(&v22, &v10) != 0;
          ProcessIdentifier = v10;
        }

        else
        {
          LODWORD(v2) = 0;
        }

        v10 = 0;
        if (!ProcessIdentifier)
        {
          goto LABEL_20;
        }

        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  else
  {
    ProcessIdentifier = WTF::exitProcess(1);
  }

LABEL_32:
  __break(1u);
LABEL_33:
  if (atomic_fetch_add_explicit(ProcessIdentifier, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(ProcessIdentifier, v9);
  }

LABEL_20:
  if (v2)
  {
    WTF::Thread::setGlobalMaxQOSClass(0x11, v9);
  }

  if ((_MergedGlobals_104 & 1) == 0)
  {
    WebKit::NetworkProcess::NetworkProcess(&unk_1EB01D000, &v15);
    _MergedGlobals_104 = 1;
  }

  WebKit::AuxiliaryProcessInitializationParameters::~AuxiliaryProcessInitializationParameters(&v15, v9);
  v25 = &unk_1F10F20B8;
  if (v26)
  {
  }
}

void sub_19D5EDDBC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, WTF::StringImpl *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WebKit::AuxiliaryProcessInitializationParameters::~AuxiliaryProcessInitializationParameters(va, a2);
  *(v14 - 64) = &unk_1F10F20B8;
  v16 = *(v14 - 56);
  if (v16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkProcess::addSupplementWithoutRefCountedCheck<WebKit::AuthenticationManager>(WebKit::AuthenticationManager *a1, void *a2)
{
  v7[0] = "AuthenticationManager";
  v7[1] = 22;
  v3 = WebKit::AuthenticationManager::operator new(a1, a2);
  v6 = WebKit::AuthenticationManager::AuthenticationManager(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::NetworkProcessSupplement>>(&v5, (a1 + 224), v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

WebKit::WebCookieManager *WebKit::WebCookieManager::WebCookieManager(WebKit::WebCookieManager *this, WebKit::NetworkProcess *a2)
{
  v4 = this + 8;
  *this = &unk_1F1104380;
  *(this + 1) = &unk_1F11043C8;
  *(this + 2) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 3) = v5;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 161, v4);
  return this;
}

WebKit::AuthenticationManager *WebKit::AuthenticationManager::AuthenticationManager(WebKit::AuthenticationManager *this, WebKit::NetworkProcess *a2)
{
  v4 = this + 8;
  *this = &unk_1F1104298;
  *(this + 1) = &unk_1F11042E0;
  *(this + 2) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 3) = v5;
  *(this + 4) = 0;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 2, v4);
  return this;
}

void NetworkServiceInitializer(WTF *a1, uint64_t a2)
{
  WTF::initializeMainThread(a1);
  v6 = a1;
  if (a1)
  {
    v4 = a1;
  }

  WebKit::XPCServiceInitializer<WebKit::NetworkProcess,WebKit::NetworkServiceInitializerDelegate,false>(&v6, a2);
  v5 = v6;
  if (v6)
  {
  }
}

void sub_19D5EE094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuthenticationManager::operator new(WebKit::AuthenticationManager *this, void *a2)
{
  if (WebKit::AuthenticationManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::AuthenticationManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::AuthenticationManager::operatorNewSlow(0x28);
  }
}

uint64_t WebKit::WebCookieManager::operator new(WebKit::WebCookieManager *this, void *a2)
{
  if (WebKit::WebCookieManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebCookieManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebCookieManager::operatorNewSlow(0x20);
  }
}

void *WTF::RefCounted<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>::deref(void *result)
{
  v1 = result;
  if (*result != 1)
  {
    --*result;
    return result;
  }

  result[3] = &unk_1F10E6DC8;
  v2 = result[8];
  v1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WTF::RunLoop::TimerBase::~TimerBase((v1 + 3));
  v4 = v1[2];
  v1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
  }

  v5 = v1[1];
  v1[1] = 0;
  if (v5)
  {
    if (!*v5)
    {
LABEL_14:
      __break(0xC471u);
      JUMPOUT(0x19D5EE1E4);
    }

    --*v5;
  }

  if (*v1 != 1)
  {
    goto LABEL_14;
  }

  return bmalloc::api::tzoneFree(v1, v3);
}

void *WebKit::NetworkServiceInitializerDelegate::NetworkServiceInitializerDelegate(void *a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  WebKit::XPCServiceInitializerDelegate::XPCServiceInitializerDelegate(a1, &v5, a3);
  if (v5)
  {
  }

  *a1 = &unk_1F10EC338;
  return a1;
}

void sub_19D5EE270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

unint64_t WebKit::WebSQLiteDatabaseTracker::WebSQLiteDatabaseTracker(unint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F110EB08;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 16), a1);
  *a1 = &unk_1F110EAB0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  WebCore::SQLiteDatabaseTracker::setClient(a1, v5);
  return a1;
}

unint64_t WebKit::WebSQLiteDatabaseTracker::create@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x38);
  result = WebKit::WebSQLiteDatabaseTracker::WebSQLiteDatabaseTracker(v5, a1);
  *a3 = result;
  return result;
}

WebKit::NetworkContentRuleListManager *WebKit::NetworkContentRuleListManager::NetworkContentRuleListManager(WebKit::NetworkContentRuleListManager *this, WebKit::NetworkProcess *a2)
{
  *this = 0;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  return this;
}

uint64_t WebKit::DownloadManager::DownloadManager(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  (*(*a2 + 48))(a2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t WebKit::LegacyCustomProtocolManager::operator new(WebKit::LegacyCustomProtocolManager *this, void *a2)
{
  if (WebKit::LegacyCustomProtocolManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LegacyCustomProtocolManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::LegacyCustomProtocolManager::operatorNewSlow(0x40);
  }
}

WebKit::LegacyCustomProtocolManager *WebKit::NetworkProcess::addSupplementWithoutRefCountedCheck<WebKit::LegacyCustomProtocolManager>(WebKit::LegacyCustomProtocolManager *a1, void *a2)
{
  v7[0] = "LegacyCustomProtocolManager";
  v7[1] = 28;
  v3 = WebKit::LegacyCustomProtocolManager::operator new(a1, a2);
  v6 = WebKit::LegacyCustomProtocolManager::LegacyCustomProtocolManager(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::NetworkProcessSupplement>>(&v5, (a1 + 224), v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

WebKit::LegacyCustomProtocolManager *WebKit::LegacyCustomProtocolManager::LegacyCustomProtocolManager(WebKit::LegacyCustomProtocolManager *this, atomic_uint *a2)
{
  *this = &unk_1F1104410;
  *(this + 1) = &unk_1F1104458;
  *(this + 2) = 0;
  *(this + 3) = a2;
  atomic_fetch_add(a2 + 4, 1u);
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  WebKit::AuxiliaryProcess::addMessageReceiver(a2, 18, this + 8);
  return this;
}

WebKit::XPCEndpoint *WebKit::NetworkProcess::addSupplement<WebKit::LaunchServicesDatabaseObserver>(WebKit::LaunchServicesDatabaseObserver *a1)
{
  v7[0] = WebKit::LaunchServicesDatabaseObserver::supplementName(a1);
  v7[1] = v2;
  v3 = WebKit::LaunchServicesDatabaseObserver::operator new(v7[0], v2);
  v6 = WebKit::LaunchServicesDatabaseObserver::LaunchServicesDatabaseObserver(v3, a1);
  WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<std::unique_ptr<WebKit::LaunchServicesDatabaseObserver>>(&v5, (a1 + 224), v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::LaunchServicesDatabaseObserver::operator new(WebKit::LaunchServicesDatabaseObserver *this, void *a2)
{
  if (WebKit::LaunchServicesDatabaseObserver::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::LaunchServicesDatabaseObserver::s_heapRef, a2);
  }

  else
  {
    return WebKit::LaunchServicesDatabaseObserver::operatorNewSlow(0x40);
  }
}

WebKit::XPCEndpoint *WebKit::LaunchServicesDatabaseObserver::LaunchServicesDatabaseObserver(WebKit::LaunchServicesDatabaseObserver *this, WebKit::NetworkProcess *a2)
{
  result = WebKit::XPCEndpoint::XPCEndpoint(this);
  *result = &unk_1F10E9FA0;
  *(result + 3) = &unk_1F10E9FE8;
  *(result + 4) = 0;
  *(result + 40) = 0;
  *(result + 6) = 0;
  *(result + 7) = 0;
  return result;
}

WebKit::XPCEndpoint *WebKit::XPCEndpoint::XPCEndpoint(WebKit::XPCEndpoint *this)
{
  *this = &unk_1F10EA038;
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  v3 = xpc_connection_create(0, 0);
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {

    v3 = *v2;
  }

  v5 = xpc_endpoint_create(v3);
  v6 = *(this + 2);
  *(this + 2) = v5;
  if (v6)
  {
  }

  xpc_connection_set_target_queue(*v2, MEMORY[0x1E69E96A0]);
  v7 = *(this + 1);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZN6WebKit11XPCEndpointC2Ev_block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = this;
  xpc_connection_set_event_handler(v7, handler);
  xpc_connection_resume(*v2);
  return this;
}

void sub_19D5EE75C(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 16);
  if (v4)
  {
  }

  if (*v2)
  {
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::LegacyCustomProtocolManager::networkProcessCreated(unsigned int *this, WebKit::NetworkProcess *a2)
{
  v2 = this;
  if (byte_1EB01CFF1)
  {
    v3 = qword_1EB01CFF8;
    if (!qword_1EB01CFF8)
    {
      goto LABEL_3;
    }

    atomic_fetch_add((qword_1EB01CFF8 + 144), 1u);
    v4 = WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(v3);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 24);
      if (!v6)
      {
LABEL_22:
        __break(0xC471u);
        JUMPOUT(0x19D5EE8FCLL);
      }

      atomic_fetch_add((v6 + 144), 1u);
    }

    this = WebKit::LegacyCustomProtocolManager::networkProcessCreated(WebKit::NetworkProcess &)::$_0::operator()<WebKit::LegacyCustomProtocolManager>(v4);
    v7 = this;
    if (v5)
    {
      this = WebKit::LegacyCustomProtocolManager::deref(v5);
    }

    if (atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 36);
      this = (*(*v3 + 24))(v3);
      if (v7)
      {
        goto LABEL_22;
      }
    }

    else if (v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    qword_1EB01CFF8 = 0;
    byte_1EB01CFF1 = 1;
  }

LABEL_3:
  atomic_fetch_add(v2 + 36, 1u);
  if (byte_1EB01CFF1)
  {
    this = qword_1EB01CFF8;
    qword_1EB01CFF8 = v2;
    if (this && atomic_fetch_add(this + 36, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 36);
      v8 = *(*this + 24);

      return v8();
    }
  }

  else
  {
    byte_1EB01CFF1 = 1;
    qword_1EB01CFF8 = v2;
  }

  return this;
}

void sub_19D5EE94C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    WebKit::LegacyCustomProtocolManager::deref(v2);
  }

  if (atomic_fetch_add(v1 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 36);
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5EEA44(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isFullScreen(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if ([WeakRetained hasFullScreenWindowController])
  {
    v2 = [objc_msgSend(WeakRetained "fullScreenWindowController")];
    if (!WeakRetained)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if (WeakRetained)
  {
LABEL_5:
  }

  return v2;
}

void sub_19D5EEB88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::ViewGestureController::operator new(WebKit::ViewGestureController *this, void *a2)
{
  if (this == 312 && WebKit::ViewGestureController::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ViewGestureController::s_heapRef, a2);
  }

  else
  {
    return WebKit::ViewGestureController::operatorNewSlow(this);
  }
}

WebKit::ViewGestureController *WebKit::ViewGestureController::ViewGestureController(WebKit::ViewGestureController *this, WebKit::WebPageProxy *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = 1;
  *this = &unk_1F111AE48;
  v5 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  *(this + 3) = v6;
  v7 = *(a2 + 5);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = v7;
  *(this + 14) = 0;
  *(this + 60) = 1;
  v8 = WTF::RunLoop::mainSingleton(v5);
  v9 = v8;
  while (1)
  {
    v10 = *(v8 + 8);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = *(v8 + 8);
    atomic_compare_exchange_strong_explicit((v8 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_6:
  v38 = v9;
  v12 = WTF::fastMalloc(v10, 0x20);
  *v12 = &unk_1F111AF58;
  v12[1] = this;
  v12[2] = WebKit::ViewGestureController::checkForActiveLoads;
  v12[3] = 0;
  v13 = WTF::RunLoop::TimerBase::TimerBase();
  *(this + 8) = &unk_1F10E6DC8;
  *(this + 13) = v12;
  if (v38)
  {
    v13 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v38 + 8));
  }

  *(this + 54) = 0;
  *(this + 8) = 0u;
  *(this + 7) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 197) = 0u;
  *(this + 220) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  v14 = WTF::RunLoop::mainSingleton(v13);
  v15 = v14;
  while (1)
  {
    v16 = *(v14 + 8);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v17 = *(v14 + 8);
    atomic_compare_exchange_strong_explicit((v14 + 8), &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_13;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v14 + 8));
LABEL_13:
  v39 = v15;
  v18 = WTF::fastMalloc(v16, 0x20);
  *v18 = &unk_1F111AF80;
  v18[1] = this + 216;
  v18[2] = WebKit::ViewGestureController::SnapshotRemovalTracker::watchdogTimerFired;
  v18[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(this + 31) = &unk_1F10E6DC8;
  *(this + 36) = v18;
  if (v39)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v39 + 8));
  }

  *(this + 296) = 1;
  *(this + 38) = 0;
  if ((*(a2 + 865) & 1) == 0 && *(a2 + 864) == 1)
  {
    WebKit::ViewGestureController::connectToProcess(this);
  }

  {
    WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers = 0;
  }

  v19 = *(this + 4);
  if (v19 == -1 || !v19)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5EF638);
  }

  v20 = WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers;
  if (!WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(0);
    v20 = WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers;
    v19 = *(this + 4);
  }

  v21 = *(v20 - 8);
  v22 = (v19 + ~(v19 << 32)) ^ ((v19 + ~(v19 << 32)) >> 22);
  v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
  v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
  v25 = v21 & ((v24 >> 31) ^ v24);
  v26 = (v20 + 16 * v25);
  v27 = *v26;
  if (!*v26)
  {
LABEL_32:
    *v26 = v19;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v4, this);
    v31 = *(this + 1);
    atomic_fetch_add(v31, 1u);
    v32 = v26[1];
    v26[1] = v31;
    if (v32 && atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v32);
      WTF::fastFree(v32, v30);
    }

    v33 = WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers;
    if (WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers)
    {
      v34 = *(WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers - 12) + 1;
    }

    else
    {
      v34 = 1;
    }

    *(WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers - 12) = v34;
    v35 = (*(v33 - 16) + v34);
    v36 = *(v33 - 4);
    if (v36 > 0x400)
    {
      if (v36 > 2 * v35)
      {
        return this;
      }
    }

    else if (3 * v36 > 4 * v35)
    {
      return this;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v26);
    return this;
  }

  v28 = 0;
  v29 = 1;
  while (v27 != v19)
  {
    if (v27 == -1)
    {
      v28 = v26;
    }

    v25 = (v25 + v29) & v21;
    v26 = (v20 + 16 * v25);
    v27 = *v26;
    ++v29;
    if (!*v26)
    {
      if (v28)
      {
        *v28 = 0;
        v28[1] = 0;
        --*(v20 - 16);
        v19 = *(this + 4);
        v26 = v28;
      }

      goto LABEL_32;
    }
  }

  return this;
}

void WebKit::ViewGestureController::connectToProcess(WebKit::ViewGestureController *this)
{
  if ((*(this + 209) & 1) == 0)
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        CFRetain(*(v3 - 8));
        *(this + 5) = *(v3 + 32);
        v4 = *(v3 + 336);
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v4 + 8), v4);
        v6 = *(v4 + 8);
        atomic_fetch_add(v6, 1u);
        v7 = *(this + 6);
        *(this + 6) = v6;
        if (v7)
        {
          if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7);
            WTF::fastFree(v7, v5);
          }

          v6 = *(this + 6);
        }

        if (!v6 || (v8 = *(v6 + 8)) == 0 || (v9 = (v8 + 16), atomic_fetch_add((v8 + 16), 1u), (v10 = *(this + 5)) == 0))
        {
          __break(0xC471u);
          JUMPOUT(0x19D5EF788);
        }

        v14[0] = 152;
        v14[1] = v10;
        WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v8 + 104), v14, this, v13);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v9, v11);
        *(this + 209) = 1;
        v12 = *(v3 - 8);

        CFRelease(v12);
      }
    }
  }
}

void WebKit::ViewGestureController::installSwipeHandler(WebKit::ViewGestureController *this, UIView *a2, UIView *a3)
{
  v5 = [[WKSwipeTransitionController alloc] initWithViewGestureController:this gestureRecognizerView:a2];
  v6 = *(this + 23);
  *(this + 23) = v5;
  if (v6)
  {
  }

  *(this + 19) = a3;
}

WebKit::WebPageProxy *WebKit::WebPageProxy::setUnderPageBackgroundColorOverride(WebKit::WebPageProxy *this, unint64_t *a2)
{
  v3 = this;
  v4 = *a2;
  v5 = *(*(this + 4) + 2040);
  if ((*a2 & 0x8000000000000) != 0)
  {
    if ((v5 & 0x8000000000000) != 0)
    {
      v27 = 0;
      v28 = 0;
      v35 = *((v4 & 0xFFFFFFFFFFFFLL) + 4);
      v34 = *((v5 & 0xFFFFFFFFFFFFLL) + 4);
      do
      {
        if (*(&v35 + v28) != *(&v34 + v28))
        {
          break;
        }

        v27 = v28++ > 2;
      }

      while (v28 != 4);
      if (!((v5 ^ v4) >> 56) && v27 && BYTE6(v4) == BYTE6(v5))
      {
        return this;
      }
    }
  }

  else if (v4 == v5 && (v5 & 0x8000000000000) == 0)
  {
    return this;
  }

  WebKit::WebPageProxy::underPageBackgroundColor(&v33, this);
  v7 = *(v3 + 4);
  v8 = *(v7 + 2040);
  *(v7 + 2040) = 0;
  v9 = *a2;
  if (*a2)
  {
    *(v7 + 2040) = v9;
    if ((v9 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  this = WebKit::WebPageProxy::underPageBackgroundColor(&v32, v3);
  v11 = 0;
  if ((v33 & 0x8000000000000) == 0)
  {
    if ((v32 & 0x8000000000000) == 0 && v33 == v32)
    {
      v11 = ((v32 ^ v33) & 0xF6000000000000) == 0;
      goto LABEL_19;
    }

LABEL_18:
    if ((v32 & 0x8000000000000) != 0)
    {
      this = (v32 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v32 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        v30 = v11;
        this = WTF::fastFree(this, v10);
        v11 = v30;
      }
    }

    goto LABEL_19;
  }

  if ((v32 & 0x8000000000000) != 0)
  {
    v12 = 0;
    v35 = *((v33 & 0xFFFFFFFFFFFFLL) + 4);
    v34 = *((v32 & 0xFFFFFFFFFFFFLL) + 4);
    do
    {
      if (*(&v35 + v12) != *(&v34 + v12))
      {
        break;
      }

      v11 = v12++ > 2;
    }

    while (v12 != 4);
    v11 &= ((v32 ^ v33) & 0xFFF6000000000000) == 0;
    goto LABEL_18;
  }

LABEL_19:
  v13 = *(v3 + 4);
  v14 = *(v13 + 2040);
  if ((v14 & 0x8000000000000) != 0)
  {
    this = (v14 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this);
      v31 = v11;
      v29 = v13;
      this = WTF::fastFree(this, v10);
      v13 = v29;
      v11 = v31;
    }
  }

  *(v13 + 2040) = v8;
  if (v11)
  {
    v15 = (*(v3 + 4) + 2040);
    if (v15 != a2)
    {
      v16 = *v15;
      if ((*v15 & 0x8000000000000) != 0)
      {
        this = (v16 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, this);
          this = WTF::fastFree(this, v10);
        }
      }

      v17 = *a2;
      *a2 = 0;
      *v15 = v17;
    }
  }

  else
  {
    v18 = *(v3 + 7);
    if (v18)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        (*(*v19 + 1712))(v19);
        (*(*v19 + 1464))(v19);
        this = (*(*v19 + 1720))(v19);
      }
    }

    v20 = (*(v3 + 4) + 2040);
    if (v20 != a2)
    {
      v21 = *v20;
      if ((*v20 & 0x8000000000000) != 0)
      {
        this = (v21 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, this);
          this = WTF::fastFree(this, v10);
        }
      }

      v22 = *a2;
      *a2 = 0;
      *v20 = v22;
    }

    v23 = *(v3 + 7);
    if (v23)
    {
      v24 = *(v23 + 8);
      if (v24)
      {
        (*(*v24 + 1712))(v24);
        (*(*v24 + 1472))(v24);
        this = (*(*v24 + 1720))(v24);
      }
    }
  }

  if ((*(v3 + 836) & 1) == 0)
  {
    *(v3 + 836) = 1;
    WTF::RunLoop::mainSingleton(this);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3 + 6, v3 + 16);
    v25 = *(v3 + 3);
    v26 = WTF::fastMalloc(atomic_fetch_add(v25, 1u), 0x10);
    *v26 = &unk_1F1117A58;
    v26[1] = v25;
    *&v35 = v26;
    WTF::RunLoop::dispatch();
    this = v35;
    *&v35 = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }
  }

  if ((v33 & 0x8000000000000) != 0)
  {
    this = (v33 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v33 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this);
      return WTF::fastFree(this, v10);
    }
  }

  return this;
}

id sampledFixedPositionContentColor(uint64_t a1, uint64_t a2)
{
  if (!WebCore::FixedContainerEdges::hasFixedEdge())
  {
    return 0;
  }

  WebCore::FixedContainerEdges::predominantColor();
  WebCore::cocoaColorOrNil(&v10, &v9, v2);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v10;
    v10 = 0;
    if (v6)
    {
    }
  }

  if ((v9 & 0x8000000000000) != 0)
  {
    v7 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      WTF::fastFree(v7, v3);
    }
  }

  return v4;
}

void sub_19D5F00C4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::ThreadSafeWeakPtrControlBlock *WTF::BlockPtr<void ()(BERenderingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2)::{lambda(void *,BERenderingProcess *,NSError *)#1}::__invoke(uint64_t *a1, void *a2)
{
  v5 = a1[5];
  v4 = a1[6];
  v10 = v5;
  if (v4)
  {
    v6 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v4);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  if (a2)
  {
    v7 = a2;
  }

  WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)>::operator()(a1[4], &v10);
  if (a2)
  {
  }

  result = v11;
  if (v11)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, v8);
  }

  return result;
}

void sub_19D5F01D0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<void ()(BERenderingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,NSString *&>(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
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

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  MEMORY[0x19EB02040](*a1 + 8 * *(a1 + 12), *a2);
  ++*(a1 + 12);
  return 1;
}

uint64_t GPUServiceInitializer@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2;
  v7 = a1;
  v3 = WTF::fastMalloc(a3, 0x18);
  *v3 = &unk_1F10EB850;
  v3[1] = &v7;
  v3[2] = &v6;
  v5 = v3;
  WebKit::disableJSC(&v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_19D5F0398(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::NetworkProcess::initializeConnection(WebKit::NetworkProcess *this, IPC::Connection *a2)
{
  WebKit::AuxiliaryProcess::initializeConnection(this, a2);
  IPC::Connection::setDidCloseOnConnectionWorkQueueCallback(a2, WebKit::callExitSoon);
  v4 = *(this + 28);
  result = WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::begin(v4);
  v6 = result;
  v8 = v7;
  if (v4)
  {
    v4 += 3 * *(v4 - 1);
  }

  if (v4 != result)
  {
    do
    {
      result = (*(**(v6 + 16) + 16))(*(v6 + 16), a2);
      do
      {
        v6 += 24;
        if (v6 == v8)
        {
          break;
        }
      }

      while (!*(v6 + 8) || *v6 == -1);
    }

    while (v6 != v4);
  }

  return result;
}

void WebKit::XPCEndpoint::sendEndpointToConnection(xpc_object_t *a1, _xpc_connection_s *a2)
{
  if (a2)
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    v4 = (*(*a1 + 2))(a1);
    v5 = (*(*a1 + 3))(a1);
    xpc_dictionary_set_string(xdict, v4, v5);
    v6 = (*(*a1 + 4))(a1);
    xpc_dictionary_set_value(xdict, v6, a1[2]);
    xpc_connection_send_message(a2, xdict);
    if (xdict)
    {
    }
  }
}

void sub_19D5F05C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuthenticationManager::initializeConnection(atomic_uint **this, IPC::Connection *a2)
{
  result = WTF::isMainRunLoop(this);
  if (result)
  {
    if (a2 && *(a2 + 43))
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 4, (this + 1));
      v5 = this[2];
      atomic_fetch_add(v5, 1u);
      v6 = *(a2 + 43);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3321888768;
      handler[2] = ___ZN6WebKit21AuthenticationManager20initializeConnectionEPN3IPC10ConnectionE_block_invoke;
      handler[3] = &__block_descriptor_40_e8_32c99_ZTSN3WTF7WeakPtrIN6WebKit21AuthenticationManagerENS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS3_EEEE_e33_v16__0__NSObject_OS_xpc_object__8l;
      if (v5)
      {
        atomic_fetch_add(v5, 1u);
      }

      v9 = v5;
      xpc_connection_set_event_handler(v6, handler);
      result = v9;
      v9 = 0;
      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v7);
      }

      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          return WTF::fastFree(v5, v7);
        }
      }
    }
  }

  else
  {
    result = 45;
    __break(0xC471u);
  }

  return result;
}

void sub_19D5F0740(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14)
{
  if (a14 && atomic_fetch_add(a14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a14);
    WTF::fastFree(a14, a2);
  }

  if (v14)
  {
    if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c99_ZTSN3WTF7WeakPtrIN6WebKit21AuthenticationManagerENS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS3_EEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

uint64_t ___ZZN6WebKit19ProcessStateMonitorC1EON3WTF8FunctionIFvbEEEEN3__1clEPU39objcproto28RBSProcessMonitorConfiguring11objc_object_block_invoke@<X0>(uint64_t a1@<X0>, uint64_t *add@<X8>)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    add = atomic_fetch_add(v3, 1u);
  }

  v4 = WTF::fastMalloc(add, 0x10);
  *v4 = &unk_1F110D478;
  v4[1] = v3;
  v6 = v4;
  WTF::ensureOnMainRunLoop();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void sub_19D5F0848(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerNotificationObservers(void)::$_0::operator() const(WTF::ASCIILiteral const&)::{lambda(int)#1}::operator() const(int)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return;
  }

  CFRetain(*(v2 - 8));
  v4 = *(a1 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v5 = v35;
    }

    v30[0] = v5;
  }

  else
  {
    v30[0] = 0;
  }

  WebKit::WebProcessPool::setNotifyState(v2 - 16, v30, *(a1 + 40), *(a1 + 32));
  v7 = v30[0];
  v30[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v6 = (v8 - 1);
    if (v8 == 1)
    {
      v9 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v9 = v35;
    }

    v40 = v9;
  }

  else
  {
    v9 = 0;
    v40 = 0;
  }

  v10 = *(v2 + 68);
  if (!v10)
  {
LABEL_43:
    v40 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }
    }

    CFRelease(*(v2 - 8));
    return;
  }

  v11 = *(v2 + 56);
  v12 = 8 * v10;
  while (1)
  {
    WebKit::WebProcessProxy::auditToken(&v35, *v11);
    if (v39 == 1)
    {
      break;
    }

LABEL_19:
    v13 = *v11;
    if (*(a1 + 40))
    {
      v14 = 0;
      LOBYTE(v30[0]) = 0;
    }

    else
    {
      v30[0] = *(a1 + 32);
      v14 = 1;
    }

    LOBYTE(v30[1]) = v14;
    if (*(v13 + 114) == 1)
    {
      v18 = IPC::Encoder::operator new(0x238, v6);
      *v18 = 2959;
      v18[68] = 0;
      v18[70] = 0;
      v18[69] = 0;
      v18[2] = 0;
      v18[3] = 0;
      v18[1] = 0;
      IPC::Encoder::encodeHeader(v18);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v18, &v40);
      v20 = v18[2];
      if (v20)
      {
        v21 = v18[3];
      }

      else
      {
        v20 = v18 + 4;
        v21 = 512;
      }

      v22 = v18[68];
      if (v21 < v22)
      {
        goto LABEL_53;
      }

      v35 = 0;
      v36 = 0;
      v37 = v22;
      if (v22)
      {
        if (HIDWORD(v22))
        {
          goto LABEL_54;
        }

        v23 = WTF::fastMalloc(0, v22);
        v36 = v22;
        v35 = v23;
        memcpy(v23, v20, v22);
      }

      v24 = IPC::Encoder::operator new(0x238, v19);
      *v24 = 2959;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = 0;
      IPC::Encoder::encodeHeader(v24);
      v33[0] = v24;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v24, &v40);
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v24, v30);
      WebKit::AuxiliaryProcessProxy::sendMessageAfterResuming(v13, &v35, v33);
      if (v33[0])
      {
        IPC::Encoder::~Encoder(v33[0], v6);
        bmalloc::api::tzoneFree(v28, v29);
      }

      v25 = v35;
      if (v35)
      {
        v35 = 0;
        v36 = 0;
        WTF::fastFree(v25, v6);
      }

      v17 = v18;
    }

    else
    {
      v15 = IPC::Encoder::operator new(0x238, v6);
      *v15 = 2959;
      *(v15 + 68) = 0;
      *(v15 + 70) = 0;
      *(v15 + 69) = 0;
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = 0;
      IPC::Encoder::encodeHeader(v15);
      v33[0] = v15;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, &v40);
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v15, v30);
      LOBYTE(v35) = 0;
      v38 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v13, v33, 0, &v35, 1);
      if (v38 == 1)
      {
        v16 = v35;
        v35 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      v17 = v33[0];
      v33[0] = 0;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    IPC::Encoder::~Encoder(v17, v6);
    bmalloc::api::tzoneFree(v26, v27);
LABEL_27:
    ++v11;
    v12 -= 8;
    if (!v12)
    {
      v9 = v40;
      goto LABEL_43;
    }
  }

  WebKit::WebProcessProxy::auditToken(v30, *v11);
  if (v32)
  {
    *v33 = *v30;
    v34 = v31;
    if ((WTF::hasEntitlement() & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  std::__throw_bad_optional_access[abi:sn200100]();
LABEL_53:
  __break(1u);
LABEL_54:
  __break(0xC471u);
}

void sub_19D5F0C84(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, IPC::Encoder *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  IPC::Encoder::~Encoder(v22, a2);
  bmalloc::api::tzoneFree(v26, v27);
  if (a9)
  {
    WTF::fastFree(a9, v28);
  }

  IPC::Encoder::~Encoder(v21, v28);
  bmalloc::api::tzoneFree(v29, v30);
  v32 = *(v24 - 88);
  *(v24 - 88) = 0;
  if (v32)
  {
    if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v31);
    }
  }

  CFRelease(*(v23 - 8));
  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebProcessPool::registerNotificationObservers(void)::$_0::operator() const(WTF::ASCIILiteral const&)::{lambda(int)#1}::operator() const(int)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1106560;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WebKit::ProcessStateMonitor *WTF::Detail::CallableWrapper<WebKit::ProcessStateMonitor::ProcessStateMonitor(WTF::Function<void ()(BOOL)> &&)::$_1::operator()(objc_object  {objcproto28RBSProcessMonitorConfiguring}*)::{lambda(RBSProcessMonitor *,RBSProcessHandle *,RBSProcessStateUpdate *)#1}::operator() const(objc_object  {objcproto28RBSProcessMonitorConfiguring}*,RBSProcessMonitor *,RBSProcessHandle *)::{lambda(void)#1},void>::call(WebKit::ProcessStateMonitor *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return WebKit::ProcessStateMonitor::checkRemainingRunTime(result);
    }
  }

  return result;
}

void *WebKit::ProcessStateMonitor::checkRemainingRunTime(WebKit::ProcessStateMonitor *this)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
  if (v3 == *MEMORY[0x1E69C7698])
  {

    return WebKit::ProcessStateMonitor::processDidBecomeRunning(this);
  }

  else if (v3 <= 15.0)
  {

    return WebKit::ProcessStateMonitor::processWillBeSuspendedImmediately(this);
  }

  else if (!*(this + 12))
  {
    v4 = v3 + -15.0;
    v5 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = this;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - ProcessStateMonitor::processWillBeSuspended starts timer for %fs", &v6, 0x16u);
    }

    result = WTF::RunLoop::TimerBase::start();
    *(this + 12) = 1;
  }

  return result;
}

uint64_t WebKit::ProcessStateMonitor::processDidBecomeRunning(uint64_t this)
{
  if (*(this + 12))
  {
    v1 = this;
    if (*(this + 12) == 2)
    {
      this = (*(**(this + 16) + 16))(*(this + 16), 0);
    }

    else
    {
      this = WTF::RunLoop::TimerBase::stop((this + 24));
    }

    *(v1 + 12) = 0;
  }

  return this;
}

void WebKit::WebProcessPool::setProcessesShouldSuspend(WebKit::WebProcessPool *this, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = this;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::setProcessesShouldSuspend: Processes should suspend %d", &v11, 0x12u);
  }

  if (*(this + 1016) != a2)
  {
    *(this + 1016) = a2;
    v5 = *(this + 21);
    if (v5)
    {
      v6 = *(this + 9);
      v7 = 8 * v5;
      while (1)
      {
        v8 = *v6;
        v9 = *(*(*v6 + 160) + 8);
        if (!v9)
        {
          break;
        }

        atomic_fetch_add((v9 + 16), 1u);
        WebKit::ProcessThrottler::setAllowsActivities((v8 + 144), (*(this + 1016) & 1) == 0);
        WebKit::ProcessThrottler::deref((v8 + 144), v10);
        ++v6;
        v7 -= 8;
        if (!v7)
        {
          return;
        }
      }

      __break(0xC471u);
    }
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessStateMonitor::ProcessStateMonitor(WTF::Function<void ()(BOOL)> &&)::$_1::operator()(objc_object  {objcproto28RBSProcessMonitorConfiguring}*)::{lambda(RBSProcessMonitor *,RBSProcessHandle *,RBSProcessStateUpdate *)#1}::operator() const(objc_object  {objcproto28RBSProcessMonitorConfiguring}*,RBSProcessMonitor *,RBSProcessHandle *)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F110D478;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v6 = 8 * v3;
    do
    {
      v7 = *v4;
      *v4 = 0;
      if (v7)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v7);
      }

      v4 = (v4 + 8);
      v6 -= 8;
    }

    while (v6);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D5F1558(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WebKit::WebPageProxy::setResourceLoadClient(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 152);
  v4 = *a2;
  *a2 = 0;
  result = *(a1 + 152);
  *(a1 + 152) = v4;
  if (result)
  {
    result = (*(*result + 8))(result);
    v4 = *(a1 + 152);
  }

  if ((v3 != 0) != (v4 != 0))
  {
    v6 = v4 != 0;
    return WebKit::WebPageProxy::send<Messages::WebPage::SetHasResourceLoadClient>(a1, &v6);
  }

  return result;
}

uint64_t WebKit::ResourceLoadDelegate::setDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 16), a2);
  *(a1 + 24) = *(a1 + 24) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xF7 | v5;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xEF | v7;
  return result;
}

unsigned __int8 *IPC::MessageReceiverMap::removeMessageReceiver(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  result = WTF::HashTable<std::pair<IPC::ReceiverName,unsigned long long>,WTF::KeyValuePair<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>>,(WTF::ShouldValidateKey)1,std::pair<IPC::ReceiverName,unsigned long long>>((a1 + 8), v7);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 + 24 * *(v5 - 4));
    if (v6 == result)
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

    v6 = 0;
  }

  if (v6 != result)
  {
    return WTF::HashTable<std::pair<IPC::ReceiverName,unsigned long long>,WTF::KeyValuePair<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::FastMalloc>::remove((a1 + 8), result);
  }

  return result;
}

void WebKit::WebPageProxy::close(WebKit::WebPageProxy *this)
{
  v91 = *MEMORY[0x1E69E9840];
  if ((*(this + 865) & 1) == 0)
  {
    v2 = qword_1ED640D10;
    if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 5);
      v4 = *(this + 6);
      v6 = *(*(this + 44) + 80);
      if (v6)
      {
        LODWORD(v6) = *(v6 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      v82 = 2048;
      v83 = v4;
      v84 = 1024;
      v85 = v6;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::close:", buf, 0x26u);
    }

    *(this + 865) = 1;
    v7 = *(this + 4);
    v8 = *(v7 + 2232);
    if (v8)
    {
      *(v7 + 2232) = 0;
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::SleepDisabler>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::SleepDisabler>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::SleepDisablerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v8, v3);
    }

    *buf = 0;
    *&buf[8] = 0;
    WTF::URL::invalidate(&buf[8]);
    v86 = 0;
    v87 = 0;
    v88 = 3;
    cf = 0;
    v90 = 1;
    WebKit::WebPageProxy::reportPageLoadResult(this, buf);
    v10 = cf;
    cf = 0;
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v86;
    v86 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *&buf[8];
    *&buf[8] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = *buf;
    *buf = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    v14 = *(this + 77);
    if (v14)
    {
      ++v14[2];
      (*(*v14 + 32))(v14);
      if (v14[2] == 1)
      {
        (*(*v14 + 8))(v14);
      }

      else
      {
        --v14[2];
      }
    }

    if (*(this + 962) == 1)
    {
      v15 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16)) + 320);
      if (v15)
      {
        CFRetain(*(v15 + 8));
        WebKit::WebAutomationSession::willClosePage(v15, this);
        CFRelease(*(v15 + 8));
      }
    }

    v16 = *(this + 48);
    if (v16)
    {
      CFRetain(v16[1]);
      WebKit::WebExtensionController::removePage(v16, this);
      CFRelease(v16[1]);
    }

    v17 = *(this + 49);
    if (v17)
    {
      v18 = *(v17 + 8);
      if (v18)
      {
        CFRetain(*(v18 - 8));
        WebKit::WebExtensionController::removePage((v18 - 16), this);
        CFRelease(*(v18 - 8));
      }
    }

    v19 = *(this + 157);
    *(this + 157) = 0;
    if (v19)
    {
      WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref((v19 + 24));
    }

    v20 = *(this + 198);
    *(this + 198) = 0;
    if (v20)
    {
      if (v20[2] == 1)
      {
        (*(*v20 + 8))(v20);
      }

      else
      {
        --v20[2];
      }
    }

    v21 = *(this + 62);
    if (v21)
    {
      CFRetain(v21[1]);
      WebKit::WebInspectorUIProxy::closeFrontendPageAndWindow(v21);
      WebKit::WebInspectorUIProxy::reset(v21);
      CFRelease(v21[1]);
    }

    else
    {
      WebKit::WebInspectorUIProxy::closeFrontendPageAndWindow(0);
      WebKit::WebInspectorUIProxy::reset(0);
    }

    WebKit::WebBackForwardList::pageClosed(*(this + 89), v22, v23);
    v24 = *(this + 151);
    WebKit::WebPageInspectorController::disconnectAllFrontends(v24);
    Inspector::AgentRegistry::discardValues((v24 + 2));
    v26 = *(this + 152);
    *(this + 152) = 0;
    if (v26)
    {
      v27 = *(v26 + 40);
      *(v26 + 40) = 0;
      if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27);
        WTF::fastFree(v27, v25);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v26 + 8), v25);
    }

    v28 = *(this + 7);
    if (v28)
    {
      v29 = *(v28 + 8);
      if (v29)
      {
        (*(*v29 + 1712))(v29);
        (*(*v29 + 176))(v29);
        (*(*v29 + 1720))(v29);
      }
    }

    WebKit::WebPageProxy::disconnectFramesFromPage(this, v25);
    v31 = *(this + 9);
    *(this + 9) = 0;
    if (v31)
    {
      v31 = (*(*v31 + 8))(v31);
    }

    v33 = API::NavigationClient::operator new(v31, v30);
    *v33 = &unk_1F1117598;
    v34 = *(this + 11);
    *(this + 11) = v33;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = *(this + 10);
    *(this + 10) = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v37 = API::IconLoadingClient::operator new(8, v32);
    *v37 = &unk_1F1116FF0;
    v38 = *(this + 13);
    *(this + 13) = v37;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v40 = API::FormClient::operator new(8, v36);
    *v40 = &unk_1F1117018;
    v41 = *(this + 14);
    *(this + 14) = v40;
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    v43 = API::UIClient::operator new(8, v39);
    *v43 = &unk_1F111B880;
    v44 = *(this + 15);
    *(this + 15) = v43;
    if (v44)
    {
      (*(*v44 + 8))(v44);
    }

    v46 = API::FindClient::operator new(8, v42);
    *v46 = &unk_1F1117040;
    v47 = *(this + 16);
    *(this + 16) = v46;
    if (v47)
    {
      (*(*v47 + 8))(v47);
    }

    v49 = API::FindMatchesClient::operator new(8, v45);
    *v49 = &unk_1F1117090;
    v50 = *(this + 17);
    *(this + 17) = v49;
    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    v51 = *(this + 18);
    *(this + 18) = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    v52 = API::FullscreenClient::operator new(8, v48);
    *v52 = &unk_1F11170C0;
    v53 = *(this + 64);
    *(this + 64) = v52;
    if (v53)
    {
      (*(*v53 + 16))(v53);
    }

    WebKit::WebPageProxy::resetState(this, 0);
    v54 = *(this + 44);
    atomic_fetch_add((v54 + 16), 1u);
    v55 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16));
    CFRetain(*(v55 + 8));
    WebKit::WebBackForwardCache::removeEntriesForPage(*(v55 + 808), this, v56);
    v80 = 0uLL;
    v58 = WTF::fastMalloc(v57, 0x10);
    *v58 = &unk_1F1117800;
    v58[1] = &v80;
    *buf = v58;
    WebKit::WebPageProxy::forEachWebContentProcess(this, buf);
    v59 = *buf;
    if (*buf)
    {
      v59 = (*(**buf + 8))(*buf);
    }

    WTF::RunLoop::currentSingleton(v59);
    *&v60 = 0;
    v78 = v60;
    v61 = v80;
    v80 = 0u;
    v63 = WTF::fastMalloc(v62, 0x18);
    *v63 = &unk_1F1117828;
    *buf = v78;
    *(v63 + 1) = v61;
    v79 = v63;
    WTF::RunLoop::dispatch();
    if (v79)
    {
      (*(*v79 + 8))(v79);
    }

    WTF::Vector<WebKit::WebPageProxy::close(void)::ProcessToClose,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v64);
    WebKit::WebProcessProxy::removeWebPage(v54, this, 1);
    WebKit::WebPageProxy::removeAllMessageReceivers(this);
    v65 = WebKit::WebProcessPool::supplement<WebKit::WebNotificationManagerProxy>(v55);
    if (v65)
    {
      v66 = v65;
      CFRetain(*(v65 + 8));
      *buf = 0;
      *&buf[8] = 0;
      WebKit::WebNotificationManagerProxy::clearNotifications(v66, this, buf);
      CFRelease(v66[1]);
    }

    else
    {
      *buf = 0;
      *&buf[8] = 0;
      WebKit::WebNotificationManagerProxy::clearNotifications(0, this, buf);
    }

    v68 = *(this + 8);
    v69 = *(v68 + 128);
    *(v68 + 128) = 0;
    if (v69 && atomic_fetch_add(v69, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v69);
      WTF::fastFree(v69, v67);
    }

    WebKit::WebPageProxy::resetActivityState(this, v67);
    WTF::RunLoop::TimerBase::stop((*(this + 4) + 88));
    WebKit::WebPageProxy::stopAllURLSchemeTasks(this, 0);
    PAL::HysteresisActivity::cancel((*(this + 4) + 2280));
    v70 = *(this + 46);
    CFRetain(*(v70 + 8));
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v70 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v71);
    CFRelease(*(v70 + 8));
    if (BoolValueForKey)
    {
      v74 = *(this + 185);
      v75 = v74[2];
      v74 += 2;
      *v74 = v75 + 1;
      WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>((v74 + 4), this);
      WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::remove((v74 + 12), this);
      WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(v74, v76);
    }

    WTF::Vector<WebKit::WebPageProxy::close(void)::ProcessToClose,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v73);
    CFRelease(*(v55 + 8));
    if (v54)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v54 + 16), v77);
    }
  }
}

void WebKit::UIRemoteObjectRegistry::~UIRemoteObjectRegistry(WebKit::UIRemoteObjectRegistry *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  if (*(this + 8) == 1)
  {

    WebKit::RemoteObjectRegistry::~RemoteObjectRegistry(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

_DWORD *WTF::RefCounted<WebKit::UIRemoteObjectRegistry>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::UIRemoteObjectRegistry::~UIRemoteObjectRegistry((result - 8), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::RemoteObjectRegistry::~RemoteObjectRegistry(WebKit::RemoteObjectRegistry *this, void *a2)
{
  *this = &unk_1F10EEB58;
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  objc_destroyWeak(this + 2);
  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v4);
}

uint64_t WTF::Vector<WTF::BlockPtr<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      _Block_release(v6);
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

_DWORD *WTF::RefCounted<WebKit::ViewGestureController>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::ViewGestureController::~ViewGestureController((result - 4));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::ViewGestureController::~ViewGestureController(WebKit::ViewGestureController *this)
{
  [*(this + 24) _setTransitionIsInFlight:0];
  [*(this + 24) _setInteractor:0];
  [*(this + 24) _setAnimator:0];
  [*(this + 23) invalidate];
  {
    WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers = 0;
  }

  v2 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers, this + 4);
  if (WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers)
  {
    v4 = WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers + 16 * *(WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers - 4);
    if (v4 == v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    v4 = 0;
  }

  if (v4 != v2)
  {
    v5 = v2[1];
    *v2 = -1;
    v2[1] = 0;
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, v3);
    }

    v6 = WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers;
    v7 = vadd_s32(*(WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers - 16), 0xFFFFFFFF00000001);
    *(WebKit::viewGestureControllersForAllPages(void)::viewGestureControllers - 16) = v7;
    v8 = *(v6 - 4);
    if (6 * v7.i32[1] < v8 && v8 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ViewGestureController,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v8 >> 1, 0);
    }
  }

LABEL_16:
  WebKit::ViewGestureController::disconnectFromProcess(this, v3);
  v10 = *(this + 38);
  *(this + 38) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 31) = &unk_1F10E6DC8;
  v11 = *(this + 36);
  *(this + 36) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 248));
  v13 = *(this + 28);
  *(this + 28) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 24);
  *(this + 24) = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 23);
  *(this + 23) = 0;
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 22);
  *(this + 22) = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 21);
  *(this + 21) = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(this + 20);
  *(this + 20) = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 17);
  *(this + 17) = 0;
  if (v19)
  {
    CFRelease(*(v19 + 8));
  }

  v20 = *(this + 16);
  *(this + 16) = 0;
  if (v20)
  {
    CFRelease(*(v20 + 8));
  }

  v21 = *(this + 15);
  *(this + 15) = 0;
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21);
    WTF::fastFree(v21, v12);
  }

  v22 = *(this + 14);
  if ((v22 & 0x8000000000000) != 0)
  {
    v27 = (v22 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v22 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v27);
      WTF::fastFree(v27, v12);
    }
  }

  *(this + 8) = &unk_1F10E6DC8;
  v23 = *(this + 13);
  *(this + 13) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 64));
  v25 = *(this + 6);
  *(this + 6) = 0;
  if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v25);
    WTF::fastFree(v25, v24);
  }

  v26 = *(this + 3);
  *(this + 3) = 0;
  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26);
    WTF::fastFree(v26, v24);
  }

  if (*(this + 4) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v24);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::ViewGestureController::disconnectFromProcess(uint64_t this, void *a2)
{
  if (*(this + 209) == 1)
  {
    v2 = this;
    this = *(this + 48);
    *(v2 + 48) = 0;
    if (this)
    {
      v3 = *(this + 8);
      if (v3)
      {
        atomic_fetch_add((v3 + 16), 1u);
      }

      if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        this = WTF::fastFree(this, a2);
        if (v3)
        {
          goto LABEL_7;
        }
      }

      else if (v3)
      {
LABEL_7:
        v4 = *(v2 + 40);
        if (!v4)
        {
          this = 158;
          __break(0xC471u);
          return this;
        }

        IPC::MessageReceiverMap::removeMessageReceiver(v3 + 96, 0x98u, v4);
        this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16), v5);
      }
    }

    *(v2 + 40) = 0;
    *(v2 + 209) = 0;
  }

  return this;
}

void sub_19D5F34CC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, WTF::StringImpl *a43, uint64_t a44, uint64_t a45, uint64_t a46, WTF::StringImpl *a47, uint64_t a48, WTF::StringImpl *a49)
{
  v51 = 0;
  while (1)
  {
    v52 = v49 + v51;
    v53 = *(v49 + v51 + 56);
    if (v53 != 255 && v53 != 0)
    {
      v55 = *(v52 + 48);
      if ((v55 & 0x8000000000000) != 0)
      {
        v56 = (v55 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v55 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v56);
          WTF::fastFree(v56, a2);
        }
      }
    }

    *(v52 + 56) = -1;
    v51 -= 16;
    if (v51 == -64)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_19D5F3678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::WeakObjCPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      objc_destroyWeak(v4++);
      v5 -= 8;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t *std::unique_ptr<WebKit::HideEditMenuScope>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    Weak = objc_loadWeak(v2);
    v4 = Weak;
    if (Weak)
    {
      v5 = Weak;
    }

    [objc_msgSend(v4 "textInteractionAssistant")];
    if ([v4 shouldRestoreEditMenuAfterOverflowScrolling])
    {
      [v4 setShouldRestoreEditMenuAfterOverflowScrolling:0];
      [objc_msgSend(v4 "asyncTextInteraction")];
    }

    if (*(v2 + 8) == 1)
    {
      [objc_msgSend(v4 "textSelectionDisplayInteraction")];
    }

    if (v4)
    {
    }

    objc_destroyWeak(v2);

    return bmalloc::api::tzoneFree(v2, v6);
  }

  return result;
}

void sub_19D5F39F4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5F4144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

id *std::unique_ptr<WebKit::CompactContextMenuPresenter>::reset[abi:sn200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::CompactContextMenuPresenter::~CompactContextMenuPresenter(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebKit::SmartMagnificationController::~SmartMagnificationController(WebKit::SmartMagnificationController *this, void *a2)
{
  WebKit::SmartMagnificationController::~SmartMagnificationController(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  *this = &unk_1F110D518;
  v3 = *(this + 3);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    *(this + 3) = 0;
LABEL_8:
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }

    goto LABEL_10;
  }

  CFRetain(*(v4 - 8));
  v5 = *(v4 + 336);
  atomic_fetch_add((v5 + 16), 1u);
  IPC::MessageReceiverMap::removeMessageReceiver(v5 + 96, 0x8Du, *(v4 + 32));
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16), v6);
  }

  CFRelease(*(v4 - 8));
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (*(this + 4) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D5F42D8(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  if (*(v2 + 16) == 1)
  {
    *v2 = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v2 + 8), a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WTF::dynamic_objc_cast<WKDragSessionContext>(uint64_t result)
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

void sub_19D5F47C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5F496C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::DragDropInteractionState::dragAndDropSessionsDidBecomeInactive(WebKit::DragDropInteractionState *this)
{
  WebKit::DragDropInteractionState::takePreviewViewsForDragCancel(&v8, this);
  if (v9)
  {
    v2 = v8;
    v3 = 8 * v9;
    do
    {
      [*v2++ removeFromSuperview];
      v3 -= 8;
    }

    while (v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    v4[2](v4, MEMORY[0x1E695E0F0]);
  }

  _Block_release(v4);
  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    v5[2](v5);
  }

  _Block_release(v5);
  return WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v6);
}

void sub_19D5F4A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_release(v9);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v11);
  _Unwind_Resume(a1);
}

void std::__optional_storage_base<WebKit::DragSourceState,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::DragSourceState,false>>(uint64_t result, uint64_t a2)
{
  if (*(result + 336) == *(a2 + 336))
  {
    if (*(result + 336))
    {

      WebKit::DragSourceState::operator=(result, a2);
    }
  }

  else if (*(result + 336))
  {

    std::__optional_destruct_base<WebKit::DragSourceState,false>::reset[abi:sn200100](result, a2);
  }

  else
  {
    *(WebKit::DragSourceState::DragSourceState(result, a2) + 336) = 1;
  }
}

void WebKit::DragDropInteractionState::~DragDropInteractionState(WebKit::DragDropInteractionState *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(this + 57);
  if (v8)
  {
    WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  v9 = *(this + 56);
  if (v9)
  {
    WTF::HashTable<WTF::RetainPtr<UIDragItem>,WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>>>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashMap<WTF::RetainPtr<UIDragItem>,WTF::RetainPtr<UITargetedDragPreview>,WTF::DefaultHash<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::HashTraits<WTF::RetainPtr<UITargetedDragPreview>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<UIDragItem>>,WTF::FastMalloc>::deallocateTable(v9, a2);
  }

  WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 108, a2);
  if (*(this + 424) == 1)
  {
    v11 = *(this + 46);
    *(this + 46) = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = *(this + 45);
    *(this + 45) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    if (*(this + 352) == 1)
    {
      mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl(this + 288);
    }

    if (*(this + 280) == 1)
    {
      WebCore::TextIndicatorData::~TextIndicatorData((this + 144), v10);
    }

    if (*(this + 136) != 255)
    {
      v13 = *(this + 16);
      *(this + 16) = 0;
      if (v13)
      {
      }
    }

    *(this + 136) = -1;
  }

  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, v10);
  _Block_release(*(this + 8));
  _Block_release(*(this + 7));
  v14 = *(this + 6);
  *(this + 6) = 0;
  if (v14)
  {
  }

  v15 = *(this + 5);
  *(this + 5) = 0;
  if (v15)
  {
  }
}

_DWORD *WTF::Vector<WebKit::DragSourceState,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(_DWORD *a1, WTF::StringImpl *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = 336 * v3;
    v5 = (*a1 + 280);
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      if (*(v5 - 16) == 1)
      {
        mpark::detail::impl<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>::~impl((v5 - 10));
      }

      if (*(v5 - 88) == 1)
      {
        WebCore::TextIndicatorData::~TextIndicatorData((v5 - 28), a2);
      }

      if (*(v5 - 232) != 255)
      {
        v8 = *(v5 - 30);
        *(v5 - 30) = 0;
        if (v8)
        {
        }
      }

      *(v5 - 232) = -1;
      v5 += 42;
      v4 -= 336;
    }

    while (v4);
  }

  v9 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v9, a2);
  }

  return a1;
}

uint64_t WebKit::FocusedElementInformation::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 48);
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v5;
  *(a1 + 64) = v4;
  *(a1 + 32) = v6;
  *(a1 + 16) = *(a2 + 16);
  v8 = *(a2 + 144);
  v7 = *(a2 + 160);
  v9 = *(a2 + 128);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 144) = v8;
  *(a1 + 160) = v7;
  *(a1 + 128) = v9;
  v10 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v10;
  v11 = *(a2 + 192);
  *(a2 + 192) = 0;
  v12 = *(a1 + 192);
  *(a1 + 192) = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(a1 + 212);
  if (v13)
  {
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*(a1 + 200), (*(a1 + 200) + 16 * v13));
  }

  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 200, (a2 + 200));
  *(a1 + 216) = *(a2 + 216);
  v15 = *(a2 + 224);
  *(a2 + 224) = 0;
  v16 = *(a1 + 224);
  *(a1 + 224) = v15;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v14);
  }

  *(a1 + 232) = *(a2 + 232);
  v17 = *(a2 + 240);
  *(a2 + 240) = 0;
  v18 = *(a1 + 240);
  *(a1 + 240) = v17;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v14);
  }

  *(a1 + 248) = *(a2 + 248);
  WTF::URL::operator=((a1 + 256), (a2 + 256));
  *(a1 + 296) = *(a2 + 296);
  v20 = *(a2 + 304);
  *(a2 + 304) = 0;
  v21 = *(a1 + 304);
  *(a1 + 304) = v20;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v19);
  }

  v22 = *(a2 + 312);
  *(a2 + 312) = 0;
  v23 = *(a1 + 312);
  *(a1 + 312) = v22;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v19);
  }

  v24 = *(a2 + 320);
  *(a2 + 320) = 0;
  v25 = *(a1 + 320);
  *(a1 + 320) = v24;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  *(a1 + 328) = *(a2 + 328);
  if (a1 != a2)
  {
    v26 = *(a1 + 336);
    if ((v26 & 0x8000000000000) != 0)
    {
      v32 = (v26 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v26 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v32);
        WTF::fastFree(v32, v19);
      }
    }

    v27 = *(a2 + 336);
    *(a2 + 336) = 0;
    *(a1 + 336) = v27;
  }

  *(a1 + 344) = *(a2 + 344);
  v28 = *(a1 + 364);
  if (v28)
  {
    WTF::VectorDestructor<true,WebCore::Color>::destruct(*(a1 + 352), (*(a1 + 352) + 8 * v28));
  }

  WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 352, (a2 + 352));
  v29 = *(a2 + 368);
  v30 = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 368) = v29;
  *(a1 + 384) = v30;
  std::__optional_storage_base<WebKit::FrameInfoData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::FrameInfoData,false>>((a1 + 416), a2 + 416);
  return a1;
}

void std::__optional_storage_base<WebKit::FrameInfoData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::FrameInfoData,false>>(WebKit::FrameInfoData *a1, uint64_t a2)
{
  v3 = *(a1 + 352) & 1;
  if (v3 == (std::__optional_storage_base<WebKit::FrameInfoData,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 352))
    {
      std::__to_address[abi:sn200100]<char const>();
      WebKit::FrameInfoData::operator=(a1, v4);
    }
  }

  else if (*(a1 + 352))
  {
    std::__optional_destruct_base<WebKit::FrameInfoData,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WebKit::FrameInfoData,false>::__construct[abi:sn200100]<WebKit::FrameInfoData>(a1, v5);
  }
}

void WebKit::FocusedElementInformation::~FocusedElementInformation(WebKit::FocusedElementInformation *this, WTF::StringImpl *a2)
{
  if (*(this + 768) == 1)
  {
    v3 = *(this + 90);
    *(this + 90) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(this + 82);
    *(this + 82) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(this + 624);
    v5 = *(this + 77);
    *(this + 77) = 0;
    if (v5)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase((this + 424));
  }

  WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 352, a2);
  v7 = *(this + 42);
  if ((v7 & 0x8000000000000) != 0)
  {
    v16 = (v7 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v6);
    }
  }

  v8 = *(this + 40);
  *(this + 40) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(this + 39);
  *(this + 39) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = *(this + 38);
  *(this + 38) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  v11 = *(this + 32);
  *(this + 32) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v6);
  }

  v12 = *(this + 30);
  *(this + 30) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  v13 = *(this + 28);
  *(this + 28) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v6);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 200, v6);
  v15 = *(this + 24);
  *(this + 24) = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }
  }
}

uint64_t WTF::Vector<WebCore::Color,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    WTF::VectorDestructor<true,WebCore::Color>::destruct(*result, (*result + 8 * v2));
    result = v4;
  }

  v3 = *result;
  if (*result)
  {
    *result = 0;
    *(result + 8) = 0;
    v5 = result;
    WTF::fastFree(v3, a2);
    return v5;
  }

  return result;
}

void sub_19D5F57D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WTF::VectorMover<false,WebKit::KeyEventAndCompletionBlock>::move(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      a3[1] = v7;
      _Block_release(*(v5 + 8));
      v8 = *v5;
      *v5 = 0;
      if (v8)
      {
      }

      a3 += 2;
      v5 += 16;
    }

    while (v5 != a2);
  }
}

uint64_t WTF::Vector<WebKit::KeyEventAndCompletionBlock,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 16 * v3;
    do
    {
      _Block_release(*(v4 + 1));
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
      }

      v4 = (v4 + 16);
      v5 -= 16;
    }

    while (v5);
  }

  v7 = *a1;
  if (a1 + 16 != *a1 && v7 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

void sub_19D5F5C10(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v13);
  WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v14);
  _Unwind_Resume(a1);
}

void WebKit::PageClientImplCocoa::~PageClientImplCocoa(WebKit::PageClientImplCocoa *this)
{
  *this = &unk_1F10FFD98;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WebCore::AlternativeTextUIController>::reset[abi:sn200100](this + 3, 0);
  objc_destroyWeak(this + 2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v3);
}

bmalloc::api **std::unique_ptr<WebCore::AlternativeTextUIController>::reset[abi:sn200100](bmalloc::api **result, bmalloc::api *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    if (*v2)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*v2, a2);
    }

    return bmalloc::api::tzoneFree(v2, a2);
  }

  return result;
}

void WebCore::TextIndicatorData::~TextIndicatorData(WebCore::TextIndicatorData *this, void *a2)
{
  v3 = *(this + 12);
  if ((v3 & 0x8000000000000) != 0)
  {
    v8 = (v3 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, a2);
    }
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
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

  v5 = *(this + 10);
  *(this + 10) = 0;
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

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    if (v6[4] == 1)
    {
      (*(*v6 + 8))(v6, a2);
    }

    else
    {
      --v6[4];
    }
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v7, a2);
  }
}

WebKit::FrameInfoData *std::optional<WebKit::FrameInfoData>::~optional(WebKit::FrameInfoData *a1)
{
  std::__optional_move_assign_base<WebKit::FrameInfoData,false>::~__optional_move_assign_base(a1);
  return a1;
}

{
  std::optional<WebKit::FrameInfoData>::~optional(a1);
  return a1;
}

void WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(WebKit::InteractionInformationAtPosition *this, void *a2)
{
  v3 = *(this + 64);
  if (v3)
  {
    *(this + 64) = 0;
    *(this + 130) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 37);
  *(this + 37) = 0;
  if (v4)
  {
  }

  v5 = *(this + 36);
  *(this + 36) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 35);
  *(this + 35) = 0;
  if (v6)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v6);
  }

  if (*(this + 264) == 1)
  {
    v7 = *(this + 30);
    *(this + 30) = 0;
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
  }

  v8 = *(this + 26);
  *(this + 26) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(this + 25);
  *(this + 25) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 24);
  *(this + 24) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v10, a2);
  }

  v11 = *(this + 21);
  *(this + 21) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *(this + 20);
  *(this + 20) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(this + 19);
  *(this + 19) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *(this + 14);
  *(this + 14) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, a2);
    }
  }
}

WebKit::FrameInfoData *std::__optional_destruct_base<WebKit::FrameInfoData,false>::~__optional_destruct_base[abi:sn200100](WebKit::FrameInfoData *a1)
{
  if (*(a1 + 352))
  {
    WebKit::FrameInfoData::~FrameInfoData(a1);
  }

  return a1;
}

void WebKit::PageClientImpl::~PageClientImpl(WebKit::PageClientImpl *this)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
  }

  objc_destroyWeak(this + 7);

  WebKit::PageClientImplCocoa::~PageClientImplCocoa(this);
}

WebKit::GestureRecognizerConsistencyEnforcer *std::unique_ptr<WebKit::GestureRecognizerConsistencyEnforcer>::reset[abi:sn200100](WebKit::GestureRecognizerConsistencyEnforcer **a1, WebKit::GestureRecognizerConsistencyEnforcer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::GestureRecognizerConsistencyEnforcer::~GestureRecognizerConsistencyEnforcer(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

id *WTF::RefCounted<WebKit::ApplicationStateTracker>::deref(id *result)
{
  if (*result == 1)
  {
    WebKit::ApplicationStateTracker::~ApplicationStateTracker(result - 1);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::ApplicationStateTracker::~ApplicationStateTracker(id *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641490;
  if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 134217984;
    *&v17[4] = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ~ApplicationStateTracker", v17, 0xCu);
  }

  WebKit::ApplicationStateTracker::setWindow(this, 0);
  WebKit::ApplicationStateTracker::setScene(this, 0);
  WebKit::ApplicationStateTracker::setViewController(this, 0);
  v3 = WebKit::ApplicationStateTracker::removeAllObservers(this);
  {
    WebKit::allApplicationStateTrackers(void)::trackers = 0;
    *&dword_1ED643398 = 1;
    goto LABEL_17;
  }

  if (++dword_1ED643398 > dword_1ED64339C)
  {
    v5 = WebKit::allApplicationStateTrackers(void)::trackers;
    if (WebKit::allApplicationStateTrackers(void)::trackers)
    {
      v6 = *(WebKit::allApplicationStateTrackers(void)::trackers - 4);
      if (!v6)
      {
LABEL_18:
        v11 = *(v5 - 4);
        if (6 * *(v5 - 12) < v11 && v11 > 8)
        {
          v3 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(&WebKit::allApplicationStateTrackers(void)::trackers);
          v5 = WebKit::allApplicationStateTrackers(void)::trackers;
          dword_1ED643398 = 0;
          if (!WebKit::allApplicationStateTrackers(void)::trackers)
          {
            goto LABEL_25;
          }
        }

        else
        {
          dword_1ED643398 = 0;
        }

        LODWORD(v5) = *(v5 - 12);
        if (v5 > 0x7FFFFFFE)
        {
          v13 = -2;
          goto LABEL_27;
        }

LABEL_25:
        v13 = 2 * v5;
LABEL_27:
        dword_1ED64339C = v13;
        goto LABEL_28;
      }

      v7 = 0;
      v8 = 8 * v6;
      v9 = WebKit::allApplicationStateTrackers(void)::trackers - 8;
      do
      {
        v3 = *(v9 + v8);
        if ((v3 + 1) >= 2 && !*(v3 + 8))
        {
          *(v9 + v8) = 0;
          if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v3);
            v3 = WTF::fastFree(v3, v4);
          }

          *(v9 + v8) = -1;
          ++v7;
        }

        v8 -= 8;
      }

      while (v8);
      v5 = WebKit::allApplicationStateTrackers(void)::trackers;
      if (v7)
      {
        v10 = *(WebKit::allApplicationStateTrackers(void)::trackers - 12) - v7;
        *(WebKit::allApplicationStateTrackers(void)::trackers - 16) += v7;
        *(v5 - 12) = v10;
        goto LABEL_18;
      }

      if (WebKit::allApplicationStateTrackers(void)::trackers)
      {
        goto LABEL_18;
      }
    }

LABEL_17:
    LODWORD(v5) = 0;
    dword_1ED643398 = 0;
    goto LABEL_25;
  }

LABEL_28:
  if (*this && *(*this + 1))
  {
    *v17 = *this;
    v3 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(&WebKit::allApplicationStateTrackers(void)::trackers, v17);
    if (WebKit::allApplicationStateTrackers(void)::trackers)
    {
      v14 = WebKit::allApplicationStateTrackers(void)::trackers + 8 * *(WebKit::allApplicationStateTrackers(void)::trackers - 4);
      if (v14 == v3)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_37;
      }

      v14 = 0;
    }

    if (v14 != v3)
    {
      v3 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(&WebKit::allApplicationStateTrackers(void)::trackers, v3);
    }
  }

LABEL_37:
  WebKit::updateApplicationBackgroundState(v3);
  objc_destroyWeak(this + 16);
  objc_destroyWeak(this + 15);
  objc_destroyWeak(this + 14);
  objc_destroyWeak(this + 13);
  v15 = this[6];
  this[6] = 0;
  if (v15)
  {
  }

  objc_destroyWeak(this + 5);
  objc_destroyWeak(this + 4);
  objc_destroyWeak(this + 3);
  objc_destroyWeak(this + 2);
  if (*(this + 2) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v16);
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D5F7938(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 128));
  objc_destroyWeak((v1 + 120));
  objc_destroyWeak((v1 + 112));
  objc_destroyWeak((v1 + 104));
  v3 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v3)
  {
  }

  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v1 + 24));
  objc_destroyWeak((v1 + 16));
  if (*(v1 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v4);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

unsigned int *__destroy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__1(uint64_t a1, void *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

unsigned int *__destroy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__2(uint64_t a1, void *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

unsigned int *__destroy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__3(uint64_t a1, void *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

unsigned int *__destroy_helper_block_e8_32c63_ZTSKZN6WebKit23ApplicationStateTracker8setSceneEP7UISceneE3__4(uint64_t a1, void *a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void WebKit::NavigationState::~NavigationState(WebKit::NavigationState *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 52);
    if (v5)
    {
      WeakRetained = CFRetain(*(v5 + 8));
    }

    {
      v6 = dword_1ED6433F8++;
      if (v6 > dword_1ED6433FC)
      {
        WTF::WeakHashMap<WebKit::WebPageProxy,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultWeakPtrImpl>::removeNullReferences(WeakRetained, v3);
      }
    }

    else
    {
      WebKit::navigationStates(void)::navigationStates = 0;
      *&dword_1ED6433F8 = 1;
    }

    v7 = *(v5 + 24);
    if (v7 && *(v7 + 8) && WebKit::navigationStates(void)::navigationStates)
    {
      v8 = *(WebKit::navigationStates(void)::navigationStates - 8);
      v9 = (~(v7 << 32) + v7) ^ ((~(v7 << 32) + v7) >> 22);
      v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
      v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
      v12 = v8 & ((v11 >> 31) ^ v11);
      for (i = 1; ; ++i)
      {
        v14 = v12;
        v15 = *(WebKit::navigationStates(void)::navigationStates + 16 * v12);
        if (v15 != -1)
        {
          if (!v15)
          {
            goto LABEL_22;
          }

          if (v15 == v7)
          {
            break;
          }
        }

        v12 = (v14 + i) & v8;
      }

      if (v14 != *(WebKit::navigationStates(void)::navigationStates - 4))
      {
        WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>::customDeleteBucket(WebKit::navigationStates(void)::navigationStates + 16 * v14, v3);
        v16 = WebKit::navigationStates(void)::navigationStates;
        v17 = vadd_s32(*(WebKit::navigationStates(void)::navigationStates - 16), 0xFFFFFFFF00000001);
        *(WebKit::navigationStates(void)::navigationStates - 16) = v17;
        v18 = *(v16 - 4);
        if (6 * v17.i32[1] < v18 && v18 >= 9)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::WeakPtr<WebKit::NavigationState,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(v18 >> 1, v18);
        }
      }
    }

LABEL_22:
    v20 = *(v5 + 32);
    WebKit::PageLoadState::ref((v20 + 1120));
    WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>((v20 + 1120), this);
    WebKit::PageLoadState::deref((v20 + 1120));
    CFRelease(*(v5 + 8));
  }

  *(this + 9) = &unk_1F10E6DC8;
  v21 = *(this + 14);
  *(this + 14) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 72));
  v23 = *(this + 8);
  *(this + 8) = 0;
  if (v23)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v23 + 8), v22);
  }

  objc_destroyWeak(this + 6);
  objc_destroyWeak(this + 3);
  objc_destroyWeak(this + 2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v24);
}

{
  WebKit::NavigationState::~NavigationState(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19D5F7E3C(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  *(v1 + 72) = &unk_1F10E6DC8;
  v6 = *(v1 + 112);
  *(v1 + 112) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  WTF::RunLoop::TimerBase::~TimerBase((v1 + 72));
  v8 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v8)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v8 + 8), v7);
  }

  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 24));
  objc_destroyWeak((v1 + 16));
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v1 + 8), v9);
  _Unwind_Resume(a1);
}

void WebKit::WebPageProxy::~WebPageProxy(WebKit::WebPageProxy *this)
{
  v142 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 5);
    v3 = *(this + 6);
    v5 = *(*(this + 44) + 80);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 108);
    }

    *buf = 134218752;
    *&buf[4] = this;
    v136 = 2048;
    v137 = v4;
    v138 = 2048;
    v139 = v3;
    v140 = 1024;
    v141 = v5;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::destructor:", buf, 0x26u);
  }

  *buf = 0;
  WebKit::WebPageProxy::setPageLoadStateObserver(this, buf);
  if (*buf)
  {
    (*(**buf + 8))(*buf);
  }

  if ((*(this + 865) & 1) == 0)
  {
    WebKit::WebPageProxy::close(this);
  }

  --HIDWORD(WebKit::WebProcessPool::statistics(void)::statistics);
  if (*(this + 1232) == 1)
  {
    WebKit::TextChecker::closeSpellDocumentWithTag(*(this + 153));
  }

  v6 = *(this + 46);
  CFRetain(*(v6 + 8));
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>((v6 + 88), this);
  v8 = *(this + 279);
  if (v8)
  {
    v9 = *(this + 138);
    v10 = 8 * v8;
    do
    {
      v11 = *v9;
      *v9++ = 0;
      (*(*v11 + 16))(v11);
      (*(*v11 + 8))(v11);
      v10 -= 8;
    }

    while (v10);
  }

  v12 = *(*(this + 51) + 432);
  if (v12)
  {
    atomic_fetch_add((v12 + 16), 1u);
    v13 = *(*(this + 51) + 24);
    v14 = *(this + 5);
    v15 = IPC::Encoder::operator new(0x238, v7);
    *v15 = 652;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = 0;
    IPC::Encoder::encodeHeader(v15);
    v132[0] = v15;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v13);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v14);
    buf[0] = 0;
    BYTE2(v137) = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v12, v132, 0, buf, 1);
    if (BYTE2(v137) == 1)
    {
      v17 = *buf;
      *buf = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v132[0];
    v132[0] = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v16);
      bmalloc::api::tzoneFree(v130, v131);
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16), v16);
  }

  {
    if (WebKit::singleton(void)::singleton)
    {
      v19 = *(WebKit::singleton(void)::singleton + 8);
      if (v19)
      {
        v20 = (v19 + 16);
        atomic_fetch_add((v19 + 16), 1u);
        v21 = *(*(this + 44) + 120);
        v22 = *(this + 6);
        buf[0] = 0;
        LOBYTE(v140) = 0;
        v133 = v22;
        v134 = v21;
        v132[0] = &v134;
        v132[1] = &v133;
        v132[2] = buf;
        WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetPresentingApplicationAuditToken>(v19, v132, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v20, v23);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  WTF::RunLoop::TimerBase::stop((*(this + 4) + 920));
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  v24 = *(this + 198);
  *(this + 198) = 0;
  if (v24)
  {
    if (v24[2] == 1)
    {
      (*(*v24 + 8))(v24);
    }

    else
    {
      --v24[2];
    }
  }

  v25 = *(this + 197);
  *(this + 197) = 0;
  if (v25)
  {
    if (v25[2] == 1)
    {
      (*(*v25 + 8))(v25);
    }

    else
    {
      --v25[2];
    }
  }

  std::unique_ptr<WTF::Observer<void ()(WebCore::NowPlayingMetadata const&)>>::reset[abi:sn200100](this + 191, 0);
  v27 = *(this + 189);
  if (v27)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v27, v26);
  }

  std::unique_ptr<WebKit::WebsitePoliciesData>::reset[abi:sn200100](this + 188, 0);
  v29 = *(this + 185);
  *(this + 185) = 0;
  if (v29)
  {
    WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v29 + 8), v28);
  }

  v30 = *(this + 184);
  *(this + 184) = 0;
  if (v30)
  {
    CFRelease(*(v30 + 8));
  }

  std::unique_ptr<WebKit::NetworkIssueReporter>::reset[abi:sn200100](this + 183, 0);
  v32 = *(this + 181);
  *(this + 181) = 0;
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(this + 179);
  *(this + 179) = 0;
  if (v33)
  {
    WTF::RefCounted<WebKit::ListDataObserver>::deref((v33 + 8), v31);
  }

  v34 = *(this + 173);
  *(this + 173) = 0;
  if (v34)
  {
    WTF::RefCounted<WebKit::WebScreenOrientationManagerProxy>::deref((v34 + 16));
  }

  v35 = *(this + 172);
  *(this + 172) = 0;
  if (v35)
  {
    if (v35[8] == 1)
    {
      (*(*v35 + 8))(v35);
    }

    else
    {
      --v35[8];
    }
  }

  WTF::Vector<WebKit::WebPageProxy::InjectedBundleMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 340, v31);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1344, v36);
  v38 = *(this + 167);
  *(this + 167) = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v37);
  }

  v39 = *(this + 165);
  *(this + 165) = 0;
  if (v39)
  {
    WTF::RefCounted<WebKit::SpeechRecognitionPermissionManager>::deref((v39 + 8));
  }

  v40 = *(this + 164);
  *(this + 164) = 0;
  if (v40 && atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v40 + 2);
    (*(*v40 + 8))(v40);
  }

  v41 = *(this + 162);
  if (v41)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v41, v37);
  }

  v42 = *(this + 160);
  *(this + 160) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(this + 159);
  *(this + 159) = 0;
  if (v43 && atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v43);
    WTF::fastFree(v43, v37);
  }

  v44 = *(this + 158);
  *(this + 158) = 0;
  if (v44)
  {
    if (v44[4] == 1)
    {
      (*(*v44 + 24))(v44);
    }

    else
    {
      --v44[4];
    }
  }

  v45 = *(this + 157);
  *(this + 157) = 0;
  if (v45)
  {
    WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref((v45 + 24));
  }

  v46 = *(this + 155);
  if (v46)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v46, v37);
  }

  v47 = *(this + 152);
  *(this + 152) = 0;
  if (v47)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v47 + 8), v37);
  }

  v48 = *(this + 151);
  *(this + 151) = 0;
  if (v48)
  {
    WebKit::WebPageInspectorController::~WebPageInspectorController(v48, v37);
    bmalloc::api::tzoneFree(v49, v50);
  }

  v51 = *(this + 150);
  if (v51)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<API::Attachment,WTF::RawPtrTraits<API::Attachment>,WTF::DefaultRefDerefTraits<API::Attachment>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<API::Attachment,WTF::RawPtrTraits<API::Attachment>,WTF::DefaultRefDerefTraits<API::Attachment>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<API::Attachment,WTF::RawPtrTraits<API::Attachment>,WTF::DefaultRefDerefTraits<API::Attachment>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<API::Attachment,WTF::RawPtrTraits<API::Attachment>,WTF::DefaultRefDerefTraits<API::Attachment>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v51, v37);
  }

  v52 = *(this + 149);
  if (v52)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v52, v37);
  }

  v53 = *(this + 147);
  if (v53)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v53, v37);
  }

  v54 = *(this + 145);
  *(this + 145) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1104, v37);
  v56 = *(this + 134);
  if (v56)
  {
    v57 = *(v56 - 4);
    if (v57)
    {
      v58 = (v56 + 8);
      do
      {
        if (*(v58 - 1) != -1)
        {
          v59 = *v58;
          *v58 = 0;
          if (v59)
          {
            (*(*v59 + 8))(v59);
          }
        }

        v58 += 2;
        --v57;
      }

      while (v57);
    }

    WTF::fastFree((v56 - 16), v55);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1056, v55);
  std::unique_ptr<WebKit::RemoteLayerTreeScrollingPerformanceData>::reset[abi:sn200100](this + 130, 0);
  std::unique_ptr<WebCore::RunLoopObserver>::reset[abi:sn200100](this + 129, 0);
  v61 = *(this + 119);
  *(this + 119) = 0;
  if (v61)
  {
    WTF::RefCounted<WebCore::ValidationBubble>::deref(v61);
  }

  v62 = *(this + 118);
  *(this + 118) = 0;
  if (v62)
  {
    if (v62[4] == 1)
    {
      (*(*v62 + 8))(v62);
    }

    else
    {
      --v62[4];
    }
  }

  WTF::Vector<WTF::CompletionHandler<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 904, v60);
  std::unique_ptr<WebKit::WebWheelEventCoalescer>::reset[abi:sn200100]((this + 880), 0);
  v64 = *(this + 91);
  *(this + 91) = 0;
  if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v64, v63);
  }

  v65 = *(this + 89);
  *(this + 89) = 0;
  if (v65)
  {
    CFRelease(*(v65 + 8));
  }

  std::unique_ptr<WebKit::WebProcessActivityState>::reset[abi:sn200100](this + 85, 0);
  std::unique_ptr<WebKit::MediaKeySystemPermissionRequestManagerProxy>::reset[abi:sn200100](this + 83, 0);
  v67 = *(this + 81);
  *(this + 81) = 0;
  if (v67)
  {
    WTF::RefCounted<WebKit::UserMediaPermissionRequestManagerProxy>::deref((v67 + 16), v66);
  }

  v68 = *(this + 80);
  *(this + 80) = 0;
  if (v68)
  {
    CFRelease(*(v68 + 8));
  }

  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 624, v66);
  v70 = *(this + 77);
  *(this + 77) = 0;
  if (v70)
  {
    if (v70[2] == 1)
    {
      (*(*v70 + 8))(v70);
    }

    else
    {
      --v70[2];
    }
  }

  v71 = *(this + 76);
  if (v71)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v71, v69);
  }

  v72 = *(this + 74);
  if (v72)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v72, v69);
  }

  v73 = *(this + 73);
  *(this + 73) = 0;
  if (v73)
  {
    CFRelease(v73);
  }

  v74 = *(this + 72);
  *(this + 72) = 0;
  if (v74)
  {
    if (v74[4] == 1)
    {
      (*(*v74 + 24))(v74);
    }

    else
    {
      --v74[4];
    }
  }

  v75 = *(this + 71);
  *(this + 71) = 0;
  if (v75)
  {
    CFRelease(v75);
  }

  v76 = *(this + 70);
  *(this + 70) = 0;
  if (v76)
  {
    WTF::RefCounted<WebKit::ModelElementController>::deref(v76 + 8, v69);
  }

  v77 = *(this + 69);
  *(this + 69) = 0;
  if (v77)
  {
    WTF::RefCounted<WebKit::SystemPreviewController>::deref((v77 + 8));
  }

  v78 = *(this + 66);
  *(this + 66) = 0;
  if (v78)
  {
    if (v78[4] == 1)
    {
      (*(*v78 + 24))(v78);
    }

    else
    {
      --v78[4];
    }
  }

  v79 = *(this + 65);
  *(this + 65) = 0;
  if (v79)
  {
    if (v79[4] == 1)
    {
      (*(*v79 + 24))(v79);
    }

    else
    {
      --v79[4];
    }
  }

  v80 = *(this + 64);
  *(this + 64) = 0;
  if (v80)
  {
    (*(*v80 + 16))(v80);
  }

  v81 = *(this + 63);
  *(this + 63) = 0;
  if (v81)
  {
    if (v81[5] == 1)
    {
      (*(*v81 + 24))(v81);
    }

    else
    {
      --v81[5];
    }
  }

  v82 = *(this + 62);
  *(this + 62) = 0;
  if (v82)
  {
    CFRelease(*(v82 + 8));
  }

  v83 = *(this + 61);
  *(this + 61) = 0;
  if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v83, v69);
  }

  v84 = *(this + 60);
  *(this + 60) = 0;
  if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v84, v69);
  }

  v85 = *(this + 59);
  *(this + 59) = 0;
  if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v85, v69);
  }

  v86 = *(this + 58);
  *(this + 58) = 0;
  if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v86, v69);
  }

  v87 = *(this + 57);
  *(this + 57) = 0;
  if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v87, v69);
  }

  v88 = *(this + 56);
  *(this + 56) = 0;
  if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v88, v69);
  }

  v89 = *(this + 55);
  *(this + 55) = 0;
  if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v89, v69);
  }

  v90 = *(this + 54);
  *(this + 54) = 0;
  if (v90)
  {
    CFRelease(*(v90 + 8));
  }

  v91 = *(this + 53);
  *(this + 53) = 0;
  if (v91)
  {
    CFRelease(*(v91 + 8));
  }

  v92 = *(this + 52);
  *(this + 52) = 0;
  if (v92)
  {
    CFRelease(*(v92 + 8));
  }

  v93 = *(this + 51);
  *(this + 51) = 0;
  if (v93)
  {
    CFRelease(*(v93 + 8));
  }

  v94 = *(this + 50);
  *(this + 50) = 0;
  if (v94)
  {
    CFRelease(*(v94 + 8));
  }

  v95 = *(this + 49);
  *(this + 49) = 0;
  if (v95 && atomic_fetch_add(v95, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v95);
    WTF::fastFree(v95, v69);
  }

  v96 = *(this + 48);
  *(this + 48) = 0;
  if (v96)
  {
    CFRelease(*(v96 + 8));
  }

  v97 = *(this + 47);
  *(this + 47) = 0;
  if (v97)
  {
    CFRelease(*(v97 + 8));
  }

  v98 = *(this + 46);
  *(this + 46) = 0;
  if (v98)
  {
    CFRelease(*(v98 + 8));
  }

  v99 = *(this + 45);
  *(this + 45) = 0;
  if (v99)
  {
    CFRelease(*(v99 + 8));
  }

  v100 = *(this + 44);
  *(this + 44) = 0;
  if (v100)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v100 + 16), v69);
  }

  v101 = *(this + 43);
  *(this + 43) = 0;
  if (v101)
  {
    (*(*v101 + 8))(v101);
  }

  std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](this + 42, 0);
  v102 = *(this + 41);
  *(this + 41) = 0;
  if (v102)
  {
    (*(*v102 + 8))(v102);
  }

  v103 = *(this + 40);
  *(this + 40) = 0;
  if (v103)
  {
    CFRelease(v103);
  }

  v104 = *(this + 39);
  *(this + 39) = 0;
  if (v104)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v104);
  }

  *(this + 33) = &unk_1F10E6DC8;
  v105 = *(this + 38);
  *(this + 38) = 0;
  if (v105)
  {
    (*(*v105 + 8))(v105);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 264));
  *(this + 27) = &unk_1F10E6DC8;
  v106 = *(this + 32);
  *(this + 32) = 0;
  if (v106)
  {
    (*(*v106 + 8))(v106);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 216));
  v108 = *(this + 26);
  if (v108)
  {
    WTF::fastFree((v108 - 16), v107);
  }

  v109 = *(this + 25);
  *(this + 25) = 0;
  if (v109)
  {
    WTF::fastFree(v109, v107);
  }

  v110 = *(this + 23);
  *(this + 23) = 0;
  if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v110, v107);
  }

  v111 = *(this + 22);
  *(this + 22) = 0;
  if (v111)
  {
    WebKit::WebNavigationState::~WebNavigationState(v111, v107);
    bmalloc::api::tzoneFree(v112, v113);
  }

  v114 = *(this + 21);
  *(this + 21) = 0;
  if (v114)
  {
    (*(*v114 + 8))(v114);
  }

  v115 = *(this + 20);
  *(this + 20) = 0;
  if (v115)
  {
    bmalloc::api::tzoneFree(v115, v107);
  }

  v116 = *(this + 19);
  *(this + 19) = 0;
  if (v116)
  {
    (*(*v116 + 8))(v116);
  }

  v117 = *(this + 18);
  *(this + 18) = 0;
  if (v117)
  {
    (*(*v117 + 8))(v117);
  }

  v118 = *(this + 17);
  *(this + 17) = 0;
  if (v118)
  {
    (*(*v118 + 8))(v118);
  }

  v119 = *(this + 16);
  *(this + 16) = 0;
  if (v119)
  {
    (*(*v119 + 8))(v119);
  }

  v120 = *(this + 15);
  *(this + 15) = 0;
  if (v120)
  {
    (*(*v120 + 8))(v120);
  }

  v121 = *(this + 14);
  *(this + 14) = 0;
  if (v121)
  {
    (*(*v121 + 8))(v121);
  }

  v122 = *(this + 13);
  *(this + 13) = 0;
  if (v122)
  {
    (*(*v122 + 8))(v122);
  }

  v123 = *(this + 12);
  *(this + 12) = 0;
  if (v123)
  {
    (*(*v123 + 8))(v123);
  }

  v124 = *(this + 11);
  *(this + 11) = 0;
  if (v124)
  {
    (*(*v124 + 8))(v124);
  }

  v125 = *(this + 10);
  *(this + 10) = 0;
  if (v125)
  {
    (*(*v125 + 8))(v125);
  }

  v126 = *(this + 9);
  *(this + 9) = 0;
  if (v126)
  {
    (*(*v126 + 8))(v126);
  }

  v127 = *(this + 8);
  *(this + 8) = 0;
  if (v127)
  {
    CFRelease(*(v127 + 8));
  }

  v128 = *(this + 7);
  *(this + 7) = 0;
  if (v128 && atomic_fetch_add(v128, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v128);
    WTF::fastFree(v128, v107);
  }

  v129 = *(this + 4);
  *(this + 4) = 0;
  if (v129)
  {
    (*(*v129 + 8))(v129);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v107);
}

void WebKit::WebPageProxy::setPageLoadStateObserver(uint64_t a1, unsigned int **a2)
{
  v4 = *(a1 + 32);
  WebKit::PageLoadState::ref((v4 + 1120));
  v5 = *(a1 + 168);
  if (v5)
  {
    (**v5)(*(a1 + 168));
    WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>((v4 + 1120), v5);
    (*(*v5 + 8))(v5);
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *(a1 + 168);
  *(a1 + 168) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v6 = *(a1 + 168);
  }

  if (v6)
  {
    (**v6)(v6);
    WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>((v4 + 1120), v6, v8);
    (*(*v6 + 8))(v6);
  }

  WebKit::PageLoadState::deref((v4 + 1120));
}

uint64_t WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>(uint64_t *a1, void *a2)
{
  v4 = *(a1 + 3);
  v5 = *(a1 + 2) + 1;
  *(a1 + 2) = v5;
  if (v5 > v4)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v6 = *a1;
          *(a1 + 2) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 2) = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v15 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v15 = 2 * v6;
LABEL_24:
        *(a1 + 3) = v15;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        v11 = *(v10 + v9);
        if ((v11 + 1) >= 2 && !*(v11 + 8))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11);
            WTF::fastFree(v11, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *a1;
      if (v8)
      {
        v12 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v12;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    *(a1 + 2) = 0;
    goto LABEL_22;
  }

LABEL_25:
  v16 = a2[3];
  if (!v16 || !*(v16 + 8))
  {
    return 0;
  }

  v20 = a2[3];
  v17 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(a1, &v20);
  if (*a1)
  {
    v18 = *a1 + 8 * *(*a1 - 4);
    if (v18 == v17)
    {
      return 0;
    }
  }

  else
  {
    if (!v17)
    {
      return 0;
    }

    v18 = 0;
  }

  if (v18 != v17)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove(a1, v17);
  }

  return 1;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetPresentingApplicationAuditToken>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 90;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::GPUProcess::SetPresentingApplicationAuditToken::encode<IPC::Encoder>(a2, v8);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t Messages::GPUProcess::SetPresentingApplicationAuditToken::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<std::optional<WebKit::CoreIPCAuditToken>,void>::encode<IPC::Encoder,std::optional<WebKit::CoreIPCAuditToken> const&>(a2, v4);
}

WebKit::WebsitePoliciesData *std::unique_ptr<WebKit::WebsitePoliciesData>::reset[abi:sn200100](WebKit::WebsitePoliciesData **a1, WebKit::WebsitePoliciesData *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t std::unique_ptr<WTF::Observer<void ()(WebCore::NowPlayingMetadata const&)>>::reset[abi:sn200100](uint64_t *a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v5 = WTF::Observer<void ()(WebCore::NowPlayingMetadata const&)>::~Observer(result, a2);

    return WTF::fastFree(v5, v6);
  }

  return result;
}

WebKit::NetworkIssueReporter *std::unique_ptr<WebKit::NetworkIssueReporter>::reset[abi:sn200100](WebKit::NetworkIssueReporter **a1, WebKit::NetworkIssueReporter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::NetworkIssueReporter::~NetworkIssueReporter(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::ListDataObserver>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::ListDataObserver::~ListDataObserver((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::ListDataObserver::~ListDataObserver(WebKit::ListDataObserver *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

unsigned int *WTF::Vector<WebKit::WebPageProxy::InjectedBundleMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, WTF::StringImpl *a2)
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
        CFRelease(*(v6 + 8));
      }

      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
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

void WebKit::WebPageInspectorController::~WebPageInspectorController(WebKit::WebPageInspectorController *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (!v4)
    {
      goto LABEL_17;
    }

    *(v3 + 24) = v4 - 1;
  }

  v5 = *(this + 6);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 5);
  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      *(v6 + 24) = v7 - 1;
      goto LABEL_9;
    }

LABEL_17:
    __break(0xC471u);
    JUMPOUT(0x19D5F9784);
  }

LABEL_9:
  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, a2);
  }

  Inspector::AgentRegistry::~AgentRegistry((this + 16));
  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v10, v9);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    WTF::RefCounted<Inspector::FrontendRouter>::deref(v11, v9);
  }
}

void WebKit::InspectorTargetProxy::~InspectorTargetProxy(WebKit::InspectorTargetProxy *this, void *a2)
{
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  Inspector::InspectorTarget::~InspectorTarget(this, a2);
}

{
  WebKit::InspectorTargetProxy::~InspectorTargetProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void Inspector::InspectorTarget::~InspectorTarget(Inspector::InspectorTarget *this, void *a2)
{
  *this = &unk_1F111EB60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
}

uint64_t WTF::RefCounted<Inspector::BackendDispatcher>::deref(uint64_t result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result + 24, a2);
    v4 = *(v2 + 2);
    if (v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v3);
    }

    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5)
    {
      WTF::RefCounted<Inspector::FrontendRouter>::deref(v5, v3);
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, v3);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::RefCounted<Inspector::FrontendRouter>::deref(uint64_t this, void *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 8);
    v4 = (v2 + 24) == v3 || v3 == 0;
    if (v4 || (*(v2 + 8) = 0, *(v2 + 16) = 0, WTF::fastFree(v3, a2), *v2 == 1))
    {

      return WTF::fastFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

WebKit::RemoteLayerTreeScrollingPerformanceData *std::unique_ptr<WebKit::RemoteLayerTreeScrollingPerformanceData>::reset[abi:sn200100](WebKit::RemoteLayerTreeScrollingPerformanceData **a1, WebKit::RemoteLayerTreeScrollingPerformanceData *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::RemoteLayerTreeScrollingPerformanceData::~RemoteLayerTreeScrollingPerformanceData(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v6 = 8 * v3;
    do
    {
      v7 = *v4;
      *v4 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7, a2);
      }

      v4 = (v4 + 8);
      v6 -= 8;
    }

    while (v6);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF *std::unique_ptr<WebKit::WebWheelEventCoalescer>::reset[abi:sn200100](WTF *result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (!v2)
  {
    return result;
  }

  v3 = v2[37];
  v4 = v2[38];
  v5 = *(v2 + 78);
  v6 = v2[36];
  v7 = v3 - v6;
  if (v3 < v6)
  {
    if (v3 > v5)
    {
      goto LABEL_51;
    }

    if (v3)
    {
      v8 = 8 * v3;
      v9 = v2[38];
      do
      {
        result = std::unique_ptr<WTF::Vector<WebKit::NativeWebWheelEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](v9++, 0);
        v8 -= 8;
      }

      while (v8);
      v6 = v2[36];
    }

    if (v6 > v5)
    {
      goto LABEL_51;
    }

    if (v6 != v5)
    {
      v10 = (v4 + 8 * v6);
      v11 = 8 * v5 - 8 * v6;
      do
      {
        std::unique_ptr<WTF::Vector<WebKit::NativeWebWheelEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](v10++, 0);
        v11 -= 8;
      }

      while (v11);
    }

    goto LABEL_22;
  }

  v12 = v5 - v6;
  if (v5 < v6)
  {
    goto LABEL_51;
  }

  if (v7 == -1)
  {
    v7 = v5 - v6;
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v12 < v7)
  {
    goto LABEL_51;
  }

  if (v7)
  {
LABEL_20:
    v13 = 8 * v7;
    v14 = (v4 + 8 * v6);
    do
    {
      std::unique_ptr<WTF::Vector<WebKit::NativeWebWheelEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](v14++, 0);
      v13 -= 8;
    }

    while (v13);
  }

LABEL_22:
  result = v2[38];
  if (result)
  {
    v2[38] = 0;
    *(v2 + 78) = 0;
    result = WTF::fastFree(result, a2);
  }

  v15 = v2[1];
  v16 = v2[2];
  v17 = *(v2 + 6);
  v18 = *v2;
  v19 = v15 - *v2;
  if (v15 < *v2)
  {
    if (v15 <= v17)
    {
      if (v15)
      {
        v20 = v15 << 7;
        v21 = v2[2];
        result = v21;
        v22 = v21;
        do
        {
          v23 = *v22;
          v22 = (v22 + 128);
          (*v23)(result);
          v21 = (v21 + 128);
          result = v22;
          v20 -= 128;
        }

        while (v20);
        v18 = *v2;
      }

      if (v18 <= v17)
      {
        if (v18 != v17)
        {
          v24 = (v16 + (v18 << 7));
          v25 = (v17 << 7) - (v18 << 7);
          v26 = v24;
          v27 = v24;
          do
          {
            v28 = *v27;
            v27 += 16;
            (*v28)(v26);
            v24 += 16;
            v26 = v27;
            v25 -= 128;
          }

          while (v25);
        }

        goto LABEL_43;
      }
    }

LABEL_51:
    __break(1u);
    return result;
  }

  v29 = v17 - v18;
  if (v17 < v18)
  {
    goto LABEL_51;
  }

  if (v19 == -1)
  {
    v19 = v17 - v18;
    if (!v29)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v29 < v19)
  {
    goto LABEL_51;
  }

  if (v19)
  {
LABEL_41:
    v30 = (v16 + (v18 << 7));
    v31 = v19 << 7;
    v32 = v30;
    v33 = v30;
    do
    {
      v34 = *v33;
      v33 += 16;
      (*v34)(v32);
      v30 += 16;
      v32 = v33;
      v31 -= 128;
    }

    while (v31);
  }

LABEL_43:
  v35 = v2[2];
  if (v2 + 4 != v35 && v35 != 0)
  {
    v2[2] = 0;
    *(v2 + 6) = 0;
    WTF::fastFree(v35, a2);
  }

  return bmalloc::api::tzoneFree(v2, a2);
}

void WebKit::WebBackForwardList::~WebBackForwardList(WebKit::WebBackForwardList *this, void *a2)
{
  *this = &unk_1F1115CD8;
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24, a2);
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, v3);
    }
  }
}

WebKit::WebProcessActivityState *std::unique_ptr<WebKit::WebProcessActivityState>::reset[abi:sn200100](WebKit::WebProcessActivityState **a1, WebKit::WebProcessActivityState *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::WebProcessActivityState::~WebProcessActivityState(result, a2);

    return WTF::fastFree(v4, v5);
  }

  return result;
}

WebKit::MediaKeySystemPermissionRequestManagerProxy *std::unique_ptr<WebKit::MediaKeySystemPermissionRequestManagerProxy>::reset[abi:sn200100](WebKit::MediaKeySystemPermissionRequestManagerProxy **a1, WebKit::MediaKeySystemPermissionRequestManagerProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::MediaKeySystemPermissionRequestManagerProxy::~MediaKeySystemPermissionRequestManagerProxy(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void WebKit::WebInspectorUIProxy::~WebInspectorUIProxy(WebKit::WebInspectorUIProxy *this, void *a2)
{
  *this = &unk_1F111EBB0;
  *(this + 2) = &unk_1F111EC00;
  *(this + 4) = &unk_1F111EC48;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, a2);
}

{
  WebKit::WebInspectorUIProxy::~WebInspectorUIProxy(this, a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::WebProcessProxy::~WebProcessProxy(WebKit::WebProcessProxy *this)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0 && WTF::linkedOnOrAfterSDKWithBehavior())
  {
    __break(0xC471u);
    goto LABEL_207;
  }

  v3 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 10);
    if (v4)
    {
      LODWORD(v4) = *(v4 + 108);
    }

    *v110 = 134218240;
    *&v110[4] = this;
    LOWORD(v111[0]) = 1024;
    *(v111 + 2) = v4;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::destructor:", v110, 0x12u);
  }

  {
    WebKit::liveProcessesLRU(void)::processes = 0u;
    *algn_1ED643678 = 0u;
  }

  v5 = WTF::WeakListHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebProcessProxy>(this);
  v6 = *(this + 131);
  if (v6)
  {
    v7 = *(v6 - 4);
    v8 = (v6 + 16 * v7);
    if (*(v6 - 12))
    {
      if (v7)
      {
        v9 = 16 * v7;
        v10 = *(this + 131);
        while ((*v10 + 1) <= 1)
        {
          v10 += 2;
          v9 -= 16;
          if (!v9)
          {
            v10 = v8;
            goto LABEL_20;
          }
        }
      }

      else
      {
        v10 = *(this + 131);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v10 = v8;
  v8 = (v6 + 16 * v7);
  if (!v6)
  {
    v11 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v11 = (v6 + 16 * *(v6 - 4));
LABEL_21:
  while (v10 != v11)
  {
    v12 = *v10;
    v10 += 2;
    v5 = IPC::MessageReceiverMap::removeMessageReceiver(this + 96, 0x91u, v12);
    while (v10 != v8 && (*v10 + 1) <= 1)
    {
      v10 += 2;
    }
  }

  if (*(this + 132))
  {
    v5 = IPC::MessageReceiverMap::removeMessageReceiver(this + 12, 144);
  }

  v13 = *(this + 143);
  *(this + 143) = 0;
  if (v13)
  {
    (*(*v13 + 16))(v13, 0);
    v5 = (*(*v13 + 8))(v13);
  }

  {
    if (WebKit::WebProcessProxy::allProcessMap(void)::map)
    {
      v14 = *(this + 15);
      if (v14 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19D5FAD0CLL);
      }

      if (!v14)
      {
        __break(0xC471u);
        JUMPOUT(0x19D5FAD2CLL);
      }

      v15 = *(WebKit::WebProcessProxy::allProcessMap(void)::map - 8);
      v16 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
      v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
      v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
      v19 = v15 & ((v18 >> 31) ^ v18);
      v20 = *(WebKit::WebProcessProxy::allProcessMap(void)::map + 16 * v19);
      if (v20 != v14)
      {
        v21 = 1;
        while (v20)
        {
          v19 = (v19 + v21) & v15;
          v20 = *(WebKit::WebProcessProxy::allProcessMap(void)::map + 16 * v19);
          ++v21;
          if (v20 == v14)
          {
            goto LABEL_41;
          }
        }

        v19 = *(WebKit::WebProcessProxy::allProcessMap(void)::map - 4);
      }

LABEL_41:
      if (v19 != *(WebKit::WebProcessProxy::allProcessMap(void)::map - 4))
      {
        v22 = (WebKit::WebProcessProxy::allProcessMap(void)::map + 16 * v19);
        v23 = v22[1];
        *v22 = -1;
        v22[1] = 0;
        if (v23)
        {
          v24 = (v23 + 48);
          if (!atomic_load(v24))
          {
            __break(0xC471u);
LABEL_207:
            JUMPOUT(0x19D5FACBCLL);
          }

          atomic_fetch_add(v24, 0xFFFFFFFF);
        }

        v26 = WebKit::WebProcessProxy::allProcessMap(void)::map;
        v27 = vadd_s32(*(WebKit::WebProcessProxy::allProcessMap(void)::map - 16), 0xFFFFFFFF00000001);
        *(WebKit::WebProcessProxy::allProcessMap(void)::map - 16) = v27;
        v28 = *(v26 - 4);
        if (6 * v27.i32[1] < v28 && v28 >= 9)
        {
          v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v28 >> 1, 0);
        }
      }
    }
  }

  else
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  v30 = WebKit::WebPasteboardProxy::singleton(v5);
  WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(v30 + 2, this);
  v31 = *(this + 96);
  *(this + 96) = 0;
  *v110 = v31;
  v32 = *(this + 194);
  v33 = *(this + 195);
  *(this + 97) = 0;
  *&v110[8] = v32;
  v111[0] = v33;
  if (v33)
  {
    v34 = 8 * v33;
    do
    {
      v35 = *v31;
      *v31++ = 0;
      (*(*v35 + 16))(v35, 0);
      (*(*v35 + 8))(v35);
      v34 -= 8;
    }

    while (v34);
  }

  *(this + 174) = (*(this + 174) & (*(this + 174) >> 31)) - 1;
  WebKit::WebProcessProxy::platformDestroy(this);
  WTF::Vector<WTF::CompletionHandler<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v110, v36);
  v38 = *(this + 154);
  if (v38)
  {
    v39 = *(v38 - 4);
    if (v39)
    {
      v40 = (v38 + 8);
      do
      {
        if (*(v40 - 1) != -1)
        {
          v41 = *v40;
          *v40 = 0;
          if (v41)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v41 + 8), v37);
          }
        }

        v40 += 2;
        --v39;
      }

      while (v39);
    }

    WTF::fastFree((v38 - 16), v37);
  }

  v42 = *(this + 153);
  *(this + 153) = 0;
  if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v42 + 2);
    (*(*v42 + 8))(v42);
  }

  IPC::ScopedActiveMessageReceiveQueue<WebKit::LogStream,WTF::RefPtr<WebKit::LogStream,WTF::RawPtrTraits<WebKit::LogStream>,WTF::DefaultRefDerefTraits<WebKit::LogStream>>>::~ScopedActiveMessageReceiveQueue(this + 151);
  WTF::MachSendRight::~MachSendRight((this + 1200));
  v44 = *(this + 143);
  *(this + 143) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(this + 136);
  *(this + 136) = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v43);
  }

  v46 = *(this + 134);
  *(this + 134) = 0;
  if (v46)
  {
    WebKit::WebPermissionControllerProxy::~WebPermissionControllerProxy(v46);
    bmalloc::api::tzoneFree(v47, v48);
  }

  std::unique_ptr<WebKit::WebLockRegistryProxy>::reset[abi:sn200100](this + 133, 0);
  std::unique_ptr<WebKit::SpeechRecognitionRemoteRealtimeMediaSourceManager>::reset[abi:sn200100](this + 132, 0);
  v50 = *(this + 131);
  if (v50)
  {
    v51 = *(v50 - 4);
    if (v51)
    {
      v52 = (v50 + 8);
      do
      {
        if (*(v52 - 1) != -1)
        {
          v53 = *v52;
          *v52 = 0;
          if (v53)
          {
            if (v53[6] == 1)
            {
              (*(*v53 + 24))(v53);
            }

            else
            {
              --v53[6];
            }
          }
        }

        v52 += 2;
        --v51;
      }

      while (v51);
    }

    WTF::fastFree((v50 - 16), v49);
  }

  v54 = *(this + 129);
  *v54 = 0;
  if ((*(v54 + 16) & 1) == 0 && !*(v54 + 8))
  {
    MEMORY[0x19EB14CF0](v54, 0x1020C40545B2139);
  }

  v55 = *(this + 128);
  *(this + 128) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  if (*(this + 1016) == 1)
  {
    v56 = *(this + 126);
    *(this + 126) = 0;
    if (v56)
    {
      v57 = *v56;
      v58 = *(v56 + 8) - 1;
      *(v56 + 8) = v58;
      if (v57)
      {
        v59 = *v57;
        if (!*v57)
        {
          goto LABEL_94;
        }

        v60 = *(v56 + 16);
        *(v56 + 16) = 1;
        (*(*v59 + 16))(v59, 0);
        *(v56 + 16) = v60;
        if (*v56)
        {
          goto LABEL_94;
        }

        v58 = *(v56 + 8);
      }

      if (!v58)
      {
        MEMORY[0x19EB14CF0](v56, 0x1020C40545B2139);
      }
    }
  }

LABEL_94:
  if (*(this + 1000) != 1)
  {
    goto LABEL_104;
  }

  v61 = *(this + 124);
  *(this + 124) = 0;
  if (v61)
  {
    v62 = *v61;
    v63 = *(v61 + 8) - 1;
    *(v61 + 8) = v63;
    if (!v62)
    {
      goto LABEL_100;
    }

    v64 = *v62;
    if (*v62)
    {
      v65 = *(v61 + 16);
      *(v61 + 16) = 1;
      (*(*v64 + 16))(v64, 0);
      *(v61 + 16) = v65;
      if (!*v61)
      {
        v63 = *(v61 + 8);
LABEL_100:
        if (!v63)
        {
          MEMORY[0x19EB14CF0](v61, 0x1020C40545B2139);
        }
      }
    }
  }

  v66 = *(this + 123);
  *(this + 123) = 0;
  if (v66)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v66 + 8), v49);
  }

LABEL_104:
  if (*(this + 968) == 1)
  {
    v67 = *(this + 119);
    if (v67)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v67, v49);
    }

    v68 = *(this + 118);
    *(this + 118) = 0;
    if (v68)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v68 + 8), v49);
    }

    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 928, v49);
  }

  if (*(this + 896) == 1)
  {
    v69 = *(this + 110);
    if (v69)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v69, v49);
    }

    v70 = *(this + 109);
    *(this + 109) = 0;
    if (v70)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v70 + 8), v49);
    }

    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 856, v49);
  }

  v71 = *(this + 103);
  *(this + 103) = 0;
  if (v71 && atomic_fetch_add(v71 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v71 + 2);
    (*(*v71 + 8))(v71);
  }

  v72 = *(this + 100);
  *(this + 100) = 0;
  if (v72)
  {
    CFRelease(*(v72 + 8));
  }

  v73 = *(this + 99);
  *v73 = 0;
  if ((*(v73 + 16) & 1) == 0 && !*(v73 + 8))
  {
    MEMORY[0x19EB14CF0](v73, 0x1020C40545B2139);
  }

  v74 = *(this + 98);
  *(this + 98) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(BOOL)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 768, v49);
  if (*(this + 752) == 1)
  {
    v76 = *(this + 93);
    *(this + 93) = 0;
    if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v76, v75);
    }

    v77 = *(this + 92);
    *(this + 92) = 0;
    if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v77, v75);
    }
  }

  v78 = *(this + 91);
  if (v78)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v78, v75);
  }

  v79 = *(this + 89);
  *(this + 89) = 0;
  if (v79)
  {
    v80 = *v79;
    v81 = *(v79 + 8) - 1;
    *(v79 + 8) = v81;
    if (v80)
    {
      v82 = *v80;
      if (!*v80)
      {
        goto LABEL_140;
      }

      v83 = *(v79 + 16);
      *(v79 + 16) = 1;
      (*(*v82 + 16))(v82, 0);
      *(v79 + 16) = v83;
      if (*v79)
      {
        goto LABEL_140;
      }

      v81 = *(v79 + 8);
    }

    if (!v81)
    {
      MEMORY[0x19EB14CF0](v79, 0x1020C40545B2139);
    }
  }

LABEL_140:
  v84 = *(this + 88);
  *(this + 88) = 0;
  if (!v84)
  {
    goto LABEL_147;
  }

  v85 = *v84;
  v86 = *(v84 + 8) - 1;
  *(v84 + 8) = v86;
  if (v85)
  {
    v87 = *v85;
    if (!*v85)
    {
      goto LABEL_147;
    }

    v88 = *(v84 + 16);
    *(v84 + 16) = 1;
    (*(*v87 + 16))(v87, 0);
    *(v84 + 16) = v88;
    if (*v84)
    {
      goto LABEL_147;
    }

    v86 = *(v84 + 8);
  }

  if (!v86)
  {
    MEMORY[0x19EB14CF0](v84, 0x1020C40545B2139);
  }

LABEL_147:
  v89 = *(this + 85);
  if (v89)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v89, v75);
  }

  v90 = *(this + 83);
  if (v90)
  {
    v91 = *(v90 - 4);
    if (v91)
    {
      v92 = *(this + 83);
      do
      {
        v93 = *v92;
        if (*v92 != -1)
        {
          v94 = *(v92 + 8);
          if (v94)
          {
            WTF::fastFree((v94 - 16), v75);
            v93 = *v92;
          }

          *v92 = 0;
          if (v93 && atomic_fetch_add(v93, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v93);
            WTF::fastFree(v93, v75);
          }
        }

        v92 += 16;
        --v91;
      }

      while (v91);
    }

    WTF::fastFree((v90 - 16), v75);
  }

  v95 = *(this + 82);
  if (v95)
  {
    v96 = *(v95 - 4);
    if (v96)
    {
      v97 = (v95 + 8);
      do
      {
        if (*(v97 - 1) != -1 && *v97)
        {
          WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::deallocateTable(*v97, v75);
        }

        v97 += 2;
        --v96;
      }

      while (v96);
    }

    WTF::fastFree((v95 - 16), v75);
  }

  v98 = *(this + 81);
  if (v98)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::RefPtr<API::UserInitiatedAction,WTF::RawPtrTraits<API::UserInitiatedAction>,WTF::DefaultRefDerefTraits<API::UserInitiatedAction>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v98, v75);
  }

  v99 = *(this + 79);
  if (v99)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v99, v75);
  }

  v100 = *(this + 77);
  if (v100)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v100, v75);
  }

  v101 = *(this + 75);
  if (v101)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v101, v75);
  }

  v102 = *(this + 74);
  if (v102)
  {
    v103 = *(v102 - 4);
    if (v103)
    {
      v104 = (v102 + 8);
      do
      {
        if (*(v104 - 1) != -1)
        {
          v105 = *v104;
          *v104 = 0;
          if (v105)
          {
            if (atomic_fetch_add(v105, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v105);
              WTF::fastFree(v105, v75);
            }
          }
        }

        v104 += 2;
        --v103;
      }

      while (v103);
    }

    WTF::fastFree((v102 - 16), v75);
  }

  v106 = *(this + 73);
  if (v106)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v106, v75);
  }

  v107 = *(this + 72);
  if (v107)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v107, v75);
  }

  v108 = *(this + 70);
  *(this + 70) = 0;
  if (v108)
  {
    CFRelease(*(v108 + 8));
  }

  v109 = *(this + 69);
  *(this + 69) = 0;
  if (v109 && atomic_fetch_add(v109, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v109);
    WTF::fastFree(v109, v75);
  }

  WebKit::BackgroundProcessResponsivenessTimer::~BackgroundProcessResponsivenessTimer((this + 416));
  WebKit::AuxiliaryProcessProxy::~AuxiliaryProcessProxy(this);
}

WTF **WTF::WeakListHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebProcessProxy>(WTF **result)
{
  v1 = result;
  if (++dword_1ED643680 > *algn_1ED643684)
  {
    result = WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(&WebKit::liveProcessesLRU(void)::processes);
  }

  v2 = v1[1];
  if (v2 && *(v2 + 1))
  {
    v5 = v1[1];
    result = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(&WebKit::liveProcessesLRU(void)::processes, &v5);
    v3 = WebKit::liveProcessesLRU(void)::processes;
    if (WebKit::liveProcessesLRU(void)::processes)
    {
      v3 = (WebKit::liveProcessesLRU(void)::processes + 8 * *(WebKit::liveProcessesLRU(void)::processes - 4));
    }

    if (v3 != result)
    {
      v4 = *result;
      if (*result)
      {
        v5 = *result;
        WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::remove<(WTF::ShouldValidateKey)1>(&WebKit::liveProcessesLRU(void)::processes, &v5);
        return WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::unlinkAndDelete(&WebKit::liveProcessesLRU(void)::processes, v4);
      }
    }
  }

  return result;
}

void WebKit::NetworkProcess::didReceiveMessage(atomic_uint *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  atomic_fetch_add(this + 36, 1u);
  v6 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x23A:
      IPC::handleMessageAsync<Messages::NetworkProcess::AddAllowedFirstPartyForCookies,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain &&,WebKit::LoadedWebArchive,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x23C:
      IPC::handleMessage<Messages::NetworkProcess::AddWebsiteDataStore,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebKit::WebsiteDataStoreParameters &&)>(a3, this);
      goto LABEL_3;
    case 0x23F:
      IPC::handleMessage<Messages::NetworkProcess::AllowTLSCertificateChainForLocalPCMTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::CertificateInfo const&)>(a3, this);
      goto LABEL_3;
    case 0x241:
      WebKit::NetworkProcess::applicationDidEnterBackground(this);
      goto LABEL_3;
    case 0x242:
      WebKit::NetworkProcess::applicationWillEnterForeground(this);
      goto LABEL_3;
    case 0x243:
      IPC::handleMessageAsync<Messages::NetworkProcess::CancelDataTask,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x244:
      IPC::handleMessageAsync<Messages::NetworkProcess::CancelDownload,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x245:
      IPC::handleMessageAsync<Messages::NetworkProcess::ClearAppBoundSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x248:
      IPC::handleMessageAsync<Messages::NetworkProcess::ClearPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x249:
      IPC::handleMessageAsync<Messages::NetworkProcess::ClearPrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x24C:
      IPC::handleMessageAsync<Messages::NetworkProcess::ClearUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x24E:
      IPC::handleMessage<Messages::NetworkProcess::CloneSessionStorageForWebPage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      goto LABEL_3;
    case 0x24F:
      IPC::handleMessageAsync<Messages::NetworkProcess::CloseITPDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x250:
      IPC::handleMessageAsync<Messages::NetworkProcess::ClosePCMDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x252:
      IPC::handleMessageAsync<Messages::NetworkProcess::CreateNetworkConnectionToWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebKit::NetworkProcessConnectionParameters &&,WTF::CompletionHandler<void ()(std::optional<IPC::ConnectionHandle> &&,WebCore::HTTPCookieAcceptPolicy)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x253:
      IPC::handleMessageAsync<Messages::NetworkProcess::DataTaskWithRequest,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,PAL::SessionID,WebCore::ResourceRequest &&,std::optional<WebCore::SecurityOriginData> const&,IPC::FormDataReference &&,WTF::CompletionHandler<void ()(std::__1<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x254:
      IPC::handleMessageAsync<Messages::NetworkProcess::DeleteCookiesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x255:
      IPC::handleMessageAsync<Messages::NetworkProcess::DeleteWebsiteData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::WallTime,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x256:
      IPC::handleMessageAsync<Messages::NetworkProcess::DeleteWebsiteDataForOrigins,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x257:
      IPC::handleMessageAsync<Messages::NetworkProcess::DestroySession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x258:
      IPC::handleMessage<Messages::NetworkProcess::DidCommitCrossSiteLoadWithDataTransfer,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::OptionSet<WebCore::CrossSiteNavigationDataTransferFlag>,WebCore::RegistrableDomain &&::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebCore::CrossSiteNavigationDataTransferFlag><WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::DidFilterKnownLinkDecoration)>(a3, this);
      goto LABEL_3;
    case 0x259:
      IPC::handleMessage<Messages::NetworkProcess::DidIncreaseQuota,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)>(a3, this);
      goto LABEL_3;
    case 0x25A:
      WebKit::NetworkProcess::disableServiceWorkerEntitlement(this);
      goto LABEL_3;
    case 0x25B:
      IPC::handleMessageAsync<Messages::NetworkProcess::DomainIDExistsInDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,int,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x25C:
      IPC::handleMessage<Messages::NetworkProcess::DownloadRequest,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest const&,std::optional<WebCore::SecurityOriginData> const&,std::optional<WebKit::NavigatingToAppBoundDomain>,WTF::String const&)>(a3, this);
      goto LABEL_3;
    case 0x25D:
      IPC::handleMessageAsync<Messages::NetworkProcess::DumpPrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::String)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x25E:
      IPC::handleMessageAsync<Messages::NetworkProcess::DumpResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::String)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x25F:
      IPC::handleMessageAsync<Messages::NetworkProcess::EnsureSessionWithDataStoreIdentifierRemoved,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::UUID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x262:
      IPC::handleMessageAsync<Messages::NetworkProcess::FetchWebsiteData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x263:
      IPC::handleMessageAsync<Messages::NetworkProcess::FlushCookies,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3);
      goto LABEL_3;
    case 0x265:
      IPC::handleMessageAsync<Messages::NetworkProcess::GetAllStorageAccessEntries,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x26A:
      IPC::handleMessageAsync<Messages::NetworkProcess::GetResourceLoadStatisticsDataSummary,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x26B:
      IPC::handleMessageAsync<Messages::NetworkProcess::GrantStorageAccessForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::RegistrableDomain&&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x26C:
      IPC::handleMessageAsync<Messages::NetworkProcess::HadUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x26D:
      IPC::handleMessageAsync<Messages::NetworkProcess::HasAppBoundSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(BOOL)> &&)const>(a2, a3, this);
      goto LABEL_3;
    case 0x26E:
      IPC::handleMessageAsync<Messages::NetworkProcess::HasIsolatedSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)const>(a2, a3, this);
      goto LABEL_3;
    case 0x26F:
      IPC::handleMessageAsync<Messages::NetworkProcess::HasLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x271:
      IPC::handleMessageAsync<Messages::NetworkProcess::InitializeNetworkProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebKit::NetworkProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x272:
      IPC::handleMessageAsync<Messages::NetworkProcess::InsertExpiredStatisticForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,unsigned long long,BOOL,BOOL,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x273:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsGrandfathered,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x274:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x275:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsRegisteredAsRedirectingTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x276:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsRegisteredAsSubFrameUnder,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x277:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsRegisteredAsSubresourceUnder,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x278:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsRelationshipOnlyInDatabaseOnce,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x279:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsResourceLoadStatisticsEphemeral,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(BOOL)> &&)const>(a2, a3, this);
      goto LABEL_3;
    case 0x27A:
      IPC::handleMessageAsync<Messages::NetworkProcess::IsVeryPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x27B:
      IPC::handleMessage<Messages::NetworkProcess::LogFrameNavigation,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,BOOL,BOOL,WTF::Seconds,BOOL)>(a3, this);
      goto LABEL_3;
    case 0x27C:
      IPC::handleMessageAsync<Messages::NetworkProcess::LogUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x27D:
      IPC::handleMessageAsync<Messages::NetworkProcess::MarkAttributedPrivateClickMeasurementsAsExpiredForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x27E:
      IPC::handleMessageAsync<Messages::NetworkProcess::MarkPrivateClickMeasurementsAsExpiredForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x27F:
      IPC::handleMessageAsync<Messages::NetworkProcess::MergeStatisticForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebCore::RegistrableDomain &,WTF::Seconds,BOOL,WTF,BOOL,BOOL,BOOL,unsigned long long,WebCore::RegistrableDomain &&::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x280:
      v10 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v10 & 0x100) != 0)
      {
        WebKit::NetworkProcess::notifyMediaStreamingActivity(this, v10 & 1);
      }

      goto LABEL_3;
    case 0x282:
      IPC::handleMessage<Messages::NetworkProcess::PreconnectTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)>(a3, this);
      goto LABEL_3;
    case 0x283:
      IPC::handleMessageAsync<Messages::NetworkProcess::PrepareToSuspend,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(BOOL,WTF::MonotonicTime,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x284:
      v9 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v9 & 0x100) != 0)
      {
        WebKit::NetworkProcess::processDidResume(this, v9 & 1);
      }

      goto LABEL_3;
    case 0x287:
      IPC::handleMessage<Messages::NetworkProcess::PublishDownloadProgress,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL const&,std::span<unsigned char const,18446744073709551615ul>,WebKit::UseDownloadPlaceholder,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
      goto LABEL_3;
    case 0x288:
      IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(a3, this);
      goto LABEL_3;
    case 0x289:
      IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsLocal,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(a3, this);
      goto LABEL_3;
    case 0x28A:
      IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsSecure,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(a3, this);
      goto LABEL_3;
    case 0x28D:
      IPC::handleMessageAsync<Messages::NetworkProcess::RenameOriginInWebsiteData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData &&,WebCore::SecurityOriginData &,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::SecurityOriginData &&::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x28E:
      IPC::handleMessageAsync<Messages::NetworkProcess::ResetCacheMaxAgeCapForPrevalentResources,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x28F:
      IPC::handleMessageAsync<Messages::NetworkProcess::ResetCrossSiteLoadsWithLinkDecorationForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x290:
      IPC::handleMessageAsync<Messages::NetworkProcess::ResetParametersToDefaultValues,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x291:
      IPC::handleMessageAsync<Messages::NetworkProcess::ResetQuota,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x293:
      IPC::handleMessageAsync<Messages::NetworkProcess::ResetStoragePersistedState,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x297:
      IPC::handleMessage<Messages::NetworkProcess::ResumeDownload,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::DownloadIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,WTF::String const&,WebKit::SandboxExtensionHandle &&,WebKit::CallDownloadDidStart,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
      goto LABEL_3;
    case 0x299:
      IPC::handleMessageAsync<Messages::NetworkProcess::ScheduleClearInMemoryAndPersistent,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,std::optional<WTF::WallTime>,WebKit::ShouldGrandfatherStatistics,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x29A:
      IPC::handleMessageAsync<Messages::NetworkProcess::ScheduleCookieBlockingUpdate,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x29B:
      IPC::handleMessageAsync<Messages::NetworkProcess::ScheduleStatisticsAndDataRecordsProcessing,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x29C:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetAppBoundDomainsForResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x29D:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetBackupExclusionPeriodForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x29E:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetCacheMaxAgeCapForPrevalentResources,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x29F:
      v8 = IPC::Decoder::decode<std::tuple<WebKit::CacheModel>>(a3);
      if ((v8 & 0x100) != 0)
      {
        WebKit::NetworkProcess::setCacheModel(this, v8);
      }

      goto LABEL_3;
    case 0x2A0:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2A2:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2A3:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2A4:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetGrandfathered,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2A5:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetGrandfatheringTime,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2A6:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v22, a3);
      if (v24 == 1)
      {
        WebKit::NetworkProcess::setInspectionForServiceWorkersAllowed(this, v22.m_identifier, v23[0]);
      }

      goto LABEL_3;
    case 0x2A7:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetIsRunningResourceLoadStatisticsTest,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2A8:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetLastSeen,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::Seconds,WebCore::RegistrableDomain &&::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2A9:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetManagedDomainsForResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2AA:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetMaxStatisticsEntries,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,unsigned long long,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2AB:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetMinimumTimeBetweenDataRecordsRemoval,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2AC:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v22, a3);
      if (v24 == 1)
      {
        WebKit::NetworkProcess::setOptInCookiePartitioningEnabled(this, v22.m_identifier, v23[0]);
      }

      goto LABEL_3;
    case 0x2AD:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2AE:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPCMFraudPreventionValuesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WTF::String &,WTF::String &,WTF::String &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B0:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B1:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrevalentResourceForDebugMode,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B2:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementAppBundleIDForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B3:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementAttributionReportURLsForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::URL &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B4:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v22, a3);
      if (v24 == 1)
      {
        v13.m_identifier = v22.m_identifier;
        WebKit::NetworkProcess::setPrivateClickMeasurementDebugMode(this, v13, v23[0]);
      }

      goto LABEL_3;
    case 0x2B5:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementEphemeralMeasurementForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B6:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementOverrideTimerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B7:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementTokenPublicKeyURLForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2B8:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementTokenSignatureURLForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2BA:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetPruneEntriesDownTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,unsigned long long,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2BC:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetResourceLoadStatisticsDebugMode,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2BD:
      v11 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v11 & 0x100) != 0)
      {
        WebKit::NetworkProcess::setResourceLoadStatisticsLogTestingEvent(this, v11 & 1, v12);
      }

      goto LABEL_3;
    case 0x2BE:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetResourceLoadStatisticsTimeAdvanceForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2BF:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v22, a3);
      if (v24 == 1)
      {
        WebKit::NetworkProcess::setSessionIsControlledByAutomation(this, v22.m_identifier, v23[0]);
      }

      goto LABEL_3;
    case 0x2C0:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldClassifyResourcesBeforeDataRecordsRemoval,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2C1:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldDowngradeReferrerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2C2:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SameSiteStrictEnforcementEnabled,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2C4:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v22, a3);
      if (v24 == 1)
      {
        v14.m_identifier = v22.m_identifier;
        WebKit::NetworkProcess::setShouldSendPrivateTokenIPCForTesting(this, v14, v23[0]);
      }

      goto LABEL_3;
    case 0x2C6:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetSubframeUnderTopFrameDomain,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2C7:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetSubresourceUnderTopFrameDomain,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2C8:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetSubresourceUniqueRedirectFrom,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2C9:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetSubresourceUniqueRedirectTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2CA:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2CB:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetThirdPartyCookieBlockingMode,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2CC:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetTimeToLiveUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2CD:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2CE:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2CF:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2D0:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v22, a3);
      if (v24 == 1)
      {
        WebKit::NetworkProcess::setTrackingPreventionEnabled(this, v22.m_identifier, v23[0]);
      }

      goto LABEL_3;
    case 0x2D1:
      IPC::handleMessageAsync<Messages::NetworkProcess::SetVeryPrevalentResource,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2D2:
      IPC::handleMessageAsync<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::SharedPreferencesForWebProcess &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2D3:
      IPC::handleMessageAsync<Messages::NetworkProcess::SimulatePrivateClickMeasurementSessionRestart,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2D4:
      IPC::handleMessageAsync<Messages::NetworkProcess::StatisticsDatabaseHasAllTables,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2D5:
      IPC::handleMessage<Messages::NetworkProcess::StorePrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::PrivateClickMeasurement &&)>(a3, this);
      goto LABEL_3;
    case 0x2D6:
      IPC::handleMessageAsync<Messages::NetworkProcess::StoreServiceWorkerRegistrations,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2D7:
      IPC::handleMessageAsync<Messages::NetworkProcess::SyncLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2D8:
      IPC::handleMessageAsync<Messages::NetworkProcess::TerminateIdleServiceWorkers,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2DB:
      IPC::handleMessageAsync<Messages::NetworkProcess::UpdatePrevalentDomainsToBlockCookiesFor,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      goto LABEL_3;
    case 0x2DC:
      IPC::handleMessage<Messages::NetworkProcess::UpdateStorageAccessPromptQuirks,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
      goto LABEL_3;
    case 0x2DD:
      IPC::handleMessageAsync<Messages::NetworkProcess::WebsiteDataOriginDirectoryForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ClientOrigin &&,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin &&::CompletionHandler<void ()(WebCore::ClientOrigin &&::String const&)> &&)>(a2, a3, this);
      goto LABEL_3;
    default:
      if (*(a3 + 25) > 0x285u)
      {
        if (*(a3 + 25) > 0x291u)
        {
          if (*(a3 + 25) > 0x2BAu)
          {
            if (*(a3 + 25) > 0x2D8u)
            {
              if (v6 == 730)
              {
                IPC::handleMessageAsync<Messages::NetworkProcess::UpdateBundleIdentifier,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                goto LABEL_3;
              }

              if (v6 == 729)
              {
                IPC::handleMessage<Messages::NetworkProcess::TerminateRemoteWorkerContextConnectionWhenPossible,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebKit::RemoteWorkerType,PAL::SessionID,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
                goto LABEL_3;
              }

              goto LABEL_153;
            }

            switch(v6)
            {
              case 699:
                IPC::handleMessageAsync<Messages::NetworkProcess::SetPushAndNotificationsEnabledForOrigin,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                goto LABEL_3;
              case 709:
                IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v22, a3);
                if (v24 == 1)
                {
                  WebKit::NetworkProcess::setStorageSiteValidationEnabled(this, v22.m_identifier, v23[0]);
                }

                goto LABEL_3;
              case 707:
                v15 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
                if (v16)
                {
                  WebKit::NetworkProcess::setShouldRelaxThirdPartyCookieBlockingForPage(this, v15);
                }

                goto LABEL_3;
            }
          }

          else
          {
            if (*(a3 + 25) <= 0x297u)
            {
              if (*(a3 + 25) <= 0x294u)
              {
                if (v6 == 660)
                {
                  IPC::handleMessageAsync<Messages::NetworkProcess::RestoreLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
                  goto LABEL_3;
                }

                if (v6 == 658)
                {
                  IPC::handleMessageAsync<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                  goto LABEL_3;
                }
              }

              else
              {
                if (v6 == 662)
                {
                  IPC::handleMessageAsync<Messages::NetworkProcess::ResumeBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                  goto LABEL_3;
                }

                if (v6 == 661)
                {
                  IPC::handleMessageAsync<Messages::NetworkProcess::RestoreSessionStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
                  goto LABEL_3;
                }
              }

              goto LABEL_153;
            }

            if (*(a3 + 25) > 0x2AEu)
            {
              if (v6 == 697)
              {
                IPC::handleMessage<Messages::NetworkProcess::SetProxyConfigData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
                goto LABEL_3;
              }

              if (v6 == 687)
              {
                IPC::handleMessage<Messages::NetworkProcess::SetPersistedDomains,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>(a3, this);
                goto LABEL_3;
              }
            }

            else
            {
              if (v6 == 664)
              {
                IPC::handleMessageAsync<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()> &&)const>(a2, a3, this);
                goto LABEL_3;
              }

              if (v6 == 673)
              {
                v20 = IPC::Decoder::decode<std::tuple<double>>(a3);
                if (v21)
                {
                  WebKit::NetworkProcess::setDefaultRequestTimeoutInterval(this, *&v20);
                }

                goto LABEL_3;
              }
            }
          }
        }

        else
        {
          switch(v6)
          {
            case 652:
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v22, a3);
              if (v24 == 1)
              {
                WebKit::NetworkProcess::removeWebPageNetworkParameters(this, v22.m_identifier, *v23);
              }

              goto LABEL_3;
            case 646:
              IPC::handleMessageAsync<Messages::NetworkProcess::ProcessPushMessage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)>(a2, a3, this);
              goto LABEL_3;
            case 651:
              IPC::handleMessageAsync<Messages::NetworkProcess::RemovePushSubscriptionsForOrigin,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()> &&)>(a2, a3, this);
              goto LABEL_3;
          }
        }

LABEL_153:
        if (!WebKit::NetworkProcess::dispatchMessage(this, a2, a3))
        {
          WebKit::AuxiliaryProcess::didReceiveMessage(this, a2, a3);
        }

        goto LABEL_3;
      }

      if (*(a3 + 25) > 0x24Cu)
      {
        if (*(a3 + 25) <= 0x266u)
        {
          if (*(a3 + 25) <= 0x260u)
          {
            switch(v6)
            {
              case 593:
                IPC::handleMessageAsync<Messages::NetworkProcess::CountNonDefaultSessionSets,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(unsigned long long)> &&)>(a2, a3, this);
                goto LABEL_3;
              case 589:
                IPC::handleMessageAsync<Messages::NetworkProcess::ClickBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                goto LABEL_3;
              case 608:
                IPC::handleMessageAsync<Messages::NetworkProcess::FetchLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)>(a2, a3, this);
                goto LABEL_3;
            }
          }

          else
          {
            switch(v6)
            {
              case 612:
                IPC::handleMessageAsync<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
                goto LABEL_3;
              case 614:
                IPC::handleMessageAsync<Messages::NetworkProcess::GetAppBadgeForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)>(a2, a3, this);
                goto LABEL_3;
              case 609:
                IPC::handleMessageAsync<Messages::NetworkProcess::FetchSessionStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)>(a2, a3, this);
                goto LABEL_3;
            }
          }
        }

        else if (*(a3 + 25) > 0x26Fu)
        {
          switch(v6)
          {
            case 645:
              IPC::handleMessageAsync<Messages::NetworkProcess::ProcessNotificationEvent,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
              goto LABEL_3;
            case 641:
              IPC::handleMessageAsync<Messages::NetworkProcess::PauseBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              goto LABEL_3;
            case 624:
              IPC::handleMessageAsync<Messages::NetworkProcess::HasPushSubscriptionForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
              goto LABEL_3;
          }
        }

        else
        {
          switch(v6)
          {
            case 616:
              IPC::handleMessageAsync<Messages::NetworkProcess::GetPendingPushMessage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&)>(a2, a3, this);
              goto LABEL_3;
            case 617:
              IPC::handleMessageAsync<Messages::NetworkProcess::GetPendingPushMessages,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
              goto LABEL_3;
            case 615:
              IPC::handleMessageAsync<Messages::NetworkProcess::GetBackgroundFetchState,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&)>(a2, a3, this);
              goto LABEL_3;
          }
        }

        goto LABEL_153;
      }

      if (*(a3 + 25) <= 0x245u)
      {
        if (*(a3 + 25) > 0x23Du)
        {
          if (v6 == 576)
          {
            IPC::handleMessageAsync<Messages::NetworkProcess::AppPrivacyReportTestingData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WebKit::AppPrivacyReportTestingData const&)> &&)>(a2, a3, this);
            goto LABEL_3;
          }

          if (v6 == 574)
          {
            IPC::handleMessageAsync<Messages::NetworkProcess::AllowFilesAccessFromWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            goto LABEL_3;
          }
        }

        else
        {
          switch(v6)
          {
            case 571:
              IPC::handleMessage<Messages::NetworkProcess::AddWebPageNetworkParameters,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPageNetworkParameters &&)>(a3, this);
              goto LABEL_3;
            case 573:
              IPC::handleMessageAsync<Messages::NetworkProcess::AllowFileAccessFromWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              goto LABEL_3;
            case 569:
              IPC::handleMessageAsync<Messages::NetworkProcess::AbortBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              goto LABEL_3;
          }
        }

        goto LABEL_153;
      }

      if (*(a3 + 25) <= 0x249u)
      {
        if (v6 == 583)
        {
          IPC::handleMessageAsync<Messages::NetworkProcess::ClearBundleIdentifier,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_3;
        }

        if (v6 == 582)
        {
          IPC::handleMessageAsync<Messages::NetworkProcess::ClearAppPrivacyReportTestingData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_3;
        }

        goto LABEL_153;
      }

      if (v6 == 587)
      {
        IPC::handleMessageAsync<Messages::NetworkProcess::ClearServiceWorkerEntitlementOverride,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        goto LABEL_3;
      }

      if (v6 != 586)
      {
        goto LABEL_153;
      }

      v17 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v18)
      {
        v19.m_identifier = v17;
        WebKit::NetworkProcess::clearProxyConfigData(this, v19);
      }

LABEL_3:
      if (this && atomic_fetch_add(this + 36, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 36);
        v7 = *(*this + 24);

        v7(this);
      }

      return;
  }
}