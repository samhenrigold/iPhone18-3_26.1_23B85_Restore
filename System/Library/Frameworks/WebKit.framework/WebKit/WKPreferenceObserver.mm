@interface WKPreferenceObserver
+ (id)sharedInstance;
- (WKPreferenceObserver)init;
- (WTF::StringImpl)preferenceDidChange:(void *)change key:encodedValue:;
- (id).cxx_construct;
- (uint64_t)preferenceDidChange:(WTF *)this key:(void *)key encodedValue:;
- (void)preferenceDidChange:(id)change key:(id)key encodedValue:(id)value;
- (void)preferenceDidChange:(void *)change key:encodedValue:;
@end

@implementation WKPreferenceObserver

+ (id)sharedInstance
{
  if (_MergedGlobals_11 == 1)
  {
    return qword_1ED641BB8;
  }

  result = objc_alloc_init(objc_opt_class());
  qword_1ED641BB8 = result;
  _MergedGlobals_11 = 1;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (WKPreferenceObserver)init
{
  v20.receiver = self;
  v20.super_class = WKPreferenceObserver;
  v2 = [(WKPreferenceObserver *)&v20 init];
  if (v2)
  {
    for (i = 0; i != 11; ++i)
    {
      v4 = off_1E7630938[i];
      if (v4)
      {
        v5 = v4;
      }

      v6 = [[WKUserDefaults alloc] initWithSuiteName:v4];
      v19 = v6;
      if (!v6)
      {
        MEMORY[0x19EB02040](&v17, v4);
        WTF::String::utf8();
        if (v18)
        {
          v10 = v18 + 16;
        }

        else
        {
          v10 = 0;
        }

        WTFLogAlways("Could not init user defaults instance for domain %s", v10);
        v12 = v18;
        v18 = 0;
        if (v12)
        {
          if (*v12 == 1)
          {
            WTF::fastFree(v12, v11);
          }

          else
          {
            --*v12;
          }
        }

        v13 = v17;
        v17 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v11);
        }

        goto LABEL_21;
      }

      objc_storeWeak(&v6->m_observer.m_weakReference, v2);
      [(WKUserDefaults *)v19 addObserver:v19 forKeyPath:@"testkey" options:1 context:0];
      v7 = v2[5];
      if (v7 == v2[4])
      {
        v8 = WTF::Vector<WTF::RetainPtr<WKUserDefaults>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v2 + 1, v7 + 1, &v19);
        v7 = v2[5];
        v9 = *v8;
        *(*(v2 + 1) + 8 * v7) = *v8;
        if (v9)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = v19;
        *(*(v2 + 1) + 8 * v7) = v19;
        if (v9)
        {
LABEL_19:
          v14 = v9;
          LODWORD(v7) = v2[5];
        }
      }

      v2[5] = v7 + 1;
LABEL_21:
      v15 = v19;
      v19 = 0;
      if (v15)
      {
      }

      if (v4)
      {
      }
    }
  }

  return v2;
}

- (void)preferenceDidChange:(id)change key:(id)key encodedValue:(id)value
{
  WTF::RunLoop::mainSingleton(self);
  if (change)
  {
    changeCopy = change;
  }

  if (key)
  {
    keyCopy = key;
  }

  if (value)
  {
    valueCopy = value;
  }

  v12 = WTF::fastMalloc(v8, 0x20);
  *v12 = &unk_1F10EA550;
  v12[1] = change;
  v12[2] = key;
  v12[3] = value;
  v13 = v12;
  WTF::RunLoop::dispatch();
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }
}

- (void)preferenceDidChange:(void *)change key:encodedValue:
{
  *change = &unk_1F10EA550;
  v2 = change[3];
  change[3] = 0;
  if (v2)
  {
  }

  v3 = change[2];
  change[2] = 0;
  if (v3)
  {
  }

  v4 = change[1];
  change[1] = 0;
  if (v4)
  {
  }

  return change;
}

- (uint64_t)preferenceDidChange:(WTF *)this key:(void *)key encodedValue:
{
  *this = &unk_1F10EA550;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
  }

  return WTF::fastFree(this, key);
}

- (WTF::StringImpl)preferenceDidChange:(void *)change key:encodedValue:
{
  LOBYTE(v20) = 0;
  v21 = 0;
  if (change[3])
  {
    MEMORY[0x19EB02040](&v22);
    v3 = v22;
    v22 = 0;
    if (v21 == 1)
    {
      v4 = v20;
      v20 = v3;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v2);
        }

        v5 = v22;
        v22 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v2);
        }
      }
    }

    else
    {
      v20 = v3;
      v21 = 1;
    }
  }

  MEMORY[0x19EB02040](&v19, change[1]);
  MEMORY[0x19EB02040](&v18, change[2]);
  {
    if (WebKit::singleton(void)::singleton)
    {
      v6 = *(WebKit::singleton(void)::singleton + 8);
      if (v6)
      {
        v7 = (v6 + 16);
        atomic_fetch_add((v6 + 16), 1u);
        v22 = &v19;
        v23 = &v18;
        v24 = &v20;
        WebKit::AuxiliaryProcessProxy::send<Messages::AuxiliaryProcess::PreferenceDidUpdate>(v6, &v22, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  {
    if (WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess)
    {
      v9 = *(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess + 8);
      if (v9)
      {
        v10 = (v9 + 16);
        atomic_fetch_add((v9 + 16), 1u);
        v22 = &v19;
        v23 = &v18;
        v24 = &v20;
        WebKit::AuxiliaryProcessProxy::send<Messages::AuxiliaryProcess::PreferenceDidUpdate>(v9, &v22, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10, v11);
      }
    }
  }

  else
  {
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
  }

  WebKit::WebProcessPool::allProcessPools(&v22);
  if (HIDWORD(v23))
  {
    v13 = v22;
    v14 = 8 * HIDWORD(v23);
    do
    {
      WebKit::WebProcessPool::notifyPreferencesChanged(*v13++, &v19, &v18, &v20);
      v14 -= 8;
    }

    while (v14);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v12);
  v16 = v18;
  v18 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  result = v19;
  v19 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v15);
  }

  if (v21 == 1)
  {
    result = v20;
    v20 = 0;
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

@end