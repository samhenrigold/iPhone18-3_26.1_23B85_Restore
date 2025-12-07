void *WebKit::WebPreferences::setAttachmentElementEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setAttachmentWideLayoutEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::attachmentWideLayoutEnabledKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WebKit::WebPreferences::setDataDetectorTypes(atomic_uint **this, const unsigned int *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key = WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key = WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateUInt32ValueForKey(this, &WebKit::WebPreferencesKey::dataDetectorTypesKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowsAirPlayForMediaPlayback(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key = WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowsAirPlayForMediaPlaybackKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setApplePayEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t API::PageConfiguration::applePayEnabled(API::PageConfiguration *this)
{
  v1 = *(this + 503);
  if ((v1 & 0x100) != 0)
  {
    return v1 & 1;
  }

  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(this + 4);
  CFRetain(*(v2 + 1));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, v3);
  CFRelease(*(v2 + 1));
  return BoolValueForKey;
}

void *WebKit::WebPreferences::setNeedsStorageAccessFromFileURLsQuirk(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key = WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key = WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::needsStorageAccessFromFileURLsQuirkKey(void)::key, v5, 0);
  }

  return result;
}

void sub_19D5C6F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebPreferences::setMediaContentTypesRequiringHardwareSupport(atomic_uint **this, const WTF::StringImpl **a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key = WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setStringValueForKey((this + 5), &WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key, a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key = WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateStringValueForKey(this, &WebKit::WebPreferencesKey::mediaContentTypesRequiringHardwareSupportKey(void)::key, a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

uint64_t WebKit::WebPreferencesStore::setStringValueForKey(WebKit::WebPreferencesStore *this, WTF::StringImpl **a2, const WTF::StringImpl **a3)
{
  WebKit::valueForKey<WTF::String>(this, this + 24, a2, &v16);
  v6 = v16;
  v9 = WTF::equal(v16, *a3, v7);
  if (v9)
  {
    goto LABEL_7;
  }

  v10 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v14 = v10;
  v15 = 0;
  WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,mpark::variant<WTF::String,BOOL,unsigned int,double>>(this, a2, &v14, v13);
  if (!v15 && (v11 = v14, v14 = 0, v11) && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
    if (!v6)
    {
      return v9 ^ 1u;
    }
  }

  else
  {
LABEL_7:
    if (!v6)
    {
      return v9 ^ 1u;
    }
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v8);
  }

  return v9 ^ 1u;
}

void *WebKit::WebPreferences::setAllowMediaContentTypesRequiringHardwareSupportAsFallback(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key = WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key = WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowMediaContentTypesRequiringHardwareSupportAsFallbackKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WebKit::WebPreferencesStore::getBoolValueForKey(WebKit::WebPreferencesStore *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  {
    WebKit::BOOLTestRunnerOverridesMap(void)::map = 0;
  }

  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(&WebKit::BOOLTestRunnerOverridesMap(void)::map, a2, a3);
  {
    v6 = WebKit::BOOLTestRunnerOverridesMap(void)::map;
    if (WebKit::BOOLTestRunnerOverridesMap(void)::map)
    {
      v6 = WebKit::BOOLTestRunnerOverridesMap(void)::map + 16 * *(WebKit::BOOLTestRunnerOverridesMap(void)::map - 4);
    }
  }

  else
  {
    v6 = 0;
    WebKit::BOOLTestRunnerOverridesMap(void)::map = 0;
  }

  if (v6 != v5)
  {
    return *(v5 + 8);
  }

  return WebKit::valueForKey<BOOL>(this, this + 24, a2);
}

void *WebKit::WebPreferences::setColorFilterEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key = WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::colorFilterEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setUndoManagerAPIEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::undoManagerAPIEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setAppHighlightsEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key = WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key = WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::appHighlightsEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setLegacyEncryptedMediaAPIEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setServiceWorkerEntitlementDisabledForTesting(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, v5, 0);
  }

  return result;
}

uint64_t WebKit::WebPreferences::setSampledPageTopColorMaxDifference(atomic_uint **this, double *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateDoubleValueForKey(this, &WebKit::WebPreferencesKey::sampledPageTopColorMaxDifferenceKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void WebKit::WebPreferences::platformUpdateDoubleValueForKey(atomic_uint **this, atomic_uint **a2, double a3)
{
  if (this[2])
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    WebKit::makeKey(&v8, this[2], this + 3, a2);
    [v6 setDouble:v8 forKey:a3];
    v7 = v8;
    v8 = 0;
    if (v7)
    {
    }
  }
}

void sub_19D5C78F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebPreferences::setSampledPageTopColorMinHeight(atomic_uint **this, double *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setDoubleValueForKey((this + 5), &WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key = WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateDoubleValueForKey(this, &WebKit::WebPreferencesKey::sampledPageTopColorMinHeightKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void *WebKit::WebPreferences::setAllowTestOnlyIPC(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setUsesSingleWebProcess(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, v5, 0);
  }

  return result;
}

void sub_19D5C83DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 72);
  *(v2 + 72) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WebKit::FocusedElementInformation *WebKit::FocusedElementInformation::FocusedElementInformation(WebKit::FocusedElementInformation *this)
{
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 104) = xmmword_19E7042F0;
  *(this + 120) = xmmword_19E704300;
  *(this + 136) = 0;
  *(this + 148) = 0;
  *(this + 140) = 0;
  *(this + 156) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = -1;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 124) = 0;
  WTF::URL::URL((this + 256));
  *(this + 148) = 0;
  *(this + 42) = 0;
  *(this + 344) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 164) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 184) = 0;
  *(this + 370) = 1;
  *(this + 416) = 0;
  *(this + 768) = 0;
  *(this + 371) = 0;
  *(this + 374) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  return this;
}

void sub_19D5C8504(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  v7 = *(v2 + 240);
  *(v2 + 240) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *v5;
  *v5 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, a2);
  v10 = *v4;
  *v4 = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

  _Unwind_Resume(a1);
}

double WebKit::WKSelectionDrawingInfo::WKSelectionDrawingInfo(WebKit::WKSelectionDrawingInfo *this)
{
  *this = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 80) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

WebKit::ApplicationStateTracker *WebKit::ApplicationStateTracker::ApplicationStateTracker(WebKit::ApplicationStateTracker *this, UIView *a2, objc_selector *a3, objc_selector *a4, objc_selector *a5, objc_selector *a6)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 2) = 0;
  objc_initWeak(this + 2, a2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v11 = [[WKUIWindowSceneObserver alloc] initWithParent:this];
  *(this + 104) = 0u;
  *(this + 6) = v11;
  *(this + 56) = 0;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 10) = a5;
  *(this + 11) = a6;
  *(this + 96) = 1;
  *(this + 120) = 0u;
  {
    WebKit::allApplicationStateTrackers(void)::trackers = 0;
    *&dword_1ED643398 = 1;
    goto LABEL_15;
  }

  if (++dword_1ED643398 > dword_1ED64339C)
  {
    v13 = WebKit::allApplicationStateTrackers(void)::trackers;
    if (WebKit::allApplicationStateTrackers(void)::trackers)
    {
      v14 = *(WebKit::allApplicationStateTrackers(void)::trackers - 4);
      if (!v14)
      {
LABEL_16:
        v20 = *(v13 - 4);
        if (6 * *(v13 - 12) < v20 && v20 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(&WebKit::allApplicationStateTrackers(void)::trackers);
          v13 = WebKit::allApplicationStateTrackers(void)::trackers;
          dword_1ED643398 = 0;
          if (!WebKit::allApplicationStateTrackers(void)::trackers)
          {
            goto LABEL_23;
          }
        }

        else
        {
          dword_1ED643398 = 0;
        }

        LODWORD(v13) = *(v13 - 12);
        if (v13 > 0x7FFFFFFE)
        {
          v22 = -2;
          goto LABEL_25;
        }

LABEL_23:
        v22 = 2 * v13;
LABEL_25:
        dword_1ED64339C = v22;
        goto LABEL_26;
      }

      v15 = 0;
      v16 = 8 * v14;
      v17 = WebKit::allApplicationStateTrackers(void)::trackers - 8;
      do
      {
        v18 = *(v17 + v16);
        if ((v18 + 1) >= 2 && !*(v18 + 8))
        {
          *(v17 + v16) = 0;
          if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v12);
          }

          *(v17 + v16) = -1;
          ++v15;
        }

        v16 -= 8;
      }

      while (v16);
      v13 = WebKit::allApplicationStateTrackers(void)::trackers;
      if (v15)
      {
        v19 = *(WebKit::allApplicationStateTrackers(void)::trackers - 12) - v15;
        *(WebKit::allApplicationStateTrackers(void)::trackers - 16) += v15;
        *(v13 - 12) = v19;
        goto LABEL_16;
      }

      if (WebKit::allApplicationStateTrackers(void)::trackers)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    LODWORD(v13) = 0;
    dword_1ED643398 = 0;
    goto LABEL_23;
  }

LABEL_26:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this, this);
  v23 = *this;
  atomic_fetch_add(*this, 1u);
  v28 = v23;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&WebKit::allApplicationStateTrackers(void)::trackers, &v28, v27);
  v25 = v28;
  v28 = 0;
  if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v25);
    WTF::fastFree(v25, v24);
  }

  return this;
}

void sub_19D5C8834(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12)
{
  if (a12 && atomic_fetch_add(a12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a12);
    WTF::fastFree(a12, a2);
  }

  objc_destroyWeak(v17 + 3);
  objc_destroyWeak(v18);
  objc_destroyWeak(v17 + 1);
  objc_destroyWeak(v17);
  v20 = *(v12 + 48);
  *(v12 + 48) = 0;
  if (v20)
  {
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(v15);
  objc_destroyWeak(v14);
  objc_destroyWeak(v13);
  if (*(v12 + 8) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v12, v21);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

WebKit::PageClientImpl *WebKit::PageClientImpl::PageClientImpl(WebKit::PageClientImpl *this, WKContentView *a2, WKWebView *a3)
{
  v5 = WebKit::PageClientImplCocoa::PageClientImplCocoa(this, a3);
  *(v5 + 12) = 0;
  *v5 = &unk_1F110CAB8;
  *(v5 + 5) = &unk_1F110D308;
  *(v5 + 7) = 0;
  objc_initWeak(v5 + 7, a2);
  *(this + 8) = objc_alloc_init(WKEditorUndoTarget);
  return this;
}

void sub_19D5C89A4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  WebKit::PageClientImplCocoa::~PageClientImplCocoa(v1);
  _Unwind_Resume(a1);
}

WebKit::PageClientImplCocoa *WebKit::PageClientImplCocoa::PageClientImplCocoa(WebKit::PageClientImplCocoa *this, WKWebView *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F10FFD98;
  *(this + 2) = 0;
  objc_initWeak(this + 2, a2);
  v4 = WebCore::AlternativeTextUIController::operator new(0x10, v3);
  *v4 = 0;
  v4[1] = 0;
  *(this + 3) = v4;
  *(this + 4) = 0;
  return this;
}

void sub_19D5C8A38(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v1, v4);
  _Unwind_Resume(a1);
}

uint64_t WebCore::AlternativeTextUIController::operator new(WebCore::AlternativeTextUIController *this, void *a2)
{
  if (this == 16 && *MEMORY[0x1E69E26E0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E26E0], a2);
  }

  else
  {
    return MEMORY[0x1EEE596E8]();
  }
}

atomic_uint *WebKit::WebProcessPool::createWebPage@<X0>(uint64_t a1@<X0>, IPC::Encoder *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  if (!*(*a3 + 120))
  {
    v9 = *(a1 + 184);
    CFRetain(*(v9 + 8));
    v10 = *(v8 + 120);
    *(v8 + 120) = v9;
    if (v10)
    {
      CFRelease(*(v10 + 8));
    }
  }

  v11 = API::PageConfiguration::lockdownModeEnabled(*v4);
  v12 = *v4;
  v13 = *(*v4 + 128);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    v15 = v14 - 16;
    CFRetain(*(v14 - 8));
    v16 = 0;
    v12 = *v4;
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  v17 = *(v12 + 17);
  v64 = v16;
  if (*(v17 + 32) != 1)
  {
    goto LABEL_83;
  }

  v18 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(v12 + 4);
  CFRetain(*(v18 + 1));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v18 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v19);
  CFRelease(*(v18 + 1));
  if (!BoolValueForKey)
  {
LABEL_83:
    if ((v16 & 1) == 0 && (*(v15 + 865) & 1) == 0 && WebKit::WebPageProxy::hasSameGPUAndNetworkProcessPreferencesAs(v15, *v4))
    {
      v21 = WebKit::WebPageProxy::ensureRunningProcess(v15);
      v22 = (v21 + 16);
LABEL_25:
      atomic_fetch_add(v22, 1u);
      goto LABEL_36;
    }

    Load = API::PageConfiguration::delaysWebProcessLaunchUntilFirstLoad(*v4);
    v24 = qword_1ED6416A0;
    v25 = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT);
    if (!Load)
    {
      if (v25)
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = a1;
        _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::createWebPage: Not delaying WebProcess launch", &buf, 0xCu);
      }

      v28 = API::PageConfiguration::websiteDataStore(*v4);
      CFRetain(v28[1]);
      LOBYTE(buf) = 0;
      v74 = 0;
      WebKit::WebProcessPool::processForSite(a1, v28, &buf, v11, *v4, 0, &v65);
      v21 = v65;
      if (v74 == 1)
      {
        v30 = *(&buf + 1);
        *(&buf + 1) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v29);
        }

        v31 = buf;
        *&buf = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v29);
        }
      }

      CFRelease(v28[1]);
      goto LABEL_36;
    }

    if (v25)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::createWebPage: delaying WebProcess launch until first load", &buf, 0xCu);
    }

    v26 = API::PageConfiguration::websiteDataStore(*v4);
    v27 = WebKit::WebProcessPool::dummyProcessProxy(a1, v26[3]);
    if (!v27)
    {
LABEL_79:
      v61 = API::PageConfiguration::websiteDataStore(*v4);
      CFRetain(v61[1]);
      v63 = WebKit::WebProcessProxy::operator new(0x4D8, v62);
      WebKit::WebProcessProxy::WebProcessProxy(v63, a1, v61, 0, 0, v11);
    }

    v21 = v27;
LABEL_24:
    v22 = (v21 + 16);
    goto LABEL_25;
  }

  if ((*(v17 + 32) & 1) == 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v21 = *(v17 + 8);
  if (v21)
  {
    goto LABEL_24;
  }

LABEL_36:
  v11 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get((*v4 + 24));
  CFRetain(v11[1]);
  *(v21 + 1040) = *(*v4 + 312);
  v32 = API::Object::newObject(0x638uLL, 85);
  *a4 = WebKit::WebPageProxy::WebPageProxy(v32, a2, v21, v4);
  WebKit::WebProcessProxy::addExistingWebPage(v21, v32, 1);
  var0 = v32[23].var0;
  CFRetain(var0[1]);
  if ((*(a1 + 152) & 1) == 0)
  {
    std::optional<WebKit::WebPreferencesStore>::operator=[abi:sn200100]<WebKit::WebPreferencesStore const&,void>(a1 + 104, v32[23].var0 + 5);
    {
      WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes = 0;
      *algn_1ED643608 = 0;
    }

    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(&WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes, &buf);
    if (WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes)
    {
      v34 = *(WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes - 4);
      v35 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v34;
    }

    else
    {
      v35 = 0;
      v34 = 0;
    }

    v65 = &WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes;
    v66 = v35;
    v67 = v35;
    v68 = v35;
    v69 = WebKit::WebProcessPool::remoteWorkerProcesses(void)::processes + 8 * v34;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v65);
    for (i = *(&buf + 1); *(&buf + 1) != v66; i = *(&buf + 1))
    {
      v4 = *(*i + 8);
      atomic_fetch_add(v4 + 4, 1u);
      if ((*(a1 + 152) & 1) == 0)
      {
        goto LABEL_78;
      }

      if (*(v4 + 896) == 1)
      {
        v38 = IPC::Encoder::operator new(0x238, v36);
        *v38 = 3087;
        *(v38 + 68) = 0;
        *(v38 + 70) = 0;
        *(v38 + 69) = 0;
        *(v38 + 2) = 0;
        *(v38 + 3) = 0;
        *(v38 + 1) = 0;
        IPC::Encoder::encodeHeader(v38);
        v72 = v38;
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v38, (a1 + 104));
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v38, (a1 + 128));
        LOBYTE(v70[0]) = 0;
        v71 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v72, 0, v70, 1);
        if (v71 == 1)
        {
          v39 = v70[0];
          v70[0] = 0;
          if (v39)
          {
            (*(*v39 + 8))(v39);
          }
        }

        v40 = v72;
        v72 = 0;
        if (v40)
        {
          IPC::Encoder::~Encoder(v40, v36);
          bmalloc::api::tzoneFree(v44, v45);
        }
      }

      if (*(v4 + 968) == 1)
      {
        v41 = IPC::Encoder::operator new(0x238, v36);
        *v41 = 3155;
        *(v41 + 68) = 0;
        *(v41 + 70) = 0;
        *(v41 + 69) = 0;
        *(v41 + 2) = 0;
        *(v41 + 3) = 0;
        *(v41 + 1) = 0;
        IPC::Encoder::encodeHeader(v41);
        v72 = v41;
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v41, (a1 + 104));
        IPC::ArgumentCoder<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(v41, (a1 + 128));
        LOBYTE(v70[0]) = 0;
        v71 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v4, &v72, 0, v70, 1);
        if (v71 == 1)
        {
          v42 = v70[0];
          v70[0] = 0;
          if (v42)
          {
            (*(*v42 + 8))(v42);
          }
        }

        v43 = v72;
        v72 = 0;
        if (v43)
        {
          IPC::Encoder::~Encoder(v43, v36);
          bmalloc::api::tzoneFree(v46, v47);
        }
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4 + 4, v36);
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&buf);
    }
  }

  CFRetain(v11[1]);
  v49 = *(a1 + 160);
  *(a1 + 160) = v11;
  if (v49)
  {
    CFRelease(*(v49 + 8));
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v50 = WebKit::WebPreferencesStore::getBoolValueForKey((var0 + 5), &WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key, v48);
  v51 = *(a1 + 48);
  CFRetain(*(v51 + 8));
  v53 = 86;
  if (*(v51 + 85))
  {
    v53 = 84;
  }

  v54 = *(v51 + v53);
  *(v51 + 86) = v50;
  if (v54 != *(v51 + v53))
  {
    WebKit::WebProcessCache::updateCapacity(*(a1 + 816), *(a1 + 48));
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((var0 + 5), &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v52))
  {
    WebKit::WebProcessPool::ensureGPUProcess(a1, v55);
  }

  {
    if (WebKit::singleton(void)::singleton)
    {
      v56 = *(WebKit::singleton(void)::singleton + 8);
      if (v56)
      {
        v57 = (v56 + 16);
        atomic_fetch_add((v56 + 16), 1u);
        WebKit::GPUProcessProxy::updatePreferences(v56, v21);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v57, v58);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  CFRelease(*(v51 + 8));
  if (var0)
  {
    CFRelease(var0[1]);
  }

  CFRelease(v11[1]);
  if ((v64 & 1) == 0)
  {
    CFRelease(*(v15 + 8));
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v21 + 16), v59);
}

uint64_t API::PageConfiguration::delaysWebProcessLaunchUntilFirstLoad(WebKit::WebPreferences **this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(this + 4);
  CFRetain(v2[1].isa);
  {
    goto LABEL_29;
  }

  while (1)
  {
    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey(&v2[5], &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v3);
    CFRelease(v2[1].isa);
    if (BoolValueForKey)
    {
      v6 = 1;
      return v6 & 1;
    }

    v7 = this[2];
    if (v7)
    {
      CFRetain(*(v7 + 8));
      {
        WebKit::allInspectorProcessPools(void)::allInspectorProcessPools = 0;
        unk_1ED643740 = 0;
      }

      if (WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(&WebKit::allInspectorProcessPools(void)::allInspectorProcessPools, v7))
      {
        v8 = qword_1ED6416A0;
        if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = this;
          _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> false because of WebInspector pool", &v15, 0xCu);
        }

        CFRelease(*(v7 + 8));
        goto LABEL_11;
      }

      CFRelease(*(v7 + 8));
    }

    if (*(this + 314) != 1)
    {
      break;
    }

    v2 = qword_1ED6416A0;
    if (!os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v9 = "false";
    if (*(this + 313))
    {
      v9 = "true";
    }

    v15 = 134218242;
    v16 = this;
    v17 = 2082;
    v18 = v9;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> %{public}s because of explicit client value", &v15, 0x16u);
    v4 = *(this + 314);
    if (v4)
    {
LABEL_18:
      v6 = *(this + 313);
      return v6 & 1;
    }

    __break(1u);
LABEL_29:
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
    v4[2240] = 1;
  }

  v10 = this[2];
  if (v10)
  {
    CFRetain(*(v10 + 1));
    v11 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "false";
      if (*(v10 + 945))
      {
        v12 = "true";
      }

      v15 = 134218242;
      v16 = this;
      v17 = 2082;
      v18 = v12;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> %{public}s because of associated processPool value", &v15, 0x16u);
    }

    v6 = *(v10 + 945);
    CFRelease(*(v10 + 1));
  }

  else
  {
    v14 = qword_1ED6416A0;
    v6 = 0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218242;
      v16 = this;
      v17 = 2082;
      v18 = "false";
      _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "%p - PageConfiguration::delaysWebProcessLaunchUntilFirstLoad() -> %{public}s because of global default value", &v15, 0x16u);
LABEL_11:
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t API::PageConfiguration::lockdownModeEnabled(API::PageConfiguration *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = CFRetain(*(v1 + 8));
    if (*(v1 + 161) == 1)
    {
      v3 = *(v1 + 160);
    }

    else if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
    {
      v3 = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
    }

    else
    {
      isLockdownModeEnabledBySystemIgnoringCaching = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(v2);
      v3 = isLockdownModeEnabledBySystemIgnoringCaching;
      WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = isLockdownModeEnabledBySystemIgnoringCaching | 0x100;
    }

    CFRelease(*(v1 + 8));
  }

  else if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
  {
    v3 = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
  }

  else
  {
    v6 = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(this);
    v3 = v6;
    WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = v6 | 0x100;
  }

  return v3 & 1;
}

uint64_t WebKit::AuxiliaryProcessProxy::wasTerminated(WebKit::AuxiliaryProcessProxy *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 1;
  }

  if (*(v1 + 104))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 1;
  }

  v3 = *(v1 + 108);
  if (!v3)
  {
    return 1;
  }

  result = kill(v3, 0);
  if (result)
  {
    return *__error() == 3;
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::sendXPCEndpointToProcess(WebKit::NetworkProcessProxy *this, WebKit::AuxiliaryProcessProxy *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 10);
    if (v5 && *(v5 + 104) == 1)
    {
      v6 = 0;
      v7 = *(a2 + 11);
    }

    else
    {
      v7 = *(a2 + 11);
      if (v7)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    v8 = *(this + 65);
    v16 = 134219008;
    v17 = this;
    v18 = 2048;
    v19 = a2;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v7 != 0;
    v24 = 2048;
    v25 = v8;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::sendXPCEndpointToProcess(%p) state = %d has connection = %d XPC endpoint message = %p", &v16, 0x2Cu);
  }

  v9 = *(a2 + 10);
  if (v9)
  {
    result = 0;
    if ((*(v9 + 104) & 1) != 0 || !*(a2 + 11))
    {
      return result;
    }
  }

  else if (!*(a2 + 11))
  {
    return 0;
  }

  v11 = *(this + 65);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = *(a2 + 11);
  if (!v13 || (v14 = *(v13 + 344)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5C9998);
  }

  v15 = v14;
  xpc_connection_send_message(v14, v11);

  return 1;
}

uint64_t WebKit::WebProcessProxy::logger(WebKit::WebProcessProxy *this, unint64_t a2)
{
  if (!*(this + 103))
  {
    v3 = WTF::fastMalloc(0, 0x18);
    *(v3 + 2) = 1;
    *v3 = &unk_1F10FAF48;
    *(v3 + 12) = 1;
    v3[2] = this;
    atomic_fetch_add(v3 + 2, 1u);
    v4 = *(this + 103);
    *(this + 103) = v3;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    isAlwaysOnLoggingAllowed = WebKit::WebProcessProxy::isAlwaysOnLoggingAllowed(this);
    if (v3[2] == this)
    {
      *(v3 + 12) = isAlwaysOnLoggingAllowed;
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  return *(this + 103);
}

uint64_t WebKit::WebProcessProxy::isAlwaysOnLoggingAllowed(WebKit::WebProcessProxy *this)
{
  WebKit::WebProcessProxy::pages(this, &v9);
  if (v10)
  {
    v2 = v9;
    v3 = 8 * v10 - 8;
    do
    {
      v4 = *v2++;
      isAlwaysOnLoggingAllowed = WebKit::WebPageProxy::isAlwaysOnLoggingAllowed(v4);
      if (isAlwaysOnLoggingAllowed)
      {
        v6 = v3 == 0;
      }

      else
      {
        v6 = 1;
      }

      v3 -= 8;
    }

    while (!v6);
    v7 = isAlwaysOnLoggingAllowed;
  }

  else
  {
    v7 = 1;
  }

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v1);
  return v7;
}

void WebKit::WebProcessProxy::updateRegistrationWithDataStore(WebKit::WebProcessProxy *this)
{
  v1 = *(this + 100);
  if (v1)
  {
    CFRetain(*(v1 + 8));
    v4 = *(this + 74);
    if (v4 && *(v4 - 12) || WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 77, v3))
    {
      WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>((v1 + 328), this, v6);
    }

    else
    {
      WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>((v1 + 328), this);
    }

    v5 = *(v1 + 8);

    CFRelease(v5);
  }
}

uint64_t WTF::WeakHashSet<WebKit::RemoteAudioSessionProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::RemoteAudioSessionProxy>(uint64_t *a1, void *a2)
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
  v16 = a2[1];
  if (!v16 || !*(v16 + 8))
  {
    return 0;
  }

  v20 = a2[1];
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

void WebKit::WebProcessPool::webProcessDataStoreParameters(WebKit::WebProcessPool *this, WebKit::WebProcessProxy *a2, atomic_uchar *a3)
{
  v6 = WebKit::WebsiteDataStore::resolvedDirectories(a3);
  v7 = v6;
  v8 = *(v6 + 12);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v9 = *(v6 + 13);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    v10 = *(v9 + 4);
    if (v10 && (WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v9 + 8), (v10 | (((*(v9 + 16) >> 2) & 1) << 32)), 1, &v39), v40 == 1))
    {
      v11 = v39;
      v39 = 0;
      v41 = v11;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v39);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v41 = 0;
  }

  v12 = WebKit::WebsiteDataStore::mediaKeysStorageSalt(a3);
  v13 = v12;
  v14 = *(a2 + 66);
  v35 = v11;
  if (v14 && (v15 = *(v14 + 4), v15))
  {
    WebKit::resolvePathForSandboxExtension(&v39, *(v14 + 8), v15 | (((*(v14 + 16) >> 2) & 1) << 32));
    v16 = v39;
    if (!v39)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*(a2 + 522) != 1 || (v16 = *(v7 + 10)) == 0)
    {
      v18 = v12;
      v19 = 0;
      v16 = 0;
      goto LABEL_22;
    }

    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  v17 = *(v16 + 1);
  if (v17)
  {
    v18 = v13;
    WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v16 + 1), (v17 | (((*(v16 + 4) >> 2) & 1) << 32)), 1, &v39);
    if (v40 == 1)
    {
      v19 = v39;
      v38 = v39;
      v39 = 0;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v39);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_20:
  v18 = v13;
LABEL_21:
  v19 = 0;
LABEL_22:
  WebKit::WebsiteDataStore::resolvedContainerTemporaryDirectory(&v36, a3);
  v21 = v36;
  if (!v36)
  {
    v33 = 0;
    goto LABEL_46;
  }

  if (!v36[1])
  {
    goto LABEL_42;
  }

  v22 = *(a2 + 128);
  if (v22)
  {
    v23 = *(v22 + 4);
    if (v23)
    {
      goto LABEL_39;
    }
  }

  WTF::FileSystemImpl::pathByAppendingComponent();
  if (v37)
  {
    v24 = *(v37 + 1);
    v25 = *(v37 + 1) | (((*(v37 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v24 = 0;
    v25 = 0x100000000;
  }

  WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v24, v25, &v39);
  v27 = v39;
  v39 = 0;
  v28 = *(a2 + 128);
  *(a2 + 128) = v27;
  if (v28)
  {
    if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v26);
    }

    v29 = v39;
    v39 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v26);
    }
  }

  v30 = v37;
  v37 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v26);
  }

  v22 = *(a2 + 128);
  if (v22)
  {
    v23 = *(v22 + 4);
LABEL_39:
    v31 = *(v22 + 8);
    v32 = v23 | (((*(v22 + 16) >> 2) & 1) << 32);
    goto LABEL_40;
  }

  v31 = 0;
  v32 = 0x100000000;
LABEL_40:
  WebKit::SandboxExtension::createHandleWithoutResolvingPath(v31, v32, 1, &v39);
  if (v40 == 1)
  {
    v33 = v39;
    v39 = 0;
    v37 = v33;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v39);
    goto LABEL_43;
  }

LABEL_42:
  v33 = 0;
LABEL_43:
  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

LABEL_46:
  *this = *(a3 + 3);
  *(this + 1) = v8;
  v41 = 0;
  *(this + 2) = v9;
  *(this + 3) = v35;
  *(this + 4) = v18;
  *(this + 5) = v16;
  v38 = 0;
  *(this + 6) = v19;
  *(this + 56) = WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(a3);
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this + 8, a2 + 119);
  WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this + 9, a2 + 120);
  v37 = 0;
  *(this + 10) = v33;
  if (a3[289])
  {
    LOBYTE(v34) = a3[289] == 2;
  }

  else
  {
    v34 = *(*(a3 + 28) + 544);
    if ((v34 & 0x100) == 0)
    {
      LOBYTE(v34) = WebKit::doesAppHaveTrackingPreventionEnabled(v34);
    }
  }

  *(this + 88) = v34 & 1;
  *(this + 89) = WebKit::WebsiteDataStore::isOptInCookiePartitioningEnabled(a3);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v37);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v38);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v41);
}

WebKit::WebsiteDataStore *WebKit::WebsiteDataStore::resolvedContainerTemporaryDirectory@<X0>(atomic_uint **__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>)
{
  v3 = *(this + 34);
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = this;
  WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(&v6);
  v3 = v6;
  this = *(v4 + 34);
  *(v4 + 34) = v6;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(this, v5);
    }

    v3 = *(v4 + 34);
  }

  if (v3)
  {
LABEL_2:
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *a1 = v3;
  return this;
}

uint64_t WebKit::WebsiteDataStore::mediaKeysStorageSalt(atomic_uchar *this)
{
  v2 = 0;
  v3 = (this + 32);
  atomic_compare_exchange_strong_explicit(this + 32, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 32);
  }

  if (this[208])
  {
    result = *(this + 27);
    v5 = 1;
    atomic_compare_exchange_strong_explicit(this + 32, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 != 1)
    {
      v6 = result;
      WTF::Lock::unlockSlow(v3);
      return v6;
    }
  }

  else
  {
    result = 506;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(uint64_t *__return_ptr a1@<X8>)
{
  if ((byte_1ED64278B & 1) == 0)
  {
    qword_1ED6427C0 = 0;
    byte_1ED64278B = 1;
  }

  if (atomic_load_explicit(&qword_1ED6427C8, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&qword_1ED6427C8, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(void)::$_0 &&>>);
  }

  v2 = qword_1ED6427C0;
  if (qword_1ED6427C0)
  {
    atomic_fetch_add_explicit(qword_1ED6427C0, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

WTF::StringImpl *std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(void)::$_0 &&>>()
{
  v0 = NSTemporaryDirectory();
  MEMORY[0x19EB02040](&v8, v0);
  if (v8)
  {
    v1 = *(v8 + 1);
    v2 = *(v8 + 1) | (((*(v8 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v1 = 0;
    v2 = 0x100000000;
  }

  WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v1, v2, &v9);
  v4 = v9;
  v9 = 0;
  v5 = qword_1ED6427C0;
  qword_1ED6427C0 = v4;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v9;
    v9 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
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

void sub_19D5CA3D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

uint64_t IPC::ArgumentCoder<WebKit::WebProcessDataStoreParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = a2 + 32;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 24));
  for (i = 0; i != 8; ++i)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v4 + i));
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(a1, (a2 + 72));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 80));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 88));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 89));
}

void WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(WebKit::SandboxExtensionImpl **this)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 10);
  v3 = this[9];
  if (v3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = this[8];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 6);
  v6 = this[5];
  this[5] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 3);
  v8 = this[2];
  this[2] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = this[1];
  this[1] = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }
  }
}

uint64_t WebKit::WebLockRegistryProxy::operator new(WebKit::WebLockRegistryProxy *this, void *a2)
{
  if (WebKit::WebLockRegistryProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebLockRegistryProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebLockRegistryProxy::operatorNewSlow(0x20);
  }
}

WebKit::WebLockRegistryProxy *std::unique_ptr<WebKit::WebLockRegistryProxy>::reset[abi:sn200100](WebKit::WebLockRegistryProxy **a1, WebKit::WebLockRegistryProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::WebLockRegistryProxy::~WebLockRegistryProxy(result);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

void *WebKit::WebPageProxy::WebPageProxy(void *a1, uint64_t a2, uint64_t a3, API::PageConfiguration **a4)
{
  v216 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 865);
  v9 = API::Object::Object(a1);
  v10 = v9 + 16;
  *(v9 + 3) = 0;
  v11 = (v9 + 24);
  *v9 = &unk_1F1116B40;
  *(v9 + 2) = &unk_1F1116BA0;
  v13 = WTF::fastMalloc(v12, 0xB80);
  *(v13 + 2) = 0;
  *(v13 + 8) = 0;
  *(v13 + 12) = 0;
  *v13 = &unk_1F11040B0;
  v13[2] = &unk_1F1104190;
  v13[3] = 0;
  v13[5] = &unk_1F1104210;
  v13[7] = 0;
  v13[8] = &unk_1F1104240;
  v14 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v15 = *v11;
  atomic_fetch_add(*v11, 1u);
  v13[9] = v15;
  *(v13 + 40) = 0;
  v16 = WTF::RunLoop::mainSingleton(v14);
  v17 = v16;
  while (1)
  {
    v18 = *(v16 + 8);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = *(v16 + 8);
    atomic_compare_exchange_strong_explicit((v16 + 8), &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v16 + 8));
LABEL_6:
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(v13 + 11, a1, WebKit::WebPageProxy::clearAudibleActivity, 0, v18);
  *buf = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v17 + 8));
  }

  *(v13 + 31) = 0u;
  *(v13 + 136) = 0;
  *(v13 + 144) = 0;
  *(v13 + 240) = 0;
  v13[19] = 0;
  *(v13 + 160) = 0;
  *(v13 + 33) = 0u;
  *(v13 + 140) = 256;
  *(v13 + 304) = 0;
  *(v13 + 528) = 0;
  *(v13 + 544) = 0;
  *(v13 + 800) = 0;
  *(v13 + 282) = 0;
  *(v13 + 290) = 0;
  *(v13 + 51) = 0u;
  *(v13 + 52) = 0u;
  v20 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v21 = *v11;
  atomic_fetch_add(*v11, 1u);
  v13[106] = v21;
  *(v13 + 107) = 0u;
  *(v13 + 109) = 0u;
  v13[111] = 0;
  *(v13 + 224) = 16843009;
  *(v13 + 900) = 0u;
  v22 = WTF::RunLoop::mainSingleton(v20);
  v23 = v22;
  while (1)
  {
    v24 = *(v22 + 8);
    if ((v24 & 1) == 0)
    {
      break;
    }

    v25 = *(v22 + 8);
    atomic_compare_exchange_strong_explicit((v22 + 8), &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_13;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v22 + 8));
LABEL_13:
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(v13 + 115, a1, WebKit::WebPageProxy::updatePlayingMediaDidChangeTimerFired, 0, v24);
  *buf = 0;
  if (v23)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v23 + 8));
  }

  *(v13 + 1048) = 0;
  *(v13 + 127) = 0u;
  *(v13 + 129) = 0u;
  *(v13 + 123) = 0u;
  *(v13 + 125) = 0u;
  *(v13 + 121) = 0u;
  v13[133] = 0;
  v13[132] = &unk_1F111F200;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v26 = a1[3];
  atomic_fetch_add(v26, 1u);
  v13[134] = v26;
  *(v13 + 540) = 0;
  *(v13 + 1112) = 0;
  *(v13 + 68) = 0u;
  *(v13 + 1104) = 0;
  State = WebKit::PageLoadState::PageLoadState((v13 + 140), a1);
  *(v13 + 764) = 0;
  v13[192] = 0;
  *(v13 + 1544) = 0;
  *(v13 + 1872) = 0;
  *(v13 + 470) = 0;
  v28 = WTF::RunLoop::mainSingleton(State);
  v29 = v28;
  while (1)
  {
    v30 = *(v28 + 8);
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = *(v28 + 8);
    atomic_compare_exchange_strong_explicit((v28 + 8), &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v31 == v30)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v28 + 8));
LABEL_20:
  v32 = WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(v13 + 236, a1, WebKit::WebPageProxy::resetRecentCrashCount, 0, v30);
  *buf = 0;
  if (v29)
  {
    v32 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v29 + 8));
  }

  *(v13 + 970) = 257;
  *(v13 + 484) = 16843009;
  v13[243] = 0;
  *(v13 + 1952) = 0;
  *(v13 + 1956) = 0;
  v13[246] = 0;
  v13[248] = 0;
  v13[247] = 0;
  v33 = WTF::RunLoop::mainSingleton(v32);
  v34 = v33;
  while (1)
  {
    v35 = *(v33 + 8);
    if ((v35 & 1) == 0)
    {
      break;
    }

    v36 = *(v33 + 8);
    atomic_compare_exchange_strong_explicit((v33 + 8), &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v36 == v35)
    {
      goto LABEL_27;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v33 + 8));
LABEL_27:
  v37 = WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(v13 + 249, a1, WebKit::WebPageProxy::tryCloseTimedOut, 0, v35);
  *buf = 0;
  if (v34)
  {
    v37 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v34 + 8));
  }

  *(v13 + 255) = 0u;
  v38 = WTF::RunLoop::mainSingleton(v37);
  v39 = v38;
  while (1)
  {
    v40 = *(v38 + 8);
    if ((v40 & 1) == 0)
    {
      break;
    }

    v41 = *(v38 + 8);
    atomic_compare_exchange_strong_explicit((v38 + 8), &v41, v40 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v41 == v40)
    {
      goto LABEL_34;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v38 + 8));
LABEL_34:
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(v13 + 257, a1, WebKit::WebPageProxy::updateReportedMediaCaptureState, 0, v40);
  *buf = 0;
  if (v39)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v39 + 8));
  }

  v13[263] = 0;
  *(v13 + 2112) = 0;
  *(v13 + 2128) = 0;
  *(v13 + 2132) = 0;
  *(v13 + 2140) = 0;
  *(v13 + 2208) = 0;
  *(v13 + 2272) = 0;
  v13[268] = 0;
  *(v13 + 2168) = 0;
  *(v13 + 269) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 2192) = 0;
  *(v13 + 277) = 0u;
  *(v13 + 279) = 0u;
  *(v13 + 2241) = 0u;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v42 = *v11;
  v43 = WTF::fastMalloc(atomic_fetch_add(*v11, 1u), 0x10);
  *v43 = &unk_1F1117570;
  v43[1] = v42;
  *buf = v43;
  PAL::HysteresisActivity::HysteresisActivity((v13 + 285), buf, 1.5);
  v44 = *buf;
  *buf = 0;
  if (v44)
  {
    v44 = (*(*v44 + 8))(v44);
  }

  v13[300] = 0;
  *(v13 + 2408) = 0;
  *(v13 + 2448) = 0;
  *(v13 + 2452) = 0;
  *(v13 + 2528) = 0;
  *(v13 + 634) = 0;
  *(v13 + 2784) = 0;
  *(v13 + 2792) = 0;
  *(v13 + 147) = 0u;
  *(v13 + 148) = 0u;
  *(v13 + 2377) = 0u;
  *(v13 + 154) = 0u;
  *(v13 + 2480) = 0;
  *(v13 + 159) = 0u;
  *(v13 + 160) = 0u;
  *(v13 + 161) = 0u;
  *(v13 + 2585) = 0u;
  v45 = WTF::RunLoop::mainSingleton(v44);
  v46 = v45;
  while (1)
  {
    v47 = *(v45 + 8);
    if ((v47 & 1) == 0)
    {
      break;
    }

    v48 = *(v45 + 8);
    atomic_compare_exchange_strong_explicit((v45 + 8), &v48, v47 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v48 == v47)
    {
      goto LABEL_43;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v45 + 8));
LABEL_43:
  *buf = v46;
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(v13 + 350, a1, WebKit::WebPageProxy::fullscreenVideoTextRecognitionTimerFired, 0, v47);
  v49 = *buf;
  *buf = 0;
  if (v49)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v49 + 8));
  }

  *(v13 + 2848) = 0;
  *(v13 + 2864) = 0;
  v13[363] = 0;
  v13[359] = 0;
  v13[361] = 0;
  v13[360] = 0;
  v13[362] = &unk_1F1116C38;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v50 = a1[3];
  atomic_fetch_add(v50, 1u);
  v13[364] = v50;
  v13[365] = 0;
  *(v13 + 2928) = 1;
  a1[4] = v13;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1 || (a1[5] = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal(), WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5CBE28);
  }

  a1[6] = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  if (!*(a2 + 8))
  {
    v52 = WTF::fastCompactMalloc(0x10);
    *v52 = 1;
    *(v52 + 8) = a2;
    v53 = *(a2 + 8);
    *(a2 + 8) = v52;
    if (v53)
    {
      if (atomic_fetch_add(v53, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v53);
        WTF::fastFree(v53, v51);
      }
    }
  }

  v54 = *(a2 + 8);
  atomic_fetch_add(v54, 1u);
  a1[7] = v54;
  v55 = *a4;
  v56 = CFRetain(*(*a4 + 1));
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = v55;
  v58 = API::NavigationClient::operator new(v56, v57);
  *v58 = &unk_1F1117598;
  a1[11] = v58;
  if (qword_1ED6429F8)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6429F8, v59);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompact = &unk_1F1117720;
  a1[12] = NonCompact;
  v62 = API::IconLoadingClient::operator new(8, v61);
  *v62 = &unk_1F1116FF0;
  a1[13] = v62;
  v64 = API::FormClient::operator new(8, v63);
  *v64 = &unk_1F1117018;
  a1[14] = v64;
  v66 = API::UIClient::operator new(8, v65);
  *v66 = &unk_1F111B880;
  a1[15] = v66;
  v68 = API::FindClient::operator new(8, v67);
  *v68 = &unk_1F1117040;
  a1[16] = v68;
  v70 = API::FindMatchesClient::operator new(8, v69);
  *v70 = &unk_1F1117090;
  a1[17] = v70;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  if (WebKit::WebNavigationState::s_heapRef)
  {
    v72 = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebNavigationState::s_heapRef, v71);
  }

  else
  {
    v72 = WebKit::WebNavigationState::operatorNewSlow(0x18);
  }

  v73 = v72;
  *v72 = 0;
  v74 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v75 = a1[3];
  atomic_fetch_add(v75, 1u);
  v73[1] = v75;
  v73[2] = 0;
  a1[22] = v73;
  a1[23] = 0;
  *(a1 + 96) = 0;
  a1[25] = 0;
  a1[26] = 0;
  v76 = WTF::RunLoop::mainSingleton(v74);
  v77 = v76;
  while (1)
  {
    v78 = *(v76 + 8);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v79 = *(v76 + 8);
    atomic_compare_exchange_strong_explicit((v76 + 8), &v79, v78 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v79 == v78)
    {
      goto LABEL_61;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v76 + 8));
LABEL_61:
  *buf = v77;
  v80 = WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(a1 + 27, a1, WebKit::WebPageProxy::didEndNetworkRequestsForPageLoadTimingTimerFired, 0, v78);
  v81 = *buf;
  *buf = 0;
  if (v81)
  {
    v80 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v81 + 8));
  }

  v82 = WTF::RunLoop::mainSingleton(v80);
  v83 = v82;
  while (1)
  {
    v84 = *(v82 + 8);
    if ((v84 & 1) == 0)
    {
      break;
    }

    v85 = *(v82 + 8);
    atomic_compare_exchange_strong_explicit((v82 + 8), &v85, v84 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v85 == v84)
    {
      goto LABEL_68;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v82 + 8));
LABEL_68:
  *buf = v83;
  WTF::RunLoop::Timer::Timer<WebKit::WebPageProxy>(a1 + 33, a1, WebKit::WebPageProxy::startTextIndicatorFadeOut, 0, v84);
  v86 = *buf;
  *buf = 0;
  if (v86)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v86 + 8));
  }

  a1[43] = 0;
  *(a1 + 39) = 0u;
  *(a1 + 41) = 0u;
  atomic_fetch_add((a3 + 16), 1u);
  a1[44] = a3;
  v87 = *(*a4 + 15);
  CFRetain(*(v87 + 8));
  a1[45] = v87;
  v88 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get(*a4 + 4);
  CFRetain(*(v88 + 1));
  a1[46] = v88;
  v89 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get(*a4 + 3);
  CFRetain(*(v89 + 1));
  a1[47] = v89;
  v90 = *(*a4 + 13);
  if (v90)
  {
    CFRetain(*(v90 + 8));
  }

  a1[48] = v90;
  v91 = *(*a4 + 14);
  if (v91)
  {
    v92 = *(v91 + 8);
    if (v92)
    {
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v92 + 8), *(v91 + 8));
      v91 = *(v92 + 8);
      if (v91)
      {
        atomic_fetch_add(v91, 1u);
      }
    }

    else
    {
      v91 = 0;
    }
  }

  a1[49] = v91;
  v93 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::VisitedLinkStore,&API::PageConfiguration::Data::createVisitedLinkStore>::get(*a4 + 5);
  CFRetain(*(v93 + 1));
  a1[50] = v93;
  v94 = API::PageConfiguration::websiteDataStore(*a4);
  CFRetain(v94[1]);
  a1[51] = v94;
  a1[52] = 0;
  a1[53] = 0;
  a1[54] = 0;
  *buf = 0;
  WebCore::standardUserAgentWithApplicationName();
  v96 = *buf;
  *buf = 0;
  if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v96, v95);
  }

  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  v97 = *(*a4 + 43);
  if (v97)
  {
    atomic_fetch_add_explicit(v97, 2u, memory_order_relaxed);
  }

  a1[60] = v97;
  v98 = *(*a4 + 20);
  if (v98)
  {
    atomic_fetch_add_explicit(v98, 2u, memory_order_relaxed);
  }

  a1[61] = v98;
  *(a1 + 31) = 0uLL;
  v99 = API::FullscreenClient::operator new(8, v95);
  *v99 = &unk_1F11170C0;
  a1[64] = v99;
  a1[83] = 0;
  *(a1 + 336) = 0;
  *(a1 + 535) = 0;
  *(a1 + 65) = 0u;
  *(a1 + 540) = 0;
  *(a1 + 548) = 0;
  *(a1 + 642) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 75) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 71) = 0u;
  v100 = WTF::fastMalloc(a1 + 65, 0x38);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v101 = a1[3];
  atomic_fetch_add(v101, 1u);
  *v100 = v101;
  *(v100 + 8) = 0;
  *(v100 + 1) = 0u;
  *(v100 + 2) = 0u;
  v100[6] = 0;
  a1[85] = v100;
  v102 = *a4;
  *(a1 + 688) = *(*a4 + 308);
  v104 = *(v102 + 40);
  v103 = *(v102 + 41);
  a1[87] = v104;
  *(a1 + 704) = v103;
  v105 = API::Object::newObject(0x38uLL, 42);
  v106 = WebKit::WebBackForwardList::WebBackForwardList(v105, a1);
  a1[89] = v106;
  *(a1 + 720) = 0;
  *(a1 + 721) = *(*a4 + 309);
  *(a1 + 722) = 0;
  a1[91] = 0;
  *(a1 + 736) = 0;
  a1[93] = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 47) = _Q0;
  a1[96] = 0x3FF0000000000000;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  a1[101] = 0x3FF0000000000000;
  a1[102] = 0x3FF0000000000000;
  *(a1 + 206) = 1065353216;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 839) = 0;
  *(a1 + 209) = 0;
  *(a1 + 53) = 0u;
  v112 = *(a3 + 80);
  v113 = v112 && (*(v112 + 104) & 1) != 0 || *(a3 + 88) != 0;
  *(a1 + 864) = v113;
  *v8 = 0;
  *(a1 + 869) = 1;
  a1[110] = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(v8 + 5) = 0;
  *(a1 + 936) = 0;
  *(a1 + 113) = 0uLL;
  *(a1 + 115) = 0uLL;
  *(a1 + 59) = 0uLL;
  *(a1 + 480) = 256;
  *(a1 + 962) = *(*a4 + 311);
  *(a1 + 241) = 0;
  *(a1 + 968) = WebKit::TextChecker::isSmartInsertDeleteEnabled(v106);
  *(a1 + 972) = 0;
  *(a1 + 978) = 0;
  *(v8 + 121) = 16842753;
  *(a1 + 990) = 1;
  *(v8 + 126) = 0;
  *(a1 + 996) = 0u;
  *(a1 + 1011) = 0;
  *(a1 + 255) = 1065353216;
  *(a1 + 512) = 1;
  *(a1 + 1026) = 1;
  v115 = a1 + 129;
  a1[136] = 0;
  *(a1 + 1096) = 0;
  *(a1 + 69) = 0u;
  *(v8 + 162) = 0;
  *(a1 + 524) = 0;
  *(a1 + 129) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 540) = 0;
  a1[134] = 0;
  *(a1 + 1120) = 1;
  a1[141] = 0x4008000000000000;
  *(a1 + 284) = 0;
  *(a1 + 570) = 0;
  a1[143] = 0x3FF0000000000000;
  *(a1 + 72) = 0u;
  *(a1 + 584) = 0;
  a1[147] = 0;
  *(a1 + 296) = 0;
  *(a1 + 149) = 0u;
  if (WebKit::WebPageInspectorController::s_heapRef)
  {
    v116 = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPageInspectorController::s_heapRef, v114);
  }

  else
  {
    v116 = WebKit::WebPageInspectorController::operatorNewSlow(0x48);
  }

  a1[151] = WebKit::WebPageInspectorController::WebPageInspectorController(v116, a1);
  WebKit::WebPageDebuggable::create(buf, a1, v117);
  a1[152] = *buf;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  a1[167] = 0;
  a1[155] = 0;
  *(a1 + 1247) = 0;
  *(a1 + 157) = 0u;
  *(a1 + 159) = 0u;
  *(a1 + 161) = 0u;
  *(a1 + 163) = 0u;
  *(a1 + 1315) = 0u;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 168), *a4 + 416);
  *(a1 + 348) = 0;
  v118 = 0uLL;
  *(a1 + 86) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 698) = *(a1[8] + 496);
  *(a1 + 699) = 0;
  *(a1 + 1400) = 1;
  *(a1 + 88) = 0u;
  *(a1 + 1424) = 1;
  a1[179] = 0;
  v8[140] = 0;
  *(a1 + 360) = 1;
  a1[181] = 0;
  *(a1 + 1456) = 0;
  *(a1 + 183) = 0u;
  v119 = *(*a4 + 17);
  if (*(v119 + 32) == 1)
  {
    v120 = *(v119 + 16);
    ++*(v120 + 2);
  }

  else
  {
    v120 = WTF::fastMalloc(v119, 0x48);
    *v120 = 0;
    *(v120 + 2) = 1;
    v118 = 0uLL;
    *(v120 + 1) = 0u;
    *(v120 + 2) = 0u;
    *(v120 + 3) = 0u;
    v120[8] = 0;
  }

  a1[185] = v120;
  v121 = *(*a4 + 17);
  if (*(v121 + 32) == 1)
  {
    a1[186] = *(v121 + 24);
    v122 = 1;
  }

  else
  {
    v122 = 0;
    *(a1 + 1488) = 0;
  }

  *(a1 + 1496) = v122;
  *(a1 + 94) = v118;
  *(a1 + 95) = v118;
  *(a1 + 1536) = 0;
  v123 = *(*(a3 + 552) + 8);
  if (v123)
  {
    v124 = v123 - 16;
  }

  else
  {
    v124 = 0;
  }

  v125 = *(v124 + 48);
  v126 = *(v125 + 100);
  v127 = *(v125 + 116);
  *(a1 + 393) = *(v125 + 132);
  *(a1 + 1540) = v126;
  *(a1 + 1556) = v127;
  WebKit::AboutSchemeHandler::create(a1 + 197);
  if (qword_1ED6429C8)
  {
    v129 = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6429C8, v128);
  }

  else
  {
    v129 = WebKit::WebPageProxyTesting::operatorNewSlow(0);
  }

  v130 = v129;
  *(v129 + 8) = 1;
  *v129 = &unk_1F1116BE8;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v131 = a1[3];
  atomic_fetch_add(v131, 1u);
  *(v130 + 16) = v131;
  a1[198] = v130;
  v132 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v207 = v11;
    v134 = v8;
    v135 = a3;
    v136 = *(a1[44] + 80);
    if (v136)
    {
      v137 = *(v136 + 108);
    }

    else
    {
      v137 = 0;
    }

    v139 = a1[5];
    v138 = a1[6];
    v140 = a1[46];
    CFRetain(*(v140 + 8));
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v140 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v141);
    *buf = 134219008;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v139;
    *&buf[22] = 2048;
    *&buf[24] = v138;
    v212 = 1024;
    v213 = v137;
    v214 = 1024;
    v215 = BoolValueForKey;
    _os_log_impl(&dword_19D52D000, v132, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::constructor, site isolation enabled %d", buf, 0x2Cu);
    CFRelease(*(v140 + 8));
    a3 = v135;
    v8 = v134;
    v11 = v207;
    v115 = a1 + 129;
  }

  API::PageConfiguration::consumeOpenerInfo(a1[8], v133);
  if ((*(*a4 + 310) & 1) == 0)
  {
    *buf = 0x1104000000000000;
    std::optional<WebCore::Color>::operator=[abi:sn200100]<WebCore::Color,void>(a1[4] + 136, buf);
    if ((*buf & 0x8000000000000) != 0)
    {
      v206 = (*buf & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((*buf & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v206);
        WTF::fastFree(v206, v143);
      }
    }
  }

  WebKit::WebPageProxy::updateActivityState(a1, 1023);
  WebKit::WebPageProxy::updateThrottleState(a1);
  WebKit::WebPageProxy::updateHiddenPageThrottlingAutoIncreases(a1);
  ++HIDWORD(WebKit::WebProcessPool::statistics(void)::statistics);
  v144 = a1[46];
  CFRetain(*(v144 + 8));
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>((v144 + 88), a1, buf);
  CFRelease(*(v144 + 8));
  v145 = a1[48];
  if (v145)
  {
    goto LABEL_111;
  }

  v202 = a1[49];
  if (v202)
  {
    v203 = *(v202 + 8);
    if (v203)
    {
      v145 = (v203 - 16);
LABEL_111:
      CFRetain(v145[1]);
      WebKit::WebExtensionController::addPage(v145, a1);
      CFRelease(v145[1]);
    }
  }

  v146 = API::Object::newObject(0x58uLL, 70);
  v147 = WebKit::WebInspectorUIProxy::WebInspectorUIProxy(v146, a1);
  v148 = a1[62];
  a1[62] = v147;
  if (v148)
  {
    CFRelease(*(v148 + 8));
  }

  if ((*v8 & 1) == 0 && *(a1 + 864) == 1)
  {
    WebKit::WebPageProxy::didAttachToRunningProcess(a1);
  }

  WebKit::WebPageProxy::addAllMessageReceivers(a1);
  v150 = a1[46];
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::key = WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::$_0::operator() const(void)::impl;
  }

  v151 = WebKit::WebPreferencesStore::getBoolValueForKey((v150 + 40), &WebKit::WebPreferencesKey::disableScreenSizeOverrideKey(void)::key, v149);
  *(WebCore::DeprecatedGlobalSettings::shared(v151) + 17) = v151;
  v152 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebPreferences,&API::PageConfiguration::Data::createWebPreferences>::get((a1[8] + 32));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((v152 + 40), &WebKit::WebPreferencesKey::serviceWorkerEntitlementDisabledForTestingKey(void)::key, v153))
  {
    v155 = a3;
    v156 = a1[51];
    CFRetain(v156[1]);
    v158 = WebKit::WebsiteDataStore::networkProcess(v156, v157);
    atomic_fetch_add((v158 + 16), 1u);
    v160 = IPC::Encoder::operator new(0x238, v159);
    *v160 = 602;
    *(v160 + 68) = 0;
    *(v160 + 70) = 0;
    *(v160 + 69) = 0;
    *(v160 + 2) = 0;
    *(v160 + 3) = 0;
    *(v160 + 1) = 0;
    IPC::Encoder::encodeHeader(v160);
    v208[0] = v160;
    buf[0] = 0;
    buf[16] = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v158, v208, 0, buf, 1);
    if (buf[16] == 1)
    {
      v162 = *buf;
      *buf = 0;
      if (v162)
      {
        (*(*v162 + 8))(v162);
      }
    }

    v163 = v208[0];
    v208[0] = 0;
    if (v163)
    {
      IPC::Encoder::~Encoder(v163, v161);
      bmalloc::api::tzoneFree(v204, v205);
    }

    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v158 + 16), v161);
    CFRelease(v156[1]);
    a3 = v155;
  }

  if (*MEMORY[0x1E69E2578])
  {
    v164 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2578], v154);
  }

  else
  {
    v164 = WebCore::RunLoopObserver::operatorNewSlow(0x18);
  }

  v166 = v164;
  v167 = WTF::fastMalloc(v165, 0x10);
  *v167 = &unk_1F1117110;
  v167[1] = a1;
  *v166 = v167;
  *(v166 + 8) = 512;
  *(v166 + 16) = 0;
  std::unique_ptr<WebCore::RunLoopObserver>::reset[abi:sn200100](v115, v166);
  v168 = a1[152];
  if (v168)
  {
    while (1)
    {
      v169 = v168[1];
      if ((v169 & 1) == 0)
      {
        break;
      }

      v170 = v168[1];
      atomic_compare_exchange_strong_explicit(v168 + 1, &v170, v169 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v170 == v169)
      {
        goto LABEL_135;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(v168[1]);
  }

LABEL_135:
  JSRemoteInspectorGetInspectionEnabledByDefault();
  Inspector::RemoteInspectionTarget::setInspectable(v168);
  v171 = *(*(a3 + 552) + 8);
  if (v171)
  {
    v172 = v171 - 16;
  }

  else
  {
    v172 = 0;
  }

  *buf = *(*(v172 + 48) + 80);
  buf[4] = 1;
  Inspector::RemoteInspectionTarget::setPresentingApplicationPID();
  Inspector::RemoteControllableTarget::init(v168);
  WebKit::WebPageInspectorController::init(a1[151]);
  if (*(a1 + 962) == 1)
  {
    v173 = *(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((a1[8] + 16)) + 320);
    if (v173)
    {
      CFRetain(*(v173 + 8));
      WebKit::BidiBrowserAgent::didCreatePage(*(*(v173 + 104) + 32), a1);
      CFRelease(*(v173 + 8));
    }
  }

  v174 = *(*a4 + 33);
  if (v174 && (v175 = *(v174 + 8)) != 0)
  {
    v176 = v175 - 16;
    CFRetain(*(v175 - 8));
  }

  else
  {
    v176 = 0;
  }

  v177 = a1[184];
  a1[184] = v176;
  if (v177)
  {
    CFRelease(*(v177 + 8));
  }

  if ((byte_1ED642A00 & 1) == 0)
  {
    *algn_1ED642A88 = 0u;
    *&qword_1ED642AA8 = 0u;
    dword_1ED642A90 = 1;
    qword_1ED642A98 = 0;
    unk_1ED642AA0 = 0;
    qword_1ED642AA8 = 0;
    byte_1ED642AB0 = 0;
    qword_1ED642AB8 = 0;
    unk_1ED642AC0 = 0;
    qword_1ED642A80 = &unk_1F10EE480;
    byte_1ED642A00 = 1;
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11, v10);
  v178 = a1[3];
  v179 = WTF::fastMalloc(atomic_fetch_add(v178, 1u), 0x10);
  *v179 = &unk_1F1117760;
  v179[1] = v178;
  v208[0] = v179;
  WebKit::ListDataControllerBase::observeUpdates(&qword_1ED642A80, v208, buf);
  v181 = *buf;
  *buf = 0;
  v182 = a1[179];
  a1[179] = v181;
  if (v182)
  {
    WTF::RefCounted<WebKit::ListDataObserver>::deref((v182 + 8), v180);
    v184 = *buf;
    *buf = 0;
    if (v184)
    {
      WTF::RefCounted<WebKit::ListDataObserver>::deref((v184 + 8), v183);
    }
  }

  v185 = v208[0];
  v208[0] = 0;
  if (v185)
  {
    (*(*v185 + 8))(v185);
  }

  v186 = a1[46];
  CFRetain(*(v186 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::key = WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v188 = WebKit::WebPreferencesStore::getBoolValueForKey((v186 + 40), &WebKit::WebPreferencesKey::scriptTrackingPrivacyProtectionsEnabledKey(void)::key, v187);
  CFRelease(*(v186 + 8));
  if (v188)
  {
    v189 = *(*(a3 + 552) + 8);
    v190 = v189 ? v189 - 16 : 0;
    CFRetain(*(v190 + 8));
    WebKit::WebProcessPool::observeScriptTrackingPrivacyUpdatesIfNeeded(v190);
    if (v189)
    {
      CFRelease(*(v189 - 8));
    }
  }

  {
    if (WebKit::singleton(void)::singleton)
    {
      v191 = *(WebKit::singleton(void)::singleton + 8);
      if (v191)
      {
        v192 = (v191 + 16);
        atomic_fetch_add((v191 + 16), 1u);
        v193 = *(a3 + 120);
        v194 = a1[6];
        buf[0] = 0;
        LOBYTE(v212) = 0;
        if (*(a1 + 1572) == 1)
        {
          v195 = *(a1 + 1556);
          *buf = *(a1 + 1540);
          *&buf[16] = v195;
          LOBYTE(v212) = 1;
        }

        v209 = v194;
        v210 = v193;
        v208[0] = &v210;
        v208[1] = &v209;
        v208[2] = buf;
        WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetPresentingApplicationAuditToken>(v191, v208, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v192, v196);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  v197 = a1[46];
  CFRetain(*(v197 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v199 = WebKit::WebPreferencesStore::getBoolValueForKey((v197 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v198);
  CFRelease(*(v197 + 8));
  if (v199)
  {
    IPC::s_shouldCrashOnMessageCheckFailure = 1;
  }

  if (v168)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(v168 + 1, v200);
  }

  return a1;
}

WebKit::PageLoadState *WebKit::PageLoadState::PageLoadState(WebKit::PageLoadState *this, WebKit::WebPageProxy *a2)
{
  *this = 0;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  *(this + 6) = 2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  WTF::URL::invalidate((this + 120));
  *(this + 80) = 0;
  *(this + 162) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 52) = 2;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 216) = 0u;
  *(this + 257) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  WTF::URL::invalidate((this + 304));
  *(this + 172) = 0;
  *(this + 346) = 0;
  *(this + 44) = 0;
  *(this + 360) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 49) = 0;
  *(this + 400) = 0;
  *(this + 101) = 0;
  return this;
}

uint64_t API::NavigationClient::operator new(API::NavigationClient *this, void *a2)
{
  if (API::NavigationClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::NavigationClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::FormClient::operator new(API::FormClient *this, void *a2)
{
  if (this == 8 && API::FormClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FormClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::IconLoadingClient::operator new(API::IconLoadingClient *this, void *a2)
{
  if (this == 8 && API::IconLoadingClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::IconLoadingClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::UIClient::operator new(API::UIClient *this, void *a2)
{
  if (this == 8 && API::UIClient::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::UIClient::s_heapRef, a2);
  }

  else
  {
    return API::UIClient::operatorNewSlow(this);
  }
}

uint64_t API::FindClient::operator new(API::FindClient *this, void *a2)
{
  if (this == 8 && API::FindClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FindClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::FindMatchesClient::operator new(API::FindMatchesClient *this, void *a2)
{
  if (this == 8 && API::FindMatchesClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FindMatchesClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t API::FullscreenClient::operator new(API::FullscreenClient *this, void *a2)
{
  if (this == 8 && API::FullscreenClient::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(API::FullscreenClient::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

WebKit::WebBackForwardList *WebKit::WebBackForwardList::WebBackForwardList(WebKit::WebBackForwardList *this, WebKit::WebPageProxy *a2)
{
  *API::Object::Object(this) = &unk_1F1115CD8;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  *(this + 48) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v4;
  *(this + 40) = 0;
  return this;
}

Inspector::BackendDispatcher **WebKit::WebPageInspectorController::WebPageInspectorController(Inspector::BackendDispatcher **this, WebKit::WebPageProxy *a2)
{
  Inspector::FrontendRouter::create(this);
  v4 = *this;
  *v4 = **this + 1;
  v10 = v4;
  Inspector::BackendDispatcher::create();
  if (v10)
  {
    WTF::RefCounted<Inspector::FrontendRouter>::deref(v10, v5);
  }

  Inspector::AgentRegistry::AgentRegistry((this + 2));
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  this[4] = v6;
  this[6] = 0;
  this[7] = 0;
  *(this + 64) = 0;
  this[5] = 0;
  v8 = Inspector::InspectorTargetAgent::operator new(0x48, v7);
  Inspector::InspectorTargetAgent::InspectorTargetAgent(v8, *this, this[1]);
  WTF::CheckedPtr<Inspector::InspectorTargetAgent,WTF::RawPtrTraits<Inspector::InspectorTargetAgent>>::operator=((this + 5), v8);
  Inspector::AgentRegistry::append();
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return this;
}

uint64_t Inspector::InspectorTargetAgent::operator new(Inspector::InspectorTargetAgent *this, void *a2)
{
  if (this == 72 && *MEMORY[0x1E696EBE0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E696EBE0], a2);
  }

  else
  {
    return MEMORY[0x1EEDCBB70]();
  }
}

uint64_t WTF::CheckedPtr<Inspector::InspectorTargetAgent,WTF::RawPtrTraits<Inspector::InspectorTargetAgent>>::operator=(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    ++*(a2 + 24);
  }

  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 24) = v3 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

unsigned int *WebKit::WebPageDebuggable::create@<X0>(Inspector::RemoteInspectionTarget **__return_ptr a1@<X8>, WebKit::WebPageDebuggable *this@<X0>, WebKit::WebPageProxy *a3@<X1>)
{
  v5 = WebKit::WebPageDebuggable::operator new(0x38, a3);
  *Inspector::RemoteInspectionTarget::RemoteInspectionTarget(v5) = &unk_1F111EC78;
  result = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
  v7 = *(this + 3);
  atomic_fetch_add(v7, 1u);
  *(v5 + 5) = v7;
  *(v5 + 6) = 0;
  *a1 = v5;
  return result;
}

uint64_t WebKit::WebPageDebuggable::operator new(WebKit::WebPageDebuggable *this, void *a2)
{
  if (this == 56 && WebKit::WebPageDebuggable::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPageDebuggable::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebPageDebuggable::operatorNewSlow(this);
  }
}

WTF::StringImpl *WebKit::AboutSchemeHandler::create@<X0>(uint64_t *a2@<X8>)
{
  v3 = WTF::fastMalloc(a2, 0x38);
  *(v3 + 2) = 1;
  v3[2] = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[4] = 0;
  *v3 = &unk_1F1114830;
  result = WebKit::registerCocoaAboutHandlers(v3, v4);
  *a2 = v3;
  return result;
}

WTF::StringImpl *WebKit::registerCocoaAboutHandlers(WebKit *this, WebKit::AboutSchemeHandler *a2)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = WTF::fastMalloc(v3, 8);
  *v4 = &unk_1F10E6258;
  v8 = v4;
  WTF::HashMap<WTF::String,std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,std::unique_ptr<WebKit::AboutSchemeHandler::OpaquePathHandler>>(this + 6, &v9, &v8, v10);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
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

void sub_19D5CC420(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

uint64_t WebKit::WebPageProxy::updateActivityState(void *a1, __int16 a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = *(v4 + 80);
  v6 = a1[7];
  if (!v6)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
LABEL_5:
    v8 = *(v4 + 80);
    goto LABEL_6;
  }

  (*(*v7 + 1712))(v7);
  v4 = a1[4];
  v8 = *(v4 + 80);
LABEL_6:
  *(v4 + 80) = v8 & ~a2;
  if ((a2 & 2) != 0 && (*(*v7 + 64))(v7))
  {
    *(a1[4] + 80) |= 2u;
  }

  if ((a2 & 1) != 0 && (*(*v7 + 56))(v7))
  {
    *(a1[4] + 80) |= 1u;
  }

  if ((a2 & 4) != 0)
  {
    v9 = v5 & 4;
    v10 = (*(*v7 + 80))(v7);
    v11 = v10;
    if (v10)
    {
      *(a1[4] + 80) |= 4u;
    }

    if ((v9 != 0) != v10)
    {
      v12 = qword_1ED641490;
      if (os_log_type_enabled(qword_1ED641490, OS_LOG_TYPE_DEFAULT))
      {
        v14 = a1[5];
        v13 = a1[6];
        v15 = *(a1[44] + 80);
        if (v15)
        {
          LODWORD(v15) = *(v15 + 108);
        }

        v21 = 134219264;
        v22 = a1;
        v23 = 2048;
        v24 = v14;
        v25 = 2048;
        v26 = v13;
        v27 = 1024;
        v28 = v15;
        v29 = 1024;
        v30 = v9 >> 2;
        v31 = 1024;
        v32 = v11;
        _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateActivityState: view visibility state changed %d -> %d", &v21, 0x32u);
      }
    }
  }

  if ((a2 & 8) != 0 && (*(*v7 + 112))(v7))
  {
    *(a1[4] + 80) |= 8u;
  }

  if ((a2 & 0x10) != 0 && (*(*v7 + 120))(v7))
  {
    *(a1[4] + 80) |= 0x10u;
  }

  v16 = (*(*v7 + 128))(v7);
  if ((a2 & 0x20) != 0 && v16)
  {
    *(a1[4] + 80) |= 0x20u;
  }

  if ((a2 & 0x40) != 0)
  {
    v17 = a1[4];
    if ((*(v17 + 968) & 1) != 0 && (*(v17 + 1048) & 1) == 0)
    {
      *(v17 + 80) |= 0x40u;
    }
  }

  if ((a2 & 0x80) == 0)
  {
LABEL_37:
    if ((a2 & 0x100) == 0)
    {
      return (*(*v7 + 1720))(v7);
    }

    goto LABEL_38;
  }

  v18 = a1[4];
  WebKit::PageLoadState::ref((v18 + 1120));
  if (*(v18 + 1160) || *(v18 + 1144) < 2u)
  {
    WebKit::PageLoadState::deref((v18 + 1120));
    *(a1[4] + 80) |= 0x80u;
    goto LABEL_37;
  }

  WebKit::PageLoadState::deref((v18 + 1120));
  if ((a2 & 0x100) == 0)
  {
    return (*(*v7 + 1720))(v7);
  }

LABEL_38:
  v19 = a1[4];
  if ((*(v19 + 968) & 0x1241800) != 0)
  {
    *(v19 + 80) |= 0x100u;
  }

  return (*(*v7 + 1720))(v7);
}

id WebKit::PageClientImpl::refView(id *this)
{
  v2 = objc_loadWeak(this + 7);
  Weak = objc_loadWeak(this + 2);

  return Weak;
}

uint64_t WebKit::PageClientImpl::isViewFocused(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WebKit::PageClientImpl::isViewInWindow(this) && ([WeakRetained _isBackground] & 1) == 0 && (objc_msgSend(WeakRetained, "_contentViewIsFirstResponder") & 1) != 0)
  {
    v3 = 1;
    if (!WeakRetained)
    {
      return v3;
    }

    goto LABEL_7;
  }

  v3 = [WeakRetained _isRetainingActiveFocusedState];
  if (WeakRetained)
  {
LABEL_7:
  }

  return v3;
}

void sub_19D5CC8D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL WebKit::PageClientImpl::isViewInWindow(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = [WeakRetained window];
LABEL_4:

    return v4 != 0;
  }

  v3 = objc_loadWeakRetained(this + 7);
  v4 = [v3 window];
  if (v3)
  {
    goto LABEL_4;
  }

  return v4 != 0;
}

void sub_19D5CC94C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageClientImpl::isViewWindowActive(id *this)
{
  if (WebKit::PageClientImpl::isActiveViewVisible(this))
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(this + 2);
  v2 = [WeakRetained _isRetainingActiveFocusedState];
  if (WeakRetained)
  {
  }

  return v2;
}

void sub_19D5CC9B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PageLoadState::ref(WebKit::PageLoadState *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return CFRetain(*(v1 - 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::PageLoadState::deref(WebKit::PageLoadState *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    CFRelease(*(v1 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::PageClientImpl::derefView(id *this)
{
  Weak = objc_loadWeak(this + 2);
}

void WebKit::WebPageProxy::updateThrottleState(WebKit::WebPageProxy *this)
{
  v123 = *MEMORY[0x1E69E9840];
  v2 = *(this + 46);
  CFRetain(*(v2 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key = WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key, v3);
  CFRelease(*(v2 + 8));
  v5 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16));
  CFRetain(*(v5 + 8));
  if ((BoolValueForKey & 1) == 0)
  {
    v7 = *(v5 + 568);
    if (v7)
    {
      v8 = *v7;
      ++*(v7 + 8);
      if (v8)
      {
        if (*v8)
        {
          (*(**v8 + 16))(*v8, 1);
        }
      }
    }

    v9 = *(this + 4);
    v10 = *(v9 + 1536);
    *(v9 + 1536) = v7;
    if (v10)
    {
      v11 = *v10;
      v12 = *(v10 + 8) - 1;
      *(v10 + 8) = v12;
      if (v11)
      {
        v13 = *v11;
        if (!*v11)
        {
          goto LABEL_15;
        }

        v14 = *(v10 + 16);
        *(v10 + 16) = 1;
        (*(*v13 + 16))(v13, 0);
        *(v10 + 16) = v14;
        if (*v10)
        {
          goto LABEL_15;
        }

        v12 = *(v10 + 8);
      }

      if (!v12)
      {
        MEMORY[0x19EB14CF0](v10, 0x1020C40545B2139);
      }
    }
  }

LABEL_15:
  v15 = *(this + 4);
  v16 = *(v15 + 1096);
  if ((*(v15 + 80) & 0x20) != 0)
  {
    *(v15 + 1096) = 0;
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_30;
    }

    v17 = *(v5 + 552);
    if (!v17 || (v18 = *v17, ++*(v17 + 8), !v18) || !*v18)
    {
      *(v15 + 1096) = v17;
      goto LABEL_30;
    }

    (*(**v18 + 16))(*v18, 1);
    v19 = *(this + 4);
    v16 = *(v19 + 1096);
    *(v19 + 1096) = v17;
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  v20 = *v16;
  v21 = *(v16 + 8) - 1;
  *(v16 + 8) = v21;
  if (v20)
  {
    v22 = *v20;
    if (!*v20)
    {
      goto LABEL_30;
    }

    v23 = *(v16 + 16);
    *(v16 + 16) = 1;
    (*(*v22 + 16))(v22, 0);
    *(v16 + 16) = v23;
    if (*v16)
    {
      goto LABEL_30;
    }

    v21 = *(v16 + 8);
  }

  if (!v21)
  {
    MEMORY[0x19EB14CF0](v16, 0x1020C40545B2139);
  }

LABEL_30:
  v24 = *(*(this + 4) + 80);
  hasValidVisibleActivity = WebKit::WebPageProxy::hasValidVisibleActivity(this, v6);
  if ((v24 & 4) != 0)
  {
    if (hasValidVisibleActivity)
    {
      goto LABEL_48;
    }

    v39 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(this + 5);
      v40 = *(this + 6);
      v42 = *(*(this + 44) + 80);
      if (v42)
      {
        LODWORD(v42) = *(v42 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v115 = 2048;
      v116 = v41;
      v117 = 2048;
      v118 = v40;
      v119 = 1024;
      v120 = v42;
      _os_log_impl(&dword_19D52D000, v39, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is taking a foreground assertion because the view is visible", buf, 0x26u);
    }

    WebKit::WebProcessActivityState::takeVisibleActivity(*(this + 85));
    v34 = *(this + 185);
    v35 = (v34 + 8);
    v43 = (*(v34 + 8) + 1);
    *(v34 + 8) = v43;
    v37 = WTF::fastMalloc(v43, 0x10);
    v38 = &unk_1F11172C8;
  }

  else
  {
    if (!hasValidVisibleActivity)
    {
      goto LABEL_48;
    }

    v27 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(this + 5);
      v29 = *(this + 6);
      v31 = *(*(this + 44) + 80);
      if (v31)
      {
        LODWORD(v31) = *(v31 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v115 = 2048;
      v116 = v30;
      v117 = 2048;
      v118 = v29;
      v119 = 1024;
      v120 = v31;
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is releasing a foreground assertion because the view is no longer visible", buf, 0x26u);
    }

    v32 = *(this + 85);
    v33 = *(v32 + 16);
    *(v32 + 16) = 0;
    if (v33)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v33 + 8), v28);
    }

    v34 = *(this + 185);
    v35 = (v34 + 8);
    v36 = (*(v34 + 8) + 1);
    *(v34 + 8) = v36;
    v37 = WTF::fastMalloc(v36, 0x10);
    v38 = &unk_1F1117390;
  }

  *v37 = v38;
  *buf = v37;
  WebKit::BrowsingContextGroup::forEachRemotePage(v34, this, buf);
  v45 = *buf;
  *buf = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(v35, v44);
LABEL_48:
  v46 = *(*(this + 4) + 80);
  hasValidAudibleActivity = WebKit::WebPageProxy::hasValidAudibleActivity(this, v26);
  if ((v46 & 0x40) != 0)
  {
    if ((hasValidAudibleActivity & 1) == 0)
    {
      v52 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(this + 5);
        v53 = *(this + 6);
        v55 = *(*(this + 44) + 80);
        if (v55)
        {
          LODWORD(v55) = *(v55 + 108);
        }

        *buf = 134218752;
        *&buf[4] = this;
        v115 = 2048;
        v116 = v54;
        v117 = 2048;
        v118 = v53;
        v119 = 1024;
        v120 = v55;
        _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is taking a foreground assertion because we are playing audio", buf, 0x26u);
      }

      WebKit::WebProcessActivityState::takeAudibleActivity(*(this + 85));
      v56 = *(this + 185);
      v57 = (*(v56 + 8) + 1);
      *(v56 + 8) = v57;
      v58 = WTF::fastMalloc(v57, 0x10);
      *v58 = &unk_1F11172F0;
      *buf = v58;
      WebKit::BrowsingContextGroup::forEachRemotePage(v56, this, buf);
      v60 = *buf;
      *buf = 0;
      if (v60)
      {
        (*(*v60 + 8))(v60);
      }

      WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v56 + 8), v59);
    }

    if (WTF::RunLoop::TimerBase::isActive((*(this + 4) + 88)))
    {
      v61 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v63 = *(this + 5);
        v62 = *(this + 6);
        v64 = *(*(this + 44) + 80);
        if (v64)
        {
          LODWORD(v64) = *(v64 + 108);
        }

        *buf = 134218752;
        *&buf[4] = this;
        v115 = 2048;
        v116 = v63;
        v117 = 2048;
        v118 = v62;
        v119 = 1024;
        v120 = v64;
        _os_log_impl(&dword_19D52D000, v61, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: Cancelling timer to release foreground assertion", buf, 0x26u);
      }

      WTF::RunLoop::TimerBase::stop((*(this + 4) + 88));
    }
  }

  else if (hasValidAudibleActivity && (WTF::RunLoop::TimerBase::isActive((*(this + 4) + 88)) & 1) == 0)
  {
    v48 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(this + 5);
      v49 = *(this + 6);
      v51 = *(*(this + 44) + 80);
      if (v51)
      {
        LODWORD(v51) = *(v51 + 108);
      }

      *buf = 134219008;
      *&buf[4] = this;
      v115 = 2048;
      v116 = v50;
      v117 = 2048;
      v118 = v49;
      v119 = 1024;
      v120 = v51;
      v121 = 2048;
      v122 = 0x4024000000000000;
      _os_log_impl(&dword_19D52D000, v48, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess starting timer to release a foreground assertion in %g seconds if audio doesn't start to play", buf, 0x30u);
    }

    WTF::RunLoop::TimerBase::start();
  }

  v65 = *(this + 4);
  v66 = *(v65 + 80);
  if ((v66 & 0x100) == 0 && (*(v65 + 968) & 0x2486000) != 0)
  {
    v67 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v69 = *(this + 5);
      v68 = *(this + 6);
      v70 = *(*(this + 44) + 80);
      if (v70)
      {
        LODWORD(v70) = *(v70 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v115 = 2048;
      v116 = v69;
      v117 = 2048;
      v118 = v68;
      v119 = 1024;
      v120 = v70;
      _os_log_impl(&dword_19D52D000, v67, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: taking a web process background assertion for muted media capture", buf, 0x26u);
    }

    WebKit::WebProcessActivityState::takeMutedCaptureAssertion(*(this + 85));
    v71 = *(this + 185);
    v72 = (*(v71 + 8) + 1);
    *(v71 + 8) = v72;
    v73 = WTF::fastMalloc(v72, 0x10);
    *v73 = &unk_1F1117340;
    *buf = v73;
    WebKit::BrowsingContextGroup::forEachRemotePage(v71, this, buf);
    v75 = *buf;
    *buf = 0;
    if (v75)
    {
      (*(*v75 + 8))(v75);
    }

    WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v71 + 8), v74);
LABEL_98:
    if (!WebKit::WebPageProxy::hasValidCapturingActivity(this, v76))
    {
      goto LABEL_109;
    }

    v103 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v106 = *(this + 5);
      v105 = *(this + 6);
      v107 = *(*(this + 44) + 80);
      if (v107)
      {
        LODWORD(v107) = *(v107 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v115 = 2048;
      v116 = v106;
      v117 = 2048;
      v118 = v105;
      v119 = 1024;
      v120 = v107;
      _os_log_impl(&dword_19D52D000, v103, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is releasing a foreground assertion because media capture is no longer active", buf, 0x26u);
    }

    v108 = *(this + 85);
    v109 = *(v108 + 32);
    *(v108 + 32) = 0;
    if (v109)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v109 + 8), v104);
    }

    v98 = *(this + 185);
    v99 = (v98 + 8);
    v110 = (*(v98 + 8) + 1);
    *(v98 + 8) = v110;
    v101 = WTF::fastMalloc(v110, 0x10);
    v102 = &unk_1F11173E0;
    goto LABEL_106;
  }

  v113 = *(*(this + 85) + 40) != 0;
  v77 = *(this + 185);
  v78 = (*(v77 + 8) + 1);
  *(v77 + 8) = v78;
  v79 = WTF::fastMalloc(v78, 0x10);
  *v79 = &unk_1F11174A8;
  v79[1] = &v113;
  *buf = v79;
  WebKit::BrowsingContextGroup::forEachRemotePage(v77, this, buf);
  v81 = *buf;
  *buf = 0;
  if (v81)
  {
    (*(*v81 + 8))(v81);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v77 + 8), v80);
  if (v113)
  {
    v82 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v85 = *(this + 5);
      v84 = *(this + 6);
      v86 = *(*(this + 44) + 80);
      if (v86)
      {
        LODWORD(v86) = *(v86 + 108);
      }

      *buf = 134218752;
      *&buf[4] = this;
      v115 = 2048;
      v116 = v85;
      v117 = 2048;
      v118 = v84;
      v119 = 1024;
      v120 = v86;
      _os_log_impl(&dword_19D52D000, v82, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: releasing a web process background assertion for muted media capture", buf, 0x26u);
    }

    v87 = *(this + 85);
    v88 = *(v87 + 40);
    *(v87 + 40) = 0;
    if (v88)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v88 + 8), v83);
    }

    v89 = *(this + 185);
    v90 = (*(v89 + 8) + 1);
    *(v89 + 8) = v90;
    v91 = WTF::fastMalloc(v90, 0x10);
    *v91 = &unk_1F1117408;
    *buf = v91;
    WebKit::BrowsingContextGroup::forEachRemotePage(v89, this, buf);
    v93 = *buf;
    *buf = 0;
    if (v93)
    {
      (*(*v93 + 8))(v93);
    }

    WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v89 + 8), v92);
  }

  if ((v66 & 0x100) == 0)
  {
    goto LABEL_98;
  }

  if (WebKit::WebPageProxy::hasValidCapturingActivity(this, v76))
  {
    goto LABEL_109;
  }

  v94 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v96 = *(this + 5);
    v95 = *(this + 6);
    v97 = *(*(this + 44) + 80);
    if (v97)
    {
      LODWORD(v97) = *(v97 + 108);
    }

    *buf = 134218752;
    *&buf[4] = this;
    v115 = 2048;
    v116 = v96;
    v117 = 2048;
    v118 = v95;
    v119 = 1024;
    v120 = v97;
    _os_log_impl(&dword_19D52D000, v94, OS_LOG_TYPE_DEFAULT, "%p - [pageProxyID=%llu, webPageID=%llu, PID=%i] WebPageProxy::updateThrottleState: UIProcess is taking a foreground assertion because media capture is active", buf, 0x26u);
  }

  WebKit::WebProcessActivityState::takeCapturingActivity(*(this + 85));
  v98 = *(this + 185);
  v99 = (v98 + 8);
  v100 = (*(v98 + 8) + 1);
  *(v98 + 8) = v100;
  v101 = WTF::fastMalloc(v100, 0x10);
  v102 = &unk_1F1117318;
LABEL_106:
  *v101 = v102;
  *buf = v101;
  WebKit::BrowsingContextGroup::forEachRemotePage(v98, this, buf);
  v112 = *buf;
  *buf = 0;
  if (v112)
  {
    (*(*v112 + 8))(v112);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(v99, v111);
LABEL_109:
  CFRelease(*(v5 + 8));
}

uint64_t WebKit::WebPageProxy::hasValidVisibleActivity(WebKit::WebPageProxy *this, unint64_t a2)
{
  v3 = *(*(this + 85) + 16);
  if (v3)
  {
    v3 = *(v3 + 16);
    if (v3)
    {
      LOBYTE(v3) = *(v3 + 8) != 0;
    }
  }

  v11 = v3;
  v4 = *(this + 185);
  v5 = (*(v4 + 8) + 1);
  *(v4 + 8) = v5;
  v6 = WTF::fastMalloc(v5, 0x10);
  *v6 = &unk_1F1117430;
  v6[1] = &v11;
  v10 = v6;
  WebKit::BrowsingContextGroup::forEachRemotePage(v4, this, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v4 + 8), v7);
  return v11;
}

void *WebKit::BrowsingContextGroup::forEachRemotePage(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1 + 56;
  WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::find((a1 + 56), a2, &v22);
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 - 4);
    v8 = v6 + 16 * v7;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v16 = v5;
  v17 = v8;
  v18 = v8;
  v19 = v8;
  v20 = v6 + 16 * v7;
  v21 = 0;
  result = WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekPtrType,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekType>::skipEmptyBuckets(&v16);
  if (v23 != v17)
  {
    v10 = *(v23 + 8);
    result = WTF::HashTable<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::FastMalloc>::begin(v10);
    v11 = result;
    v13 = v12;
    v14 = v10 ? &v10[*(v10 - 1)] : 0;
    if (v14 != result)
    {
      do
      {
        v15 = *v11;
        v15[4] = *(*v11 + 16) + 1;
        result = (*(**a3 + 16))(*a3, v15);
        if (v15[4] == 1)
        {
          result = (*(*v15 + 24))(v15);
        }

        else
        {
          --v15[4];
        }

        do
        {
          v11 += 8;
        }

        while (v11 != v13 && (*v11 + 1) <= 1);
      }

      while (v11 != v14);
    }
  }

  return result;
}

void *WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::find@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 2);
  v5 = *(a2 + 24);
  if (v5 && *(v5 + 8))
  {
    v15 = *(a2 + 24);
    v6 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>( a1,  &v15);
    *a3 = a1;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 - 4);
      v10 = v8 + 16 * v9;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    *(a3 + 24) = v10;
    *(a3 + 32) = v8 + 16 * v9;
    *(a3 + 40) = 0;
    return WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekPtrType,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekType>::skipEmptyBuckets(a3);
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      v12 = *(v11 - 4);
      v13 = v11 + 16 * v12;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    *a3 = a1;
    *(a3 + 8) = v13;
    *(a3 + 16) = v13;
    *(a3 + 24) = v13;
    *(a3 + 32) = v11 + 16 * v12;
    *(a3 + 40) = 0;

    return WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::WeakHashMapIteratorBase<WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>,WTF::HashTableIteratorAdapter<WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekPtrType,WTF::WeakHashMap<WebKit::WebPageProxy,WTF::HashSet<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>,WTF::DefaultHash<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::RemotePageProxy,WTF::RawPtrTraits<WebKit::RemotePageProxy>,WTF::DefaultRefDerefTraits<WebKit::RemotePageProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultWeakPtrImpl>::PeekType>::skipEmptyBuckets(a3);
  }
}

uint64_t WebKit::WebPageProxy::hasValidAudibleActivity(WebKit::WebPageProxy *this, unint64_t a2)
{
  v3 = *(*(this + 85) + 24);
  if (v3)
  {
    v3 = *(v3 + 16);
    if (v3)
    {
      LOBYTE(v3) = *(v3 + 8) != 0;
    }
  }

  v11 = v3;
  v4 = *(this + 185);
  v5 = (*(v4 + 8) + 1);
  *(v4 + 8) = v5;
  v6 = WTF::fastMalloc(v5, 0x10);
  *v6 = &unk_1F1117458;
  v6[1] = &v11;
  v10 = v6;
  WebKit::BrowsingContextGroup::forEachRemotePage(v4, this, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v4 + 8), v7);
  return v11;
}

uint64_t WebKit::WebPageProxy::hasValidCapturingActivity(WebKit::WebPageProxy *this, unint64_t a2)
{
  v3 = *(*(this + 85) + 32);
  if (v3)
  {
    v3 = *(v3 + 16);
    if (v3)
    {
      LOBYTE(v3) = *(v3 + 8) != 0;
    }
  }

  v11 = v3;
  v4 = *(this + 185);
  v5 = (*(v4 + 8) + 1);
  *(v4 + 8) = v5;
  v6 = WTF::fastMalloc(v5, 0x10);
  *v6 = &unk_1F1117480;
  v6[1] = &v11;
  v10 = v6;
  WebKit::BrowsingContextGroup::forEachRemotePage(v4, this, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WTF::RefCounted<WebKit::BrowsingContextGroup>::deref((v4 + 8), v7);
  return v11;
}

void WebKit::WebPageProxy::updateHiddenPageThrottlingAutoIncreases(WebKit::WebPageProxy *this)
{
  v2 = *(this + 46);
  CFRetain(*(v2 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key = WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::hiddenPageDOMTimerThrottlingAutoIncreasesKey(void)::key, v3);
  CFRelease(*(v2 + 8));
  v5 = *(this + 4);
  v6 = *(v5 + 856);
  if (BoolValueForKey)
  {
    if (v6)
    {
      return;
    }

    v7 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(this + 8) + 16));
    CFRetain(*(v7 + 8));
    v8 = *(v7 + 584);
    if (v8)
    {
      v9 = *v8;
      ++*(v8 + 8);
      if (v9)
      {
        if (*v9)
        {
          (*(**v9 + 16))(*v9, 1);
        }
      }
    }

    v10 = *(this + 4);
    v11 = *(v10 + 856);
    *(v10 + 856) = v8;
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = *v11;
    v13 = *(v11 + 8) - 1;
    *(v11 + 8) = v13;
    if (v12)
    {
      v14 = *v12;
      if (!*v12 || (v15 = *(v11 + 16), *(v11 + 16) = 1, (*(*v14 + 16))(v14, 0), *(v11 + 16) = v15, *v11))
      {
LABEL_16:
        v16 = *(v7 + 8);

        CFRelease(v16);
        return;
      }

      v13 = *(v11 + 8);
    }

    if (!v13)
    {
      MEMORY[0x19EB14CF0](v11, 0x1020C40545B2139);
    }

    goto LABEL_16;
  }

  *(v5 + 856) = 0;
  if (!v6)
  {
    return;
  }

  v17 = *v6;
  v18 = *(v6 + 8) - 1;
  *(v6 + 8) = v18;
  if (v17)
  {
    v19 = *v17;
    if (!*v17)
    {
      return;
    }

    v20 = *(v6 + 16);
    *(v6 + 16) = 1;
    (*(*v19 + 16))(v19, 0);
    *(v6 + 16) = v20;
    if (*v6)
    {
      return;
    }

    v18 = *(v6 + 8);
  }

  if (!v18)
  {

    JUMPOUT(0x19EB14CF0);
  }
}

void WebKit::WebExtensionController::addPage(WebKit::WebExtensionController *this, CFTypeRef **a2)
{
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 9, a2, v52);
  v4 = *(this + 21);
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = (v4 + 16 * v5);
    if (*(v4 - 12))
    {
      if (v5)
      {
        v7 = 16 * v5;
        v8 = *(this + 21);
        while ((*v8 + 1) <= 1)
        {
          v8 = (v8 + 16);
          v7 -= 16;
          if (!v7)
          {
            v8 = v6;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v8 = *(this + 21);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v8 = v6;
  v6 = (v4 + 16 * v5);
  if (!v4)
  {
    v9 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v9 = (v4 + 16 * *(v4 - 4));
LABEL_14:
  while (v8 != v9)
  {
    v10 = *(v8 + 1);
    ++*(v10 + 8);
    v52[0] = v10;
    WebKit::WebPageProxy::setURLSchemeHandlerForScheme(a2, v52, v8);
    v11 = v52[0];
    v52[0] = 0;
    if (v11)
    {
      if (*(v11 + 2) == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --*(v11 + 2);
      }
    }

    do
    {
      v8 = (v8 + 16);
    }

    while (v8 != v6 && (*v8 + 1) <= 1);
  }

  v12 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(a2[8] + 2);
  CFRetain(*(v12 + 8));
  v13 = WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 11, v12, v52);
  if (v53 == 1)
  {
    v14 = WebKit::WebExtensionMatchPattern::extensionSchemes(v13);
    v15 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v14);
    v17 = v15;
    v19 = v18;
    if (*v14)
    {
      v20 = *v14 + 8 * *(*v14 - 4);
    }

    else
    {
      v20 = 0;
    }

    if (v20 != v15)
    {
      do
      {
        WebKit::WebProcessPool::registerURLSchemeAsSecure(v12, v17, v16);
        WebKit::WebProcessPool::registerURLSchemeAsBypassingContentSecurityPolicy(v12, v17, v21);
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v12 + 352), v17, v22, v52);
        v52[0] = v17;
        WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(v12, v52);
        do
        {
          ++v17;
        }

        while (v17 != v19 && *v17 + 1 <= 1);
      }

      while (v17 != v20);
    }

    v23 = *(this + 4);
    v50 = 166;
    v51 = v23;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 64), &v50, this + 16, v52);
    v24 = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(this + 7);
    v25 = v24;
    v27 = v26;
    v28 = *(this + 7);
    if (v28)
    {
      v29 = (v28 + 8 * *(v28 - 4));
    }

    else
    {
      v29 = 0;
    }

    if (v29 != v24)
    {
      do
      {
        v30 = *v25;
        CFRetain(*(*v25 + 8));
        v31 = *(v30 + 32);
        v50 = 164;
        v51 = v31;
        WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 64), &v50, v30 + 16, v52);
        v32 = WebKit::WebExtensionContext::privilegedIdentifier(v30);
        v50 = 164;
        v51 = v32;
        WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 64), &v50, v30 + 16, v52);
        CFRelease(*(v30 + 8));
        do
        {
          ++v25;
        }

        while (v25 != v27 && (*v25 + 1) <= 1);
      }

      while (v25 != v29);
    }
  }

  v33 = a2[51];
  CFRetain(v33[1]);
  WTF::WeakHashSet<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebsiteDataStore>(this + 13, v33, v52);
  if (!*(this + 24))
  {
    v35 = WebKit::WebExtensionController::HTTPCookieStoreObserver::operator new(unsigned long)::s_heapRef ? bmalloc::api::tzoneAllocateNonCompact(WebKit::WebExtensionController::HTTPCookieStoreObserver::operator new(unsigned long)::s_heapRef, v34) : bmalloc::api::tzoneAllocateNonCompactSlow();
    v36 = v35;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    *v35 = &unk_1F113A9C8;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v37 = *(this + 3);
    atomic_fetch_add(v37, 1u);
    *(v36 + 24) = v37;
    v38 = *(this + 24);
    *(this + 24) = v36;
    if (v38)
    {
      if (v38[4] == 1)
      {
        (*(*v38 + 8))(v38);
      }

      else
      {
        --v38[4];
      }
    }
  }

  v39 = WebKit::WebsiteDataStore::cookieStore(v33);
  CFRetain(*(v39 + 1));
  v40 = *(this + 24);
  if (v40)
  {
    ++*(v40 + 16);
  }

  API::HTTPCookieStore::registerObserver(v39, v40);
  if (*(v40 + 16) == 1)
  {
    (*(*v40 + 8))(v40);
  }

  else
  {
    --*(v40 + 16);
  }

  CFRelease(*(v39 + 1));
  v41 = a2[47];
  CFRetain(v41[1]);
  v42 = v33[3];
  if (v42 < -1)
  {
    WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 19, v41, v52);
  }

  else
  {
    WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 17, v41, v52);
  }

  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 15, v41, v52);
  if (v53 == 1)
  {
    v43 = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(this + 7);
    v44 = v43;
    v46 = v45;
    v47 = *(this + 7);
    v48 = v47 ? v47 + 8 * *(v47 - 4) : 0;
    if (v48 != v43)
    {
      do
      {
        v49 = *v44;
        CFRetain(*(*v44 + 8));
        if (v42 > -2 || (*(v49 + 281) & 1) != 0)
        {
          WebKit::WebExtensionContext::addInjectedContent(v49, v41);
        }

        CFRelease(*(v49 + 8));
        do
        {
          ++v44;
        }

        while (v44 != v46 && (*v44 + 1) <= 1);
      }

      while (v44 != v48);
    }
  }

  CFRelease(v41[1]);
  CFRelease(v33[1]);
  CFRelease(*(v12 + 8));
}

uint64_t WebKit::WebProcessPool::registerURLSchemeAsSecure(WebKit::WebProcessPool *this, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&qword_1ED643540, a2, a3, &v13);
  v13 = a2;
  WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsSecure>(this, &v13);
  WebKit::NetworkProcessProxy::allNetworkProcesses(&v13, v5);
  if (v14)
  {
    v7 = v13;
    v8 = 8 * v14;
    do
    {
      v9 = *v7;
      v10 = (*v7 + 16);
      atomic_fetch_add(v10, 1u);
      v12 = a2;
      WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsSecure>(v9, &v12, 0, 0);
      if (v9)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10, v6);
      }

      v7 = (v7 + 8);
      v8 -= 8;
    }

    while (v8);
  }

  return WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsSecure>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2975;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsSecure>(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    v4 = *(result + 72);
    v5 = 8 * v2;
    do
    {
      result = *v4;
      v6 = *(*v4 + 80);
      if (v6 && (*(v6 + 104) & 1) != 0 || *(result + 88))
      {
        v7 = *a2;
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsSecure>(result, &v7, 0, 0);
      }

      v4 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsSecure>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 650;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

void *WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(void *a1)
{
  v2 = a1[2];
  v3 = (a1[1] + 8);
  a1[1] = v3;
  while (v3 != v2 && (*v3 + 1) <= 1)
  {
    a1[1] = ++v3;
  }

  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(a1);
  ++*(*a1 + 8);
  return a1;
}

uint64_t WebKit::WebProcessPool::registerURLSchemeAsBypassingContentSecurityPolicy(WebKit::WebProcessPool *this, WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&qword_1ED643548, a2, a3, &v13);
  v13 = a2;
  WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(this, &v13);
  WebKit::NetworkProcessProxy::allNetworkProcesses(&v13, v5);
  if (v14)
  {
    v7 = v13;
    v8 = 8 * v14;
    do
    {
      v9 = *v7;
      v10 = (*v7 + 16);
      atomic_fetch_add(v10, 1u);
      v12 = a2;
      WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(v9, &v12, 0, 0);
      if (v9)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10, v6);
      }

      v7 = (v7 + 8);
      v8 -= 8;
    }

    while (v8);
  }

  return WTF::Vector<WTF::Ref<WebKit::NetworkProcessProxy,WTF::RawPtrTraits<WebKit::NetworkProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::NetworkProcessProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2968;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    v4 = *(result + 72);
    v5 = 8 * v2;
    do
    {
      result = *v4;
      v6 = *(*v4 + 80);
      if (v6 && (*(v6 + 104) & 1) != 0 || *(result + 88))
      {
        v7 = *a2;
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(result, &v7, 0, 0);
      }

      v4 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 648;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 2990;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
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

uint64_t WebKit::WebProcessPool::sendToAllProcesses<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 84);
  if (v2)
  {
    v4 = *(result + 72);
    v5 = 8 * v2;
    do
    {
      result = *v4;
      v6 = *(*v4 + 80);
      if (v6 && (*(v6 + 104) & 1) != 0 || *(result + 88))
      {
        v7 = *a2;
        result = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetDomainRelaxationForbiddenForURLScheme>(result, &v7, 0, 0);
      }

      v4 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

unint64_t WTF::PairHash<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::hash(unsigned __int8 a1, uint64_t a2)
{
  v2 = ~(a1 << 15) + a1;
  v3 = (9 * (v2 ^ (v2 >> 10))) ^ ((9 * (v2 ^ (v2 >> 10))) >> 6);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  return (0xD7862706ELL * (277951225 * ((v3 + ~(v3 << 11)) ^ ((v3 + ~(v3 << 11)) >> 16)) + 95187966 * ((v6 >> 31) ^ v6))) >> 4;
}

API::HTTPCookieStore *WebKit::WebsiteDataStore::cookieStore(WebKit::WebsiteDataStore *this)
{
  result = *(this + 53);
  if (!result)
  {
    v3 = API::Object::newObject(0x30uLL, 65);
    result = API::HTTPCookieStore::HTTPCookieStore(v3, this);
    v4 = *(this + 53);
    *(this + 53) = result;
    if (v4)
    {
      CFRelease(*(v4 + 8));
      return *(this + 53);
    }
  }

  return result;
}

API::HTTPCookieStore *API::HTTPCookieStore::HTTPCookieStore(API::HTTPCookieStore *this, WebKit::WebsiteDataStore *a2)
{
  v4 = API::Object::Object(this);
  *v4 = &unk_1F111B448;
  *(v4 + 2) = *(a2 + 3);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 4, a2);
  v5 = *(a2 + 2);
  atomic_fetch_add(v5, 1u);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v5;
  return this;
}

atomic_uint *API::HTTPCookieStore::registerObserver(uint64_t *a1, void *a2)
{
  isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(a1 + 4);
  result = WTF::WeakHashSet<API::HTTPCookieStoreObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<API::HTTPCookieStoreObserver>(a1 + 4, a2, v8);
  if (isEmptyIgnoringNullReferences)
  {
    result = API::HTTPCookieStore::networkProcessLaunchingIfNecessary(a1);
    if (result)
    {
      v6 = result + 4;
      atomic_fetch_add(result + 4, 1u);
      v8[0] = a1 + 2;
      WebKit::AuxiliaryProcessProxy::send<Messages::WebCookieManager::StartObservingCookieChanges>(result, v8, 0, 0);
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6, v7);
    }
  }

  return result;
}

uint64_t API::HTTPCookieStore::networkProcessLaunchingIfNecessary(API::HTTPCookieStore *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  CFRetain(v2[1]);
  v4 = WebKit::WebsiteDataStore::networkProcess(v2, v3);
  CFRelease(v2[1]);
  return v4;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebCookieManager::StartObservingCookieChanges>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1856;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
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

uint64_t WebKit::WebInspectorUIProxy::WebInspectorUIProxy(WebKit::WebInspectorUIProxy *this, WebKit::WebPageProxy *a2)
{
  v4 = API::Object::Object(this);
  v5 = v4 + 16;
  *v4 = &unk_1F111EBB0;
  *(v4 + 2) = &unk_1F111EC00;
  *(v4 + 3) = 0;
  *(v4 + 4) = &unk_1F111EC48;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v7 = *(a2 + 3);
  atomic_fetch_add(v7, 1u);
  *(this + 5) = v7;
  *(this + 6) = 0;
  if (API::InspectorClient::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(API::InspectorClient::operator new(unsigned long)::s_heapRef, v6);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompact = &unk_1F111ED90;
  *(this + 7) = NonCompact;
  *(this + 8) = *(a2 + 5);
  *(this + 9) = 0;
  *(this + 77) = 0;
  v9 = *(this + 5);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    v11 = v10 - 16;
    CFRetain(*(v10 - 8));
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 352);
  atomic_fetch_add((v12 + 16), 1u);
  v13 = *(this + 5);
  if (v13 && (v14 = *(v13 + 8)) != 0)
  {
    v15 = *(v14 + 32);
    v19[0] = 181;
    v19[1] = v15;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 104), v19, v5, v18);
    if (v12)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16), v16);
    }

    CFRelease(*(v11 + 8));
    return this;
  }

  else
  {
    result = 121;
    __break(0xC471u);
  }

  return result;
}

unint64_t WebKit::WebPageProxy::didAttachToRunningProcess(WebKit::WebPageProxy *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (*(*v3 + 1712))(v3);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*v3 + 1328))(v3);
  ++*(v4 + 2);
  v6 = WebKit::WebFullScreenManagerProxy::operator new(0x58, v5);
  WebKit::WebFullScreenManagerProxy::WebFullScreenManagerProxy(v6, this, v4);
  v7 = *(this + 63);
  *(this + 63) = v6;
  if (v7)
  {
    if (v7[5] == 1)
    {
      (*(*v7 + 24))(v7);
    }

    else
    {
      --v7[5];
    }
  }

  v8 = *(v4 + 2);
  if (!v8)
  {
    result = 290;
    __break(0xC471u);
    return result;
  }

  *(v4 + 2) = v8 - 1;
  (*(*v3 + 1720))(v3);
  WebKit::PlaybackSessionManagerProxy::create(&v38, this);
  v9 = v38;
  v10 = *(this + 65);
  *(this + 65) = v38;
  if (v10)
  {
    if (v10[4] == 1)
    {
      (*(*v10 + 24))(v10);
      v9 = *(this + 65);
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    --v10[4];
  }

  if (v9)
  {
LABEL_13:
    ++*(v9 + 4);
  }

LABEL_14:
  WebKit::VideoPresentationManagerProxy::create(&v38, this, v9);
  v12 = *(this + 66);
  *(this + 66) = v38;
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

  if (*(v9 + 4) == 1)
  {
    (*(*v9 + 24))(v9);
  }

  else
  {
    --*(v9 + 4);
  }

  v13 = *(this + 66);
  if (v13)
  {
    v14 = *(v13 + 16);
    *(v13 + 16) = v14 + 1;
    *(v13 + 32) = *(this + 536);
    if (v14)
    {
      *(v13 + 16) = v14;
    }

    else
    {
      (*(*v13 + 24))(v13);
    }
  }

  WebKit::WebPaymentCoordinatorProxy::create((*(this + 4) + 16), v11, &v38);
  v16 = *(this + 4);
  v17 = *(v16 + 2240);
  *(v16 + 2240) = v38;
  if (v17)
  {
    WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref((v17 + 40));
  }

  v18 = WebKit::SystemPreviewController::operator new(0x130, v15);
  v19 = WebKit::SystemPreviewController::SystemPreviewController(v18, this);
  v20 = *(this + 69);
  *(this + 69) = v19;
  if (v20)
  {
    WTF::RefCounted<WebKit::SystemPreviewController>::deref((v20 + 8));
  }

  v21 = *(this + 46);
  CFRetain(*(v21 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v21 + 40), &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, v22);
  CFRelease(*(v21 + 8));
  if (BoolValueForKey)
  {
    v25 = WebKit::ModelElementController::operator new(0x18, v24);
    *v25 = 0;
    *(v25 + 8) = 1;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 6, this + 16);
    v26 = *(this + 3);
    atomic_fetch_add(v26, 1u);
    *(v25 + 16) = v26;
    v27 = *(this + 70);
    *(this + 70) = v25;
    if (v27)
    {
      WTF::RefCounted<WebKit::ModelElementController>::deref(v27 + 8, v24);
    }
  }

  v28 = WebKit::WebAuthenticatorCoordinatorProxy::operator new(0x68, v24);
  WebKit::WebAuthenticatorCoordinatorProxy::WebAuthenticatorCoordinatorProxy(v28, this);
  v30 = *(this + 72);
  *(this + 72) = v28;
  if (v30)
  {
    if (v30[4] == 1)
    {
      (*(*v30 + 24))(v30);
    }

    else
    {
      --v30[4];
    }
  }

  WebKit::WebDeviceOrientationUpdateProviderProxy::create(&v38, this, v29);
  v32 = *(this + 172);
  *(this + 172) = v38;
  if (v32)
  {
    if (v32[8] == 1)
    {
      (*(*v32 + 8))(v32);
    }

    else
    {
      --v32[8];
    }
  }

  v33 = *(this + 135);
  if (v33 == -90)
  {
    v34 = 3;
  }

  else if (v33 == 90)
  {
    v34 = 2;
  }

  else
  {
    v34 = v33 == 180;
  }

  v35 = WebKit::WebScreenOrientationManagerProxy::operator new(0x38, v31);
  result = WebKit::WebScreenOrientationManagerProxy::WebScreenOrientationManagerProxy(v35, this, v34);
  v37 = *(this + 173);
  *(this + 173) = result;
  if (v37)
  {

    return WTF::RefCounted<WebKit::WebScreenOrientationManagerProxy>::deref((v37 + 16));
  }

  return result;
}

uint64_t WebKit::PageClientImpl::fullScreenManagerProxyClient(WebKit::PageClientImpl *this)
{
  if (*(this + 4))
  {
    return *(this + 4);
  }

  else
  {
    return this + 40;
  }
}

uint64_t WebKit::WebFullScreenManagerProxy::operator new(WebKit::WebFullScreenManagerProxy *this, void *a2)
{
  if (this == 88 && WebKit::WebFullScreenManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebFullScreenManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebFullScreenManagerProxy::operatorNewSlow(this);
  }
}

WebKit::WebFullScreenManagerProxy *WebKit::WebFullScreenManagerProxy::WebFullScreenManagerProxy(WebKit::WebFullScreenManagerProxy *this, WebKit::WebPageProxy *a2, WebKit::WebFullScreenManagerProxyClient *a3)
{
  *(this + 2) = 0x100000000;
  *this = &unk_1F11163E8;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  ++*(a3 + 2);
  *(this + 3) = v6;
  *(this + 4) = a3;
  *(this + 20) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  v8 = WebKit::WebPageProxy::logger(a2, v7);
  atomic_fetch_add((v8 + 8), 1u);
  *(this + 9) = v8;
  v9 = *(a2 + 5) + ~(*(a2 + 5) << 32);
  v10 = 9 * (((v9 ^ (v9 >> 22)) + ~((v9 ^ (v9 >> 22)) << 13)) ^ (((v9 ^ (v9 >> 22)) + ~((v9 ^ (v9 >> 22)) << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  *(this + 10) = (v11 >> 31) ^ v11;
  v12 = *(a2 + 44);
  atomic_fetch_add((v12 + 16), 1u);
  v13 = *(a2 + 6);
  v17[0] = 172;
  v17[1] = v13;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v12 + 104), v17, this, v16);
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v12 + 16), v14);
  }

  return this;
}

uint64_t WebKit::WebPageProxy::logger(WebKit::WebPageProxy *this, unint64_t a2)
{
  if (!*(this + 164))
  {
    v3 = WTF::fastMalloc(0, 0x18);
    *(v3 + 2) = 1;
    *v3 = &unk_1F10FAF48;
    *(v3 + 12) = 1;
    v3[2] = this;
    atomic_fetch_add(v3 + 2, 1u);
    v4 = *(this + 164);
    *(this + 164) = v3;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    isAlwaysOnLoggingAllowed = WebKit::WebPageProxy::isAlwaysOnLoggingAllowed(this);
    if (v3[2] == this)
    {
      *(v3 + 12) = isAlwaysOnLoggingAllowed;
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  return *(this + 164);
}

uint64_t WebKit::WebPageProxy::isAlwaysOnLoggingAllowed(WebKit::WebPageProxy *this)
{
  if (*(*(this + 51) + 24) > -2)
  {
    return 1;
  }

  v2 = *(this + 46);
  CFRetain(*(v2 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key = WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v2 + 40), &WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key, v3);
  CFRelease(*(v2 + 8));
  return BoolValueForKey;
}

WebKit::PlaybackSessionManagerProxy *WebKit::PlaybackSessionManagerProxy::create@<X0>(WebKit::PlaybackSessionManagerProxy **__return_ptr a1@<X8>, WebKit::PlaybackSessionManagerProxy *this@<X0>)
{
  v5 = WTF::fastMalloc(a1, 0x60);
  result = WebKit::PlaybackSessionManagerProxy::PlaybackSessionManagerProxy(v5, this);
  *a1 = v5;
  return result;
}

WebKit::PlaybackSessionManagerProxy *WebKit::PlaybackSessionManagerProxy::PlaybackSessionManagerProxy(WebKit::PlaybackSessionManagerProxy *this, WebKit::WebPageProxy *a2)
{
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *this = &unk_1F11007D0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 5) = 0;
  *(this + 4) = v4;
  *(this + 9) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  v6 = WebKit::WebPageProxy::logger(a2, v5);
  atomic_fetch_add(v6 + 2, 1u);
  *(this + 10) = v6;
  v7 = *(a2 + 5) + ~(*(a2 + 5) << 32);
  v8 = (v7 ^ (v7 >> 22)) + ~((v7 ^ (v7 >> 22)) << 13);
  v9 = (9 * (v8 ^ (v8 >> 8))) ^ ((9 * (v8 ^ (v8 >> 8))) >> 15);
  *(this + 11) = ((v9 + ~(v9 << 27)) >> 31) ^ (v9 + ~(v9 << 27));
  atomic_fetch_add(v6 + 2, 1u);
  v10 = *(this + 11);
  v19[0] = "PlaybackSessionManagerProxy";
  v19[1] = 28;
  v19[2] = "PlaybackSessionManagerProxy";
  v19[3] = v10;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v6, &WebKit2LogMedia, 0, v19))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v19);
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 8))(v6);
  }

  v11 = *(this + 4);
  if (v11 && (v12 = *(v11 + 8)) != 0)
  {
    CFRetain(*(v12 - 8));
    v13 = 0;
    v14 = v12 - 16;
  }

  else
  {
    v14 = 0;
    v13 = 1;
  }

  v15 = *(v14 + 352);
  atomic_fetch_add((v15 + 16), 1u);
  v16 = *(v14 + 48);
  v20[0] = 50;
  v20[1] = v16;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v15 + 104), v20, this, v19);
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16), v17);
  }

  if ((v13 & 1) == 0)
  {
    CFRelease(*(v14 + 8));
  }

  return this;
}

void sub_19D5CFC48(_Unwind_Exception *a1, void *a2)
{
  v8 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8, a2);
  }

  v9 = *(v2 + 72);
  if (v9)
  {
    WTF::fastFree((v9 - 16), a2);
  }

  if (*v6)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WTF::Ref<WebKit::PlaybackSessionModelContext,WTF::RawPtrTraits<WebKit::PlaybackSessionModelContext>,WTF::DefaultRefDerefTraits<WebKit::PlaybackSessionModelContext>>,WTF::Ref<WebCore::PlaybackSessionInterfaceIOS,WTF::RawPtrTraits<WebCore::PlaybackSessionInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::PlaybackSessionInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(*v6, a2);
  }

  v10 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, a2);
  }

  *v2 = v5;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v4, a2);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, v11);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696EBD0];
  do
  {
    v9 = *v8;
    if (v9)
    {
      return 0;
    }

    v10 = *v8;
    atomic_compare_exchange_strong_explicit(v8, &v10, v9 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v10 != v9);
  v11 = WTF::Logger::messageHandlerObservers(a1);
  v12 = *(v11 + 12);
  if (v12)
  {
    v13 = *v11;
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      v23 = 0;
      WTF::Logger::LogSiteIdentifier::toString(v24, a4);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v22, &v23, 1uLL);
      (*(*v15 + 16))(v15, a2, a3, v22);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v16);
      v18 = v24[0];
      v24[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
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

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *this)
{
  v29 = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v24, this);
  *buf = v24;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>>(buf, &v25);
  if (v25)
  {
    v8 = v24;
    v24 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = *(a1 + 32);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v26 ? v26 + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v26;
      v26 = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          v10 = WTF::fastFree(v10, v11);
        }

        else
        {
          --*v10;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v13 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v14 = *v13;
        if (v14)
        {
          break;
        }

        v15 = *v13;
        atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
        if (v15 == v14)
        {
          v16 = WTF::Logger::observers(v10);
          v17 = *(v16 + 12);
          if (v17)
          {
            v18 = *v16;
            v19 = 8 * v17;
            do
            {
              v20 = *v18;
              LODWORD(v26) = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v27, this);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(buf, &v26, 1uLL);
              (*(*v20 + 16))(v20, a1, a2, buf);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v21);
              v22 = v27;
              v27 = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v11);
              }

              ++v18;
              v19 -= 8;
            }

            while (v19);
          }

          v23 = 1;
          atomic_compare_exchange_strong_explicit(v13, &v23, 0, memory_order_release, memory_order_relaxed);
          if (v23 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v25;
    v25 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (!*a1)
  {
    result = 0;
    v4 = 1;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(result, v4, v2, a2);
  }

  result = *(v2 + 4);
  if ((result & 0x80000000) == 0)
  {
    v4 = (*(v2 + 16) >> 2) & 1;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>(result, v4, v2, a2);
  }

  *a2 = 0;
  return result;
}

uint64_t *WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v5 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc(&v10, (result + 20));
        v7 = v10;
        if (v10)
        {
          v8 = (v10 + 5);
          *v10 = 2;
          v7[1] = v5;
          *(v7 + 1) = v7 + 5;
          v7[4] = 4;
          v10 = a3;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v10, v8);
        }

        goto LABEL_12;
      }

LABEL_8:
      v7 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v7 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_12;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_8;
  }

  result = WTF::tryFastCompactMalloc(&v10, (2 * result + 20));
  v7 = v10;
  if (v10)
  {
    v9 = (v10 + 5);
    *v10 = 2;
    v7[1] = v5;
    *(v7 + 1) = v7 + 5;
    v7[4] = 0;
    v10 = a3;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v10, v9);
  }

LABEL_12:
  *a4 = v7;
  return result;
}

WebKit::VideoPresentationManagerProxy *WebKit::VideoPresentationManagerProxy::create@<X0>(WebKit::VideoPresentationManagerProxy **__return_ptr a1@<X8>, WebKit::VideoPresentationManagerProxy *this@<X0>, WebKit::WebPageProxy *a3@<X1>)
{
  v6 = WTF::fastMalloc(a1, 0x80);
  result = WebKit::VideoPresentationManagerProxy::VideoPresentationManagerProxy(v6, this, a3);
  *a1 = v6;
  return result;
}

WebKit::VideoPresentationManagerProxy *WebKit::VideoPresentationManagerProxy::VideoPresentationManagerProxy(WebKit::VideoPresentationManagerProxy *this, WebKit::WebPageProxy *a2, WebKit::PlaybackSessionManagerProxy *a3)
{
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *this = &unk_1F11027A0;
  *(this + 32) = 0;
  *(this + 36) = vdup_n_s32(0x42C80000u);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v6 = *(a2 + 3);
  atomic_fetch_add(v6, 1u);
  ++*(a3 + 4);
  *(this + 5) = 0u;
  *(this + 6) = v6;
  *(this + 7) = a3;
  *(this + 4) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  v7 = *(a3 + 10);
  atomic_fetch_add(v7 + 2, 1u);
  v8 = *(*(this + 7) + 88);
  v17[0] = "PlaybackSessionManagerProxy";
  v17[1] = 28;
  v17[2] = "VideoPresentationManagerProxy";
  v17[3] = v8;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v7, &WebKit2LogFullscreen, 0, v17))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogFullscreen, 0, v17);
  }

  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v9 = *(this + 6);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    CFRetain(*(v10 - 8));
    v11 = 0;
    v12 = v10 - 16;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v13 = *(v12 + 352);
  atomic_fetch_add((v13 + 16), 1u);
  v14 = *(v12 + 48);
  v18[0] = 151;
  v18[1] = v14;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v13 + 104), v18, this, v17);
  if (v13)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16), v15);
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(*(v12 + 8));
  }

  return this;
}

void sub_19D5D0528(_Unwind_Exception *a1, void *a2)
{
  v9 = *(v2 + 96);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v9, a2);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2);
  v11 = *(v2 + 72);
  if (v11)
  {
    WTF::fastFree((v11 - 16), v10);
  }

  if (*v7)
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WTF::Ref<WebKit::VideoPresentationModelContext,WTF::RawPtrTraits<WebKit::VideoPresentationModelContext>,WTF::DefaultRefDerefTraits<WebKit::VideoPresentationModelContext>>,WTF::Ref<WebCore::VideoPresentationInterfaceIOS,WTF::RawPtrTraits<WebCore::VideoPresentationInterfaceIOS>,WTF::DefaultRefDerefTraits<WebCore::VideoPresentationInterfaceIOS>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(*v7, v10);
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
    WTF::fastFree(v13, v10);
  }

  *v2 = v5;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v4, v10);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, v14);
  if (*(v2 + 16) == 1)
  {
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
  JUMPOUT(0x19D5D066CLL);
}

uint64_t WebKit::WebPaymentCoordinatorProxy::operator new(WebKit::WebPaymentCoordinatorProxy *this, void *a2)
{
  if (this == 104 && WebKit::WebPaymentCoordinatorProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebPaymentCoordinatorProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebPaymentCoordinatorProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebPaymentCoordinatorProxy::create@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WebKit::WebPaymentCoordinatorProxy::operator new(0x68, a2);
  result = WebKit::WebPaymentCoordinatorProxy::WebPaymentCoordinatorProxy(v5, a1);
  *a3 = v5;
  return result;
}

uint64_t WebKit::WebPaymentCoordinatorProxy::WebPaymentCoordinatorProxy(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *a1 = &unk_1F10EF7E0;
  *(a1 + 16) = &unk_1F10EF878;
  *(a1 + 24) = &unk_1F10EF8C8;
  if (!a2[1])
  {
    v5 = WTF::fastCompactMalloc(0x10);
    *v5 = 1;
    *(v5 + 8) = a2;
    v6 = a2[1];
    a2[1] = v5;
    if (v6)
    {
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, v4);
      }
    }
  }

  v7 = a2[1];
  atomic_fetch_add(v7, 1u);
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  WTF::WorkQueue::create();
  *(a1 + 96) = 0;
  (*(*a2 + 48))(a2, a1, 189, a1);
  return a1;
}

void sub_19D5D085C(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 40) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v4, a2);
    *v2 = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v3, v6);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void WebKit::WebPageProxy::Internals::paymentCoordinatorAddMessageReceiver(WebKit::WebPageProxy::Internals *a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  WebKit::WebPageProxy::Internals::protectedPage(&v11, a1);
  v7 = *(v11 + 352);
  atomic_fetch_add((v7 + 16), 1u);
  v8 = *(*(a1 + 9) + 8);
  if (v8)
  {
    v9 = *(v8 + 32);
    v13[0] = a3;
    v13[1] = v9;
    WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v7 + 104), v13, a4, v12);
    if (v7)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v10);
    }

    if (v11)
    {
      CFRelease(*(v11 + 8));
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t *WebKit::WebPageProxy::Internals::protectedPage@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::WebPageProxy::Internals *this@<X0>)
{
  v3 = *(*(this + 9) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D0A9CLL);
  }

  v4 = v3 - 16;
  result = CFRetain(*(v3 - 8));
  *a1 = v4;
  return result;
}

uint64_t WebKit::SystemPreviewController::operator new(WebKit::SystemPreviewController *this, void *a2)
{
  if (this == 304 && WebKit::SystemPreviewController::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SystemPreviewController::s_heapRef, a2);
  }

  else
  {
    return WebKit::SystemPreviewController::operatorNewSlow(this);
  }
}

WebKit::SystemPreviewController *WebKit::SystemPreviewController::SystemPreviewController(WebKit::SystemPreviewController *this, WebKit::WebPageProxy *a2)
{
  *this = 0;
  *(this + 2) = 1;
  *(this + 12) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = 0;
  *(this + 18) = 0;
  WTF::URL::invalidate((this + 144));
  *(this + 23) = 0;
  WTF::URL::invalidate((this + 184));
  *(this + 36) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return this;
}

uint64_t WebKit::WebAuthenticatorCoordinatorProxy::operator new(WebKit::WebAuthenticatorCoordinatorProxy *this, void *a2)
{
  if (this == 104 && WebKit::WebAuthenticatorCoordinatorProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebAuthenticatorCoordinatorProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebAuthenticatorCoordinatorProxy::operatorNewSlow(this);
  }
}

WebKit::WebAuthenticatorCoordinatorProxy *WebKit::WebAuthenticatorCoordinatorProxy::WebAuthenticatorCoordinatorProxy(WebKit::WebAuthenticatorCoordinatorProxy *this, WebKit::WebPageProxy *a2)
{
  *(this + 4) = 1;
  *this = &unk_1F1120C90;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v4 = *(a2 + 3);
  atomic_fetch_add(v4, 1u);
  *(this + 3) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  v5 = *(a2 + 44);
  atomic_fetch_add((v5 + 16), 1u);
  v6 = *(a2 + 6);
  v10[0] = 157;
  v10[1] = v6;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v5 + 104), v10, this, v9);
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16), v7);
  }

  return this;
}

WebKit::WebDeviceOrientationUpdateProviderProxy *WebKit::WebDeviceOrientationUpdateProviderProxy::create@<X0>(WebKit::WebDeviceOrientationUpdateProviderProxy **__return_ptr a1@<X8>, WebKit::WebDeviceOrientationUpdateProviderProxy *this@<X0>, WebKit::WebPageProxy *a3@<X1>)
{
  v5 = WebKit::WebDeviceOrientationUpdateProviderProxy::operator new(0x30, a3);
  result = WebKit::WebDeviceOrientationUpdateProviderProxy::WebDeviceOrientationUpdateProviderProxy(v5, this);
  *a1 = v5;
  return result;
}

uint64_t WebKit::WebDeviceOrientationUpdateProviderProxy::operator new(WebKit::WebDeviceOrientationUpdateProviderProxy *this, void *a2)
{
  if (this == 48 && WebKit::WebDeviceOrientationUpdateProviderProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebDeviceOrientationUpdateProviderProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebDeviceOrientationUpdateProviderProxy::operatorNewSlow(this);
  }
}

WebKit::WebDeviceOrientationUpdateProviderProxy *WebKit::WebDeviceOrientationUpdateProviderProxy::WebDeviceOrientationUpdateProviderProxy(WebKit::WebDeviceOrientationUpdateProviderProxy *this, WebKit::WebPageProxy *a2)
{
  *(this + 1) = 0;
  v4 = this + 16;
  *(this + 3) = 0;
  *(this + 8) = 1;
  *this = &unk_1F1136B78;
  *(this + 2) = &unk_1F1136BC0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v5 = *(a2 + 3);
  atomic_fetch_add(v5, 1u);
  *(this + 5) = v5;
  v6 = *(a2 + 44);
  atomic_fetch_add((v6 + 16), 1u);
  v7 = *(a2 + 6);
  v11[0] = 163;
  v11[1] = v7;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v6 + 104), v11, v4, v10);
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v8);
  }

  return this;
}

uint64_t WebKit::WebScreenOrientationManagerProxy::operator new(WebKit::WebScreenOrientationManagerProxy *this, void *a2)
{
  if (this == 56 && WebKit::WebScreenOrientationManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebScreenOrientationManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebScreenOrientationManagerProxy::operatorNewSlow(this);
  }
}

unint64_t WebKit::WebScreenOrientationManagerProxy::WebScreenOrientationManagerProxy(unint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F111A130;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v6 = *(a2 + 24);
  atomic_fetch_add(v6, 1u);
  *(a1 + 24) = v6;
  *(a1 + 32) = a3;
  *(a1 + 33) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(v6 + 8);
  if (!v7 || (CFRetain(*(v7 - 8)), v8 = *(v7 + 336), atomic_fetch_add((v8 + 16), 1u), (v9 = *(*(a1 + 24) + 8)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D0F5CLL);
  }

  v10 = *(v9 + 32);
  v14[0] = 203;
  v14[1] = v10;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v8 + 104), v14, a1, v13);
  if (v8)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v11);
  }

  CFRelease(*(v7 - 8));
  return a1;
}

atomic_uint *WebKit::WebPageProxy::addAllMessageReceivers(WebKit::WebPageProxy *this)
{
  v2 = *(this + 44);
  atomic_fetch_add((v2 + 16), 1u);
  WebKit::WebPageProxyMessageReceiverRegistration::startReceivingMessages((*(this + 4) + 2192), v2, *(this + 6), this + 16);
  v3 = *(this + 4);
  WebKit::WebNotificationManagerMessageHandler::ref((v3 + 1056));
  v4 = *(this + 6);
  v8[0] = 46;
  v8[1] = v4;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v2 + 104), v8, v3 + 1056, v7);
  WebKit::WebNotificationManagerMessageHandler::deref((v3 + 1056));

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16), v5);
}

atomic_uint *WebKit::WebPageProxyMessageReceiverRegistration::startReceivingMessages(atomic_uint *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  WebKit::WebPageProxyMessageReceiverRegistration::stopReceivingMessages(a1);
  v14[0] = 185;
  v14[1] = a3;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((a2 + 104), v14, a4, &v11);
  atomic_fetch_add((a2 + 16), 1u);
  v11 = a3;
  v12 = a2;
  v13 = 1;
  result = std::__optional_storage_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>>(a1, &v11);
  if (v13 == 1)
  {
    v10 = v12;
    v12 = 0;
    if (v10)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v9);
    }
  }

  return result;
}

atomic_uint *WebKit::WebPageProxyMessageReceiverRegistration::stopReceivingMessages(atomic_uint *this)
{
  if (*(this + 16) == 1)
  {
    v1 = *this;
    v2 = *(this + 1);
    *(this + 1) = 0;
    *(this + 16) = 0;
    atomic_fetch_add((v2 + 16), 1u);
    this = IPC::MessageReceiverMap::removeMessageReceiver(v2 + 96, 0xB9u, v1);
    if (v2)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16), v3);

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16), v4);
    }
  }

  return this;
}

uint64_t WebKit::WebNotificationManagerMessageHandler::ref(WebKit::WebNotificationManagerMessageHandler *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    return CFRetain(*(v1 - 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

atomic_uint *std::__optional_storage_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::WebPageProxyMessageReceiverRegistration::Data,false>>(atomic_uint *result, unint64_t a2)
{
  v2 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      *result = *a2;
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      v4 = *(result + 1);
      *(result + 1) = v3;
      if (v4)
      {

        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16), a2);
      }
    }
  }

  else if (*(result + 16))
  {
    v5 = *(result + 1);
    *(result + 1) = 0;
    if (v5)
    {
      result = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16), a2);
    }

    *(v2 + 16) = 0;
  }

  else
  {
    *result = *a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(result + 1) = v6;
    *(result + 16) = 1;
  }

  return result;
}

void WebKit::WebNotificationManagerMessageHandler::deref(WebKit::WebNotificationManagerMessageHandler *this)
{
  v1 = *(*(this + 2) + 8);
  if (v1)
  {
    CFRelease(*(v1 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t std::unique_ptr<WebCore::RunLoopObserver>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v4 = MEMORY[0x19EB06250]();

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WebKit::WebPageDebuggable::url@<X0>(WebKit::WebPageDebuggable *this@<X0>, void *a3@<X8>)
{
  *a3 = 0;
  while (1)
  {
    v5 = *(this + 1);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v7 = WTF::fastMalloc(v5, 0x20);
  *v7 = &unk_1F111EE90;
  v7[1] = this;
  v7[2] = this;
  v7[3] = a3;
  v10 = v7;
  WTF::callOnMainRunLoopAndWait();
  result = v10;
  if (v10)
  {
    v9 = *(*v10 + 8);

    return v9();
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::url(void)::$_0,void>::call(WTF *a1)
{
  v1 = a1;
  v2 = *(*(a1 + 1) + 40);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = v3 - 16;
    a1 = CFRetain(*(v3 - 8));
    if (*(v3 + 408))
    {
      WTF::String::isolatedCopy();
      v6 = *(v1 + 3);
      v7 = *v6;
      *v6 = v16;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = **(v1 + 3);
      if (!v8 || !*(v8 + 4))
      {
        WTF::aboutBlankURL(0);
        WTF::String::isolatedCopy();
        v10 = *(v1 + 3);
        v11 = *v10;
        *v10 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v9);
          }
        }
      }

LABEL_18:
      CFRelease(*(v4 + 8));
      return;
    }

    v12 = 0;
  }

  else
  {
    v4 = 0;
    v12 = 1;
  }

  WTF::aboutBlankURL(a1);
  WTF::String::isolatedCopy();
  v14 = *(v1 + 3);
  v15 = *v14;
  *v14 = v16;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::url(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EE90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>(*result, a2);
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

uint64_t WebKit::WebPageDebuggable::name@<X0>(WebKit::WebPageDebuggable *this@<X0>, void *a3@<X8>)
{
  *a3 = 0;
  while (1)
  {
    v5 = *(this + 1);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v7 = WTF::fastMalloc(v5, 0x20);
  *v7 = &unk_1F111EE68;
  v7[1] = this;
  v7[2] = this;
  v7[3] = a3;
  v10 = v7;
  WTF::callOnMainRunLoopAndWait();
  result = v10;
  if (v10)
  {
    v9 = *(*v10 + 8);

    return v9();
  }

  return result;
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::name(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 40);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRetain(*(v2 - 8));
      if (*(v2 + 408))
      {
        WTF::String::isolatedCopy();
        v5 = *(a1 + 24);
        v6 = *v5;
        *v5 = v7;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v4);
          }
        }
      }

      CFRelease(*(v2 - 8));
    }
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::name(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EE68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebPageDebuggable::hasLocalDebugger(WebKit::WebPageDebuggable *this, unint64_t a2)
{
  v8 = 0;
  while (1)
  {
    v3 = *(this + 1);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v5 = WTF::fastMalloc(v3, 0x20);
  *v5 = &unk_1F111EEB8;
  v5[1] = this;
  v5[2] = this;
  v5[3] = &v8;
  v7 = v5;
  WTF::callOnMainRunLoopAndWait();
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v8;
}

void WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::hasLocalDebugger(void)::$_0,void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 40);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    CFRetain(*(v3 - 8));
    **(a1 + 24) = Inspector::FrontendRouter::hasLocalFrontend(**(v3 + 1192));
    v4 = *(v3 - 8);

    CFRelease(v4);
  }

  else
  {
    **(a1 + 24) = 0;
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebPageDebuggable::hasLocalDebugger(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EEB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::WebPageInspectorController::init(WebKit::WebPageInspectorController *this)
{
  v1 = *(*(this + 4) + 8);
  if (v1)
  {
    WebKit::WebPageInspectorTarget::toTargetID(*(v1 + 32), &v5);
    WebKit::WebPageInspectorController::createInspectorTarget(this, &v5, 0);
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,unsigned long long>@<X0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  result = WTF::tryMakeString<WTF::ASCIILiteral,unsigned long long>(v7, &v6, a4);
  if (!*a4)
  {
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebPageInspectorController::createInspectorTarget(uint64_t a1, atomic_uint **a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D1AD8);
  }

  v4 = a3;
  CFRetain(*(v3 - 8));
  v8 = WebKit::InspectorTargetProxy::operator new(0x40, v7);
  v13 = WebKit::InspectorTargetProxy::InspectorTargetProxy(v8, v3 - 16, a2, v4);
  WebKit::WebPageInspectorController::addTarget(a1, &v13);
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    WebKit::InspectorTargetProxy::~InspectorTargetProxy(v10, v9);
    bmalloc::api::tzoneFree(v11, v12);
  }

  CFRelease(*(v3 - 8));
}

uint64_t WebKit::InspectorTargetProxy::operator new(WebKit::InspectorTargetProxy *this, void *a2)
{
  if (this == 64 && WebKit::InspectorTargetProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::InspectorTargetProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::InspectorTargetProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::InspectorTargetProxy::InspectorTargetProxy(uint64_t a1, uint64_t a2, atomic_uint **a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F111E570;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v8 = *(a2 + 24);
  atomic_fetch_add(v8, 1u);
  *(a1 + 32) = v8;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v9;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  return a1;
}

WTF::StringImpl *WebKit::WebPageInspectorController::addTarget(uint64_t a1, Inspector::InspectorTarget **a2)
{
  v2 = *(a1 + 40);
  if (!v2 || (++*(v2 + 6), Inspector::InspectorTargetAgent::targetCreated(v2, *a2), (v5 = *(v2 + 6)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D1C68);
  }

  *(v2 + 6) = v5 - 1;
  v6 = *(*a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v10 = v6;
  WTF::HashMap<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::unique_ptr<WebKit::InspectorTargetProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String,std::unique_ptr<WebKit::InspectorTargetProxy>>((a1 + 48), &v10, a2, v9);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

uint64_t WebKit::InspectorTargetProxy::identifier@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 40);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

WebKit::InspectorTargetProxy *std::unique_ptr<WebKit::InspectorTargetProxy>::reset[abi:sn200100](WebKit::InspectorTargetProxy **a1, WebKit::InspectorTargetProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::InspectorTargetProxy::~InspectorTargetProxy(result, a2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

atomic_uint *WebKit::WebProcessProxy::addExistingWebPage(unint64_t a1, WebKit::WebPageProxy *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 108);
    }

    v8 = *(a2 + 5);
    v9 = *(a2 + 6);
    *buf = 134219008;
    v26 = a1;
    v27 = 1024;
    v28 = v7;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v8;
    v33 = 2048;
    v34 = v9;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::addExistingWebPage: webPage=%p, pageProxyID=%llu, webPageID=%llu", buf, 0x30u);
  }

  if (*(a1 + 760) == 1)
  {
    __break(0xC471u);
    goto LABEL_34;
  }

  if (*(a1 + 896) == 1)
  {
    v10 = *(a1 + 592);
    if (v10)
    {
      v11 = *(v10 - 12) == 0;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 1;
      if (!a3)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  v12 = *(a1 + 552);
  if (!v12 || (v13 = *(v12 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D2008);
  }

  CFRetain(*(v13 - 8));
  v14 = *(a2 + 51);
  CFRetain(v14[1]);
  WebKit::WebProcessPool::pageBeginUsingWebsiteDataStore((v13 - 16), a2, v14);
  CFRelease(v14[1]);
  CFRelease(*(v13 - 8));
LABEL_16:
  if (!*(a1 + 1096))
  {
    WebKit::WebProcessProxy::updateSharedPreferences(buf, a1, (*(a2 + 46) + 40));
  }

  {
    WebKit::liveProcessesLRU(void)::processes = 0u;
    *algn_1ED643678 = 0u;
  }

  WTF::WeakListHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::moveToLastIfPresent<WebKit::WebProcessProxy>(&WebKit::liveProcessesLRU(void)::processes, a1);
  v24 = *(a2 + 5);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPageProxy&>(buf, (a1 + 592), &v24, a2);
  {
    WebKit::WebProcessProxy::globalPageMap(void)::pageMap = 0;
  }

  v24 = *(a2 + 5);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPageProxy&>(buf, &WebKit::WebProcessProxy::globalPageMap(void)::pageMap, &v24, a2);
  v16 = WebKit::WebProcessProxy::logger(a1, v15);
  isAlwaysOnLoggingAllowed = WebKit::WebProcessProxy::isAlwaysOnLoggingAllowed(a1);
  if (*(v16 + 16) == a1)
  {
    *(v16 + 12) = isAlwaysOnLoggingAllowed;
  }

  v18 = *(*(a1 + 160) + 8);
  if (!v18)
  {
    __break(0xC471u);
LABEL_34:
    JUMPOUT(0x19D5D1FE8);
  }

  atomic_fetch_add((v18 + 16), 1u);
  shouldTakeNearSuspendedAssertion = WebKit::WebProcessProxy::shouldTakeNearSuspendedAssertion(a1);
  WebKit::ProcessThrottler::setShouldTakeNearSuspendedAssertion((a1 + 144), shouldTakeNearSuspendedAssertion);
  shouldDropNearSuspendedAssertionAfterDelay = WebKit::WebProcessProxy::shouldDropNearSuspendedAssertionAfterDelay(a1);
  WebKit::ProcessThrottler::setShouldDropNearSuspendedAssertionAfterDelay(a1 + 144, shouldDropNearSuspendedAssertionAfterDelay);
  WebKit::WebProcessProxy::updateRegistrationWithDataStore(a1);
  WebKit::BackgroundProcessResponsivenessTimer::updateState((a1 + 416));
  v21 = *(a1 + 800);
  if (!v21)
  {
    WebKit::WebsiteDataStore::propagateSettingUpdates(0);
    if (!v11)
    {
      return WebKit::ProcessThrottler::deref((a1 + 144), v22);
    }

    goto LABEL_27;
  }

  CFRetain(*(v21 + 8));
  WebKit::WebsiteDataStore::propagateSettingUpdates(v21);
  CFRelease(*(v21 + 8));
  if (v11)
  {
LABEL_27:
    WebKit::WebProcessProxy::didChangeThrottleState(a1, *(a1 + 376));
  }

  return WebKit::ProcessThrottler::deref((a1 + 144), v22);
}

void WebKit::WebProcessPool::pageBeginUsingWebsiteDataStore(WebKit::WebProcessPool *this, WebKit::WebPageProxy *a2, WebKit::WebsiteDataStore *a3)
{
  v6 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v6) & 1) == 0 || (v7 = *(a3 + 3), v7 - 1 >= 0xFFFFFFFFFFFFFFFELL))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5D20F8);
  }

  v11 = 0;
  v12 = v7;
  WTF::HashMap<PAL::SessionID,WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashSet<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(this + 96, &v12, &v11, v14);
  v10 = *(a2 + 5);
  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((v14[0] + 8), &v10, v13);
  if (v11)
  {
    WTF::fastFree((v11 - 16), v8);
  }

  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(a3 + 43, a2, v14);
  WebKit::WebsiteDataStore::updateServiceWorkerInspectability(a3, v9);
}

void WebKit::WebsiteDataStore::updateServiceWorkerInspectability(WebKit::WebsiteDataStore *this, void *a2)
{
  v3 = (this + 344);
  if (WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(this + 43, a2))
  {
    v4 = *(this + 480);
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v3, &v21);
    v5 = *(this + 43);
    if (v5)
    {
      v6 = *(v5 - 4);
      v7 = v5 + 8 * v6;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v16 = v3;
    v17 = v7;
    v18 = v7;
    v19 = v7;
    v20 = v5 + 8 * v6;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v8 = v22;
    if (v22 == v17)
    {
      v11 = 0;
    }

    else
    {
      do
      {
        v9 = *(*v8 + 8);
        if (v9)
        {
          v10 = (v9 - 16);
        }

        else
        {
          v10 = 0;
        }

        CFRetain(v10[1]);
        v11 = WebKit::WebPageProxy::inspectable(v10);
        if (v9)
        {
          CFRelease(*(v9 - 8));
        }

        if (v11)
        {
          break;
        }

        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v21);
        v8 = v22;
      }

      while (v22 != v17);
    }

    *(this + 480) = v11;
    if (v4 != v11)
    {
      v12 = *(this + 54);
      if (v12)
      {
        v13 = (v12 + 16);
        atomic_fetch_add((v12 + 16), 1u);
        v14 = *(this + 480);
        v21 = (this + 24);
        LOBYTE(v22) = v14;
        WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetInspectionForServiceWorkersAllowed>(v12, &v21, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v13, v15);
      }
    }
  }
}

uint64_t WebKit::WebPageProxy::inspectable(WebKit::WebPageProxy *this)
{
  v1 = *(this + 152);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 8);
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
      goto LABEL_7;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_7:
  v5 = Inspector::RemoteInspectionTarget::inspectable(v1);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<Inspector::RemoteControllableTarget,(WTF::DestructionThread)0>::deref(v2, v6);
  return v5;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetInspectionForServiceWorkersAllowed>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 678;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 8);
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

uint64_t *WebKit::WebProcessProxy::updateSharedPreferences@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::WebProcessProxy *this@<X0>, const WebKit::WebPreferencesStore *a3@<X1>)
{
  v5 = this + 1096;
  result = WebKit::updateSharedPreferencesForWebProcess(this + 1096, a3, *(this + 812));
  if (result)
  {
    ++*(this + 137);
    result = WebKit::WebProcessProxy::sharedPreferencesDidChange(this);
    *a1 = *v5;
    a1[2] = *(v5 + 2);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v7;
  return result;
}

atomic_uint *WebKit::WebProcessProxy::sharedPreferencesDidChange(atomic_uint *this)
{
  v1 = this;
  if ((*(this + 1109) & 0x10) != 0)
  {
    this = WebCore::AudioSession::enableMediaPlayback(this);
  }

  v2 = (v1 + 274);
  v3 = *(v1 + 137);
  if (*(v1 + 140) != v3)
  {
    v4 = *(v1 + 100);
    if (v4)
    {
      v5 = *(v4 + 432);
      if (v5)
      {
        atomic_fetch_add((v5 + 16), 1u);
        v20 = *v2;
        v21 = *(v1 + 139);
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v1 + 2, v1);
        v7 = *(v1 + 1);
        if (v7)
        {
          add = atomic_fetch_add(v7, 1u);
        }

        v8 = WTF::fastMalloc(add, 0x18);
        *v8 = &unk_1F111AC40;
        v8[1] = v7;
        v8[2] = v3;
        v19 = v8;
        v22 = *(v1 + 15);
        v23 = &v22;
        v24 = &v20;
        WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(v5, &v23, &v19, 0, 0, 1);
        v10 = v19;
        v19 = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16), v9);
      }
    }
  }

  if (*(v1 + 141) != v3)
  {
    v11 = *(*(v1 + 69) + 8);
    v12 = v11 ? v11 - 16 : 0;
    v13 = *(v12 + 176);
    if (v13)
    {
      atomic_fetch_add((v13 + 16), 1u);
      v20 = *v2;
      v21 = *(v1 + 139);
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v1 + 2, v1);
      v15 = *(v1 + 1);
      if (v15)
      {
        v14 = atomic_fetch_add(v15, 1u);
      }

      v16 = WTF::fastMalloc(v14, 0x18);
      *v16 = &unk_1F111AC68;
      v16[1] = v15;
      v16[2] = v3;
      v19 = v16;
      v22 = *(v1 + 15);
      v23 = &v22;
      v24 = &v20;
      WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(v13, &v23, &v19, 0, 0, 1);
      v18 = v19;
      v19 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16), v17);
    }
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 722;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v27 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::encode(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(v14, 0x10);
  *v15 = &unk_1F111F630;
  v15[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16 = v15;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v25[0] = v16;
    v25[1] = IdentifierInternal;
    v26 = 1;
    v19 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v27, a5, v25, a6);
    if (v26 == 1)
    {
      v20 = v25[0];
      v25[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    v21 = v27;
    v27 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v18);
      bmalloc::api::tzoneFree(v23, v24);
    }

    if (v19)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *(a2 + 8) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 9) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x1000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 10) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x100000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 11) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x10000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 8) < 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 12) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x1000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 13) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x100000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 14) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x8000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x10000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x20000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x40000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x80000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 15) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x200000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x400000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x800000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x1000000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x2000000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 8) & 0x4000000000000000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 8) < 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 16) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x20) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x40) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x80) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 17) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x200) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x400) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x800) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x1000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x2000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 16) & 0x4000) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 16) >> 15;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = *(a2 + 18) & 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 2) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 4) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 8) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 0x10) != 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v5 = (*(a2 + 18) & 0x20) != 0;
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

BOOL WTF::WeakListHashSet<WebKit::WebProcessProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::moveToLastIfPresent<WebKit::WebProcessProxy>(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 24) + 1;
  *(a1 + 24) = v5;
  if (v5 > v4)
  {
    WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(a1);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v6 = *(a2 + 8);
  atomic_fetch_add(v6, 1u);
  v11 = v6;
  v8 = WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::moveToLastIfPresent(a1, &v11);
  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return v8;
}

BOOL WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::moveToLastIfPresent(uint64_t *a1, void *a2)
{
  v3 = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::find<WTF::ListHashSetTranslator<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(a1, a2);
  v4 = *a1;
  if (*a1)
  {
    v4 += 8 * *(v4 - 4);
  }

  if (v4 != v3)
  {
    v5 = *v3;
    v6 = *(*v3 + 8);
    v7 = *(*v3 + 16);
    v8 = (v6 + 16);
    if (!v6)
    {
      v8 = a1 + 1;
    }

    *v8 = v7;
    if (v7)
    {
      v9 = (v7 + 8);
    }

    else
    {
      v9 = a1 + 2;
    }

    *v9 = v6;
    v10 = a1[2];
    *(v5 + 8) = v10;
    *(v5 + 16) = 0;
    if (v10)
    {
      v11 = (v10 + 16);
    }

    else
    {
      v11 = a1 + 1;
    }

    *v11 = v5;
    a1[2] = v5;
  }

  return v4 != v3;
}

atomic_uint *WebKit::WebsiteDataStore::propagateSettingUpdates(atomic_uint *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *(this + 54);
  if (v1)
  {
    v2 = this;
    atomic_fetch_add((v1 + 16), 1u);
    isOptInCookiePartitioningEnabled = WebKit::WebsiteDataStore::isOptInCookiePartitioningEnabled(this);
    if (*(v2 + 482) != isOptInCookiePartitioningEnabled)
    {
      v5 = isOptInCookiePartitioningEnabled;
      if (*(v2 + 289) != 2)
      {
        if (*(v2 + 289))
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16), v4);
        }

        v6 = *(*(v2 + 28) + 544);
        if ((v6 & 0x100) != 0)
        {
          if ((v6 & 1) == 0)
          {
            return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16), v4);
          }
        }

        else if (!WebKit::doesAppHaveTrackingPreventionEnabled(isOptInCookiePartitioningEnabled))
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16), v4);
        }
      }

      *(v2 + 482) = v5;
      v32 = *(v2 + 3);
      v30 = &v32;
      LOBYTE(v31[0]) = v5;
      v7 = IPC::Encoder::operator new(0x238, v4);
      *v7 = 684;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v33 = v7;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v32);
      IPC::Encoder::operator<<<BOOL &>(v7, v31);
      buf[0] = 0;
      buf[16] = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v1, &v33, 0, buf, 1);
      if (buf[16] == 1)
      {
        v9 = *buf;
        *buf = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      v10 = v33;
      v33 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v8);
        bmalloc::api::tzoneFree(v28, v29);
      }

      WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v2 + 41, buf);
      v11 = *(v2 + 41);
      if (v11)
      {
        v12 = *(v11 - 4);
        v13 = v11 + 8 * v12;
      }

      else
      {
        v13 = 0;
        v12 = 0;
      }

      v30 = (v2 + 82);
      v31[0] = v13;
      v31[1] = v13;
      v31[2] = v13;
      v31[3] = v11 + 8 * v12;
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v30);
      for (i = *&buf[8]; *&buf[8] != v31[0]; i = *&buf[8])
      {
        v15 = *(*i + 8);
        atomic_fetch_add((v15 + 16), 1u);
        LOBYTE(v33) = v5;
        WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetOptInCookiePartitioningEnabled>(v15, &v33, 0, 0);
        if (v15)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16), v16);
        }

        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
      }

      if (*(v2 + 482))
      {
        if (!*(v2 + 449) || *(v2 + 448))
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16), v4);
        }

        v17 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v2 + 3);
          *buf = 134218240;
          *&buf[4] = v2;
          *&buf[12] = 2048;
          *&buf[14] = v19;
          _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::propagateSettingUpdates (%p) sessionID=%llu, OptInCookiePartitioning enabled, setting ThirdPartyCookieBlockingMode::AllExceptPartitioned", buf, 0x16u);
        }

        v20 = WTF::fastMalloc(v18, 0x10);
        *v20 = &unk_1F1121BC0;
        *buf = v20;
        v22 = v2;
        v23 = 3;
      }

      else
      {
        if (!*(v2 + 449) || *(v2 + 448) != 3)
        {
          return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16), v4);
        }

        v24 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(v2 + 3);
          *buf = 134218240;
          *&buf[4] = v2;
          *&buf[12] = 2048;
          *&buf[14] = v26;
          _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::propagateSettingUpdates (%p) sessionID=%llu, OptInCookiePartitioning disabled, setting ThirdPartyCookieBlockingMode::All", buf, 0x16u);
        }

        v27 = WTF::fastMalloc(v25, 0x10);
        *v27 = &unk_1F1121BE8;
        *buf = v27;
        v22 = v2;
        v23 = 0;
      }

      WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode(v22, v23, buf, v21);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v1 + 16), v4);
  }

  return this;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::SetOptInCookiePartitioningEnabled>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3007;
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

atomic_uint *WebKit::WebsiteDataStore::setThirdPartyCookieBlockingMode@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v7 = WTF::fastMalloc(a4, 0x10);
  *v7 = 1;
  v8 = *a3;
  *a3 = 0;
  v7[1] = v8;
  if (WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(a1) != v5)
  {
    *(a1 + 448) = v5 | 0x100;
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 328), &v29);
    v10 = *(a1 + 328);
    if (v10)
    {
      v11 = *(v10 - 4);
      v12 = v10 + 8 * v11;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v24 = a1 + 328;
    v25 = v12;
    v26 = v12;
    v27 = v12;
    v28 = v10 + 8 * v11;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v24);
    v13 = v30;
    if (v30 != v25)
    {
      while (1)
      {
        v14 = *(*v13 + 8);
        atomic_fetch_add((v14 + 16), 1u);
        v15 = WTF::fastMalloc(atomic_fetch_add(v7, 1u), 0x10);
        *v15 = &unk_1F11219E0;
        v15[1] = v7;
        v23 = v15;
        v31 = v5;
        WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebProcess::SetThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)>>(v14, &v31, &v23, 0, 0, 1);
        v17 = v23;
        v23 = 0;
        if (v17)
        {
          break;
        }

        if (v14)
        {
          goto LABEL_8;
        }

LABEL_9:
        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v29);
        v13 = v30;
        if (v30 == v25)
        {
          goto LABEL_13;
        }
      }

      (*(*v17 + 8))(v17);
      if (!v14)
      {
        goto LABEL_9;
      }

LABEL_8:
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16), v16);
      goto LABEL_9;
    }
  }

LABEL_13:
  v18 = WebKit::WebsiteDataStore::networkProcess(a1, v9);
  atomic_fetch_add((v18 + 16), 1u);
  v19 = *(a1 + 24);
  v20 = WTF::fastMalloc(atomic_fetch_add(v7, 1u), 0x10);
  *v20 = &unk_1F1121A08;
  v20[1] = v7;
  v29 = v20;
  WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(v18, v19, v5, &v29);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v18 + 16), v21);
  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v7);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::WebProcess::SetThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3012;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v27 = v12;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, *a2);
  v13 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(v14, 0x10);
  *v15 = &unk_1F111AA10;
  v15[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v16 = v15;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v25[0] = v16;
    v25[1] = IdentifierInternal;
    v26 = 1;
    v19 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v27, a5, v25, a6);
    if (v26 == 1)
    {
      v20 = v25[0];
      v25[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    v21 = v27;
    v27 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v18);
      bmalloc::api::tzoneFree(v23, v24);
    }

    if (v19)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcessProxy::setThirdPartyCookieBlockingMode(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  *a4 = 0;
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 715;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v8, a3);
  v10 = WTF::fastMalloc(v9, 0x10);
  *v10 = &unk_1F1120058;
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
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, 0, v16, 1);
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

uint64_t std::optional<WebKit::WebPreferencesStore>::operator=[abi:sn200100]<WebKit::WebPreferencesStore const&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48) == 1)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(a1, a2);
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(a1 + 24, a2 + 3);
  }

  else
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(a1, a2);
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(a1 + 24, a2 + 3);
    *(a1 + 48) = 1;
  }

  return a1;
}

uint64_t WebKit::WebProcessPool::ensureGPUProcess(WebKit::WebProcessPool *this, void *a2)
{
  result = *(this + 22);
  if (!result)
  {
    WebKit::GPUProcessProxy::getOrCreate(&v14, a2);
    v5 = v14;
    atomic_fetch_add(v14 + 4, 1u);
    v6 = *(this + 22);
    *(this + 22) = v5;
    if (v6)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v4);
    }

    v7 = *(this + 21);
    if (v7)
    {
      v8 = *(this + 9);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        atomic_fetch_add(v10 + 4, 1u);
        v11 = v14;
        WebKit::GPUProcessProxy::updatePreferences(v14, v10);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10 + 4, v12);
        v9 -= 8;
      }

      while (v9);
    }

    else
    {
      v11 = v14;
    }

    WebKit::WebProcessPool::registerFontsForGPUProcessIfNeeded(this, v4);
    if (v11)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11 + 4, v13);
    }

    return *(this + 22);
  }

  return result;
}

void WebKit::GPUProcessProxy::getOrCreate(uint64_t *__return_ptr a1@<X8>, void *a2@<X1>)
{
  {
    if (WebKit::singleton(void)::singleton)
    {
      v3 = *(WebKit::singleton(void)::singleton + 8);
      if (v3)
      {
        atomic_fetch_add((v3 + 16), 1u);
        *a1 = v3;
        return;
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  v4 = WebKit::GPUProcessProxy::operator new(0x1E0, a2);
  v6 = WebKit::GPUProcessProxy::GPUProcessProxy(v4, v5);
  *a1 = v6;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v6 + 8), v4);
  v8 = *(v4 + 1);
  atomic_fetch_add(v8, 1u);
  {
    v9 = WebKit::singleton(void)::singleton;
    WebKit::singleton(void)::singleton = v8;
    if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);

      WTF::fastFree(v9, v7);
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = v8;
  }
}

uint64_t WebKit::GPUProcessProxy::operator new(WebKit::GPUProcessProxy *this, void *a2)
{
  if (this == 480 && WebKit::GPUProcessProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::GPUProcessProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::GPUProcessProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::GPUProcessProxy::GPUProcessProxy(WebKit::GPUProcessProxy *this, unint64_t a2)
{
  v3 = WebKit::WebProcessPool::anyProcessPoolNeedsUIBackgroundAssertion(this, a2);
  v4 = WebKit::AuxiliaryProcessProxy::AuxiliaryProcessProxy(this, v3, 0, 3.0);
  *this = &unk_1F111E338;
  *(this + 3) = &unk_1F111E450;
  *(this + 4) = &unk_1F111E4D8;
  *(this + 52) = 0;
  *(this + 424) = WebCore::MockRealtimeMediaSourceCenter::mockRealtimeMediaSourceCenterEnabled(v4);
  *(this + 436) = 0;
  *(this + 428) = 0;
  *(this + 441) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 57) = 0;
  WebKit::AuxiliaryProcessProxy::connect(this);
  v55 = 0;
  v60 = 0;
  v61 = 0u;
  memset(v62, 0, 26);
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v59 = 0;
  WebKit::AuxiliaryProcessProxy::auxiliaryProcessParameters(v52);
  v54[0] = *v52;
  v54[1] = v53;
  {
    WebKit::overrideLanguagesStorage(void)::storage = 0;
    unk_1EB01E1D0 = 0;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v62[2], &WebKit::overrideLanguagesStorage(void)::storage, v5);
  LOBYTE(v55) = *(this + 424);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::WebsiteDataStore::cacheDirectoryInContainerOrHomeDirectory(v52, v50);
  v7 = v52[0];
  v52[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WTF::FileSystemImpl::makeAllDirectories(v50, v6);
  if (v50[0])
  {
    v8 = *(v50[0] + 1);
    v9 = *(v50[0] + 1) | (((*(v50[0] + 4) >> 2) & 1) << 32);
  }

  else
  {
    v8 = 0;
    v9 = 0x100000000;
  }

  WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v8, v9, v52);
  v11 = v52[0];
  v52[0] = 0;
  v12 = v58;
  v58 = v11;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v52[0];
    v52[0] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  v14 = v50[0];
  v50[0] = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  WebKit::WebsiteDataStore::defaultResolvedContainerTemporaryDirectory(&v51);
  if (v58)
  {
    v15 = *(v58 + 1);
    if (v15)
    {
      WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v58 + 1), (v15 | (((*(v58 + 4) >> 2) & 1) << 32)), 1, v52);
      if (LOBYTE(v52[1]) == 1)
      {
        v16 = v52[0];
        v52[0] = 0;
        v17 = v56;
        v56 = v16;
        if (!v17 || (WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v17), bmalloc::api::tzoneFree(v45, v46), (v52[1] & 1) != 0))
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v52);
        }
      }
    }
  }

  if (v51 && *(v51 + 1))
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    if (v52[0])
    {
      v18 = *(v52[0] + 1);
      v19 = *(v52[0] + 1) | (((*(v52[0] + 4) >> 2) & 1) << 32);
    }

    else
    {
      v18 = 0;
      v19 = 0x100000000;
    }

    WebKit::resolveAndCreateReadWriteDirectoryForSandboxExtension(v18, v19, v50);
    v21 = v52[0];
    v52[0] = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }

    if (v50[0])
    {
      v22 = *(v50[0] + 1);
      v23 = *(v50[0] + 1) | (((*(v50[0] + 4) >> 2) & 1) << 32);
    }

    else
    {
      v22 = 0;
      v23 = 0x100000000;
    }

    WebKit::SandboxExtension::createHandleWithoutResolvingPath(v22, v23, 1, v52);
    if (LOBYTE(v52[1]) == 1)
    {
      v25 = v52[0];
      v52[0] = 0;
      v26 = v57;
      v57 = v25;
      if (!v26 || (WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v26), bmalloc::api::tzoneFree(v47, v48), (v52[1] & 1) != 0))
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v52);
      }
    }

    v27 = v50[0];
    v50[0] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v24);
    }
  }

  *(this + 470) = WebKit::GPUProcessProxy::s_enableMetalDebugDeviceInNewGPUProcessesForTesting;
  *(this + 471) = WebKit::GPUProcessProxy::s_enableMetalShaderValidationInNewGPUProcessesForTesting;
  WebKit::GPUProcessProxy::platformInitializeGPUProcessParameters(this, v54);
  *(this + 469) = HIDWORD(v61) != 0;
  WebKit::AuxiliaryProcessProxy::initializationActivityAndGrant(v50, this, v28);
  v30 = IPC::Encoder::operator new(0x238, v29);
  *v30 = 75;
  *(v30 + 68) = 0;
  *(v30 + 70) = 0;
  *(v30 + 69) = 0;
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 1) = 0;
  IPC::Encoder::encodeHeader(v30);
  v63 = v30;
  IPC::ArgumentCoder<WebKit::GPUProcessCreationParameters,void>::encode(v30, v54);
  v49 = *v50;
  v50[0] = 0;
  v50[1] = 0;
  v32 = WTF::fastMalloc(v31, 0x18);
  *v32 = &unk_1F111EA20;
  *(v32 + 1) = v49;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v33 = v32;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v52[0] = v33;
    v52[1] = IdentifierInternal;
    LOBYTE(v53) = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(this, &v63, 0, v52, 1);
    if (v53 == 1)
    {
      v36 = v52[0];
      v52[0] = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }
    }

    v37 = v63;
    v63 = 0;
    if (v37)
    {
      IPC::Encoder::~Encoder(v37, v35);
      bmalloc::api::tzoneFree(v43, v44);
    }

    v38 = v50[1];
    v50[1] = 0;
    if (v38)
    {
      WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v38);
    }

    v39 = v50[0];
    v50[0] = 0;
    if (v39)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v39 + 2, v35);
    }

    WebKit::GPUProcessProxy::updateProcessAssertion(this, v35);
    v41 = v51;
    v51 = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v40);
      }
    }

    WebKit::GPUProcessCreationParameters::~GPUProcessCreationParameters(v54, v40);
    return this;
  }

  return result;
}

void WebKit::GPUProcessProxy::platformInitializeGPUProcessParameters(WebKit::GPUProcessProxy *this, WebKit::SandboxExtensionImpl **a2)
{
  WebKit::AuxiliaryProcessProxy::createMobileGestaltSandboxExtensionIfNeeded(&v18);
  std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(a2 + 8, &v18);
  if (v19 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v18);
  }

  WebKit::GPUProcessProxy::createGPUToolsSandboxExtensionHandlesIfNeeded(&v18, v4);
  v6 = *(a2 + 23);
  if (v6)
  {
    v14 = a2[10];
    v15 = 8 * v6;
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v14);
      v14 = (v16 + 8);
      v15 -= 8;
    }

    while (v15);
  }

  v7 = a2[10];
  if (v7)
  {
    a2[10] = 0;
    *(a2 + 22) = 0;
    WTF::fastFree(v7, v5);
  }

  a2[10] = v18;
  v8 = v19;
  v18 = 0;
  v19 = 0;
  a2[11] = v8;
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  WebKit::applicationVisibleName(&v17);
  v9 = v17;
  MEMORY[0x19EB02040](&v18, v17);
  v11 = v18;
  v18 = 0;
  v12 = a2[12];
  a2[12] = v11;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v10);
        if (!v9)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

  if (v9)
  {
LABEL_12:
  }

LABEL_13:
  *(a2 + 60) = *(this + 235);
}

void sub_19D5D4454(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void WebKit::GPUProcessProxy::createGPUToolsSandboxExtensionHandlesIfNeeded(uint64_t *__return_ptr a1@<X8>, WebKit::GPUProcessProxy *this@<X0>)
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (WebKit::WebProcessProxy::shouldEnableRemoteInspector(this))
  {
    v5[0] = "com.apple.gputools.service";
    v5[1] = 27;
    LOBYTE(v3) = 0;
    v4 = 0;
    WebKit::SandboxExtension::createHandlesForMachLookup(v5, 1uLL, &v3, 0, a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void WebKit::applicationVisibleName(WebKit *this)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = v2;
  if (v2)
  {
    v7 = v2;
    v2 = v8;
  }

  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E120]];
  *this = v4;
  if (v4 || (*this = 0, v5 = [v8 infoDictionary], v4 = objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x1E695E4F8]), (*this = v4) != 0))
  {
    v6 = v4;
  }

  if (v8)
  {
  }
}

void sub_19D5D461C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::AuxiliaryProcessCreationParameters,void>::encode(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 33));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 40));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 64);
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 80);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 96));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 104);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 120));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 121));
}

atomic_uint *WebKit::GPUProcessProxy::updateProcessAssertion(WebKit::GPUProcessProxy *this, unint64_t a2)
{
  WebKit::WebProcessPool::allProcessPools(&v25);
  if (v26)
  {
    v4 = 0;
    v5 = 0;
    v6 = v25;
    v7 = 8 * v26;
    do
    {
      v8 = *v6++;
      v4 |= *(*(v8 + 784) + 8) != 0;
      v5 |= *(*(v8 + 800) + 8) != 0;
      v7 -= 8;
    }

    while (v7);
    result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v3);
    if (v4)
    {
      v11 = *(this + 52);
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          if (*(v12 + 8) && (*(v11 + 40) & 1) != 0)
          {
            return result;
          }
        }
      }

      v13 = *(*(this + 20) + 8);
      if (v13)
      {
        atomic_fetch_add((v13 + 16), 1u);
        v14 = WebKit::ProcessThrottlerActivity::operator new(0x30, v10);
        v15 = "GPU for foreground view(s)";
        v16 = this + 144;
        v17 = 1;
LABEL_19:
        v21 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v14, v16, v15, 27, v17, 0);
        v23 = *(this + 52);
        *(this + 52) = v21;
        if (v23)
        {
          WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v23 + 8), v22);
        }

        return WebKit::ProcessThrottler::deref((this + 144), v22);
      }

      goto LABEL_25;
    }

    if (v5)
    {
      v18 = *(this + 52);
      if (v18)
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          if (*(v19 + 8) && *(v18 + 40) != 1)
          {
            return result;
          }
        }
      }

      v20 = *(*(this + 20) + 8);
      if (v20)
      {
        atomic_fetch_add((v20 + 16), 1u);
        v14 = WebKit::ProcessThrottlerActivity::operator new(0x30, v10);
        v15 = "GPU for background view(s)";
        v16 = this + 144;
        v17 = 0;
        goto LABEL_19;
      }

LABEL_25:
      __break(0xC471u);
      JUMPOUT(0x19D5D489CLL);
    }
  }

  else
  {
    result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v3);
  }

  v24 = *(this + 52);
  *(this + 52) = 0;
  if (v24)
  {
    return WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v24 + 8), v10);
  }

  return result;
}

void WebKit::GPUProcessCreationParameters::~GPUProcessCreationParameters(WebKit::GPUProcessCreationParameters *this, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, v3);
  if (*(this + 72) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 8);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 6);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 5);
  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](this + 3, v7);
  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(this + 1);
  *(this + 1) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }
  }
}

uint64_t WebKit::GPUProcessProxy::updatePreferences(uint64_t this, WebKit::WebProcessProxy *a2)
{
  v2 = this;
  v3 = *(this + 80);
  if (v3 && (*(v3 + 104) & 1) != 0 || *(this + 88))
  {
    v14 = 0;
    v13 = 0;
    WebKit::WebProcessProxy::pages(a2, &v11);
    if (v12)
    {
      v5 = 8 * v12;
      v6 = v11;
      do
      {
        v7 = *v6;
        CFRetain(*(*v6 + 8));
        v8 = *(v7 + 368);
        CFRetain(v8[1]);
        {
          atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
          WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
        }

        if (WebKit::WebPreferencesStore::getBoolValueForKey((v8 + 5), &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, v9))
        {
          WebKit::GPUProcessPreferences::copyEnabledWebPreferences(&v13, v8, v10);
        }

        CFRelease(v8[1]);
        CFRelease(*(v7 + 8));
        v6 += 2;
        v5 -= 8;
      }

      while (v5);
    }

    WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v4);
    v11 = &v13;
    return WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateGPUProcessPreferences>(v2, &v11, 0, 0);
  }

  return this;
}

uint64_t WebKit::GPUProcessPreferences::copyEnabledWebPreferences(WebKit::GPUProcessPreferences *this, const WebKit::WebPreferences *a2, const WTF::StringImpl *a3)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::key = WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((a2 + 40), &WebKit::WebPreferencesKey::shouldUseModernAVContentKeySessionKey(void)::key, a3))
  {
    *this = 257;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key = WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey((a2 + 40), &WebKit::WebPreferencesKey::vp9DecoderEnabledKey(void)::key, v5))
  {
    *(this + 1) = 257;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::key = WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::getBoolValueForKey((a2 + 40), &WebKit::WebPreferencesKey::sWVPDecodersAlwaysEnabledKey(void)::key, v6);
  if (result)
  {
    *(this + 4) = 1;
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateGPUProcessPreferences>(uint64_t a1, char **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 96;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebKit::GPUProcessPreferences,void>::encode(v8, *a2);
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

uint64_t IPC::ArgumentCoder<WebKit::GPUProcessPreferences,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 2);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 4);
}

uint64_t IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(IPC::Encoder *a1, char *a2)
{
  if (a2[1])
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (a2[1])
    {
      return IPC::Encoder::operator<<<BOOL>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return WebKit::WebPageProxy::initializeWebPage(v5, v6, v7);
    }
  }

  else
  {
    v9 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v9);
  }
}

uint64_t WebKit::WebPageProxy::initializeWebPage(uint64_t result, WTF **a2, __int16 a3)
{
  if ((*(result + 865) & 1) == 0)
  {
    v3 = result;
    if (*(result + 864) == 1)
    {
      v4 = *(result + 56);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          (*(*v5 + 1712))(v5);
          v8 = *(v3 + 352);
          atomic_fetch_add((v8 + 16), 1u);
          (*(*v5 + 16))(v68, v5, v8);
          v9 = v68[0];
          v68[0] = 0;
          v74[0] = v9;
          WebKit::WebPageProxy::setDrawingArea(v3, v74);
          if (v74[0])
          {
            (*(*v74[0] + 8))(v74[0]);
          }

          v11 = v68[0];
          v68[0] = 0;
          if (v11)
          {
            v11 = (*(*v11 + 8))(v11);
          }

          if (v8)
          {
            v11 = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v10);
          }

          Inspector::RemoteInspector::singleton(v11);
          v13 = *(*(v3 + 64) + 592);
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            v76[0] = v13;
            v14 = *(v3 + 408);
            CFRetain(v14[1]);
            v16 = WebKit::WebsiteDataStore::networkProcess(v14, v15);
            atomic_fetch_add((v16 + 16), 1u);
            v17 = *(*(v3 + 408) + 24);
            v18 = *(v3 + 40);
            v20 = IPC::Encoder::operator new(0x238, v19);
            *v20 = 571;
            *(v20 + 68) = 0;
            *(v20 + 70) = 0;
            *(v20 + 69) = 0;
            *(v20 + 2) = 0;
            *(v20 + 3) = 0;
            *(v20 + 1) = 0;
            IPC::Encoder::encodeHeader(v20);
            v68[0] = v20;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v17);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v18);
            IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v20, v76);
            LOBYTE(v74[0]) = 0;
            LOBYTE(v75) = 0;
            WebKit::AuxiliaryProcessProxy::sendMessage(v16, v68, 0, v74, 1);
            if (v75 == 1)
            {
              v22 = v74[0];
              v74[0] = 0;
              if (v22)
              {
                (*(*v22 + 8))(v22);
              }
            }

            v23 = v68[0];
            v68[0] = 0;
            if (v23)
            {
              IPC::Encoder::~Encoder(v23, v21);
              bmalloc::api::tzoneFree(v62, v63);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16), v21);
            CFRelease(v14[1]);
            v24 = v76[0];
            v76[0] = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v12);
            }
          }

          v25 = *(*(v3 + 408) + 432);
          if (v25)
          {
            atomic_fetch_add((v25 + 16), 1u);
            v26 = *(v3 + 1472);
            if (v26)
            {
              v68[0] = *(*(v3 + 408) + 24);
              v76[0] = *(v26 + 40);
              v77[0] = *(v3 + 40);
              v74[0] = v68;
              v74[1] = v76;
              v75 = v77;
              WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::CloneSessionStorageForWebPage>(v25, v74);
            }

            if (*(*(v3 + 64) + 590) == 1)
            {
              v68[0] = *(v3 + 40);
              v74[0] = v68;
              WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetShouldRelaxThirdPartyCookieBlockingForPage>(v25, v74);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v25 + 16), v12);
          }

          v27 = *(v3 + 1472);
          *(v3 + 1472) = 0;
          if (v27)
          {
            CFRelease(*(v27 + 8));
          }

          v28 = *(v3 + 352);
          atomic_fetch_add(v28 + 4, 1u);
          v29 = *(v3 + 1480);
          ++*(v29 + 2);
          v30 = *(v3 + 368);
          CFRetain(*(v30 + 8));
          v31 = WebKit::BrowsingContextGroup::ensureProcessForSite(v29, a2, v28, v30, 1, v74);
          v32 = v74[0];
          FrameIdentifier = WebCore::generateFrameIdentifier(v31);
          v34 = WebKit::WebFrameProxy::webFrame(*(v3 + 1488), *(v3 + 1496));
          v35 = v34;
          if (v34)
          {
            CFRetain(*(v34 + 8));
          }

          v36 = API::Object::newObject(0x218uLL, 58);
          v37 = WebKit::WebFrameProxy::WebFrameProxy(v36, v3, v32, FrameIdentifier, a3, 0, v35, 1);
          v40 = *(v3 + 424);
          *(v3 + 424) = v37;
          if (v40)
          {
            CFRelease(*(v40 + 8));
          }

          if (v35)
          {
            CFRelease(*(v35 + 8));
          }

          WTF::RefCounted<WebKit::FrameProcess>::deref(v32 + 2, v38, v39);
          {
            atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
            WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
          }

          if (WebKit::WebPreferencesStore::getBoolValueForKey((v30 + 40), &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v41))
          {
            WebKit::BrowsingContextGroup::addPage(v29, v3);
          }

          v42 = *(v3 + 328);
          if (v42)
          {
            (**v42)(*(v3 + 328));
          }

          v43 = *(*(v3 + 424) + 288);
          LOBYTE(v68[0]) = 0;
          v73 = 0;
          v77[0] = 0;
          WebKit::WebPageProxy::creationParameters(v3, v28, v42, v43, v68, 0, v77, v74);
          v76[0] = (v3 + 48);
          v76[1] = v74;
          WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::CreateWebPage>(v28, v76, 0, 0);
          WebKit::WebPageCreationParameters::~WebPageCreationParameters(v74, v44);
          if (v73 == 1)
          {
            if (v72[120] == 1)
            {
              WebKit::WebsitePoliciesData::~WebsitePoliciesData(v72, v45);
            }

            WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v45);
            v65 = v70;
            v70 = 0;
            if (v65)
            {
              WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v65, v64);
            }

            v66 = v69;
            v69 = 0;
            if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v66, v64);
            }

            v67 = v68[0];
            v68[0] = 0;
            if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v67, v64);
            }
          }

          (*(*v42 + 8))(v42);
          if (qword_1ED6429C0)
          {
            NonCompact = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6429C0, v46);
          }

          else
          {
            NonCompact = WebKit::WebPageProxyFrameLoadStateObserver::operatorNewSlow(0);
          }

          *(NonCompact + 16) = 1;
          *NonCompact = &unk_1F1116AD0;
          *(NonCompact + 8) = 0;
          *(NonCompact + 24) = 0u;
          *(NonCompact + 40) = 0u;
          *(NonCompact + 56) = 0;
          v49 = *(v3 + 32);
          v50 = *(v49 + 2880);
          *(v49 + 2880) = NonCompact;
          if (v50)
          {
            WTF::RefCounted<WebKit::WebPageProxyFrameLoadStateObserver>::deref((v50 + 16), v48);
          }

          v51 = *(v3 + 424);
          v52 = *(*(v3 + 32) + 2880);
          if (v52)
          {
            ++v52[4];
          }

          WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>((v51 + 224), v52, v74);
          WTF::RefCounted<WebKit::WebPageProxyFrameLoadStateObserver>::deref(v52 + 4, v53);
          v54 = *(v3 + 424);
          v55 = *(v3 + 32);
          WebKit::PageLoadTimingFrameLoadStateObserver::ref((v55 + 2896));
          WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>((v54 + 224), (v55 + 2896), v74);
          WebKit::PageLoadTimingFrameLoadStateObserver::deref((v55 + 2896));
          WebKit::WebProcessProxy::addVisitedLinkStoreUser(v28, *(v3 + 400), *(v3 + 40));
          if (byte_1ED642A00)
          {
            v59 = dword_1ED642AC4 == 0;
          }

          else
          {
            v58 = 0uLL;
            *algn_1ED642A88 = 0u;
            *&qword_1ED642AA8 = 0u;
            v59 = 1;
            dword_1ED642A90 = 1;
            qword_1ED642A98 = 0;
            unk_1ED642AA0 = 0;
            qword_1ED642AA8 = 0;
            byte_1ED642AB0 = 0;
            qword_1ED642AB8 = 0;
            unk_1ED642AC0 = 0;
            qword_1ED642A80 = &unk_1F10EE480;
            byte_1ED642A00 = 1;
          }

          *(v3 + 1440) = v59;
          WebKit::WebPageProxy::cachedAllowedQueryParametersForAdvancedPrivacyProtections(v56, v58, v57);
          *(v3 + 1441) = dword_1ED642A2C == 0;
          CFRelease(*(v30 + 8));
          WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(v29 + 2, v60);
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v28 + 4, v61);
          return (*(*v5 + 1720))(v5);
        }
      }
    }
  }

  return result;
}

void WebKit::PageClientImpl::createDrawingAreaProxy(id *this@<X0>, WebKit::WebProcessProxy *a2@<X1>, void *a3@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _createDrawingAreaProxy:a2];
  }

  else
  {
    *a3 = 0;
  }
}

WebKit::RemoteLayerTreeDrawingAreaProxy *WebKit::RemoteLayerTreeDrawingAreaProxyIOS::create@<X0>(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this@<X0>, WebKit::WebPageProxy *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operator new(0x130, a2);
  result = WebKit::RemoteLayerTreeDrawingAreaProxy::RemoteLayerTreeDrawingAreaProxy(v6, this, a2);
  *v6 = &unk_1F1109B68;
  *(v6 + 16) = &unk_1F1109D30;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0;
  *a3 = v6;
  return result;
}

uint64_t WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operator new(WebKit::RemoteLayerTreeDrawingAreaProxyIOS *this, void *a2)
{
  if (this == 304 && WebKit::RemoteLayerTreeDrawingAreaProxyIOS::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerTreeDrawingAreaProxyIOS::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteLayerTreeDrawingAreaProxyIOS::operatorNewSlow(this);
  }
}

WebKit::RemoteLayerTreeDrawingAreaProxy *WebKit::RemoteLayerTreeDrawingAreaProxy::RemoteLayerTreeDrawingAreaProxy(WebKit::RemoteLayerTreeDrawingAreaProxy *this, WebKit::WebPageProxy *a2, WebKit::WebProcessProxy *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = WebKit::DrawingAreaProxy::DrawingAreaProxy(this, 0, a2, a3);
  *(v6 + 72) = 1;
  *v6 = &unk_1F1108930;
  *(v6 + 16) = &unk_1F1108AF8;
  v8 = WebKit::RemoteLayerTreeHost::operator new(0x48, v7);
  v9 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v10 = *(this + 1);
  atomic_fetch_add(v10, 1u);
  *v8 = v10;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 49) = 0u;
  *(this + 200) = 0u;
  *(this + 10) = v8;
  *(this + 88) = 0;
  *(this + 24) = 3;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 240) = 0;
  *(this + 248) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0;
  v11 = *(a3 + 15);
  *(this + 32) = 0;
  *(this + 33) = v11;
  *(this + 34) = 0;
  *(this + 70) = 0;
  v12 = WebCore::IOSurfacePool::sharedPoolSingleton(v9);
  WebCore::IOSurfacePool::setPoolSize(v12);
  v13 = *(a2 + 46);
  CFRetain(*(v13 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key = WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v13 + 40), &WebKit::WebPreferencesKey::tiledScrollingIndicatorVisibleKey(void)::key, v14);
  CFRelease(*(v13 + 8));
  if (BoolValueForKey)
  {
    v17 = WebKit::RemoteLayerTreeHost::operator new(0x48, v16);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v18 = *(this + 1);
    atomic_fetch_add(v18, 1u);
    *v17 = v18;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 49) = 0u;
    std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](this + 25, v17);
    *(*(this + 25) + 64) = 1;
    v19 = objc_alloc_init(MEMORY[0x1E6979398]);
    v20 = *(this + 26);
    *(this + 26) = v19;
    if (v20)
    {

      v19 = *(this + 26);
    }

    [v19 setName:@"Tile map host"];
    [*(this + 26) setDelegate:{objc_msgSend(MEMORY[0x1E69E2198], "shared")}];
    v21 = MEMORY[0x1E695EFF8];
    [*(this + 26) setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    LODWORD(v22) = 1061997773;
    [*(this + 26) setOpacity:v22];
    [*(this + 26) setMasksToBounds:1];
    v23 = WebCore::sRGBColorSpaceSingleton([*(this + 26) setBorderWidth:2.0]);
    v24 = v23;
    if (v23)
    {
      CFRetain(v23);
    }

    *components = xmmword_19E703BF0;
    v33 = unk_19E703C00;
    v25 = CGColorCreate(v24, components);
    [*(this + 26) setBackgroundColor:v25];
    v31[0] = xmmword_19E703C10;
    v31[1] = unk_19E703C20;
    v26 = CGColorCreate(v24, v31);
    [*(this + 26) setBorderColor:v26];
    if (v26)
    {
      CFRelease(v26);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    v27 = objc_alloc_init(MEMORY[0x1E6979398]);
    v28 = *(this + 27);
    *(this + 27) = v27;
    if (v28)
    {

      v27 = *(this + 27);
    }

    [v27 setDelegate:{objc_msgSend(MEMORY[0x1E69E2198], "shared")}];
    [*(this + 27) setAnchorPoint:{*v21, v21[1]}];
    *components = xmmword_19E703C30;
    v33 = unk_19E703C40;
    v29 = CGColorCreate(v24, components);
    [*(this + 27) setBorderColor:v29];
    if (v29)
    {
      CFRelease(v29);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  return this;
}

void sub_19D5D5A14(_Unwind_Exception *a1)
{
  if (v4)
  {
    CFRelease(v4);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else if (!v3)
  {
    goto LABEL_7;
  }

  CFRelease(v3);
LABEL_7:
  v6 = *(v1 + 216);
  *(v1 + 216) = 0;
  if (v6)
  {
  }

  v7 = *(v1 + 208);
  *(v1 + 208) = 0;
  if (v7)
  {
  }

  std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100](v2, 0);
  v9 = *(v1 + 168);
  if (v9)
  {
    WTF::fastFree((v9 - 16), v8);
  }

  std::unique_ptr<WebKit::RemoteLayerTreeHost>::reset[abi:sn200100]((v1 + 80), 0);
  if (*(v1 + 72) == 1)
  {
    WebKit::DrawingAreaProxy::~DrawingAreaProxy(v1, v10);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::DrawingAreaProxy::DrawingAreaProxy(uint64_t a1, char a2, WebKit::WebPageProxy *a3, uint64_t a4)
{
  *a1 = &unk_1F10EA5E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_1F1147570;
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 32) = 0;
  *a1 = &unk_1F1114A60;
  *(a1 + 16) = &unk_1F1114BE8;
  *(a1 + 24) = IdentifierInternal;
  *(a1 + 36) = a2;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a3 + 6, a3 + 16);
  v9 = *(a3 + 3);
  atomic_fetch_add(v9, 1u);
  *(a1 + 40) = v9;
  atomic_fetch_add((a4 + 16), 1u);
  *(a1 + 48) = a4;
  *(a1 + 56) = WebKit::WebPageProxy::viewSize(a3);
  *(a1 + 64) = 0;
  return a1;
}

unint64_t WebKit::WebPageProxy::viewSize(WebKit::WebPageProxy *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    v1 = 0;
LABEL_6:
    v5 = 0;
    return v5 | v1;
  }

  (*(*v2 + 1712))(v2);
  v3 = (*(*v2 + 48))(v2);
  v4 = v3;
  v5 = v3 & 0xFFFFFFFF00000000;
  (*(*v2 + 1720))(v2);
  v1 = v4;
  return v5 | v1;
}