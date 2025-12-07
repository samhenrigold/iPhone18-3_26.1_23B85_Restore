void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore32isRelationshipOnlyInDatabaseOnceEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105508;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore32isRelationshipOnlyInDatabaseOnceEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105508;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore32isRelationshipOnlyInDatabaseOnceEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105530;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105530;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = v3 + 26;
    ++v3[26];
    WebKit::ResourceLoadStatisticsStore::setPrevalentResource(v3, (a1 + 8));
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v7);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setVeryPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105558;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setVeryPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105558;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setVeryPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = v3 + 26;
    ++v3[26];
    WebKit::ResourceLoadStatisticsStore::setVeryPrevalentResource(v3, (a1 + 8));
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v7);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMostRecentWebPushInteractionTime(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105580;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMostRecentWebPushInteractionTime(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105580;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMostRecentWebPushInteractionTime(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t *a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(v3 + 656);
    WTF::WallTime::now(a1);
    v6 = v5;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v15, v3);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 2, "setMostRecentWebPushInteractionTime");
    if (v7)
    {
      WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 488), "setMostRecentWebPushInteractionTime", &v14);
      if (!v14 || WebCore::SQLiteStatement::bindDouble(v14, v4 + v6) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v14) != 101)
      {
        v8 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v11 = *(v3 + 664);
          Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
          *buf = 134218755;
          *&buf[4] = v3;
          v17 = 2048;
          v18 = v11;
          v19 = 1024;
          v20 = Error;
          v21 = 2081;
          v22 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setMostRecentWebPushInteractionTime: failed to step statement", buf, 0x26u);
        }
      }

      MEMORY[0x19EB0CD50](&v14);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v15);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v9 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 1, buf);
  WTF::RunLoop::mainSingleton(v9);
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11055A8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11055A8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::dumpResourceLoadStatistics(WTF::CompletionHandler<void ()(WTF::String &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v11 = v2;
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (*(v3 + 104) + 1);
    *(v3 + 104) = v4;
    v5 = WTF::fastMalloc(v4, 0x10);
    *v5 = &unk_1F11055D0;
    v5[1] = v2;
    v10 = v5;
    WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(v3, &v10);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  else
  {
    v7 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v10 = v7;
    _ZZZN6WebKit30WebResourceLoadStatisticsStore26dumpResourceLoadStatisticsEON3WTF17CompletionHandlerIFvONS1_6StringEEEEEN3__0clIS0_EEDaRT_ENUlRKS3_E_clESE_(&v11, &v10);
    v9 = v10;
    v10 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

WTF::StringImpl *_ZZZN6WebKit30WebResourceLoadStatisticsStore26dumpResourceLoadStatisticsEON3WTF17CompletionHandlerIFvONS1_6StringEEEEEN3__0clIS0_EEDaRT_ENUlRKS3_E_clESE_(WTF::StringImpl **a1, uint64_t a2)
{
  WTF::String::isolatedCopy();
  v3 = *a1;
  *a1 = 0;
  v6[1] = v3;
  v4 = WTF::fastMalloc(v3, 0x18);
  *v4 = &unk_1F11055F8;
  *(v4 + 1) = *v6;
  v7 = v4;
  WTF::RunLoop::mainSingleton(v4);
  WTF::RunLoop::dispatch();
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return 0;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore26dumpResourceLoadStatisticsEONS_17CompletionHandlerIFvONS_6StringEEEEEN3__0clIS3_EEDaRT_EUlRKS5_E_vJSG_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11055D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore26dumpResourceLoadStatisticsEONS_17CompletionHandlerIFvONS_6StringEEEEEN3__0clIS3_EEDaRT_EUlRKS5_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11055D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore26dumpResourceLoadStatisticsEONS_17CompletionHandlerIFvONS_6StringEEEEEN3__0clIS3_EEDaRT_ENUlRKS5_E_clESG_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11055F8;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore26dumpResourceLoadStatisticsEONS_17CompletionHandlerIFvONS_6StringEEEEEN3__0clIS3_EEDaRT_ENUlRKS5_E_clESG_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11055F8;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore26dumpResourceLoadStatisticsEONS_17CompletionHandlerIFvONS_6StringEEEEEN3__0clIS3_EEDaRT_ENUlRKS5_E_clESG_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105620;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105620;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = v4 + 26;
    ++v4[26];
    isPrevalentResource = WebKit::ResourceLoadStatisticsStore::isPrevalentResource(v4, (a1 + 8));
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  else
  {
    isPrevalentResource = 0;
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  v8 = WTF::fastMalloc(a3, 0x18);
  *v8 = &unk_1F1105648;
  *(v8 + 8) = isPrevalentResource;
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

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore19isPrevalentResourceEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105648;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore19isPrevalentResourceEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105648;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore19isPrevalentResourceEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isVeryPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105670;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isVeryPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105670;
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

WebCore::SQLiteStatement *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isVeryPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (v4 + 104);
    ++*(v4 + 104);
    if ((*(v4 + 233) & 1) != 0 || (*(v4 + 723) & 1) != 0 || (MEMORY[0x19EB01EF0](*(a1 + 8), "localhost", 9) & 1) == 0)
    {
      WebKit::DatabaseUtilities::scopedStatement(v4, (v4 + 440), "isVeryPrevalentResource", &v9);
      LOBYTE(v4) = WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(v4, &v9, *(a1 + 8)) != 0;
      MEMORY[0x19EB0CD50](&v9);
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  v7 = WTF::fastMalloc(a3, 0x18);
  *v7 = &unk_1F1105698;
  *(v7 + 8) = v4;
  v7[2] = v6;
  v9 = v7;
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

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore23isVeryPrevalentResourceEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105698;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore23isVeryPrevalentResourceEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105698;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore23isVeryPrevalentResourceEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubresourceUnder(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11056C0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubresourceUnder(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11056C0;
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

WebCore::SQLiteStatement *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubresourceUnder(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (v4 + 104);
    ++*(v4 + 104);
    WebKit::DatabaseUtilities::scopedStatement(v4, (v4 + 376), "isRegisteredAsSubresourceUnder", &v10);
    v6 = WebKit::ResourceLoadStatisticsStore::domainID(v4, (a1 + 1));
    LOBYTE(v4) = WebKit::ResourceLoadStatisticsStore::relationshipExists(v4, &v10, v6, a1 + 2);
    MEMORY[0x19EB0CD50](&v10);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  v7 = a1[3];
  a1[3] = 0;
  v8 = WTF::fastMalloc(a3, 0x18);
  *v8 = &unk_1F11056E8;
  *(v8 + 8) = v4;
  v8[2] = v7;
  v10 = v8;
  WTF::RunLoop::mainSingleton(v8);
  WTF::RunLoop::dispatch();
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30isRegisteredAsSubresourceUnderEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F11056E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30isRegisteredAsSubresourceUnderEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F11056E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore30isRegisteredAsSubresourceUnderEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubFrameUnder(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105710;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubFrameUnder(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105710;
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

WebCore::SQLiteStatement *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubFrameUnder(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (v4 + 104);
    ++*(v4 + 104);
    WebKit::DatabaseUtilities::scopedStatement(v4, (v4 + 368), "isRegisteredAsSubFrameUnder", &v10);
    v6 = WebKit::ResourceLoadStatisticsStore::domainID(v4, (a1 + 1));
    LOBYTE(v4) = WebKit::ResourceLoadStatisticsStore::relationshipExists(v4, &v10, v6, a1 + 2);
    MEMORY[0x19EB0CD50](&v10);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  v7 = a1[3];
  a1[3] = 0;
  v8 = WTF::fastMalloc(a3, 0x18);
  *v8 = &unk_1F1105738;
  *(v8 + 8) = v4;
  v8[2] = v7;
  v10 = v8;
  WTF::RunLoop::mainSingleton(v8);
  WTF::RunLoop::dispatch();
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27isRegisteredAsSubFrameUnderEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105738;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27isRegisteredAsSubFrameUnderEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105738;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27isRegisteredAsSubFrameUnderEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsRedirectingTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105760;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsRedirectingTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105760;
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

WebCore::SQLiteStatement *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isRegisteredAsRedirectingTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (v4 + 104);
    ++*(v4 + 104);
    WebKit::DatabaseUtilities::scopedStatement(v4, (v4 + 384), "isRegisteredAsRedirectingTo", &v10);
    v6 = WebKit::ResourceLoadStatisticsStore::domainID(v4, (a1 + 1));
    LOBYTE(v4) = WebKit::ResourceLoadStatisticsStore::relationshipExists(v4, &v10, v6, a1 + 2);
    MEMORY[0x19EB0CD50](&v10);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  v7 = a1[3];
  a1[3] = 0;
  v8 = WTF::fastMalloc(a3, 0x18);
  *v8 = &unk_1F1105788;
  *(v8 + 8) = v4;
  v8[2] = v7;
  v10 = v8;
  WTF::RunLoop::mainSingleton(v8);
  WTF::RunLoop::dispatch();
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27isRegisteredAsRedirectingToEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105788;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27isRegisteredAsRedirectingToEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105788;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore27isRegisteredAsRedirectingToEON7WebCore17RegistrableDomainES6_ONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11057B0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11057B0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::clearPrevalentResource(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v12, v3);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, (a1 + 8), "clearPrevalentResource");
    if (v4)
    {
      WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 448), "clearPrevalentResource", &v11);
      if (!v11 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v11) != 101)
      {
        v5 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v8 = *(v3 + 664);
          Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
          *buf = 134218755;
          *&buf[4] = v3;
          v14 = 2048;
          v15 = v8;
          v16 = 1024;
          v17 = Error;
          v18 = 2081;
          v19 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::clearPrevalentResource: failed to step statement", buf, 0x26u);
        }
      }

      MEMORY[0x19EB0CD50](&v11);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v12);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v6 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), buf);
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setGrandfathered(WebCore::RegistrableDomain &&,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11057D8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setGrandfathered(WebCore::RegistrableDomain &&,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11057D8;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setGrandfathered(WebCore::RegistrableDomain &&,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    WebKit::ResourceLoadStatisticsStore::setGrandfathered(v3, (a1 + 8), *(a1 + 16));
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 24), &v7);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isGrandfathered(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105800;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isGrandfathered(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105800;
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

WebCore::SQLiteStatement *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::isGrandfathered(WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (v4 + 104);
    ++*(v4 + 104);
    WebKit::DatabaseUtilities::scopedStatement(v4, (v4 + 496), "isGrandfathered", &v9);
    LOBYTE(v4) = WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(v4, &v9, *(a1 + 16)) != 0;
    MEMORY[0x19EB0CD50](&v9);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v5);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  v7 = WTF::fastMalloc(a3, 0x18);
  *v7 = &unk_1F1105828;
  *(v7 + 8) = v4;
  v7[2] = v6;
  v9 = v7;
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

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore15isGrandfatheredEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105828;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore15isGrandfatheredEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105828;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore15isGrandfatheredEON7WebCore17RegistrableDomainEONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubframeUnderTopFrameDomain(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105850;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubframeUnderTopFrameDomain(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105850;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubframeUnderTopFrameDomain(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t *a1, unint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_14;
  }

  ++*(v3 + 26);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v14, v3);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 2, "setSubframeUnderTopFrameDomain");
  if (v5)
  {
    v6 = v4;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v15;
    v13 = v15;
    v8 = a1[3];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v16[0] = v8;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v16, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v13, &v15, v6);
    if (v15)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v9);
    }

    v10 = v16[0];
    v16[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
      if (v7)
      {
LABEL_10:
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v9);
        }
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
LABEL_14:
  v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 1, v14);
  WTF::RunLoop::mainSingleton(v11);
  WTF::RunLoop::dispatch();
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUnderTopFrameDomain(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105878;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUnderTopFrameDomain(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105878;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUnderTopFrameDomain(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t *a1, unint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_14;
  }

  ++*(v3 + 26);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v14, v3);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 2, "setSubresourceUnderTopFrameDomain");
  if (v5)
  {
    v6 = v4;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v15;
    v13 = v15;
    v8 = a1[3];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v16[0] = v8;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v16, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v13, &v15, v6);
    if (v15)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v9);
    }

    v10 = v16[0];
    v16[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
      if (v7)
      {
LABEL_10:
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v9);
        }
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
LABEL_14:
  v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 1, v14);
  WTF::RunLoop::mainSingleton(v11);
  WTF::RunLoop::dispatch();
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11058A0;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11058A0;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t *a1, unint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_14;
  }

  ++*(v3 + 26);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v14, v3);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 2, "setSubresourceUniqueRedirectTo");
  if (v5)
  {
    v6 = v4;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v15;
    v13 = v15;
    v8 = a1[3];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v16[0] = v8;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v16, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v13, &v15, v6);
    if (v15)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v9);
    }

    v10 = v16[0];
    v16[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
      if (v7)
      {
LABEL_10:
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v9);
        }
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
LABEL_14:
  v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 1, v14);
  WTF::RunLoop::mainSingleton(v11);
  WTF::RunLoop::dispatch();
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectFrom(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11058C8;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectFrom(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11058C8;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectFrom(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t *a1, unint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_14;
  }

  ++*(v3 + 26);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v14, v3);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 2, "setSubresourceUniqueRedirectFrom");
  if (v5)
  {
    v6 = v4;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v15;
    v13 = v15;
    v8 = a1[3];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v16[0] = v8;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v16, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v13, &v15, v6);
    if (v15)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v9);
    }

    v10 = v16[0];
    v16[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
      if (v7)
      {
LABEL_10:
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v9);
        }
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
LABEL_14:
  v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 1, v14);
  WTF::RunLoop::mainSingleton(v11);
  WTF::RunLoop::dispatch();
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11058F0;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F11058F0;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectTo(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t *a1, unint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_24;
  }

  ++*(v3 + 26);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v19, v3);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 2, "setTopFrameUniqueRedirectTo");
  if ((v5 & 1) == 0)
  {
    goto LABEL_23;
  }

  v6 = v4;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7 = v20;
  v18 = v20;
  v8 = a1[3];
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v21[0] = v8;
  WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v20, v21, 1);
  v9 = HIDWORD(v6);
  WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v18, &v20, v9);
  if (v20)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, v10);
  }

  v11 = v21[0];
  v21[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else if (!v7)
  {
    goto LABEL_13;
  }

  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v10);
  }

LABEL_13:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v12 = v20;
  v18 = v20;
  v13 = a1[3];
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v21[0] = v13;
  WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v20, v21, 1);
  WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v18, &v20, v9);
  if (v20)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v20, v14);
  }

  v15 = v21[0];
  v21[0] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
    if (v12)
    {
LABEL_20:
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v14);
      }
    }
  }

  else if (v12)
  {
    goto LABEL_20;
  }

LABEL_23:
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v19);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
LABEL_24:
  v16 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 1, v19);
  WTF::RunLoop::mainSingleton(v16);
  WTF::RunLoop::dispatch();
  result = v19[0];
  v19[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectFrom(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105918;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectFrom(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105918;
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
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectFrom(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t *a1, unint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_14;
  }

  ++*(v3 + 26);
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v14, v3);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, a1 + 2, "setTopFrameUniqueRedirectFrom");
  if (v5)
  {
    v6 = v4;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v15;
    v13 = v15;
    v8 = a1[3];
    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    v16[0] = v8;
    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v15, v16, 1);
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v3, &v13, &v15, v6);
    if (v15)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v9);
    }

    v10 = v16[0];
    v16[0] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
      if (v7)
      {
LABEL_10:
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v9);
        }
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3 + 26);
LABEL_14:
  v11 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a1 + 1, v14);
  WTF::RunLoop::mainSingleton(v11);
  WTF::RunLoop::dispatch();
  result = v14[0];
  v14[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleCookieBlockingUpdate(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105940;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleCookieBlockingUpdate(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105940;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleCookieBlockingUpdate(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v3 = (*(v2 + 104) + 1);
    *(v2 + 104) = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = WTF::fastMalloc(v3, 0x10);
    *v5 = &unk_1F1105968;
    v5[1] = v4;
    v8 = v5;
    WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(v2, &v8);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v2 + 104));
  }

  else
  {
    v7 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 8), &v8);
    WTF::RunLoop::mainSingleton(v7);
    WTF::RunLoop::dispatch();
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore28scheduleCookieBlockingUpdateEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105968;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore28scheduleCookieBlockingUpdateEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105968;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore28scheduleCookieBlockingUpdateEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1, unint64_t a2)
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(WebKit::ShouldGrandfatherStatistics,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105990;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(WebKit::ShouldGrandfatherStatistics,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105990;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(WebKit::ShouldGrandfatherStatistics,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, atomic_ullong *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2[4];
  if (!v3)
  {
    if (*(a1 + 8) == 1)
    {
      v45 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v45, OS_LOG_TYPE_DEFAULT, "WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent Before being cleared, m_statisticsStore is null when trying to grandfather data.", buf, 2u);
      }
    }

    v46 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), buf);
    WTF::RunLoop::mainSingleton(v46);
    WTF::RunLoop::dispatch();
    result = *buf;
    *buf = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  v5 = (*(v3 + 104) + 1);
  *(v3 + 104) = v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  v7 = WTF::fastMalloc(v5, 0x10);
  *v7 = &unk_1F11059B8;
  v7[1] = v6;
  v9 = WTF::fastMalloc(v8, 0x10);
  *v9 = 1;
  v9[1] = v7;
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
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_5:
  v12 = *(a1 + 8);
  v13 = WTF::fastMalloc(atomic_fetch_add(v9, 1u), 0x20);
  *v13 = &unk_1F11059E0;
  v13[1] = a2;
  *(v13 + 16) = v12;
  v13[3] = v9;
  WebCore::SQLiteDatabase::clearAllTables((v3 + 16));
  if (!WebKit::ResourceLoadStatisticsStore::createSchema(v3))
  {
    v15 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v44 = *(v3 + 664);
      *buf = 134218240;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v44;
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::clearDatabaseContents: failed to create schema", buf, 0x16u);
    }
  }

  v16 = WTF::fastMalloc(v14, 0x10);
  *v16 = 1;
  v16[1] = v13;
  v17 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10);
  *v17 = &unk_1F1104B30;
  v17[1] = v16;
  WTF::RunLoop::mainSingleton(v17);
  v18 = *(v3 + 112);
  if (!v18)
  {
    __break(0xC471u);
    goto LABEL_42;
  }

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
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
LABEL_11:
  v21 = WTF::fastMalloc(v19, 0x18);
  *v21 = &unk_1F11047C0;
  v21[1] = v18;
  v21[2] = v17;
  *buf = v21;
  WTF::RunLoop::dispatch();
  v22 = *buf;
  *buf = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  WebKit::ResourceLoadStatisticsStore::ensurePrevalentResourcesForDebugMode(v51, v3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, v51);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v23 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10);
  *v23 = &unk_1F1104B58;
  v23[1] = v16;
  WTF::RunLoop::mainSingleton(v23);
  v24 = *(v3 + 112);
  if (!v24)
  {
    __break(0xC471u);
LABEL_42:
    JUMPOUT(0x19DD23F20);
  }

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
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_16:
  *buf = v24;
  WebKit::RegistrableDomainsToBlockCookiesFor::isolatedCopy(&buf[8], v47);
  *(&v56 + 1) = v23;
  v28 = WTF::fastMalloc(v27, 0x50);
  *&v29 = 0;
  *v28 = &unk_1F1104720;
  v28[1] = *buf;
  v28[2] = *&buf[8];
  v30 = *&buf[16];
  memset(buf, 0, sizeof(buf));
  v28[3] = v30;
  v31 = v54;
  v54 = v29;
  *(v28 + 2) = v31;
  v32 = v55;
  v55 = v29;
  *(v28 + 3) = v32;
  *(v28 + 4) = v56;
  v56 = 0u;
  v52 = v28;
  WTF::RunLoop::dispatch();
  v34 = v52;
  v52 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(&v56 + 1);
  *(&v56 + 1) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  if (v56)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v56, v33);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v33);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v36);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v37);
  v39 = *buf;
  *buf = 0;
  if (v39)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v39, v38);
  }

  if (v50)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v50, v38);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v38);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v40);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v41);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51, v42);
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v16);
  if (*(v3 + 280) == 1)
  {
    *(v3 + 280) = 0;
  }

  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v9);

  return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11059B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11059B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1, unint64_t a2)
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

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F11059E0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F11059E0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEE4callEv(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(*(a1 + 8) + 32);
    if (v2)
    {
      v3 = (*(v2 + 104) + 1);
      *(v2 + 104) = v3;
      v4 = *(a1 + 24);
      *(a1 + 24) = 0;
      v5 = WTF::fastMalloc(v3, 0x10);
      *v5 = &unk_1F1105A08;
      v5[1] = v4;
      v8 = v5;
      WebKit::ResourceLoadStatisticsStore::grandfatherExistingWebsiteData(v2, &v8);
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      *(v2 + 727) = 1;

      WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v2 + 104));
    }

    else
    {
      v6 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent After being cleared, m_statisticsStore is null when trying to grandfather data.", v7, 2u);
      }
    }
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_ENUlvE0_clEvEUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105A08;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit30WebResourceLoadStatisticsStore34scheduleClearInMemoryAndPersistentENS2_27ShouldGrandfatherStatisticsEONS_17CompletionHandlerIFvvEEEEN3__0clIS3_EEDaRT_ENUlvE0_clEvEUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105A08;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::domainIDExistsInDatabase(int,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105A30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::domainIDExistsInDatabase(int,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105A30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::domainIDExistsInDatabase(int,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    v5 = (v3 + 576);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 576), "domainIDExistsInDatabase", &v32);
    v6 = (v3 + 584);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 584), "domainIDExistsInDatabase linkDecorationExistsStatement", &v31);
    v7 = (v3 + 592);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 592), "domainIDExistsInDatabase subFrameExistsStatement", &v30);
    v8 = (v3 + 600);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 600), "domainIDExistsInDatabase subResourceExistsStatement", &v29);
    v9 = (v3 + 608);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 608), "domainIDExistsInDatabase uniqueRedirectExistsStatement", &v28);
    v10 = (v3 + 616);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 616), "domainIDExistsInDatabase observedDomainsExistsStatement", &v27);
    if (!v32 || !v31 || !v30 || !v29 || !v28 || !v27 || WebCore::SQLiteStatement::bindInt(*v5) || WebCore::SQLiteStatement::bindInt(*v5) || WebCore::SQLiteStatement::bindInt(*v6) || WebCore::SQLiteStatement::bindInt(*v6) || WebCore::SQLiteStatement::bindInt(*v7) || WebCore::SQLiteStatement::bindInt(*v7) || WebCore::SQLiteStatement::bindInt(*v8) || WebCore::SQLiteStatement::bindInt(*v8) || WebCore::SQLiteStatement::bindInt(*v9) || WebCore::SQLiteStatement::bindInt(*v9) || WebCore::SQLiteStatement::bindInt(*v10))
    {
      v11 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v18 = *(v3 + 664);
      Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
      *buf = 134218755;
      *&buf[4] = v3;
      v34 = 2048;
      v35 = v18;
      v36 = 1024;
      v37 = Error;
      v38 = 2081;
      v39 = ErrorMsg;
      v21 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::domainIDExistsInDatabase: failed to bind parameters";
    }

    else
    {
      if (WebCore::SQLiteStatement::step(*v5) == 100 && WebCore::SQLiteStatement::step(*v6) == 100 && WebCore::SQLiteStatement::step(*v7) == 100 && WebCore::SQLiteStatement::step(*v8) == 100 && WebCore::SQLiteStatement::step(*v9) == 100 && WebCore::SQLiteStatement::step(*v10) == 100)
      {
        v12 = WebCore::SQLiteStatement::columnInt(*v5) || WebCore::SQLiteStatement::columnInt(*v6) || WebCore::SQLiteStatement::columnInt(*v7) || WebCore::SQLiteStatement::columnInt(*v8) || WebCore::SQLiteStatement::columnInt(*v9) || WebCore::SQLiteStatement::columnInt(*v10) != 0;
        goto LABEL_21;
      }

      v11 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        v12 = 0;
LABEL_21:
        MEMORY[0x19EB0CD50](&v27);
        MEMORY[0x19EB0CD50](&v28);
        MEMORY[0x19EB0CD50](&v29);
        MEMORY[0x19EB0CD50](&v30);
        MEMORY[0x19EB0CD50](&v31);
        MEMORY[0x19EB0CD50](&v32);
        v13 = *(a1 + 16);
        *(a1 + 16) = 0;
        v15 = WTF::fastMalloc(v14, 0x18);
        *v15 = &unk_1F1105A58;
        *(v15 + 8) = v12;
        v15[2] = v13;
        *buf = v15;
        WTF::RunLoop::mainSingleton(v15);
        WTF::RunLoop::dispatch();
        v16 = *buf;
        *buf = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
      }

      v24 = *(v3 + 664);
      v25 = WebCore::SQLiteDatabase::lastError((v3 + 16));
      v26 = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
      *buf = 134218755;
      *&buf[4] = v3;
      v34 = 2048;
      v35 = v24;
      v36 = 1024;
      v37 = v25;
      v38 = 2081;
      v39 = v26;
      v21 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::domainIDExistsInDatabase: failed to step statement";
    }

    _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, v21, buf, 0x26u);
    goto LABEL_20;
  }

  v22 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v22 + 16))(v22, 0);
  v23 = *(*v22 + 8);

  return v23(v22);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24domainIDExistsInDatabaseEiONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F1105A58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24domainIDExistsInDatabaseEiONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1105A58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24domainIDExistsInDatabaseEiONS_17CompletionHandlerIFvbEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v2 + 16))(v2, v1);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeToLiveUserInteraction(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105A80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeToLiveUserInteraction(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105A80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setTimeToLiveUserInteraction(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    v4 = *(a1 + 8);
    if ((*(v3 + 168) & 1) == 0)
    {
      *(v3 + 168) = 1;
    }

    *(v3 + 160) = v4;
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), &v7);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMinimumTimeBetweenDataRecordsRemoval(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105AA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMinimumTimeBetweenDataRecordsRemoval(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105AA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMinimumTimeBetweenDataRecordsRemoval(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 72) = *(a1 + 8);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setGrandfatheringTime(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105AD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setGrandfatheringTime(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105AD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setGrandfatheringTime(WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 80) = *(a1 + 8);
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

uint64_t WTF::HashMapTranslator<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>::translate<WebCore::RegistrableDomain const&,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>> WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WebCore::RegistrableDomain const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WebCore::RegistrableDomain const&,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(void)#1}>(atomic_uint **a1, atomic_uint **a2, uint64_t **a3)
{
  WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(a1, a2);
  v5 = *a3;
  v6 = **a3;
  *v5 = 0;
  v10[0] = v6;
  v7 = v5[1];
  v5[1] = 0;
  v10[1] = v7;
  WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 1), v10);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v8);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::SetDomainsWithCrossPageStorageAccess,WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1105AF8;
  v3 = a1[3];
  if (v3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcessProxy::SetDomainsWithCrossPageStorageAccess,WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0>(WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder)#1},void,WebKit::WebResourceLoadStatisticsStore::callUpdatePrevalentDomainsToBlockCookiesForHandler(WebKit::RegistrableDomainsToBlockCookiesFor const&,WTF::CompletionHandler<void ()(void)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105AF8;
  v3 = *(this + 3);
  if (v3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl ***WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::operator=(WTF::StringImpl ***a1, uint64_t *a2)
{
  WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v6, a2);
  v4 = *a1;
  *a1 = v6;
  v6 = v4;
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMaxStatisticsEntries(unsigned long,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105B20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMaxStatisticsEntries(unsigned long,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105B20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setMaxStatisticsEntries(unsigned long,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 48) = *(a1 + 8);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPruneEntriesDownTo(unsigned long,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105B48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPruneEntriesDownTo(unsigned long,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105B48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::setPruneEntriesDownTo(unsigned long,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v5 = *(v3 + 104);
    v4 = v3 + 104;
    *v4 = v5 + 1;
    *(v4 + 40) = *(a1 + 8);
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resetParametersToDefaultValues(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105B70;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resetParametersToDefaultValues(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105B70;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::resetParametersToDefaultValues(WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a2 + 4);
  if (v3)
  {
    ++*(v3 + 104);
    *(v3 + 144) = xmmword_19E703AF0;
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    *(v3 + 176) = xmmword_19E703B00;
    *(v3 + 192) = vdupq_n_s64(0x4122750000000000uLL);
    *(v3 + 208) = xmmword_19E703B10;
    *(v3 + 224) = 10;
    *(v3 + 232) = 1;
    v4 = *(v3 + 304);
    if (v4)
    {
      *(v3 + 304) = 0;
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
    }

    *(v3 + 656) = 0;
    *(v3 + 672) = 0;
    if (*(v3 + 704) == 1)
    {
      *(v3 + 704) = 0;
    }

    if (*(v3 + 688) == 1)
    {
      *(v3 + 688) = 0;
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
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

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::removeDataForDomain(WebCore::RegistrableDomain,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105B98;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::removeDataForDomain(WebCore::RegistrableDomain,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105B98;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::removeDataForDomain(WebCore::RegistrableDomain,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (v3)
  {
    ++*(v3 + 104);
    if (WebKit::ResourceLoadStatisticsStore::domainID(v3, (a1 + 8)) >> 32)
    {
      WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 624), "removeDataForDomain", &v10);
      if (!v10 || WebCore::SQLiteStatement::bindInt(v10) || WebCore::SQLiteStatement::step(v10) != 101)
      {
        v4 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v7 = *(v3 + 664);
          Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
          *buf = 134218755;
          *&buf[4] = v3;
          v12 = 2048;
          v13 = v7;
          v14 = 1024;
          v15 = Error;
          v16 = 2081;
          v17 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::removeDataForDomain: failed to step statement", buf, 0x26u);
        }
      }

      MEMORY[0x19EB0CD50](&v10);
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
  }

  v5 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 16), buf);
  WTF::RunLoop::mainSingleton(v5);
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomains(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105BC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomains(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105BC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomains(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 536), "allDomains", &v22);
    v25 = 0;
    v26 = 0;
    if (v22 && WebCore::SQLiteStatement::step(v22) == 100)
    {
      do
      {
        WebCore::SQLiteStatement::columnText(&v27, v22);
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v28, &v27);
        LODWORD(v6) = HIDWORD(v26);
        if (HIDWORD(v26) == v26)
        {
          v10 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v25, HIDWORD(v26) + 1, &v28);
          v6 = HIDWORD(v26);
          v11 = v25;
          v12 = *v10;
          *v10 = 0;
          *(v11 + 8 * v6) = v12;
        }

        else
        {
          v7 = v28;
          v28 = 0;
          *(v25 + 8 * HIDWORD(v26)) = v7;
        }

        HIDWORD(v26) = v6 + 1;
        v8 = v28;
        v28 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v5);
        }

        v9 = v27;
        v27 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v5);
        }
      }

      while (WebCore::SQLiteStatement::step(v22) == 100);
    }

    MEMORY[0x19EB0CD50](&v22);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v22, &v25);
  v13 = *(a1 + 8);
  *(a1 + 8) = 0;
  v24 = v13;
  v14 = WTF::fastMalloc(v13, 0x20);
  *v14 = &unk_1F1105BE8;
  v14[1] = v22;
  v15 = v23;
  v22 = 0;
  v23 = 0;
  v14[2] = v15;
  v16 = v24;
  v24 = 0;
  v14[3] = v16;
  v28 = v14;
  WTF::RunLoop::mainSingleton(v14);
  WTF::RunLoop::dispatch();
  v18 = v28;
  v28 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v24;
  v24 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v17);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v20);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18registrableDomainsEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105BE8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18registrableDomainsEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105BE8;
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore18registrableDomainsEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithLastAccessedTime(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105C10;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithLastAccessedTime(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105C10;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithLastAccessedTime(WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  LOBYTE(v41) = 0;
  v42 = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v35 = a1;
    v3 = (v2 + 104);
    ++*(v2 + 104);
    v41 = 0;
    WebKit::ResourceLoadStatisticsStore::domains(&v36, v2);
    if (v38)
    {
      v6 = v36;
      v7 = &v36[5 * v38];
      while (1)
      {
        if (*(v6 + 2) >= *(v6 + 3))
        {
          v8 = v6[2];
        }

        else
        {
          v8 = v6[3];
        }

        if (WTF::equal(v6[1], 0, v5) || (v10 = v6[1], v10 == -1))
        {
          __break(0xC471u);
          JUMPOUT(0x19DD262D0);
        }

        v11 = v41;
        if (v41 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v41, 0, v10), (v11 = v41) != 0))
        {
          v12 = *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v13 = WTF::ASCIICaseInsensitiveHash::hash(v6[1], v9) & v12;
        v14 = &v11[2 * v13];
        if ((WTF::equal(*v14, 0, v15) & 1) == 0)
        {
          v16 = 0;
          v17 = 1;
          while (1)
          {
            v18 = v14;
            if (*v14 != -1)
            {
              v18 = v16;
              if (WTF::equalIgnoringASCIICase(*v14, v6[1], v5))
              {
                goto LABEL_28;
              }
            }

            v13 = (v13 + v17) & v12;
            v14 = &v11[2 * v13];
            ++v17;
            v16 = v18;
            if (WTF::equal(*v14, 0, v5))
            {
              if (v18)
              {
                *v18 = 0;
                v18[1] = 0;
                --*(v41 - 4);
                v14 = v18;
              }

              break;
            }
          }
        }

        v19 = v6[1];
        v6[1] = 0;
        v20 = *v14;
        *v14 = v19;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v4);
        }

        v14[1] = v8;
        v21 = v41;
        v22 = v41 ? *(v41 - 3) + 1 : 1;
        *(v41 - 3) = v22;
        v23 = (*(v21 - 4) + v22);
        v24 = *(v21 - 1);
        if (v24 > 0x400)
        {
          break;
        }

        v24 *= 3;
        if (v24 <= 4 * v23)
        {
          goto LABEL_27;
        }

LABEL_28:
        v6 += 5;
        if (v6 == v7)
        {
          goto LABEL_33;
        }
      }

      if (v24 > 2 * v23)
      {
        goto LABEL_28;
      }

LABEL_27:
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v41, v14, v24);
      goto LABEL_28;
    }

LABEL_33:
    WTF::Vector<WebKit::ResourceLoadStatisticsStore::DomainData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v4);
    v25 = 1;
    v42 = 1;
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v3);
    WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v41, &v36, v26, v27);
    a1 = v35;
  }

  else
  {
    v25 = 0;
    LOBYTE(v36) = 0;
  }

  v37 = v25;
  v28 = *(a1 + 8);
  *(a1 + 8) = 0;
  v39 = v28;
  v29 = WTF::fastMalloc(v28, 0x20);
  *v29 = &unk_1F1105C38;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  if (v37 == 1)
  {
    v30 = v36;
    v36 = 0;
    v29[1] = v30;
    *(v29 + 16) = 1;
  }

  v31 = v39;
  v39 = 0;
  v40 = v29;
  v29[3] = v31;
  WTF::RunLoop::mainSingleton(v29);
  WTF::RunLoop::dispatch();
  v33 = v40;
  v40 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  result = v39;
  v39 = 0;
  if (result)
  {
    result = (*(*result + 1))(result);
  }

  if (v37 == 1)
  {
    result = v36;
    if (v36)
    {
      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v36, v32);
    }
  }

  if (v42 == 1)
  {
    result = v41;
    if (v41)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v41, v32);
    }
  }

  return result;
}

uint64_t WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, const WTF::StringImpl *a4@<X2>)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a1, a3, a4);
  v16[0] = result;
  v16[1] = v7;
  v8 = *a1;
  if (*a1)
  {
    v9 = v8 + 16 * *(v8 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      WebCore::RegistrableDomain::isolatedCopy(&v15);
      v12 = v15;
      v15 = 0;
      v13 = *v16[0];
      *v16[0] = v12;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v10);
      }

      v14 = v15;
      v15 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v10);
      }

      v16[0] += 16;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v16, v10, v11);
      result = v16[0];
    }

    while (v16[0] != v9);
    v8 = *a1;
  }

  *a1 = 0;
  *a2 = v8;
  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*(v3 - 12))
  {
    return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeIterator(a1, v3, a3);
  }

  return v3 + 16 * *(v3 - 4);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::WallTime>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::WallTime,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::makeIterator(uint64_t *a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
  }

  else
  {
    v6 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = a2;
  v8[1] = v5 + 16 * v6;
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v8, a2, a3);
  return v8[0];
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore38registrableDomainsWithLastAccessedTimeEONS_17CompletionHandlerIFvONSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashIS9_EENS_10HashTraitsIS9_EENSD_ISA_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105C38;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
    }
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore38registrableDomainsWithLastAccessedTimeEONS_17CompletionHandlerIFvONSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashIS9_EENS_10HashTraitsIS9_EENSD_ISA_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105C38;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(this + 16) == 1)
  {
    v4 = *(this + 1);
    if (v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore38registrableDomainsWithLastAccessedTimeEONS_17CompletionHandlerIFvONSt3__18optionalINS_7HashMapIN7WebCore17RegistrableDomainENS_8WallTimeENS_11DefaultHashIS9_EENS_10HashTraitsIS9_EENSD_ISA_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEEEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomainsExemptFromWebsiteDataDeletion(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105C60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomainsExemptFromWebsiteDataDeletion(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105C60;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::registrableDomainsExemptFromWebsiteDataDeletion(WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = (v3 + 104);
    ++*(v3 + 104);
    WebKit::ResourceLoadStatisticsStore::domainsExemptFromWebsiteDataDeletion(&v13, v3);
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(&v13, &v11);
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(&v11 + 1) = v5;
  v6 = WTF::fastMalloc(v5, 0x18);
  *v6 = &unk_1F1105C88;
  *(v6 + 1) = v11;
  v11 = 0uLL;
  v12 = v6;
  WTF::RunLoop::mainSingleton(v6);
  WTF::RunLoop::dispatch();
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(&v11 + 1);
  *(&v11 + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (v11)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v7);
  }

  result = v13;
  if (v13)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore47registrableDomainsExemptFromWebsiteDataDeletionEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105C88;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore47registrableDomainsExemptFromWebsiteDataDeletionEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105C88;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore47registrableDomainsExemptFromWebsiteDataDeletionEONS_17CompletionHandlerIFvONS_7HashSetIN7WebCore17RegistrableDomainENS_11DefaultHashIS7_EENS_10HashTraitsIS7_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1EEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::aggregatedThirdPartyData(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105CB0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::aggregatedThirdPartyData(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105CB0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WebKit::WebResourceLoadStatisticsStore::aggregatedThirdPartyData(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0::operator()<WebKit::WebResourceLoadStatisticsStore>@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v4 = (a2 + 104);
    ++*(a2 + 104);
    WebKit::ResourceLoadStatisticsStore::aggregatedThirdPartyData(&v16, a2);
    v14[0] = v16;
    v5 = v17;
    v16 = 0;
    v17 = 0;
    v14[1] = v5;
    v6 = *a1;
    *a1 = 0;
    v14[2] = v6;
    v7 = _ZNSt3__111make_uniqueB8sn200100IN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEONS1_17CompletionHandlerIFvONS1_6VectorINS4_17ITPThirdPartyDataELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEEEEEN3__0clIS5_EEDaRT_EUlvE0_vJEEEJSL_ELi0EEENS_10unique_ptrISJ_NS_14default_deleteISJ_EEEEDpOT0_(&v15, v14, v6);
    WTF::RunLoop::mainSingleton(v7);
    WTF::RunLoop::dispatch();
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    _ZZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEON3WTF17CompletionHandlerIFvONS1_6VectorINS_17ITPThirdPartyDataELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEEEEEN3__0clIS0_EEDaRT_ENUlvE0_D1Ev(v14, v8);
    WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v10);
    return WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v4);
  }

  else
  {
    v12 = *a1;
    *a1 = 0;
    v13 = WTF::fastMalloc(a3, 0x10);
    *v13 = &unk_1F1105CD8;
    v13[1] = v12;
    v14[0] = v13;
    WTF::RunLoop::mainSingleton(v13);
    WTF::RunLoop::dispatch();
    result = v14[0];
    v14[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEON3WTF17CompletionHandlerIFvONS1_6VectorINS_17ITPThirdPartyDataELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEEEEEN3__0clIS0_EEDaRT_ENUlvE0_D1Ev(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEONS_17CompletionHandlerIFvONS_6VectorINS2_17ITPThirdPartyDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1105CD8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEONS_17CompletionHandlerIFvONS_6VectorINS2_17ITPThirdPartyDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105CD8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEONS_17CompletionHandlerIFvONS_6VectorINS2_17ITPThirdPartyDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE_vJEE4callEv(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, v4);
  (*(*v1 + 8))(v1);
  return WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v2);
}

WTF *_ZNSt3__111make_uniqueB8sn200100IN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEONS1_17CompletionHandlerIFvONS1_6VectorINS4_17ITPThirdPartyDataELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEEEEEN3__0clIS5_EEDaRT_EUlvE0_vJEEEJSL_ELi0EEENS_10unique_ptrISJ_NS_14default_deleteISJ_EEEEDpOT0_@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x20);
  *v5 = &unk_1F1105D00;
  v5[2] = 0;
  v5[1] = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v5 + 1), a2);
  v7 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5[3] = v7;
  *a1 = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEONS_17CompletionHandlerIFvONS_6VectorINS2_17ITPThirdPartyDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1105D00;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEONS_17CompletionHandlerIFvONS_6VectorINS2_17ITPThirdPartyDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEN3__0clIS3_EEDaRT_EUlvE0_vJEED0Ev(WTF *a1, void *a2)
{
  *a1 = &unk_1F1105D00;
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v4);
}

uint64_t _ZZZN6WebKit30WebResourceLoadStatisticsStore24aggregatedThirdPartyDataEON3WTF17CompletionHandlerIFvONS1_6VectorINS_17ITPThirdPartyDataELm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEEEEEN3__0clIS0_EEDaRT_ENUlvE0_clEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, a1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::insertExpiredStatisticForTesting(WebCore::RegistrableDomain &&,unsigned int,BOOL,BOOL,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1105D28;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::insertExpiredStatisticForTesting(WebCore::RegistrableDomain &&,unsigned int,BOOL,BOOL,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1105D28;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::WebResourceLoadStatisticsStore::insertExpiredStatisticForTesting(WebCore::RegistrableDomain &&,unsigned int,BOOL,BOOL,BOOL,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebKit::WebResourceLoadStatisticsStore&>::call(uint64_t a1, unint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  if (!v3)
  {
    goto LABEL_37;
  }

  ++*(v3 + 104);
  v4 = *(a1 + 16);
  v5 = WebKit::DatabaseUtilities::beginTransactionIfNecessary(v30, v3);
  if (v4)
  {
    v6 = 1;
    v7 = 24;
    while (1)
    {
      v8 = *(v3 + 656);
      v9 = WTF::WallTime::now(v5);
      v11 = v8 + v10 + v7 * -3600.0;
      WebKit::OperatingDate::fromWallTime(v9, v11);
      WebCore::SQLiteDatabase::prepareStatement();
      if (v29)
      {
        break;
      }

      v12 = WebCore::SQLiteStatement::bindInt(v28);
      if (v12)
      {
        break;
      }

      if (v29)
      {
        goto LABEL_42;
      }

      v12 = WebCore::SQLiteStatement::bindInt(v28);
      if (v12)
      {
        break;
      }

      if (v29)
      {
        goto LABEL_42;
      }

      v12 = WebCore::SQLiteStatement::bindInt(v28);
      if (v12)
      {
        break;
      }

      if (v29)
      {
        goto LABEL_42;
      }

      v12 = WebCore::SQLiteStatement::step(v28);
      if (v12 != 101)
      {
        break;
      }

      if (v29)
      {
LABEL_42:
        mpark::throw_bad_variant_access(v12);
      }

      v5 = WebCore::SQLiteStatement::reset(v28);
      if (!v29)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v28);
      }

      ++v6;
      v7 += 24;
      if (v6 > v4)
      {
        v13 = v11 + -86400.0;
        goto LABEL_22;
      }
    }

    v14 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v18 = *(v3 + 664);
      Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
      *buf = 134218755;
      *&buf[4] = v3;
      v32 = 2048;
      v33 = v18;
      v34 = 1024;
      v35 = Error;
      v36 = 2081;
      v37 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertExpiredStatisticForTesting: failed to step insertOperatingDateStatement", buf, 0x26u);
    }

    if (!v29)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v28);
    }

    goto LABEL_36;
  }

  v13 = -86400.0;
LABEL_22:
  WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(v3);
  WebKit::DatabaseUtilities::scopedStatement(v3, (v3 + 336), "insertExpiredStatisticForTesting", v28);
  if (!WebCore::SQLiteStatement::bindText() && !WebCore::SQLiteStatement::bindDouble(v28[0], v13) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindDouble(v28[0], v13) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindInt(v28[0]) && !WebCore::SQLiteStatement::bindDouble(v28[0], 0.0))
  {
    if (WebCore::SQLiteStatement::step(v28[0]) == 101)
    {
      goto LABEL_35;
    }

    v15 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v25 = *(v3 + 664);
    v26 = WebCore::SQLiteDatabase::lastError((v3 + 16));
    v27 = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
    *buf = 134218755;
    *&buf[4] = v3;
    v32 = 2048;
    v33 = v25;
    v34 = 1024;
    v35 = v26;
    v36 = 2081;
    v37 = v27;
    v24 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertExpiredStatisticForTesting: failed to step statement";
    goto LABEL_41;
  }

  v15 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v21 = *(v3 + 664);
    v22 = WebCore::SQLiteDatabase::lastError((v3 + 16));
    v23 = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
    *buf = 134218755;
    *&buf[4] = v3;
    v32 = 2048;
    v33 = v21;
    v34 = 1024;
    v35 = v22;
    v36 = 2081;
    v37 = v23;
    v24 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertExpiredStatisticForTesting: failed to step scopedInsertObservedDomainStatement";
LABEL_41:
    _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, v24, buf, 0x26u);
  }

LABEL_35:
  MEMORY[0x19EB0CD50](v28);
LABEL_36:
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v30);
  WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v3 + 104));
LABEL_37:
  v16 = std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>((a1 + 24), buf);
  WTF::RunLoop::mainSingleton(v16);
  WTF::RunLoop::dispatch();
  result = *buf;
  *buf = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v5 = *(v3 - 4)) != 0)
  {
    v4 = (v5 << (6 * *(v3 - 12) >= (2 * v5)));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
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

  v7 = WTF::fastMalloc((40 * a2), (40 * a2 + 16));
  if (v3)
  {
    v10 = v3;
    v11 = v7 + 5;
    do
    {
      *(v11 - 3) = 0;
      *(v11 - 2) = 0;
      *(v11 - 1) = 0;
      *v11 = xmmword_19E703B20;
      v11 = (v11 + 40);
      --v10;
    }

    while (v10);
  }

  *a1 = (v7 + 2);
  *(v7 + 2) = v3 - 1;
  *(v7 + 3) = v3;
  *v7 = 0;
  *(v7 + 1) = v6;
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    v14 = v5;
    v30 = v5;
    do
    {
      v15 = v4 + 40 * v12;
      if (*v15 != -1)
      {
        if (*v15 || !WTF::equal(*(v15 + 8), 0, v9))
        {
          v17 = v4;
          v18 = *a1;
          v19 = v13;
          if (*a1)
          {
            v20 = *(v18 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = WTF::PairHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>::hash(*v15, *(v15 + 8));
          for (i = 0; ; v21 = i + v23)
          {
            v23 = v21 & v20;
            v24 = v18 + 40 * (v21 & v20);
            if (!*v24 && (WTF::equal(*(v24 + 8), 0, v9) & 1) != 0)
            {
              break;
            }

            ++i;
          }

          v25 = *(v24 + 8);
          *(v24 + 8) = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v8);
          }

          *v24 = *v15;
          v26 = *(v15 + 8);
          *(v15 + 8) = 0;
          *(v24 + 8) = v26;
          v27 = *(v15 + 16);
          *(v24 + 32) = *(v15 + 32);
          *(v24 + 16) = v27;
          v28 = *(v15 + 8);
          *(v15 + 8) = 0;
          v4 = v17;
          v13 = v19;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v8);
          }

          v14 = v30;
          if (v15 == a3)
          {
            v13 = v18 + 40 * v23;
          }
        }

        else
        {
          v16 = *(v15 + 8);
          *(v15 + 8) = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v8);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v14);
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

  WTF::fastFree((v4 - 16), v8);
  return v13;
}

unint64_t WTF::PairHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>::hash(uint64_t a1, WTF::ASCIICaseInsensitiveHash *this)
{
  v2 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  return (0xD7862706ELL * (277951225 * ((v4 >> 31) ^ v4) + 95187966 * WTF::ASCIICaseInsensitiveHash::hash(this, this))) >> 4;
}

uint64_t *WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *result)
{
  if (!*result)
  {
    LODWORD(v1) = 0;
LABEL_3:
    v2 = v1;
    v3 = 1;
    goto LABEL_4;
  }

  v1 = *(*result - 12);
  if (v1 <= 1)
  {
    goto LABEL_3;
  }

  v6 = __clz(v1 - 1);
  if (!v6)
  {
    __break(1u);
    return result;
  }

  v3 = (1 << -v6);
  if (v1 > 0x400)
  {
    if (v3 > 2 * v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(*result - 12);
LABEL_4:
  if (3 * v3 <= 4 * v2)
  {
LABEL_5:
    LODWORD(v3) = 2 * v3;
  }

LABEL_6:
  if (v3 > 0x400)
  {
    v4 = 0.416666667;
  }

  else
  {
    v4 = 0.604166667;
  }

  if (v3 * v4 <= v1)
  {
    LODWORD(v3) = 2 * v3;
  }

  if (v3 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = v3;
  }

  return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::rehash(result, v5, 0);
}

uint64_t WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::removeIf<WebKit::WebResourceLoadStatisticsStore::clearFrameLoadRecordsForStorageAccess(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0>(uint64_t result, WTF::StringImpl *a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  if (!*result)
  {
    return result;
  }

  v4 = result;
  v5 = *(v3 - 4);
  if (!v5)
  {
LABEL_20:
    v13 = 6 * *(v3 - 12);
    v14 = *(v3 - 4);
    if (v13 < v14 && v14 >= 9)
    {

      return WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::shrinkToBestSize(v4);
    }

    return result;
  }

  v7 = 0;
  v8 = v3 + 40 * v5 - 40;
  do
  {
    v9 = *v8;
    if (!*v8)
    {
      result = WTF::equal(*(v8 + 8), 0, a3);
      if (result)
      {
        goto LABEL_14;
      }

      v9 = *v8;
    }

    if (v9 != -1)
    {
      v10 = *(v8 + 16);
      if (v10 && v10 == **a2)
      {
        result = *(v8 + 8);
        *(v8 + 8) = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }

        *v8 = -1;
        ++v7;
      }
    }

LABEL_14:
    v8 -= 40;
    --v5;
  }

  while (v5);
  v3 = *v4;
  if (v7)
  {
    v12 = *(v3 - 12) - v7;
    *(v3 - 16) += v7;
    *(v3 - 12) = v12;
    goto LABEL_20;
  }

  if (v3)
  {
    goto LABEL_20;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebCookieManager::startObservingCookieChanges(PAL::SessionID)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1105D50;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebCookieManager::startObservingCookieChanges(PAL::SessionID)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105D50;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebCookieManager::startObservingCookieChanges(PAL::SessionID)::$_0,void>::call(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(*(v3 + 16) + 8);
      if (!v4 || (atomic_fetch_add((v4 + 144), 1u), (v5 = *(*(v3 + 16) + 8)) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19DD27D4CLL);
      }

      v6 = (v3 - 8);
      v7 = *(result + 16);
      atomic_fetch_add((v5 + 144), 1u);
      v8 = IPC::Encoder::operator new(0x238, a2);
      *v8 = 522;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = 0;
      IPC::Encoder::encodeHeader(v8);
      v13 = v8;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, v7);
      (*(*(v5 + 24) + 32))(v5 + 24, &v13, 0);
      v10 = v13;
      v13 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v9);
        bmalloc::api::tzoneFree(v11, v12);
      }

      if (atomic_fetch_add((v5 + 144), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v5 + 144));
        (*(*v5 + 24))(v5);
      }

      return WebKit::WebCookieManager::deref(v6);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebCookieManager::setHTTPCookieAcceptPolicy(PAL::SessionID,WebCore::HTTPCookieAcceptPolicy,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1105D78;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 36);
    (*(*v3 + 24))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebCookieManager::setHTTPCookieAcceptPolicy(PAL::SessionID,WebCore::HTTPCookieAcceptPolicy,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105D78;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 36);
    (*(*v4 + 24))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebCookieManager::setHTTPCookieAcceptPolicy(PAL::SessionID,WebCore::HTTPCookieAcceptPolicy,WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  WebKit::NetworkProcess::cookieAcceptPolicyChanged(*(a1 + 16), *(a1 + 8));
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v2 + 16))(v2);
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
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
      v13 = (v6 + 16 * v11);
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

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            CFRelease(v26);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            CFRelease(v28);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            CFRelease(v15);
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

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<WKCustomProtocol>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<WKCustomProtocol>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::LegacyCustomProtocolIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::Download::cancel(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&,WebKit::Download::IgnoreDidFailCallback)::$_0,void,std::span<unsigned char const,18446744073709551615ul>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F1105DA0;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::Download::cancel(WTF::CompletionHandler<void ()(std::span<unsigned char const,18446744073709551615ul>)> &&,WebKit::Download::IgnoreDidFailCallback)::$_0,void,std::span<unsigned char const,18446744073709551615ul>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1105DA0;
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

void *WTF::Detail::CallableWrapper<WebKit::Download::didFinish(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1105DC8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::Download::didFinish(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1105DC8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::Download::didFinish(void)::$_0,void>::call(WTF *a1)
{
  result = WTF::isMainRunLoop(a1);
  if ((result & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_17;
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++v4[4];
      v5 = (*(*v4 + 56))(v4);
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 11;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = v5;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      IPC::Encoder::encodeHeader(v7);
      v15 = v7;
      (*(*v4 + 32))(v4, &v15, 0);
      v9 = v15;
      v15 = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v13, v14);
      }

      v10 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v10)
      {
        v11 = *(v10 + 16) - 1;
        *(v10 + 16) = v11;
        if (!v11)
        {
          *(*(v10 + 8) + 8) = 0;
          sandbox_extension_release();
        }

        WTF::RefCounted<WebKit::SandboxExtension>::deref(v10);
      }

      v12 = *(v4 + 3);
      if (!v12)
      {
        return WTF::RefCounted<WebKit::Download>::deref(v4 + 4);
      }

      ++*v12;
      WebKit::DownloadManager::downloadFinished(v12, v4);
      if (*v12)
      {
        --*v12;
        return WTF::RefCounted<WebKit::Download>::deref(v4 + 4);
      }

      __break(0xC471u);
LABEL_17:
      JUMPOUT(0x19DD28598);
    }
  }

  return result;
}

unsigned int *WebKit::WebPasteboardProxy::grantAccess(uint64_t a1, unint64_t a2, WTF::StringImpl **a3, int a4)
{
  v60 = *MEMORY[0x1E69E9840];
  result = WTF::WeakHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessProxy>((a1 + 16), a2);
  if (!result || !*a3 || !*(*a3 + 1))
  {
    return result;
  }

  MEMORY[0x19EB07E50](&v56, a3);
  v10 = WebCore::PlatformPasteboard::changeCount(&v56);
  v11 = v56;
  v56 = 0;
  if (v11)
  {
  }

  v12 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 32), a3, v9);
  v14 = v12;
  v15 = *(a1 + 32);
  if (v15)
  {
    v15 += 32 * *(v15 - 4);
  }

  if (v15 != v12 && *(v12 + 8) == v10)
  {
    v16 = *(v12 + 28);
    if (!v16)
    {
LABEL_15:
      result = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
      v21 = *(a2 + 8);
      atomic_fetch_add(v21, 1u);
      v56 = v21;
      LOBYTE(v57[0]) = a4;
      v22 = v14[7];
      if (v22 == v14[6])
      {
        v23 = WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v14 + 4, v22 + 1, &v56);
        v25 = v14[7];
        v26 = *(v14 + 2) + 16 * v25;
        v27 = *v23;
        *v23 = 0;
        *v26 = v27;
        *(v26 + 8) = *(v23 + 8);
        result = v56;
        v14[7] = v25 + 1;
        v56 = 0;
        if (result)
        {
          goto LABEL_41;
        }

        return result;
      }

      v45 = *(v14 + 2) + 16 * v22;
      *v45 = v21;
      *(v45 + 8) = a4;
      v46 = v22 + 1;
LABEL_63:
      v14[7] = v46;
      return result;
    }

    v17 = 0;
    v18 = *(v12 + 16);
    v19 = v18 + 8;
    while (1)
    {
      v20 = *(v19 - 1);
      if (v20)
      {
        if (*(v20 + 8) == a2)
        {
          break;
        }
      }

      ++v17;
      v19 += 16;
      if (v16 == v17)
      {
        goto LABEL_15;
      }
    }

    if (a4 != 1)
    {
LABEL_48:
      v47 = 0;
      v48 = &v18[16 * v16];
      v49 = v18;
      v50 = v48;
      v51 = v48;
      do
      {
        result = *v18;
        if (!*v18 || !*(result + 1))
        {
          if (v50 == *(v14 + 2) + 16 * v14[7])
          {
            v50 = v18;
          }

          else if (v18 != v51)
          {
            WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::moveOverlapping(v51, v18, v50);
            v50 += v49 - v51;
            result = *v18;
          }

          *v18 = 0;
          v51 = (v18 + 16);
          if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, v13);
          }

          ++v47;
        }

        v18 += 16;
        v49 += 16;
      }

      while (v18 < v48);
      v52 = v14[7];
      v53 = (*(v14 + 2) + 16 * v52);
      if (v51 != v53)
      {
        result = WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::moveOverlapping(v51, v53, v50);
        LODWORD(v52) = v14[7];
      }

      v46 = v52 - v47;
      goto LABEL_63;
    }

    if (v17 < v16)
    {
      *v19 = 1;
      goto LABEL_48;
    }

    __break(0xC471u);
LABEL_71:
    JUMPOUT(0x19DD28A48);
  }

  v54 = v10;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v28 = *(a2 + 8);
  atomic_fetch_add(v28, 1u);
  v58 = v28;
  v59 = a4;
  WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v55, &v58, 1uLL);
  if (*a3 == -1)
  {
    __break(0xC471u);
    goto LABEL_71;
  }

  if (!*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD28A68);
  }

  v30 = *(a1 + 32);
  if (v30 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 32), 0), (v30 = *(a1 + 32)) != 0))
  {
    v31 = *(v30 - 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(*a3 + 4);
  if (v32 < 0x100)
  {
    v33 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v33 = v32 >> 8;
  }

  v34 = 0;
  for (i = 1; ; ++i)
  {
    v36 = v33 & v31;
    v37 = (v30 + 32 * v36);
    v38 = *v37;
    if (*v37 == -1)
    {
      v34 = (v30 + 32 * v36);
      goto LABEL_31;
    }

    if (!v38)
    {
      break;
    }

    if (WTF::equal(v38, *a3, v29))
    {
      v37[1] = v54;
      WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v37 + 2), v55);
      goto LABEL_40;
    }

LABEL_31:
    v33 = i + v36;
  }

  if (v34)
  {
    *v34 = 0u;
    *(v34 + 1) = 0u;
    --*(*(a1 + 32) - 16);
    v37 = v34;
  }

  WTF::String::operator=(v37, a3);
  v56 = v54;
  WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v57, v55);
  v37[1] = v56;
  WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v37 + 2), v57);
  WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v57, v39);
  v40 = *(a1 + 32);
  if (v40)
  {
    v41 = *(v40 - 12) + 1;
  }

  else
  {
    v41 = 1;
  }

  *(v40 - 12) = v41;
  v43 = (*(v40 - 16) + v41);
  v44 = *(v40 - 4);
  if (v44 > 0x400)
  {
    if (v44 <= 2 * v43)
    {
LABEL_39:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 32), v37);
    }
  }

  else if (3 * v44 <= 4 * v43)
  {
    goto LABEL_39;
  }

LABEL_40:
  WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v55, v42);
  result = v58;
  v58 = 0;
  if (result)
  {
LABEL_41:
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v24);
    }
  }

  return result;
}

void sub_19DD28A74(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15, WTF *a16)
{
  if (a13)
  {
    if (atomic_fetch_add(a13, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a13);
      WTF::fastFree(a13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WebKit::WebPasteboardProxy::grantAccessToCurrentData(uint64_t a1, unint64_t a2, WTF::StringImpl **a3, uint64_t *a4)
{
  WebKit::WebPasteboardProxy::grantAccess(a1, a2, a3, 1);
  MEMORY[0x19EB07E50](&v46, a3);
  WebCore::PlatformPasteboard::changeCount(&v46);
  WebCore::PlatformPasteboard::allPasteboardItemInfo(&v43, &v46);
  if (v45)
  {
    v41 = 0;
    v42 = 0;
    if (!v44)
    {
      goto LABEL_35;
    }

    v8 = 0;
    v9 = v43;
    v10 = v43 + 120 * v44;
    do
    {
      v11 = *(v9 + 12);
      if (v11)
      {
        v12 = *v9;
        v13 = v11 + v8;
        if (v11 + v8 > v42)
        {
          v14 = v42 + (v42 >> 1);
          if (v14 <= v42 + 1)
          {
            v14 = v42 + 1;
          }

          if (v14 <= v13)
          {
            v14 = v13;
          }

          v15 = v14 <= 0x10 ? 16 : v14;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v41, v15);
          v8 = HIDWORD(v42);
          if (v13 < HIDWORD(v42))
          {
            goto LABEL_42;
          }
        }

        v16 = (v41 + 8 * v8);
        v17 = 8 * v11;
        do
        {
          v18 = *v12;
          if (*v12)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          }

          *v16++ = v18;
          ++v12;
          v17 -= 8;
        }

        while (v17);
        v8 = v13;
        HIDWORD(v42) = v13;
      }

      v9 += 120;
    }

    while (v9 != v10);
    if (v8)
    {
      v19 = *(a2 + 120);
      v20 = *(a2 + 800);
      if (v20)
      {
        CFRetain(v20[1]);
      }

      v21 = WebKit::WebsiteDataStore::networkProcess(v20, v7);
      v22 = (v21 + 16);
      atomic_fetch_add((v21 + 16), 1u);
      v24 = IPC::Encoder::operator new(0x238, v23);
      *v24 = 574;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = 0;
      IPC::Encoder::encodeHeader(v24);
      v49 = v24;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, v19);
      IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v24, &v41);
      v25 = *a4;
      *a4 = 0;
      v27 = WTF::fastMalloc(v26, 0x10);
      *v27 = &unk_1F1106058;
      v27[1] = v25;
      if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
LABEL_42:
        __break(0xC471u);
        JUMPOUT(0x19DD28E0CLL);
      }

      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v47[0] = v27;
      v47[1] = IdentifierInternal;
      v48 = 1;
      v30 = WebKit::AuxiliaryProcessProxy::sendMessage(v21, &v49, 0, v47, 1);
      if (v48 == 1)
      {
        v31 = v47[0];
        v47[0] = 0;
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }
      }

      v32 = v49;
      v49 = 0;
      if (v32)
      {
        IPC::Encoder::~Encoder(v32, v29);
        bmalloc::api::tzoneFree(v39, v40);
      }

      if (!v30)
      {
        IdentifierInternal = 0;
      }

      v33 = IdentifierInternal & 0xFFFFFFFFFFFFFF00;
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v22, v29);
      if (v20)
      {
        CFRelease(v20[1]);
      }

      v35 = IdentifierInternal;
    }

    else
    {
LABEL_35:
      WTF::CompletionHandler<void ()(void)>::operator()(a4);
      v35 = 0;
      v33 = 0;
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v34);
  }

  else
  {
    WTF::CompletionHandler<void ()(void)>::operator()(a4);
    v35 = 0;
    v33 = 0;
  }

  if (v45 == 1)
  {
    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v36);
  }

  v37 = v46;
  v46 = 0;
  if (v37)
  {
  }

  return v33 | v35;
}

void sub_19DD28E30(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, IPC::Encoder *a18)
{
  if (a17 == 1)
  {
    v21 = a15;
    a15 = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  v22 = a18;
  a18 = 0;
  if (v22)
  {
    IPC::Encoder::~Encoder(v22, a2);
    bmalloc::api::tzoneFree(v24, v25);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v19, a2);
  if (v18)
  {
    CFRelease(*(v18 + 8));
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v23);
  if (a13 == 1)
  {
    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v26);
  }

  v27 = a14;
  a14 = 0;
  if (v27)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::WeakHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessProxy>(uint64_t *a1, uint64_t a2)
{
  ++*(a1 + 2);
  v2 = *(a2 + 8);
  if (v2)
  {
    if (*(v2 + 8))
    {
      v3 = *a1;
      if (*a1)
      {
        v4 = *(v3 - 8);
        v5 = (~(v2 << 32) + v2) ^ ((~(v2 << 32) + v2) >> 22);
        v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
        v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
        v8 = v4 & ((v7 >> 31) ^ v7);
        for (i = 1; ; ++i)
        {
          v10 = *(v3 + 8 * v8);
          if (!v10)
          {
            break;
          }

          if (v10 != -1 && v10 == v2)
          {
            return 1;
          }

          v8 = (v8 + i) & v4;
        }
      }
    }
  }

  return 0;
}

unsigned int *WebKit::WebPasteboardProxy::revokeAccess(WebKit::WebPasteboardProxy *this, WebKit::WebProcessProxy *a2)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 4);
  v5 = result;
  v7 = v6;
  v8 = *(this + 4);
  if (v8)
  {
    v9 = (v8 + 32 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      result = WebKit::WebPasteboardProxy::PasteboardAccessInformation::revokeAccess(v5 + 2, a2);
      do
      {
        v5 += 8;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v9);
  }

  return result;
}

unsigned int *WebKit::WebPasteboardProxy::PasteboardAccessInformation::revokeAccess(unsigned int *this, WebKit::WebProcessProxy *a2)
{
  v2 = this[5];
  if (v2)
  {
    v3 = this;
    for (i = *(this + 1); !*i || *(*i + 8) != a2; i += 4)
    {
      if (!--v2)
      {
        return this;
      }
    }

    WTF::VectorDestructor<true,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::destruct(i, i + 4);
    return WTF::VectorMover<false,std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>>::moveOverlapping(i + 4, (*(v3 + 1) + 16 * v3[5]--), i);
  }

  return this;
}

uint64_t WebKit::WebPasteboardProxy::accessType(WebKit::WebPasteboardProxy *this, IPC::Connection *a2, const WTF::StringImpl **a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*a3 && *(*a3 + 1))
  {
    WebKit::WebPasteboardProxy::webProcessProxyForConnection(&v39, this, a2);
    if (v39)
    {
      v37 = this;
      v38 = v39;
      WebKit::WebProcessProxy::pages(v39, buf);
      if (v41)
      {
        v7 = 8 * v41;
        v8 = *buf;
        while (1)
        {
          v9 = *v8;
          CFRetain(*(*v8 + 8));
          v10 = *(v9 + 368);
          CFRetain(*(v10 + 8));
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
          }

          if (!WebKit::WebPreferencesStore::getBoolValueForKey((v10 + 40), &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, v11) || *(*(v9 + 32) + 1144))
          {
            {
              atomic_fetch_add_explicit(WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
              WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key = WebKit::WebPreferencesKey::domPasteAllowedKey(void)::$_0::operator() const(void)::impl;
            }

            if (WebKit::WebPreferencesStore::getBoolValueForKey((v10 + 40), &WebKit::WebPreferencesKey::domPasteAllowedKey(void)::key, v12))
            {
              {
                atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
                WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::$_0::operator() const(void)::impl;
              }

              if (WebKit::WebPreferencesStore::getBoolValueForKey((v10 + 40), &WebKit::WebPreferencesKey::javaScriptCanAccessClipboardKey(void)::key, v13))
              {
                break;
              }
            }
          }

          CFRelease(*(v10 + 8));
          CFRelease(*(v9 + 8));
          ++v8;
          v7 -= 8;
          if (!v7)
          {
            goto LABEL_17;
          }
        }

        CFRelease(*(v10 + 8));
        CFRelease(*(v9 + 8));
        WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v28);
        v24 = 1;
        LODWORD(v10) = 1;
        goto LABEL_38;
      }

LABEL_17:
      WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v6);
      v10 = *(v37 + 4);
      if (!v10)
      {
        v24 = 0;
LABEL_38:
        v27 = v38;
LABEL_46:
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v27 + 4, v14);
        return v24 | (v10 << 8);
      }

      v16 = *a3;
      if (*a3 != -1)
      {
        if (!v16)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD2956CLL);
        }

        v17 = *(v10 - 8);
        v18 = *(v16 + 4);
        if (v18 < 0x100)
        {
          v19 = WTF::StringImpl::hashSlowCase(v16);
        }

        else
        {
          v19 = v18 >> 8;
        }

        for (i = 0; ; v19 = i + v21)
        {
          v21 = v19 & v17;
          v22 = *(v10 + 32 * v21);
          if (v22 != -1)
          {
            if (!v22)
            {
              v25 = *(v37 + 4);
              if (!v25)
              {
                v24 = 0;
                LODWORD(v10) = 0;
                goto LABEL_38;
              }

              v26 = v25 + 32 * *(v25 - 4);
              goto LABEL_35;
            }

            if (WTF::equal(v22, *a3, v15))
            {
              break;
            }
          }

          ++i;
        }

        v26 = v10 + 32 * v21;
        v25 = *(v37 + 4);
        if (v25)
        {
LABEL_35:
          v27 = v38;
          v25 += 32 * *(v25 - 4);
          goto LABEL_40;
        }

        v27 = v38;
LABEL_40:
        if (v25 == v26)
        {
          goto LABEL_45;
        }

        v31 = *(v26 + 8);
        v30 = v26 + 8;
        v29 = v31;
        MEMORY[0x19EB07E50](buf, a3);
        v32 = WebCore::PlatformPasteboard::changeCount(buf);
        v33 = *buf;
        *buf = 0;
        if (v33)
        {
        }

        if (v29 != v32)
        {
LABEL_45:
          v24 = 0;
          LODWORD(v10) = 0;
        }

        else
        {
          v34 = WebKit::WebPasteboardProxy::PasteboardAccessInformation::accessType(v30, v27);
          v24 = v34;
          LODWORD(v10) = HIBYTE(v34);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v36 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "std::optional<WebPasteboardProxy::PasteboardAccessType> WebKit::WebPasteboardProxy::accessType(IPC::Connection &, const String &) const";
        _os_log_fault_impl(&dword_19D52D000, v36, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 139: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
      {
        LODWORD(v10) = 0;
        v24 = 0;
        return v24 | (v10 << 8);
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DD2954CLL);
  }

  v23 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "std::optional<WebPasteboardProxy::PasteboardAccessType> WebKit::WebPasteboardProxy::accessType(IPC::Connection &, const String &) const";
    _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 136: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD29574);
  }

  v24 = 0;
  LODWORD(v10) = 0;
  return v24 | (v10 << 8);
}

uint64_t WebKit::WebPasteboardProxy::PasteboardAccessInformation::accessType(uint64_t this, WebKit::WebProcessProxy *a2)
{
  v2 = *(this + 20);
  if (!v2)
  {
LABEL_7:
    v6 = 0;
    return v2 | (v6 << 8);
  }

  v3 = 0;
  v4 = (*(this + 8) + 8);
  while (1)
  {
    v5 = *(v4 - 1);
    if (v5)
    {
      if (*(v5 + 8) == a2)
      {
        break;
      }
    }

    ++v3;
    v4 += 16;
    if (v2 == v3)
    {
      LODWORD(v2) = 0;
      goto LABEL_7;
    }
  }

  if (v3 < v2)
  {
    LODWORD(v2) = *v4;
    v6 = 1;
    return v2 | (v6 << 8);
  }

  __break(0xC471u);
  return this;
}

void WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(WebKit::WebPasteboardProxy *this, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  WebKit::WebPasteboardProxy::webProcessProxyForConnection(&v23, this, a2);
  v11 = v23;
  if (v23)
  {
    v12 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::WebPasteboardProxy::PasteboardAccessInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::WebPasteboardProxy::PasteboardAccessInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 4, a3, v10);
    v14 = v12;
    v15 = *(this + 4);
    if (v15)
    {
      v15 += 32 * *(v15 - 4);
    }

    if (v15 == v12 || (v16 = v12 + 8, *(v14 + 8) != a4) || (v17 = WebKit::WebPasteboardProxy::PasteboardAccessInformation::accessType(v16, v11), v18 = v17, v17 < 0x100u))
    {
      v23 = 0;
LABEL_8:
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16), v13);
      return;
    }

    *buf = a5;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v11 + 8), v11);
    v19 = *(v11 + 8);
    atomic_fetch_add(v19, 1u);
    v24 = v19;
    v25 = v18;
    WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&buf[8], &v24, 1uLL);
    *(v14 + 8) = *buf;
    WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v14 + 16, &buf[8]);
    WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v20);
    v21 = v24;
    v24 = 0;
    if (v21)
    {
      if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v21);
        WTF::fastFree(v21, v13);
      }
    }

    v11 = v23;
    v23 = 0;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v22 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::didModifyContentsOfPasteboard(IPC::Connection &, const String &, int64_t, int64_t)";
      _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 172: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD297E0);
    }
  }
}

void sub_19DD29828(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  WTF::Vector<std::pair<WTF::WeakPtr<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WebKit::WebPasteboardProxy::PasteboardAccessType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11 + 8, a2);
  if (a11 && atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a11);
    WTF::fastFree(a11, v13);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((a10 + 16), v13);
  }

  _Unwind_Resume(a1);
}

void WebKit::WebPasteboardProxy::getPasteboardTypes(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = a5;
  v17 = *MEMORY[0x1E69E9840];
  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a3) <= 0xFFu)
  {
    v16 = 0uLL;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a6);
LABEL_3:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v12);
    return;
  }

  v13 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a4, v7, 0);
  if (v13 <= 0xFF)
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v16) = 136446210;
      *(&v16 + 4) = "void WebKit::WebPasteboardProxy::getPasteboardTypes(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<String> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 187: Invalid message dispatched %{public}s", &v16, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      v16 = 0uLL;
      WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a6);
      goto LABEL_3;
    }

    __break(0xC471u);
  }

  else
  {
    v14 = WTF::fastMalloc(v13, 0x18);
    *v14 = &unk_1F1106080;
    v14[1] = a3;
    v14[2] = a6;
    *&v16 = v14;
    WebCore::PlatformPasteboard::performAsDataOwner();
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPasteboardProxy::determineDataOwner(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3 || !*(a3 + 4))
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "std::optional<DataOwnerType> WebKit::WebPasteboardProxy::determineDataOwner(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, PasteboardAccessIntent) const";
      _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 672: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      v13 = 0;
      v14 = 0;
      return v13 | (v14 << 8);
    }

    __break(0xC471u);
LABEL_26:
    JUMPOUT(0x19DD29DA8);
  }

  WebKit::WebPasteboardProxy::webProcessProxyForConnection(&v19, a1, a2);
  v11 = v19;
  if (!v19)
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "std::optional<DataOwnerType> WebKit::WebPasteboardProxy::determineDataOwner(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, PasteboardAccessIntent) const";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 675: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      v14 = 0;
      v13 = 0;
      return v13 | (v14 << 8);
    }

    __break(0xC471u);
    goto LABEL_26;
  }

  if (a5)
  {
    WebKit::WebProcessProxy::webPage(a4, buf);
    v12 = *buf;
    if (!*buf)
    {
      v17 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "std::optional<DataOwnerType> WebKit::WebPasteboardProxy::determineDataOwner(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, PasteboardAccessIntent) const";
        _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 686: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD29DB0);
      }

      v14 = 0;
      v13 = 0;
      goto LABEL_9;
    }

    v13 = WebKit::WebPageProxy::dataOwnerForPasteboard(*buf, a6);
    CFRelease(*(v12 + 8));
  }

  else
  {
    v13 = 0;
  }

  v14 = 1;
LABEL_9:
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16), v10);
  return v13 | (v14 << 8);
}

uint64_t WebKit::WebPasteboardProxy::getPasteboardPathnamesForType(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*a4 || !*(*a4 + 4))
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::getPasteboardPathnamesForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<String> &&, Vector<SandboxExtension::Handle> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 199: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_17:
      __break(0xC471u);
      JUMPOUT(0x19DD2A040);
    }

LABEL_11:
    *buf = 0uLL;
    v21 = 0;
    v22 = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a7);
    goto LABEL_12;
  }

  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a3) <= 0xFFu)
  {
    *buf = 0uLL;
    v21 = 0;
    v22 = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a7);
LABEL_12:
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v14);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v19);
  }

  v15 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a5, a6, 0);
  if (v15 <= 0xFF)
  {
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::getPasteboardPathnamesForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<String> &&, Vector<SandboxExtension::Handle> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 206: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v16 = WTF::fastMalloc(v15, 0x30);
  *v16 = &unk_1F11060A8;
  v16[1] = a1;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a7;
  *buf = v16;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *buf;
  if (*buf)
  {
    return (*(**buf + 8))(*buf);
  }

  return result;
}

void sub_19DD2A04C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v12);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

WTF::StringImpl *WebKit::WebPasteboardProxy::getPasteboardStringForType(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*a4 || !*(*a4 + 4))
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::getPasteboardStringForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (String &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 230: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_20;
    }

LABEL_12:
    *v21 = 0;
    WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(a7);
    goto LABEL_13;
  }

  v14 = WebKit::WebPasteboardProxy::accessType(a1, a2, a3);
  if (v14 >= 0x100u && v14 == 1)
  {
    v15 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a5, a6, 0);
    if (v15 > 0xFF)
    {
      v16 = WTF::fastMalloc(v15, 0x20);
      *v16 = &unk_1F11060D0;
      v16[1] = a7;
      v16[2] = a3;
      v16[3] = a4;
      *v21 = v16;
      WebCore::PlatformPasteboard::performAsDataOwner();
      result = *v21;
      if (*v21)
      {
        return (*(**v21 + 8))(*v21);
      }

      return result;
    }

    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::getPasteboardStringForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (String &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 236: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19DD2A3DCLL);
    }

    goto LABEL_12;
  }

  *v21 = 0;
  WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(a7);
LABEL_13:
  result = *v21;
  *v21 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v18);
  }

  return result;
}

void sub_19DD2A3E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t WebKit::WebPasteboardProxy::getPasteboardStringsForType(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*a4 || !*(*a4 + 4))
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v21) = 136446210;
      *(&v21 + 4) = "void WebKit::WebPasteboardProxy::getPasteboardStringsForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<String> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 245: Invalid message dispatched %{public}s", &v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_18:
      __break(0xC471u);
      JUMPOUT(0x19DD2A6BCLL);
    }

    goto LABEL_12;
  }

  v14 = WebKit::WebPasteboardProxy::accessType(a1, a2, a3);
  if (v14 < 0x100u || v14 != 1)
  {
    v21 = 0uLL;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a7);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v18);
  }

  v15 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a5, a6, 0);
  if (v15 <= 0xFF)
  {
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v21) = 136446210;
      *(&v21 + 4) = "void WebKit::WebPasteboardProxy::getPasteboardStringsForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<String> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 251: Invalid message dispatched %{public}s", &v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_18;
    }

LABEL_12:
    v21 = 0uLL;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a7);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v18);
  }

  v16 = WTF::fastMalloc(v15, 0x20);
  *v16 = &unk_1F11060F8;
  v16[1] = a7;
  v16[2] = a3;
  v16[3] = a4;
  *&v21 = v16;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = v21;
  if (v21)
  {
    return (*(*v21 + 8))(v21);
  }

  return result;
}

WTF::StringImpl *WebKit::WebPasteboardProxy::getPasteboardBufferForType(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a4 && *(*a4 + 4))
  {
    v14 = WebKit::WebPasteboardProxy::accessType(a1, a2, a3);
    if (v14 < 0x100u || v14 != 1)
    {
      v23 = 0uLL;
      v24 = 0;
      WTF::CompletionHandler<void ()(WebCore::PasteboardBuffer &&)>::operator()(a7);
      goto LABEL_13;
    }

    v15 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a5, a6, 0);
    if (v15 > 0xFF)
    {
      v16 = WTF::fastMalloc(v15, 0x20);
      *v16 = &unk_1F1106120;
      v16[1] = a3;
      v16[2] = a4;
      v16[3] = a7;
      *&v23 = v16;
      WebCore::PlatformPasteboard::performAsDataOwner();
      result = v23;
      if (v23)
      {
        return (*(*v23 + 8))(v23);
      }

      return result;
    }

    v22 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v23) = 136446210;
      *(&v23 + 4) = "void WebKit::WebPasteboardProxy::getPasteboardBufferForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (WebCore::PasteboardBuffer &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 266: Invalid message dispatched %{public}s", &v23, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_26:
      __break(0xC471u);
      JUMPOUT(0x19DD2AA14);
    }
  }

  else
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v23) = 136446210;
      *(&v23 + 4) = "void WebKit::WebPasteboardProxy::getPasteboardBufferForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (WebCore::PasteboardBuffer &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 260: Invalid message dispatched %{public}s", &v23, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_26;
    }
  }

  v23 = 0uLL;
  v24 = 0;
  WTF::CompletionHandler<void ()(WebCore::PasteboardBuffer &&)>::operator()(a7);
LABEL_13:
  v20 = v24;
  v24 = 0;
  if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20 + 2);
    (*(*v20 + 8))(v20);
  }

  v21 = *(&v23 + 1);
  *(&v23 + 1) = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v18);
  }

  result = v23;
  *&v23 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v18);
  }

  return result;
}

void sub_19DD2AA20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF::StringImpl *a9, WTF::StringImpl *a10, unsigned int *a11)
{
  if (a11 && atomic_fetch_add(a11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a11 + 2);
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

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

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::PasteboardBuffer &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPasteboardProxy::getPasteboardChangeCount(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  if (!v9 || !*(v9 + 4))
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::getPasteboardChangeCount(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 276: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_14:
      __break(0xC471u);
      JUMPOUT(0x19DD2ADA0);
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a6);
  }

  v10 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v9, a4, a5, 0);
  if (v10 <= 0xFF)
  {
    v14 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::getPasteboardChangeCount(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 279: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_14;
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a6);
  }

  v11 = WTF::fastMalloc(v10, 0x18);
  *v11 = &unk_1F1106148;
  v11[1] = a6;
  v11[2] = a3;
  *v15 = v11;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *v15;
  if (*v15)
  {
    return (*(**v15 + 8))(*v15);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(long long)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebPasteboardProxy::getPasteboardColor(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, char a5, uint64_t *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = WebKit::WebPasteboardProxy::accessType(a1, a2, a3);
  if (v12 < 0x100u || v12 != 1)
  {
    *v19 = 0;
    WTF::CompletionHandler<void ()(WebCore::Color &&)>::operator()(a6);
LABEL_6:
    if ((*v19 & 0x8000000000000) != 0)
    {
      v15 = (*v19 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((*v19 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v14);
      }
    }

    return;
  }

  v16 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a4, a5, 0);
  if (v16 <= 0xFF)
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v19 = 136446210;
      *&v19[4] = "void WebKit::WebPasteboardProxy::getPasteboardColor(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (WebCore::Color &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 292: Invalid message dispatched %{public}s", v19, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }

    *v19 = 0;
    WTF::CompletionHandler<void ()(WebCore::Color &&)>::operator()(a6);
    goto LABEL_6;
  }

  v17 = WTF::fastMalloc(v16, 0x18);
  *v17 = &unk_1F1106170;
  v17[1] = a6;
  v17[2] = a3;
  *v19 = v17;
  WebCore::PlatformPasteboard::performAsDataOwner();
  if (*v19)
  {
    (*(**v19 + 8))(*v19);
  }
}

void sub_19DD2B08C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a9 & 0x8000000000000) != 0)
  {
    v10 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WTF::fastFree(v10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WebCore::Color &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebPasteboardProxy::getPasteboardURL(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, char a5, WTF::RefCountedBase *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = WebKit::WebPasteboardProxy::accessType(a1, a2, a3);
  if (v12 < 0x100u || v12 != 1)
  {
LABEL_5:
    *v19 = 0;
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()(a6, v19);
    v15 = *v19;
    *v19 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }
    }

    return;
  }

  v16 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a4, a5, 0);
  if (v16 <= 0xFF)
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v19 = 136446210;
      *&v19[4] = "void WebKit::WebPasteboardProxy::getPasteboardURL(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (const String &)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 305: Invalid message dispatched %{public}s", v19, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }

    goto LABEL_5;
  }

  v17 = WTF::fastMalloc(v16, 0x18);
  *v17 = &unk_1F1106198;
  v17[1] = a6;
  v17[2] = a3;
  *v19 = v17;
  WebCore::PlatformPasteboard::performAsDataOwner();
  if (*v19)
  {
    (*(**v19 + 8))(*v19);
  }
}

void sub_19DD2B390(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t WebKit::WebPasteboardProxy::addPasteboardTypes(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  if (!v10 || !*(v10 + 4))
  {
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v22 = 136446210;
      *&v22[4] = "void WebKit::WebPasteboardProxy::addPasteboardTypes(IPC::Connection &, const String &, const Vector<String> &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 314: Invalid message dispatched %{public}s", v22, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD2B6C0);
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  v13 = *(a4 + 3);
  if (v13)
  {
    v14 = *a4;
    v15 = 8 * v13;
    while (*v14 && *(*v14 + 4))
    {
      v14 += 8;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v22 = 136446210;
      *&v22[4] = "void WebKit::WebPasteboardProxy::addPasteboardTypes(IPC::Connection &, const String &, const Vector<String> &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 317: Invalid message dispatched %{public}s", v22, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
    }

LABEL_26:
    __break(0xC471u);
    JUMPOUT(0x19DD2B6B8);
  }

LABEL_8:
  v16 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v10, a5, a6, 1);
  if (v16 <= 0xFF)
  {
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v22 = 136446210;
      *&v22[4] = "void WebKit::WebPasteboardProxy::addPasteboardTypes(IPC::Connection &, const String &, const Vector<String> &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 320: Invalid message dispatched %{public}s", v22, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_26;
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  v17 = WTF::fastMalloc(v16, 0x30);
  *v17 = &unk_1F11061C0;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a7;
  *v22 = v17;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *v22;
  if (*v22)
  {
    return (*(**v22 + 8))(*v22);
  }

  return result;
}

void sub_19DD2B6CC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPasteboardProxy::setPasteboardTypes(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  if (!v10 || !*(v10 + 4))
  {
    v22 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::setPasteboardTypes(IPC::Connection &, const String &, const Vector<String> &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 332: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD2BA00);
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  v11 = a6;
  v15 = *(a4 + 3);
  if (v15)
  {
    v16 = *a4;
    v17 = 8 * v15;
    while (*v16 && *(*v16 + 4))
    {
      v16 += 8;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::setPasteboardTypes(IPC::Connection &, const String &, const Vector<String> &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 335: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
    }

LABEL_26:
    __break(0xC471u);
    JUMPOUT(0x19DD2B9F8);
  }

LABEL_8:
  if (WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v10, a5, a6, 1) <= 0xFFu)
  {
    v23 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::setPasteboardTypes(IPC::Connection &, const String &, const Vector<String> &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v23, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 338: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_26;
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  v24 = WebKit::determineDataLifetime(a5, v11);
  v19 = WTF::fastMalloc(v18, 0x38);
  *v19 = &unk_1F11061E8;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = &v24;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a7;
  *buf = v19;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *buf;
  if (*buf)
  {
    return (*(**buf + 8))(*buf);
  }

  return result;
}

void sub_19DD2BA0C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

BOOL WebKit::determineDataLifetime(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  WebKit::WebProcessProxy::webPage(a1, &v4);
  if (!v4)
  {
    return 0;
  }

  v2 = *(v4[51] + 3) < -1;
  CFRelease(v4[1]);
  return v2;
}

atomic_uint *WebKit::WebPasteboardProxy::setPasteboardURL(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*a4 || !*(*a4 + 4))
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::setPasteboardURL(IPC::Connection &, const PasteboardURL &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 352: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
    }

    __break(0xC471u);
LABEL_26:
    JUMPOUT(0x19DD2BD90);
  }

  WebKit::WebPasteboardProxy::webProcessProxyForConnection(&v22, a1, a2);
  v14 = v22;
  if (!v22)
  {
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::setPasteboardURL(IPC::Connection &, const PasteboardURL &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 355: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD2BD98);
    }

LABEL_16:
    result = WTF::CompletionHandler<void ()(long long)>::operator()(a7);
    if (!v14)
    {
      return result;
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16), v17);
  }

  if ((*(a3 + 8) & 1) == 0 || !WebKit::WebProcessProxy::checkURLReceivedFromWebProcess(v22, a3, 0))
  {
    goto LABEL_16;
  }

  v15 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a4, a5, a6, 1);
  if (v15 > 0xFF)
  {
    v16 = WTF::fastMalloc(v15, 0x30);
    *v16 = &unk_1F1106210;
    v16[1] = a4;
    v16[2] = a3;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a7;
    *buf = v16;
    WebCore::PlatformPasteboard::performAsDataOwner();
    if (*buf)
    {
      (*(**buf + 8))(*buf);
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16), v17);
  }

  v21 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::WebPasteboardProxy::setPasteboardURL(IPC::Connection &, const PasteboardURL &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
    _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 364: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(a2 + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_26;
  }

  WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16), v17);
}

void sub_19DD2BDA4(_Unwind_Exception *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16), a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::WebPasteboardProxy::setPasteboardColor(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = *a3;
  if (!v10 || !*(v10 + 4))
  {
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v18 = 136446210;
      *&v18[4] = "void WebKit::WebPasteboardProxy::setPasteboardColor(IPC::Connection &, const String &, const WebCore::Color &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 376: Invalid message dispatched %{public}s", v18, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_14:
      __break(0xC471u);
      JUMPOUT(0x19DD2C018);
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  v13 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v10, a5, a6, 1);
  if (v13 <= 0xFF)
  {
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v18 = 136446210;
      *&v18[4] = "void WebKit::WebPasteboardProxy::setPasteboardColor(IPC::Connection &, const String &, const WebCore::Color &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 379: Invalid message dispatched %{public}s", v18, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_14;
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  v14 = WTF::fastMalloc(v13, 0x30);
  *v14 = &unk_1F1106238;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a7;
  *v18 = v14;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *v18;
  if (*v18)
  {
    return (*(**v18 + 8))(*v18);
  }

  return result;
}

uint64_t WebKit::WebPasteboardProxy::setPasteboardStringForType(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = *a3;
  if (!v11 || !*(v11 + 4))
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::setPasteboardStringForType(IPC::Connection &, const String &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 391: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::CompletionHandler<void ()(long long)>::operator()(a8);
    }

    goto LABEL_23;
  }

  if (!*a4 || !*(*a4 + 4))
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::setPasteboardStringForType(IPC::Connection &, const String &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 392: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD2C324);
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a8);
  }

  v15 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v11, a6, a7, 1);
  if (v15 <= 0xFF)
  {
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::setPasteboardStringForType(IPC::Connection &, const String &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 395: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::CompletionHandler<void ()(long long)>::operator()(a8);
    }

LABEL_23:
    __break(0xC471u);
    JUMPOUT(0x19DD2C31CLL);
  }

  v16 = WTF::fastMalloc(v15, 0x38);
  *v16 = &unk_1F1106260;
  v16[1] = a3;
  v16[2] = a5;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a8;
  *v21 = v16;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *v21;
  if (*v21)
  {
    return (*(**v21 + 8))(*v21);
  }

  return result;
}

void WebKit::WebPasteboardProxy::containsURLStringSuitableForLoading(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t a4, char a5, WTF::RefCountedBase *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a3) > 0xFFu)
  {
    v12 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a4, a5, 0);
    if (v12 <= 0xFF)
    {
      v14 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v15 = 136446210;
        *&v15[4] = "void WebKit::WebPasteboardProxy::containsURLStringSuitableForLoading(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (BOOL)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 411: Invalid message dispatched %{public}s", v15, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
      }

      else
      {
        WTF::CompletionHandler<void ()(BOOL)>::operator()(a6, 0);
      }
    }

    else
    {
      v13 = WTF::fastMalloc(v12, 0x18);
      *v13 = &unk_1F1106288;
      v13[1] = a6;
      v13[2] = a3;
      *v15 = v13;
      WebCore::PlatformPasteboard::performAsDataOwner();
      if (*v15)
      {
        (*(**v15 + 8))(*v15);
      }
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a6, 0);
  }
}

void WebKit::WebPasteboardProxy::urlStringSuitableForLoading(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, char a5, uint64_t *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = WebKit::WebPasteboardProxy::accessType(a1, a2, a3);
  if (v12 < 0x100u || v12 != 1)
  {
    *buf = 0;
    WTF::CompletionHandler<void ()(WTF::String &&,WTF::String &)>::operator()(a6);
LABEL_6:
    v15 = *buf;
    *buf = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }
    }

    return;
  }

  v16 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a4, a5, 0);
  if (v16 <= 0xFF)
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::urlStringSuitableForLoading(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (String &&, String &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 424: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }

    *buf = 0;
    WTF::CompletionHandler<void ()(WTF::String &&,WTF::String &)>::operator()(a6);
    goto LABEL_6;
  }

  v17 = WTF::fastMalloc(v16, 0x18);
  *v17 = &unk_1F11062B0;
  v17[1] = a3;
  v17[2] = a6;
  *buf = v17;
  WebCore::PlatformPasteboard::performAsDataOwner();
  if (*buf)
  {
    (*(**buf + 8))(*buf);
  }
}

void sub_19DD2C7B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(WTF::String &&,WTF::String &)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WebKit::WebPasteboardProxy::setPasteboardBufferForType(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = *a3;
  if (!v11 || !*(v11 + 4))
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::setPasteboardBufferForType(IPC::Connection &, const String &, const String &, RefPtr<SharedBuffer> &&, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 435: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::CompletionHandler<void ()(long long)>::operator()(a8);
    }

    goto LABEL_23;
  }

  if (!*a4 || !*(*a4 + 4))
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::setPasteboardBufferForType(IPC::Connection &, const String &, const String &, RefPtr<SharedBuffer> &&, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 436: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD2CBA4);
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a8);
  }

  v15 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v11, a6, a7, 1);
  if (v15 <= 0xFF)
  {
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 136446210;
      *&v21[4] = "void WebKit::WebPasteboardProxy::setPasteboardBufferForType(IPC::Connection &, const String &, const String &, RefPtr<SharedBuffer> &&, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 439: Invalid message dispatched %{public}s", v21, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return WTF::CompletionHandler<void ()(long long)>::operator()(a8);
    }

LABEL_23:
    __break(0xC471u);
    JUMPOUT(0x19DD2CB9CLL);
  }

  v16 = WTF::fastMalloc(v15, 0x38);
  *v16 = &unk_1F11062D8;
  v16[1] = a3;
  v16[2] = a5;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a8;
  *v21 = v16;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *v21;
  if (*v21)
  {
    return (*(**v21 + 8))(*v21);
  }

  return result;
}

void WebKit::WebPasteboardProxy::getNumberOfFiles(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a3) > 0xFFu)
  {
    v12 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a4, a5, 0);
    if (v12 <= 0xFF)
    {
      v14 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v15 = 136446210;
        *&v15[4] = "void WebKit::WebPasteboardProxy::getNumberOfFiles(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (uint64_t)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 460: Invalid message dispatched %{public}s", v15, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
      }

      else
      {
        WTF::CompletionHandler<void ()(unsigned long long)>::operator()(a6);
      }
    }

    else
    {
      v13 = WTF::fastMalloc(v12, 0x18);
      *v13 = &unk_1F1106300;
      v13[1] = a6;
      v13[2] = a3;
      *v15 = v13;
      WebCore::PlatformPasteboard::performAsDataOwner();
      if (*v15)
      {
        (*(**v15 + 8))(*v15);
      }
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(unsigned long long)>::operator()(a6);
  }
}

uint64_t WebKit::WebPasteboardProxy::typesSafeForDOMToReadAndWrite(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, void *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*a4)
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v20) = 136446210;
      *(&v20 + 4) = "void WebKit::WebPasteboardProxy::typesSafeForDOMToReadAndWrite(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<String> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 469: Invalid message dispatched %{public}s", &v20, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_16:
      __break(0xC471u);
      JUMPOUT(0x19DD2D080);
    }

LABEL_12:
    v20 = 0uLL;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a7);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v14);
  }

  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a3) <= 0xFFu)
  {
    v20 = 0uLL;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a7);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v14);
  }

  v16 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a5, a6, 0);
  if (v16 <= 0xFF)
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v20) = 136446210;
      *(&v20 + 4) = "void WebKit::WebPasteboardProxy::typesSafeForDOMToReadAndWrite(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<String> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 475: Invalid message dispatched %{public}s", &v20, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v17 = WTF::fastMalloc(v16, 0x20);
  *v17 = &unk_1F1106328;
  v17[1] = a7;
  v17[2] = a3;
  v17[3] = a4;
  *&v20 = v17;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = v20;
  if (v20)
  {
    return (*(*v20 + 8))(v20);
  }

  return result;
}

uint64_t WebKit::WebPasteboardProxy::writeCustomData(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  if (!*a4 || !*(v10 + 4))
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::writeCustomData(IPC::Connection &, const Vector<PasteboardCustomData> &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 484: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_14:
      __break(0xC471u);
      JUMPOUT(0x19DD2D318);
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  if (WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v10, a5, a6, 1) <= 0xFFu)
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::writeCustomData(IPC::Connection &, const Vector<PasteboardCustomData> &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (int64_t)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 487: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_14;
    }

    return WTF::CompletionHandler<void ()(long long)>::operator()(a7);
  }

  v20 = WebKit::determineDataLifetime(a5, a6);
  v16 = WTF::fastMalloc(v15, 0x38);
  *v16 = &unk_1F1106350;
  v16[1] = a4;
  v16[2] = a3;
  v16[3] = &v20;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a7;
  *buf = v16;
  WebCore::PlatformPasteboard::performAsDataOwner();
  result = *buf;
  if (*buf)
  {
    return (*(**buf + 8))(*buf);
  }

  return result;
}

void WebKit::WebPasteboardProxy::allPasteboardItemInfo(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, const WTF::StringImpl **a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = a4;
  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a3) <= 0xFFu)
  {
    buf[0] = 0;
    v19 = 0;
    WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(a7);
LABEL_3:
    if (v19 == 1)
    {
      WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v13);
    }

    return;
  }

  v14 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a5, a6, 0);
  if (v14 <= 0xFF)
  {
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::allPasteboardItemInfo(IPC::Connection &, const String &, int64_t, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (std::optional<Vector<PasteboardItemInfo>> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 505: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }

    buf[0] = 0;
    v19 = 0;
    WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(a7);
    goto LABEL_3;
  }

  v15 = WTF::fastMalloc(v14, 0x20);
  *v15 = &unk_1F1106378;
  v15[1] = a7;
  v15[2] = a3;
  v15[3] = &v17;
  *buf = v15;
  WebCore::PlatformPasteboard::performAsDataOwner();
  if (*buf)
  {
    (*(**buf + 8))(*buf);
  }
}

void sub_19DD2D548(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WTF::Vector<WebCore::PasteboardItemInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebPasteboardProxy::informationForItemAtIndex(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, const WTF::StringImpl **a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = a5;
  v23 = a3;
  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a4) <= 0xFFu)
  {
    buf[0] = 0;
    v29 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebCore::PasteboardItemInfo> &&)>::operator()(a8);
LABEL_3:
    if (v29 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v14);
      v16 = v27;
      v27 = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v15);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v17);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v18);
    }

    return;
  }

  v19 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a4, a6, a7, 0);
  if (v19 <= 0xFF)
  {
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::informationForItemAtIndex(IPC::Connection &, uint64_t, const String &, int64_t, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (std::optional<PasteboardItemInfo> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 518: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }

    buf[0] = 0;
    v29 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebCore::PasteboardItemInfo> &&)>::operator()(a8);
    goto LABEL_3;
  }

  v20 = WTF::fastMalloc(v19, 0x28);
  *v20 = &unk_1F11063A0;
  v20[1] = a8;
  v20[2] = a4;
  v20[3] = &v23;
  v20[4] = &v22;
  *buf = v20;
  WebCore::PlatformPasteboard::performAsDataOwner();
  if (*buf)
  {
    (*(**buf + 8))(*buf);
  }
}

void sub_19DD2D87C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a26 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a23, a2);
    v28 = a17;
    a17 = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v27);
      }
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a15, v27);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v29);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::PasteboardItemInfo> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebPasteboardProxy::getPasteboardItemsCount(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a3) > 0xFFu)
  {
    v12 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a3, a4, a5, 0);
    if (v12 <= 0xFF)
    {
      v14 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v15 = 136446210;
        *&v15[4] = "void WebKit::WebPasteboardProxy::getPasteboardItemsCount(IPC::Connection &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (uint64_t)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 531: Invalid message dispatched %{public}s", v15, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
      }

      else
      {
        WTF::CompletionHandler<void ()(unsigned long long)>::operator()(a6);
      }
    }

    else
    {
      v13 = WTF::fastMalloc(v12, 0x18);
      *v13 = &unk_1F11063C8;
      v13[1] = a6;
      v13[2] = a3;
      *v15 = v13;
      WebCore::PlatformPasteboard::performAsDataOwner();
      if (*v15)
      {
        (*(**v15 + 8))(*v15);
      }
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(unsigned long long)>::operator()(a6);
  }
}

WTF::StringImpl *WebKit::WebPasteboardProxy::readStringFromPasteboard(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t a4, const WTF::StringImpl **a5, uint64_t a6, char a7, uint64_t *a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = a3;
  if (!*a4 || !*(*a4 + 4))
  {
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::readStringFromPasteboard(IPC::Connection &, uint64_t, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (String &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 540: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_20;
    }

LABEL_12:
    *buf = 0;
    WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(a8);
    goto LABEL_13;
  }

  v15 = WebKit::WebPasteboardProxy::accessType(a1, a2, a5);
  if (v15 >= 0x100u && v15 == 1)
  {
    v16 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a5, a6, a7, 0);
    if (v16 > 0xFF)
    {
      v17 = WTF::fastMalloc(v16, 0x28);
      *v17 = &unk_1F11063F0;
      v17[1] = a8;
      v17[2] = a5;
      v17[3] = &v22;
      v17[4] = a4;
      *buf = v17;
      WebCore::PlatformPasteboard::performAsDataOwner();
      result = *buf;
      if (*buf)
      {
        return (*(**buf + 8))(*buf);
      }

      return result;
    }

    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::readStringFromPasteboard(IPC::Connection &, uint64_t, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (String &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 546: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19DD2DE88);
    }

    goto LABEL_12;
  }

  *buf = 0;
  WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(a8);
LABEL_13:
  result = *buf;
  *buf = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v19);
  }

  return result;
}

void sub_19DD2DE94(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPasteboardProxy::readURLFromPasteboard(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, const WTF::StringImpl **a4, uint64_t a5, char a6, uint64_t *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v13 = WebKit::WebPasteboardProxy::accessType(a1, a2, a4);
  if (v13 < 0x100u || v13 != 1)
  {
    *buf = 0;
    WTF::CompletionHandler<void ()(WTF::String &&,WTF::String &)>::operator()(a7);
LABEL_6:
    v16 = *buf;
    *buf = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v15);
      }
    }

    return;
  }

  v17 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a4, a5, a6, 0);
  if (v17 <= 0xFF)
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::readURLFromPasteboard(IPC::Connection &, uint64_t, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (String &&, String &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 559: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }

    *buf = 0;
    WTF::CompletionHandler<void ()(WTF::String &&,WTF::String &)>::operator()(a7);
    goto LABEL_6;
  }

  v18 = WTF::fastMalloc(v17, 0x20);
  *v18 = &unk_1F1106418;
  v18[1] = a4;
  v18[2] = &v20;
  v18[3] = a7;
  *buf = v18;
  WebCore::PlatformPasteboard::performAsDataOwner();
  if (*buf)
  {
    (*(**buf + 8))(*buf);
  }
}

void sub_19DD2E11C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebKit::WebPasteboardProxy::readBufferFromPasteboard(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t a4, uint64_t a5, const WTF::StringImpl **a6, uint64_t a7, char a8, uint64_t *a9)
{
  v23 = *MEMORY[0x1E69E9840];
  v21[0] = a3;
  v21[1] = a4;
  if (!*a5 || !*(*a5 + 4))
  {
    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::readBufferFromPasteboard(IPC::Connection &, std::optional<uint64_t>, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (RefPtr<SharedBuffer> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 570: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_20;
    }

LABEL_12:
    *buf = 0;
    WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>::operator()(a9);
    goto LABEL_13;
  }

  v15 = WebKit::WebPasteboardProxy::accessType(a1, a2, a6);
  if (v15 >= 0x100u && v15 == 1)
  {
    v16 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a6, a7, a8, 0);
    if (v16 > 0xFF)
    {
      v17 = WTF::fastMalloc(v16, 0x28);
      *v17 = &unk_1F1106440;
      v17[1] = a9;
      v17[2] = a6;
      v17[3] = v21;
      v17[4] = a5;
      *buf = v17;
      WebCore::PlatformPasteboard::performAsDataOwner();
      result = *buf;
      if (*buf)
      {
        return (*(**buf + 8))(*buf);
      }

      return result;
    }

    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::WebPasteboardProxy::readBufferFromPasteboard(IPC::Connection &, std::optional<uint64_t>, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (RefPtr<SharedBuffer> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 576: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19DD2E460);
    }

    goto LABEL_12;
  }

  *buf = 0;
  WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>::operator()(a9);
LABEL_13:
  result = *buf;
  *buf = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DD2E46C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  if (a11)
  {
    if (atomic_fetch_add(a11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a11 + 2);
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPasteboardProxy::containsStringSafeForDOMToReadForType(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, WTF::String *a4, uint64_t a5, char a6, WTF::RefCountedBase *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  if (WebKit::WebPasteboardProxy::accessType(a1, a2, a4) > 0xFFu)
  {
    v14 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, *a4, a5, a6, 0);
    if (v14 <= 0xFF)
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v17 = 136446210;
        *&v17[4] = "void WebKit::WebPasteboardProxy::containsStringSafeForDOMToReadForType(IPC::Connection &, const String &, const String &, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (BOOL)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 589: Invalid message dispatched %{public}s", v17, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
      }

      else
      {
        WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
      }
    }

    else
    {
      v15 = WTF::fastMalloc(v14, 0x20);
      *v15 = &unk_1F1106468;
      v15[1] = a7;
      v15[2] = a4;
      v15[3] = a3;
      *v17 = v15;
      WebCore::PlatformPasteboard::performAsDataOwner();
      if (*v17)
      {
        (*(**v17 + 8))(*v17);
      }
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a7, 0);
  }
}

void WebKit::WebPasteboardProxy::writeURLToPasteboard(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  if (*a4 && *(v8 + 4))
  {
    v11 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v8, a5, a6, 1);
    if (v11 > 0xFF)
    {
      v12 = WTF::fastMalloc(v11, 0x28);
      *v12 = &unk_1F1106490;
      v12[1] = a4;
      v12[2] = a3;
      v12[3] = a1;
      v12[4] = a2;
      *v15 = v12;
      WebCore::PlatformPasteboard::performAsDataOwner();
      if (*v15)
      {
        (*(**v15 + 8))(*v15);
      }

      return;
    }

    v14 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::writeURLToPasteboard(IPC::Connection &, const PasteboardURL &, const String &, std::optional<WebPageProxyIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 603: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_13:
      __break(0xC471u);
      JUMPOUT(0x19DD2E8F4);
    }
  }

  else
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::writeURLToPasteboard(IPC::Connection &, const PasteboardURL &, const String &, std::optional<WebPageProxyIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 600: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_13;
    }
  }
}

void sub_19DD2E944(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPasteboardProxy::writeWebContentToPasteboard(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  if (*a4 && *(v8 + 4))
  {
    v11 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v8, a5, a6, 1);
    if (v11 > 0xFF)
    {
      v12 = WTF::fastMalloc(v11, 0x28);
      *v12 = &unk_1F11064B8;
      v12[1] = a4;
      v12[2] = a3;
      v12[3] = a1;
      v12[4] = a2;
      *v15 = v12;
      WebCore::PlatformPasteboard::performAsDataOwner();
      if (*v15)
      {
        (*(**v15 + 8))(*v15);
      }

      return;
    }

    v14 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::writeWebContentToPasteboard(IPC::Connection &, const WebCore::PasteboardWebContent &, const String &, std::optional<WebPageProxyIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 619: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_13:
      __break(0xC471u);
      JUMPOUT(0x19DD2EB30);
    }
  }

  else
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::writeWebContentToPasteboard(IPC::Connection &, const WebCore::PasteboardWebContent &, const String &, std::optional<WebPageProxyIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 616: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_13;
    }
  }
}

void sub_19DD2EB80(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPasteboardProxy::writeImageToPasteboard(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  if (*a4 && *(v8 + 4))
  {
    v11 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v8, a5, a6, 1);
    if (v11 > 0xFF)
    {
      v12 = WTF::fastMalloc(v11, 0x28);
      *v12 = &unk_1F11064E0;
      v12[1] = a4;
      v12[2] = a3;
      v12[3] = a1;
      v12[4] = a2;
      *v15 = v12;
      WebCore::PlatformPasteboard::performAsDataOwner();
      if (*v15)
      {
        (*(**v15 + 8))(*v15);
      }

      return;
    }

    v14 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::writeImageToPasteboard(IPC::Connection &, const WebCore::PasteboardImage &, const String &, std::optional<WebPageProxyIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 635: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_13:
      __break(0xC471u);
      JUMPOUT(0x19DD2ED6CLL);
    }
  }

  else
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v15 = 136446210;
      *&v15[4] = "void WebKit::WebPasteboardProxy::writeImageToPasteboard(IPC::Connection &, const WebCore::PasteboardImage &, const String &, std::optional<WebPageProxyIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v13, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 632: Invalid message dispatched %{public}s", v15, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_13;
    }
  }
}

void sub_19DD2EDBC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPasteboardProxy::writeStringToPasteboard(WebKit::WebPasteboardProxy *a1, IPC::Connection *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  if (*a5 && *(v9 + 4))
  {
    if ((!*a3 || !*(*a3 + 4)) && *a4 && *(*a4 + 4))
    {
      v17 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v18 = 136446210;
        *&v18[4] = "void WebKit::WebPasteboardProxy::writeStringToPasteboard(IPC::Connection &, const String &, const String &, const String &, std::optional<WebPageProxyIdentifier>)";
        _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 649: Invalid message dispatched %{public}s", v18, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD2F008);
      }
    }

    else
    {
      v13 = WebKit::WebPasteboardProxy::determineDataOwner(a1, a2, v9, a6, a7, 1);
      if (v13 > 0xFF)
      {
        v14 = WTF::fastMalloc(v13, 0x30);
        *v14 = &unk_1F1106508;
        v14[1] = a5;
        v14[2] = a3;
        v14[3] = a4;
        v14[4] = a1;
        v14[5] = a2;
        *v18 = v14;
        WebCore::PlatformPasteboard::performAsDataOwner();
        if (*v18)
        {
          (*(**v18 + 8))(*v18);
        }

        return;
      }

      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v18 = 136446210;
        *&v18[4] = "void WebKit::WebPasteboardProxy::writeStringToPasteboard(IPC::Connection &, const String &, const String &, const String &, std::optional<WebPageProxyIdentifier>)";
        _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 652: Invalid message dispatched %{public}s", v18, 0xCu);
      }

      *(a2 + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
LABEL_22:
        __break(0xC471u);
        JUMPOUT(0x19DD2EFD0);
      }
    }
  }

  else
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v18 = 136446210;
      *&v18[4] = "void WebKit::WebPasteboardProxy::writeStringToPasteboard(IPC::Connection &, const String &, const String &, const String &, std::optional<WebPageProxyIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/Cocoa/WebPasteboardProxyCocoa.mm 648: Invalid message dispatched %{public}s", v18, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_22;
    }
  }
}

void sub_19DD2F098(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPasteboardProxy::updateSupportedTypeIdentifiers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19EB07E50](&v4, a3);
  WebCore::PlatformPasteboard::updateSupportedTypeIdentifiers();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

void sub_19DD2F124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPreferences::platformUpdateStringValueForKey(atomic_uint **this, atomic_uint **a2, atomic_uint **a3)
{
  if (this[2])
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = *a3;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v14, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v14 = &stru_1F1147748;
      v9 = &stru_1F1147748;
    }

    v10 = v14;
    WebKit::makeKey(&v13, this[2], this + 3, a2);
    [v6 setObject:v10 forKey:v13];
    v11 = v13;
    v13 = 0;
    if (v11)
    {
    }

    v12 = v14;
    v14 = 0;
    if (v12)
    {
    }
  }
}

void sub_19DD2F220(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPreferences::platformUpdateUInt32ValueForKey(atomic_uint **this, atomic_uint **a2, unsigned int a3)
{
  if (this[2])
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    WebKit::makeKey(&v8, this[2], this + 3, a2);
    [v6 setInteger:a3 forKey:v8];
    v7 = v8;
    v8 = 0;
    if (v7)
    {
    }
  }
}

void sub_19DD2F2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebPreferences::platformDeleteKey(atomic_uint **this, atomic_uint **a2)
{
  if (this[2])
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    WebKit::makeKey(&v6, this[2], this + 3, a2);
    [v4 removeObjectForKey:v6];
    v5 = v6;
    v6 = 0;
    if (v5)
    {
    }
  }
}

void sub_19DD2F394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit14WebProcessPool18platformInitializeENS0_31NeedsGlobalStaticInitializationE_block_invoke()
{
  v0 = objc_alloc_init(objc_getClass("MobileGestaltHelperProxy"));
  [v0 proxyRebuildCache];
  if (v0)
  {
  }
}

void sub_19DD2F4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKit14WebProcessPool18platformInitializeENS0_31NeedsGlobalStaticInitializationE_block_invoke_2(uint64_t a1, unint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessPool::allProcessPools(&v35);
  if (v36)
  {
    v3 = v35;
    v32 = &v35[v36];
    while (1)
    {
      v33 = v3;
      v4 = *v3;
      v5 = *(v4 + 84);
      if (v5)
      {
        break;
      }

LABEL_69:
      v3 = v33 + 1;
      if (v33 + 1 == v32)
      {
        return WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v2);
      }
    }

    v6 = *(v4 + 72);
    v34 = &v6[v5];
    while (1)
    {
      v7 = *v6;
      v8 = (*v6 + 16);
      atomic_fetch_add(v8, 1u);
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 1;
      v56 = 0;
      v57 = 256;
      v58 = 0;
      WebKit::operator<<(&v52, v7);
      if (*(v7 + 752) != 1)
      {
        break;
      }

      v9 = *(v7 + 744);
      if (!v9)
      {
        break;
      }

      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      if (!v9[1] || MEMORY[0x19EB01EF0](v9, "nullOrigin", 10))
      {
        v10 = 0;
LABEL_11:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v51 = *buf;
        goto LABEL_12;
      }

      v10 = 0;
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      v51 = v9;
LABEL_12:
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 1;
      v48 = 0;
      v49 = 256;
      v50 = 0;
      WebKit::WebProcessProxy::pages(v7, &v42);
      if (v43)
      {
        v11 = v42;
        v12 = 8 * v43;
        do
        {
          WTF::TextStream::operator<<();
          WebKit::WebPageProxy::currentURL(buf, *v11);
          WTF::TextStream::operator<<();
          v14 = *buf;
          *buf = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }

      else
      {
        WTF::TextStream::operator<<();
      }

      v15 = qword_1ED6416A0;
      if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
      {
        WTF::TextStream::release(&v40, &v52);
        WTF::String::utf8();
        if (v41)
        {
          v17 = v41 + 16;
        }

        else
        {
          v17 = 0;
        }

        WTF::String::utf8();
        if (v39)
        {
          v18 = v39 + 16;
        }

        else
        {
          v18 = 0;
        }

        WTF::TextStream::release(&v37, &v44);
        WTF::String::utf8();
        if (v38)
        {
          v19 = v38 + 16;
        }

        else
        {
          v19 = 0;
        }

        *buf = 134218755;
        *&buf[4] = v7;
        v60 = 2082;
        v61 = v17;
        v62 = 2081;
        v63 = v18;
        v64 = 2085;
        v65 = v19;
        _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "WebProcessProxy %p - %{public}s, domain: %{private}s, pageURLs: %{sensitive}s", buf, 0x2Au);
        v20 = v38;
        v38 = 0;
        if (v20)
        {
          if (*v20 == 1)
          {
            WTF::fastFree(v20, v16);
          }

          else
          {
            --*v20;
          }
        }

        v21 = v37;
        v37 = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v16);
        }

        v22 = v39;
        v39 = 0;
        if (v22)
        {
          if (*v22 == 1)
          {
            WTF::fastFree(v22, v16);
          }

          else
          {
            --*v22;
          }
        }

        v23 = v41;
        v41 = 0;
        if (v23)
        {
          if (*v23 == 1)
          {
            WTF::fastFree(v23, v16);
          }

          else
          {
            --*v23;
          }
        }

        v24 = v40;
        v40 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v16);
        }
      }

      WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v16);
      v26 = v45;
      v45 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }

      v27 = v44;
      v44 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }

      v28 = v51;
      v51 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v25);
        if ((v10 & 1) == 0)
        {
LABEL_54:
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v25);
          }
        }
      }

      else if ((v10 & 1) == 0)
      {
        goto LABEL_54;
      }

      v29 = v53;
      v53 = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v25);
      }

      v30 = v52;
      v52 = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v25);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8, v25);
      if (++v6 == v34)
      {
        goto LABEL_69;
      }
    }

    v9 = 0;
    v10 = 1;
    goto LABEL_11;
  }

  return WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v2);
}

void sub_19DD2F96C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, WTF *a19, uint64_t a20, WTF *a21, char a22, uint64_t a23, WTF::StringImpl *a24, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, WTF::StringImpl *a29, WTF::StringImpl *a30, WTF::StringImpl *a31)
{
  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, a2);
  }

  v35 = a31;
  a31 = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, a2);
  }

  v36 = a30;
  a30 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, a2);
  }

  if (v33)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v31, a2);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a15, a2);
  _Unwind_Resume(a1);
}

WebKit::RestrictedOpenerDomainsController *___ZN6WebKit14WebProcessPool18platformInitializeENS0_31NeedsGlobalStaticInitializationE_block_invoke_3()
{
  {
    result = WebKit::RestrictedOpenerDomainsController::RestrictedOpenerDomainsController(&WebKit::RestrictedOpenerDomainsController::shared(void)::sharedInstance);
  }

  return result;
}

uint64_t *WebKit::WebProcessProxy::auditToken@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  if (this[11])
  {
    WebKit::AuxiliaryProcessProxy::protectedConnection(&v4, this);
    IPC::Connection::getAuditToken(a1, v4);
    this = v4;
    v4 = 0;
    if (this)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this, v3);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  return this;
}

void sub_19DD2FBDC(_Unwind_Exception *exception_object, unint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong *a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateSandboxAccess>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 97;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v8, *a2);
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

void sub_19DD2FCF8(_Unwind_Exception *exception_object, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void WebKit::WebProcessPool::unregisterNotificationObservers(WebKit::WebProcessPool *this, WTF::StringImpl *a2)
{
  v3 = *(this + 247);
  if (v3)
  {
    v4 = *(this + 122);
    v5 = 4 * v3;
    do
    {
      v6 = *v4++;
      notify_cancel(v6);
      v5 -= 4;
    }

    while (v5);
  }

  v7 = *(this + 251);
  if (v7)
  {
    v8 = *(this + 124);
    v9 = 8 * v7;
    do
    {
      v32 = *v8;
      if (*v8)
      {
        v10 = v32;
      }

      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      if (v32)
      {
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  v11 = *(this + 121);
  if (v11)
  {
    *(this + 121) = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, a2);
  }

  v12 = *MEMORY[0x1E69DDBF0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(this + 64), v12, 0);
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v14, *(this + 64), @"com.apple.webinspectord.enabled", 0);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v33 = [v15 initWithCString:*MEMORY[0x1E69A28E0] encoding:4];
  v16 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v16, *(this + 64), v33, 0);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  std::unique_ptr<WebCore::PowerSourceNotifier>::reset[abi:sn200100](this + 59, 0);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v17 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v17, *(this + 64), @"WKCaptivePortalModeContainerConfigurationChanged", 0);
  v18 = *MEMORY[0x1E69E4EB8];
  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v19, *(this + 64), v18, 0);
  v20 = *MEMORY[0x1E69E4DD0];
  v21 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v21, *(this + 64), v20, 0);
  v22 = *MEMORY[0x1E69E4D10];
  v23 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v23, *(this + 64), v22, 0);
  v24 = *MEMORY[0x1E69E4CE0];
  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v25, *(this + 64), v24, 0);
  v26 = *MEMORY[0x1E69E4DD8];
  v27 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v27, *(this + 64), v26, 0);
  MediaAccessibility_kMAXCaptionAppearanceSettingsChangedNotification = WebCore::get_MediaAccessibility_kMAXCaptionAppearanceSettingsChangedNotification(v28);
  v30 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v30, *(this + 64), MediaAccessibility_kMAXCaptionAppearanceSettingsChangedNotification, 0);
  v31 = *(this + 64);
  *(this + 64) = 0;
  if (v31)
  {
  }

  if (v33)
  {
  }
}

void sub_19DD2FFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebProcessPool::accessibilityPreferencesChangedCallback(WebKit::WebProcessPool *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = WTF::dynamic_objc_cast<WKProcessPoolWeakObserver>(a2);
  if (v6)
  {
    v21 = v6;
    v7 = v6;
    v8 = v21[1];
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      CFRetain(*(v9 - 8));

      WebKit::accessibilityPreferences(v22);
      v11 = *(v9 + 68);
      if (v11)
      {
        v12 = *(v9 + 56);
        v13 = 8 * v11;
        do
        {
          v14 = *v12;
          v15 = *(*v12 + 80);
          if (v15 && (*(v15 + 104) & 1) != 0 || *(v14 + 88))
          {
            v16 = IPC::Encoder::operator new(0x238, v10);
            *v16 = 2926;
            *(v16 + 68) = 0;
            *(v16 + 70) = 0;
            *(v16 + 69) = 0;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            *(v16 + 1) = 0;
            IPC::Encoder::encodeHeader(v16);
            v25 = v16;
            IPC::ArgumentCoder<WebKit::AccessibilityPreferences,void>::encode(v16, v22);
            LOBYTE(v23) = 0;
            v24 = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v25, 0, &v23, 1);
            if (v24 == 1)
            {
              v17 = v23;
              v23 = 0;
              if (v17)
              {
                (*(*v17 + 8))(v17);
              }
            }

            v18 = v25;
            v25 = 0;
            if (v18)
            {
              IPC::Encoder::~Encoder(v18, v10);
              bmalloc::api::tzoneFree(v19, v20);
            }
          }

          ++v12;
          v13 -= 8;
        }

        while (v13);
      }

      CFRelease(*(v9 - 8));
    }

    else
    {
    }
  }
}

void WebKit::WebProcessPool::mediaAccessibilityPreferencesChangedCallback(WebKit::WebProcessPool *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = WTF::dynamic_objc_cast<WKProcessPoolWeakObserver>(a2);
  if (v6)
  {
    v19 = v6;
    v7 = v6;
    v8 = v19[1];
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      CFRetain(*(v9 - 8));

      v11 = WebCore::CaptionUserPreferencesMediaAF::platformCaptionDisplayMode(v10);
      v12 = v11;
      WebCore::CaptionUserPreferencesMediaAF::platformPreferredLanguages(v20, v11);
      v14 = *(v9 + 68);
      if (v14)
      {
        v15 = *(v9 + 56);
        v16 = 8 * v14;
        do
        {
          v17 = *v15;
          v18 = *(*v15 + 80);
          if (v18 && (*(v18 + 104) & 1) != 0 || *(v17 + 88))
          {
            LOBYTE(v21[0]) = v12;
            v21[1] = v20;
            WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetMediaAccessibilityPreferences>(v17, v21);
          }

          ++v15;
          v16 -= 8;
        }

        while (v16);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v13);
      CFRelease(*(v9 - 8));
    }

    else
    {
    }
  }
}

void WebKit::WebProcessPool::remoteWebInspectorEnabledCallback(WebKit::WebProcessPool *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = WTF::dynamic_objc_cast<WKProcessPoolWeakObserver>(a2);
  if (v6)
  {
    v14 = v6;
    v7 = v6;
    v8 = v14[1];
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      CFRetain(*(v9 - 8));

      v10 = *(v9 + 68);
      if (v10)
      {
        v11 = *(v9 + 56);
        v12 = 8 * v10;
        do
        {
          WebKit::WebProcessProxy::enableRemoteInspectorIfNeeded(*v11++);
          v12 -= 8;
        }

        while (v12);
      }

      v13 = *(v9 - 8);

      CFRelease(v13);
    }

    else
    {
    }
  }
}

void WebKit::WebProcessPool::lockdownModeConfigurationUpdateCallback(WebKit::WebProcessPool *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = WTF::dynamic_objc_cast<WKProcessPoolWeakObserver>(a2);
  if (v6)
  {
    v11 = v6;
    v7 = v6;
    v8 = v11[1];
    if (v8 && (v9 = *(v8 + 8)) != 0)
    {
      CFRetain(*(v9 - 8));

      WebKit::WebProcessPool::lockdownModeStateChanged((v9 - 16));
      v10 = *(v9 - 8);

      CFRelease(v10);
    }

    else
    {
    }
  }
}

void WebKit::WebProcessPool::lockdownModeStateChanged(unsigned __int8 ***this)
{
  v35 = *MEMORY[0x1E69E9840];
  isLockdownModeEnabledBySystemIgnoringCaching = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(this);
  v3 = isLockdownModeEnabledBySystemIgnoringCaching;
  if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) != 1 || WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally != isLockdownModeEnabledBySystemIgnoringCaching)
  {
    WebKit::lockdownModeObservers(isLockdownModeEnabledBySystemIgnoringCaching);
    v6 = WTF::fastMalloc(v5, 0x10);
    *v6 = &unk_1F11065B8;
    *buf = v6;
    WTF::WeakHashSet<WebKit::LockdownModeObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(buf, v7);
    v8 = (*(*v6 + 8))(v6);
    WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = v3 | 0x100;
    WebKit::lockdownModeObservers(v8);
    v10 = WTF::fastMalloc(v9, 0x10);
    *v10 = &unk_1F11065E0;
    *buf = v10;
    WTF::WeakHashSet<WebKit::LockdownModeObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(buf, v11);
    (*(*v10 + 8))(v10);
  }

  v12 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = this;
    v33 = 1024;
    LODWORD(v34) = v3;
    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::WebProcessPool::lockdownModeStateChanged() isNowEnabled=%d", buf, 0x12u);
  }

  v14 = *(this + 21);
  if (v14)
  {
    v15 = this[9];
    v16 = &v15[v14];
    v28 = v3;
    v27 = v16;
    do
    {
      v17 = *v15;
      v18 = (*v15 + 16);
      atomic_fetch_add(v18, 1u);
      if (v17[812] != v3)
      {
        WebKit::WebProcessProxy::pages(v17, &v30);
        if (v31)
        {
          v20 = v30;
          v21 = 8 * v31;
          do
          {
            v22 = *v20;
            CFRetain(*(*v20 + 8));
            if ((*(v22 + 1427) & 1) == 0)
            {
              v23 = qword_1ED640D10;
              if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(v22 + 40);
                *buf = 134218240;
                *&buf[4] = this;
                v33 = 2048;
                v34 = v24;
                _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::WebProcessPool::lockdownModeStateChanged() Reloading page with pageProxyID=%llu due to Lockdown mode change", buf, 0x16u);
              }

              WebKit::WebPageProxy::reload(v22, 0, &v29);
              v25 = v29;
              v29 = 0;
              if (v25)
              {
                CFRelease(*(v25 + 8));
              }
            }

            CFRelease(*(v22 + 8));
            v20 += 8;
            v21 -= 8;
          }

          while (v21);
          WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v26);
          v3 = v28;
          v16 = v27;
          if (!v17)
          {
            goto LABEL_23;
          }
        }

        else
        {
          WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v19);
        }
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v18, v13);
LABEL_23:
      ++v15;
    }

    while (v15 != v16);
  }
}

void WebKit::WebProcessPool::hardwareKeyboardAvailabilityChangedCallback(WebKit::WebProcessPool *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = WTF::dynamic_objc_cast<WKProcessPoolWeakObserver>(a2);
  if (!v6)
  {
    return;
  }

  v15 = v6;
  v7 = v6;
  v8 = v15[1];
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      CFRetain(*(v9 - 8));

      v11 = WebKit::currentHardwareKeyboardState(v10);
      v12 = v11;
      isMainRunLoop = WTF::isMainRunLoop(v11);
      if (isMainRunLoop)
      {
        if ((v12 & 0xFFFFFF) == (*(v9 + 1001) | (*(v9 + 1003) << 16)))
        {
LABEL_8:
          v14 = *(v9 - 8);

          CFRelease(v14);
          return;
        }

        if (WTF::isMainRunLoop(isMainRunLoop))
        {
          *(v9 + 1001) = v12;
          *(v9 + 1003) = BYTE2(v12);
          WebKit::WebProcessPool::hardwareKeyboardAvailabilityChanged(v9 - 16);
          goto LABEL_8;
        }
      }

      __break(0xC471u);
      JUMPOUT(0x19DD30990);
    }
  }
}

uint64_t ___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _AXSApplicationAccessibilityEnabled();
  if (result)
  {
    v3 = *(v1 + 84);
    if (v3)
    {
      v4 = *(v1 + 72);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        result = WebKit::WebProcessProxy::unblockAccessibilityServerIfNeeded(v6);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return result;
}

IPC::Encoder *___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke_3(PAL *a1)
{
  v1 = *(a1 + 4);
  result = PAL::updateCurrentUserInterfaceIdiom(a1);
  if (result)
  {
    result = PAL::currentUserInterfaceIdiom(result);
    v4 = *(v1 + 84);
    if (v4)
    {
      v5 = result;
      v6 = *(v1 + 72);
      v7 = 8 * v4;
      do
      {
        v8 = *v6;
        v9 = *(*v6 + 80);
        if (v9 && (*(v9 + 104) & 1) != 0 || *(v8 + 88))
        {
          v10 = IPC::Encoder::operator new(0x238, v3);
          *v10 = 3022;
          *(v10 + 68) = 0;
          *(v10 + 70) = 0;
          *(v10 + 69) = 0;
          *(v10 + 2) = 0;
          *(v10 + 3) = 0;
          *(v10 + 1) = 0;
          IPC::Encoder::encodeHeader(v10);
          v16 = v10;
          LOBYTE(v14[0]) = v5;
          IPC::Encoder::operator<<<unsigned char>(v10, v14);
          LOBYTE(v14[0]) = 0;
          v15 = 0;
          WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v16, 0, v14, 1);
          if (v15 == 1)
          {
            v11 = v14[0];
            v14[0] = 0;
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          result = v16;
          v16 = 0;
          if (result)
          {
            IPC::Encoder::~Encoder(result, v3);
            result = bmalloc::api::tzoneFree(v12, v13);
          }
        }

        ++v6;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return result;
}

void sub_19DD30B60(_Unwind_Exception *exception_object, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

void ___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke_4(uint64_t a1, void *a2)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = WTF::dynamic_objc_cast<NSString>([objc_msgSend(a2 "userInfo")]);
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    v6 = CTFontCreateWithName(v4, 0.0, 0);
    v7 = CTFontCopyAttribute(v6, *MEMORY[0x1E6965770]);
    if (v7 != *MEMORY[0x1E695E4C0])
    {
      cf = v7;
      v9 = CTFontCopyAttribute(v6, *MEMORY[0x1E69658E8]);
      v10 = *(v2 + 84);
      if (v10)
      {
        v11 = *(v2 + 72);
        v12 = 8 * v10;
        do
        {
          v13 = *v11;
          v14 = (*v11 + 2);
          atomic_fetch_add(v14, 1u);
          v15 = v13[10];
          if (v15 && (*(v15 + 104) & 1) != 0 || v13[11])
          {
            MEMORY[0x19EB01DF0](v24, v9);
            WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v21, v24, 1uLL);
            WebKit::WebProcessProxy::auditToken(v20, v13);
            WebKit::AdditionalFonts::additionalFonts(v21, v20, v22);
            v23 = v22;
            WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterAdditionalFonts>(v13, &v23);
            WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v16);
            WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v17);
            v18 = v24[0];
            v24[0] = 0;
            if (v18)
            {
              if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v18, v8);
              }
            }
          }

          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v14, v8);
          ++v11;
          v12 -= 8;
        }

        while (v12);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_19DD30DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, WTF::StringImpl *a21)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  _Unwind_Resume(a1);
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterAdditionalFonts>(uint64_t a1, uint64_t **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2965;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  IPC::VectorArgumentCoder<false,WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, *a2);
  LOBYTE(v10) = 0;
  v11 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v12, 0, &v10, 1);
  if (v11 == 1)
  {
    v6 = v10;
    v10 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void sub_19DD30F34(_Unwind_Exception *exception_object, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
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

BOOL WebKit::WebProcessPool::isURLKnownHSTSHost(WebKit::WebProcessPool *this, atomic_uint **a2)
{
  WTF::URL::URL(v7, a2);
  WTF::URL::createCFURL(&v8, v7);
  v3 = v7[0];
  v7[0] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  IsKnownHSTSHostWithSession = _CFNetworkIsKnownHSTSHostWithSession();
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return IsKnownHSTSHostWithSession != 0;
}

void sub_19DD31024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebProcessPool::clearPermanentCredentialsForProtectionSpace(uint64_t a1, WebCore::ProtectionSpace *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = [v4 credentialsForProtectionSpace:WebCore::ProtectionSpace::nsSpace(a2)];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        if ([v14 persistence] == 2)
        {
          [v4 removeCredential:objc_msgSend(v7 forProtectionSpace:{"objectForKeyedSubscript:", v12), WebCore::ProtectionSpace::nsSpace(a2)}];
        }

        if (v14)
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (v7)
  {
  }

  if (v4)
  {
  }
}