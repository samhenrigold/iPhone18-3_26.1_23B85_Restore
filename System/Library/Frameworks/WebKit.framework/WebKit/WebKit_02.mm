uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(atomic_ullong *a1)
{
  v9[1] = a1;
  v9[0] = 0;
  v7 = v9;
  v16 = a1;
  v15 = &v7;
  v14 = 0;
  do
  {
    v19 = a1;
    v18 = 0;
    v13 = std::__atomic_base<unsigned long,false>::load[abi:sn200100](a1, 0);
    v12 = v13;
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(void)const::{lambda(unsigned long &)#1}::operator()(v15, &v12);
    if ((result & 1) == 0)
    {
      v17 = 0;
      goto LABEL_7;
    }

    v24 = a1;
    v23 = v13;
    v22 = v12;
    v21 = v14;
    v20 = v13;
    result = std::__atomic_base<unsigned long,false>::compare_exchange_weak[abi:sn200100](a1, &v20, v12, v14);
  }

  while ((result & 1) == 0);
  v17 = 1;
LABEL_7:
  v8 = v17;
  if (v17)
  {
    if (v9[0] == 1)
    {
      v6 = a1;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(void)const::{lambda(void)#1}::operator()(&v6);
    }
  }

  else
  {
    v9[2] = a1;
    v11 = a1;
    v10 = 0;
    v5 = std::__atomic_base<unsigned long,false>::load[abi:sn200100](a1, 0);
    v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v5);
    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>(v4);
  }

  return result;
}

WebKit::VisitedLinkStore *API::PageConfiguration::Data::LazyInitializedRef<WebKit::VisitedLinkStore,&API::PageConfiguration::Data::createVisitedLinkStore>::get(WebKit::VisitedLinkStore **a1)
{
  result = *a1;
  if (!result)
  {
    v3 = API::Object::newObject(0xB8uLL, 109);
    result = WebKit::VisitedLinkStore::VisitedLinkStore(v3);
    v4 = *a1;
    *a1 = result;
    if (v4)
    {
      CFRelease(*(v4 + 1));
      return *a1;
    }
  }

  return result;
}

uint64_t API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    API::PageConfiguration::Data::createWebProcessPool();
  }

  return result;
}

WebKit::WebUserContentControllerProxy *API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebUserContentControllerProxy,&API::PageConfiguration::Data::createWebUserContentControllerProxy>::get(WebKit::WebUserContentControllerProxy **a1)
{
  result = *a1;
  if (!result)
  {
    v3 = API::Object::newObject(0x70uLL, 104);
    result = WebKit::WebUserContentControllerProxy::WebUserContentControllerProxy(v3);
    v4 = *a1;
    *a1 = result;
    if (v4)
    {
      CFRelease(*(v4 + 1));
      return *a1;
    }
  }

  return result;
}

WTF::StringImpl **WebCore::Site::operator=(WTF::StringImpl **a1, atomic_uint **a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = a1[1];
  a1[1] = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  return a1;
}

unsigned int *std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(unsigned int *result, unint64_t a2, unint64_t a3)
{
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(result, a2, a3);
    }
  }

  else if (*(result + 16))
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    *(result + 16) = 0;
  }

  else
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(result, a2);
    *(result + 16) = 1;
  }

  return result;
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(void)const::{lambda(unsigned long &)#1}::operator()(JSC::InlineWatchpointSet ***a1, JSC::InlineWatchpointSet **a2)
{
  if (JSC::InlineWatchpointSet::isThin(*a2))
  {
    *a2 = (*a2 - 2);
    **a1 = *a2;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unsigned int *std::__optional_storage_base<WebCore::WindowFeatures,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::WindowFeatures,false> const&>(unsigned int *result, _OWORD *a2, unint64_t a3)
{
  v3 = result;
  if (*(result + 80) == *(a2 + 80))
  {
    if (*(result + 80))
    {
      v4 = *a2;
      v5 = a2[1];
      v6 = a2[2];
      *(result + 42) = *(a2 + 42);
      *(result + 1) = v5;
      *(result + 2) = v6;
      *result = v4;
      v7 = result + 16;
      v8 = (a2 + 4);

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v7, v8, a3);
    }
  }

  else if (*(result + 80))
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((result + 16), a2);
    *(v3 + 80) = 0;
  }

  else
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    *(result + 42) = *(a2 + 42);
    *(result + 1) = v10;
    *(result + 2) = v11;
    *result = v9;
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((result + 16), (a2 + 4));
    *(v3 + 80) = 1;
  }

  return result;
}

WTF *std::__optional_storage_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1>,false> const&>(WTF *result, unint64_t a2)
{
  v2 = result;
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {

      return WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::operator=(result, a2);
    }
  }

  else if (*(result + 24))
  {
    result = *result;
    if (*v2)
    {
      result = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(result, *(v2 + 2));
    }

    *(v2 + 24) = 0;
  }

  else
  {
    result = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::RobinHoodHashTable(result, a2);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t *std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::String,false> const&>(uint64_t *a1, atomic_uint **a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      return WTF::String::operator=(a1, a2);
    }
  }

  else if (*(a1 + 8))
  {
    return std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100](a1, a2);
  }

  else
  {
    v2 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    }

    *a1 = v2;
    *(a1 + 8) = 1;
  }

  return a1;
}

void WebKit::WebExtensionControllerConfiguration::setDefaultWebsiteDataStore(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CFRetain(*(a2 + 8));
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = a2;
  if (v4)
  {
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

void API::Object::constructInWrapper<WebKit::WebExtensionController,WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>>(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = API::Object::apiObjectsUnderConstruction(v3);
  v9 = v3;
  v10 = [(API::Object *)v3 _apiObject];
  WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v10, &v9, v8);
  v5 = [(API::Object *)v3 _apiObject];
  v6 = *a2;
  *a2 = 0;
  v7 = v6;
  WebKit::WebExtensionController::WebExtensionController(v5, &v7);
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }
}

uint64_t WebKit::WebExtensionController::WebExtensionController(uint64_t a1, uint64_t *a2)
{
  v4 = API::Object::Object(a1);
  *v4 = &unk_1F111E050;
  v5 = v4 + 16;
  *(v4 + 3) = 0;
  v6 = (v4 + 24);
  *(v4 + 2) = &unk_1F10EA5E0;
  *(a1 + 32) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *a1 = &unk_1F111DE88;
  *(a1 + 16) = &unk_1F111DEC8;
  v7 = *a2;
  CFRetain(*(v7 + 8));
  *(a1 + 40) = v7;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = *(a1 + 176) & 0xFC | 1;
  *(a1 + 177) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if ((byte_1ED642B3B & 1) == 0)
  {
    qword_1ED642B58 = 0;
    byte_1ED642B3B = 1;
  }

  v8 = *(a1 + 32);
  if (v8 == -1 || !v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58632CLL);
  }

  v9 = qword_1ED642B58;
  if (!qword_1ED642B58)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(0);
    v9 = qword_1ED642B58;
  }

  v10 = *(v9 - 8);
  v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_15:
    *v15 = v8;
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6, v5);
    v20 = *v6;
    atomic_fetch_add(*v6, 1u);
    v21 = v15[1];
    v15[1] = v20;
    if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21);
      WTF::fastFree(v21, v19);
    }

    v22 = qword_1ED642B58;
    if (qword_1ED642B58)
    {
      v23 = *(qword_1ED642B58 - 12) + 1;
    }

    else
    {
      v23 = 1;
    }

    *(qword_1ED642B58 - 12) = v23;
    v24 = (*(v22 - 16) + v23);
    v25 = *(v22 - 4);
    if (v25 > 0x400)
    {
      if (v25 > 2 * v24)
      {
        goto LABEL_24;
      }
    }

    else if (3 * v25 > 4 * v24)
    {
      goto LABEL_24;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::WebExtensionController,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v15);
    goto LABEL_24;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v8)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v10;
    v15 = (v9 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        v17[1] = 0;
        --*(v9 - 16);
        v15 = v17;
      }

      goto LABEL_15;
    }
  }

LABEL_24:
  WebKit::WebExtensionController::initializePlatform(a1);
  v26 = dispatch_time(0, 5000000000);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6, v5);
  v27 = *(a1 + 24);
  atomic_fetch_add(v27, 1u);
  v28 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
  *v28 = MEMORY[0x1E69E9818];
  v28[1] = 50331650;
  v28[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0>(WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0)::{lambda(void *)#1}::__invoke;
  v28[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0>(WebKit::WebExtensionController::WebExtensionController(WTF::Ref<WebKit::WebExtensionControllerConfiguration,WTF::RawPtrTraits<WebKit::WebExtensionControllerConfiguration>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionControllerConfiguration>>)::$_0)::descriptor;
  v28[4] = a1;
  v28[5] = v27;
  dispatch_after(v26, MEMORY[0x1E69E96A0], v28);
  _Block_release(v28);
  return a1;
}

void WebKit::WebExtensionController::initializePlatform(WebKit::WebExtensionController *this)
{
  v2 = [[_WKWebExtensionControllerHelper alloc] initWithWebExtensionController:this];
  v3 = *(this + 6);
  *(this + 6) = v2;
}

void WebKit::WebExtensionControllerConfiguration::~WebExtensionControllerConfiguration(WebKit::WebExtensionControllerConfiguration *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111DF10;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

void API::PageConfiguration::Data::~Data(API::PageConfiguration::Data *this, WTF::StringImpl *a2)
{
  v3 = *(this + 72);
  *(this + 72) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 520) == 1)
  {
    v4 = *(this + 64);
    *(this + 64) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  v5 = *(this + 63);
  *(this + 63) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 62);
  *(this + 62) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (*(this + 472) == 1)
  {
    v32 = *(this + 56);
    if (v32)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v32, *(this + 114));
    }
  }

  v7 = *(this + 54);
  *(this + 54) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 52);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 400, a2);
  v10 = *(this + 49);
  if (v10)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebURLSchemeHandler,WTF::RawPtrTraits<WebKit::WebURLSchemeHandler>,WTF::DefaultRefDerefTraits<WebKit::WebURLSchemeHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v10, v9);
  }

  v11 = *(this + 48);
  *(this + 48) = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  if (*(this + 360) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 344, v9);
  }

  v12 = *(this + 42);
  *(this + 42) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 41);
  *(this + 41) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = *(this + 34);
  *(this + 34) = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 32);
  *(this + 32) = 0;
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, v9);
  }

  v16 = *(this + 31);
  *(this + 31) = 0;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, v9);
  }

  if (*(this + 232) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v9);
  }

  v17 = *(this + 18);
  *(this + 18) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v9);
  }

  v18 = *(this + 17);
  *(this + 17) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v9);
  }

  v19 = *(this + 16);
  *(this + 16) = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v9);
  }

  v20 = *(this + 15);
  *(this + 15) = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<std::optional<API::PageConfiguration::OpenerInfo>>::Data,(WTF::DestructionThread)0>::deref(v20, v9);
  }

  v21 = *(this + 14);
  *(this + 14) = 0;
  if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v21);
    WTF::fastFree(v21, v9);
  }

  v22 = *(this + 13);
  *(this + 13) = 0;
  if (v22)
  {
    CFRelease(*(v22 + 8));
  }

  v23 = *(this + 12);
  *(this + 12) = 0;
  if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23);
    WTF::fastFree(v23, v9);
  }

  v24 = *(this + 11);
  *(this + 11) = 0;
  if (v24)
  {
    CFRelease(*(v24 + 8));
  }

  v25 = *(this + 6);
  *(this + 6) = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v9);
  }

  v26 = *(this + 5);
  *(this + 5) = 0;
  if (v26)
  {
    CFRelease(*(v26 + 8));
  }

  v27 = *(this + 4);
  *(this + 4) = 0;
  if (v27)
  {
    CFRelease(*(v27 + 8));
  }

  v28 = *(this + 3);
  *(this + 3) = 0;
  if (v28)
  {
    CFRelease(*(v28 + 8));
  }

  v29 = *(this + 2);
  *(this + 2) = 0;
  if (v29)
  {
    CFRelease(*(v29 + 8));
  }

  v30 = *(this + 1);
  *(this + 1) = 0;
  if (v30)
  {
    CFRelease(*(v30 + 8));
  }

  v31 = *this;
  *this = 0;
  if (v31)
  {
    CFRelease(*(v31 + 8));
  }
}

_DWORD *WTF::RefCounted<WebKit::BrowsingContextGroup>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::BrowsingContextGroup::~BrowsingContextGroup((result - 2), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::determineTrackingPreventionState(void)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10F1880;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Condition::notifyOne(WTF::Condition *this)
{
  v1 = atomic_load(this);
  if (v1)
  {
    v5 = 0;
    v4[0] = this;
    v4[1] = &v5;
    v6[0] = WTF::ScopedLambdaRefFunctor<long ()(WTF::ParkingLot::UnparkResult),WTF::Condition::notifyOne(void)::{lambda(WTF::ParkingLot::UnparkResult)#1}>::implFunction;
    v6[1] = v6;
    v6[2] = v4;
    WTF::ParkingLot::unparkOneImpl();
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::resolveDirectoriesAsynchronously(void)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F11213F0;
  WebKit::WebsiteDataStoreConfiguration::Directories::~Directories((a1 + 3), a2);
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::handleResolvedDirectoriesAsynchronously(WebKit::WebsiteDataStoreConfiguration::Directories const&,BOOL)::$_0,void>::call(uint64_t this, const WTF::String *a2, BOOL a3)
{
  v3 = this;
  v5 = (this + 8);
  v4 = *(this + 8);
  if (v4 && *(v4 + 4))
  {
    WebCore::DatabaseTracker::trackerWithDatabasePath(&v57, (this + 8), a2);
    WebCore::DatabaseTracker::deleteAllDatabasesImmediately(v57);
    v7 = v57;
    v57 = 0;
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v8 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v8, v6);
      }

      v9 = *(v7 + 15);
      if (v9)
      {
        v10 = *(v9 - 4);
        if (v10)
        {
          v11 = (v9 + 24);
          while (1)
          {
            v12 = *v11;
            if (*v11)
            {
              break;
            }

            if (*(v11 - 3) != -1)
            {
              goto LABEL_11;
            }

LABEL_21:
            v11 += 56;
            if (!--v10)
            {
              goto LABEL_25;
            }
          }

          if (v12 != 1)
          {
LABEL_78:
            mpark::throw_bad_variant_access(v8);
          }

LABEL_11:
          v8 = *(v11 + 1);
          if (v8)
          {
            v8 = WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v8, *(v11 + 4));
            v12 = *v11;
          }

          if (!v12)
          {
            v13 = *(v11 - 2);
            *(v11 - 2) = 0;
            if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v6);
            }

            v8 = *(v11 - 3);
            *(v11 - 3) = 0;
            if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v8 = WTF::StringImpl::destroy(v8, v6);
            }
          }

          *v11 = -1;
          goto LABEL_21;
        }

LABEL_25:
        v8 = WTF::fastFree((v9 - 16), v6);
      }

      v14 = *(v7 + 14);
      if (v14)
      {
        v15 = *(v14 - 4);
        if (v15)
        {
          v16 = (v14 + 24);
          while (1)
          {
            v17 = *v16;
            if (*v16)
            {
              break;
            }

            if (*(v16 - 3) != -1)
            {
              goto LABEL_31;
            }

LABEL_41:
            v16 += 40;
            if (!--v15)
            {
              goto LABEL_45;
            }
          }

          if (v17 != 1)
          {
            goto LABEL_78;
          }

LABEL_31:
          v8 = *(v16 + 1);
          if (v8)
          {
            v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v6);
            v17 = *v16;
          }

          if (!v17)
          {
            v18 = *(v16 - 2);
            *(v16 - 2) = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v6);
            }

            v8 = *(v16 - 3);
            *(v16 - 3) = 0;
            if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v8 = WTF::StringImpl::destroy(v8, v6);
            }
          }

          *v16 = -1;
          goto LABEL_41;
        }

LABEL_45:
        WTF::fastFree((v14 - 16), v6);
      }

      v19 = *(v7 + 12);
      *(v7 + 12) = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v6);
      }

      v20 = *(v7 + 11);
      if (v20)
      {
        v21 = *(v20 - 4);
        if (v21)
        {
          v22 = *(v7 + 11);
          do
          {
            v23 = *v22;
            if (*v22 != -1)
            {
              v24 = *(v22 + 8);
              *(v22 + 8) = 0;
              if (v24)
              {
                if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v24);
                  WebCore::OriginLock::~OriginLock(v24);
                  WTF::fastFree(v25, v26);
                }

                v23 = *v22;
              }

              *v22 = 0;
              if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v6);
              }
            }

            v22 += 16;
            --v21;
          }

          while (v21);
        }

        WTF::fastFree((v20 - 16), v6);
      }

      v8 = MEMORY[0x19EB058E0](v7 + 24);
      v28 = *(v7 + 1);
      *(v7 + 1) = 0;
      if (v28)
      {
        v29 = *v28;
        if (*v28)
        {
          v30 = *(v29 - 4);
          if (v30)
          {
            v31 = *v28;
            while (!*(v31 + 24))
            {
              if (*v31 != -1)
              {
                v32 = *(v31 + 8);
                *(v31 + 8) = 0;
                if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v32, v27);
                }

                v8 = *v31;
                *v31 = 0;
                if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v8 = WTF::StringImpl::destroy(v8, v27);
                }

LABEL_74:
                *(v31 + 24) = -1;
              }

              v31 += 40;
              if (!--v30)
              {
                goto LABEL_79;
              }
            }

            if (*(v31 + 24) != 1)
            {
              goto LABEL_78;
            }

            goto LABEL_74;
          }

LABEL_79:
          WTF::fastFree((v29 - 16), v27);
        }

        WTF::fastFree(v28, v27);
      }

      bmalloc::api::tzoneFree(v7, v27);
    }

    this = WTF::FileSystemImpl::deleteEmptyDirectory(v5, v6);
  }

  v33 = *(v3 + 16);
  if (v33)
  {
    v34 = *(v33 + 4);
    if (v34)
    {
      v35 = WTF::fastMalloc(v34, 0x88);
      v36 = MEMORY[0x19EB0B3F0](v35, v3 + 16, v3 + 24);
      WebCore::ApplicationCacheStorage::deleteAllCaches(v36);
      if (*v35 == 1)
      {
        v48 = v35[16];
        if (v48)
        {
          v49 = *(v48 - 4);
          if (v49)
          {
            v50 = v35[16];
            do
            {
              v51 = *v50;
              if (*v50 != -1)
              {
                *v50 = 0;
                if (v51)
                {
                  if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v51, v37);
                  }
                }
              }

              v50 += 2;
              --v49;
            }

            while (v49);
          }

          WTF::fastFree((v48 - 16), v37);
        }

        v52 = v35[15];
        if (v52)
        {
          WTF::fastFree((v52 - 16), v37);
        }

        MEMORY[0x19EB058E0](v35 + 7);
        v54 = v35[3];
        v35[3] = 0;
        if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v54, v53);
        }

        v55 = v35[2];
        v35[2] = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v53);
        }

        v56 = v35[1];
        v35[1] = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v53);
        }

        if (*v35 != 1)
        {
          this = 191;
          __break(0xC471u);
          return this;
        }

        WTF::fastFree(v35, v53);
      }

      else
      {
        --*v35;
      }

      v38 = *(v3 + 24);
      if (v38)
      {
        if (*(v38 + 4))
        {
          WTF::FileSystemImpl::pathByAppendingComponent();
          WTF::FileSystemImpl::deleteEmptyDirectory(&v57, v39);
          v41 = v57;
          v57 = 0;
          if (v41)
          {
            if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v41, v40);
            }
          }
        }
      }

      WTF::FileSystemImpl::pathByAppendingComponent();
      WebCore::SQLiteFileSystem::deleteDatabaseFile(&v57, v42);
      WTF::FileSystemImpl::deleteEmptyDirectory((v3 + 16), v43);
      this = v57;
      v57 = 0;
      if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(this, v44);
      }
    }
  }

  v45 = *(v3 + 44);
  if (v45)
  {
    v46 = *(v3 + 32);
    v47 = 8 * v45;
    do
    {
      this = WTF::FileSystemImpl::setExcludedFromBackup(v46, 1);
      v46 = (v46 + 8);
      v47 -= 8;
    }

    while (v47);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::handleResolvedDirectoriesAsynchronously(WebKit::WebsiteDataStoreConfiguration::Directories const&,BOOL)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F1121440;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v4 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  return WTF::fastFree(a1, v3);
}

void *WebKit::WebUserContentControllerProxy::removeAllContentRuleLists(uint64_t *a1, const WTF::URL *a2)
{
  if (!a2)
  {
    v49 = 0;
    v50 = 0;
    v7 = a1[13];
    if (v7)
    {
      v8 = *(v7 - 4);
      v9 = (v7 + 56 * v8);
      if (*(v7 - 12))
      {
        if (v8)
        {
          v10 = 56 * v8;
          v11 = a1[13];
          while (*v11 + 1 <= 1)
          {
            v11 += 7;
            v10 -= 56;
            if (!v10)
            {
              v11 = v9;
              goto LABEL_44;
            }
          }
        }

        else
        {
          v11 = a1[13];
        }

        goto LABEL_44;
      }
    }

    else
    {
      v9 = 0;
      LODWORD(v8) = 0;
    }

    v11 = v9;
    v9 = (v7 + 56 * v8);
    if (!v7)
    {
      v36 = 0;
LABEL_45:
      if (v36 != v11)
      {
        do
        {
          if ((WebKit::WebExtensionMatchPattern::isWebExtensionURL((v11 + 2), a2) & 1) == 0)
          {
            v38 = HIDWORD(v50);
            if (HIDWORD(v50) == v50)
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(&v49, v11);
            }

            else
            {
              v39 = v49;
              v40 = *v11;
              if (*v11)
              {
                atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
              }

              v41 = HIDWORD(v50);
              *(v39 + v38) = v40;
              HIDWORD(v50) = v41 + 1;
            }
          }

          do
          {
            v11 += 7;
          }

          while (v11 != v9 && *v11 + 1 <= 1);
        }

        while (v11 != v36);
        if (HIDWORD(v50))
        {
          v42 = v49;
          v43 = 8 * HIDWORD(v50);
          do
          {
            WebKit::WebUserContentControllerProxy::removeContentRuleList(a1, v42++, v37);
            v43 -= 8;
          }

          while (v43);
        }
      }

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, a2);
    }

LABEL_44:
    v36 = (v7 + 56 * *(v7 - 4));
    goto LABEL_45;
  }

  v3 = a1[13];
  if (v3)
  {
    a1[13] = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a1 + 5, &v49);
  v4 = a1[5];
  if (v4)
  {
    v5 = *(v4 - 4);
    v6 = v4 + 8 * v5;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v44 = a1 + 5;
  v45 = v6;
  v46 = v6;
  v47 = v6;
  v48 = v4 + 8 * v5;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v44);
  v13 = v50;
  if (v50 != v45)
  {
    while (1)
    {
      v14 = *(*v13 + 8);
      atomic_fetch_add((v14 + 16), 1u);
      v15 = a1[4];
      v16 = IPC::Encoder::operator new(0x238, v12);
      *v16 = 3184;
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 1) = v15;
      *(v16 + 68) = 0;
      *(v16 + 70) = 0;
      *(v16 + 69) = 0;
      IPC::Encoder::encodeHeader(v16);
      v53 = v16;
      LOBYTE(v51[0]) = 0;
      v52 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v14, &v53, 0, v51, 1);
      if (v52 == 1)
      {
        v18 = v51[0];
        v51[0] = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      v19 = v53;
      v53 = 0;
      if (v19)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_21;
      }

LABEL_22:
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v49);
      v13 = v50;
      if (v50 == v45)
      {
        goto LABEL_26;
      }
    }

    IPC::Encoder::~Encoder(v19, v17);
    bmalloc::api::tzoneFree(v20, v21);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_21:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16), v17);
    goto LABEL_22;
  }

LABEL_26:
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a1 + 11, &v49);
  v22 = a1[11];
  if (v22)
  {
    v23 = *(v22 - 4);
    v24 = v22 + 8 * v23;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v44 = a1 + 11;
  v45 = v24;
  v46 = v24;
  v47 = v24;
  v48 = v22 + 8 * v23;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v44);
  v27 = v50;
  if (v50 != v45)
  {
    while (1)
    {
      v28 = *(*v27 + 8);
      atomic_fetch_add((v28 + 16), 1u);
      v29 = a1[4];
      v30 = IPC::Encoder::operator new(0x238, v26);
      *v30 = 504;
      *(v30 + 68) = 0;
      *(v30 + 70) = 0;
      *(v30 + 69) = 0;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 1) = 0;
      IPC::Encoder::encodeHeader(v30);
      v53 = v30;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v30, v29);
      LOBYTE(v51[0]) = 0;
      v52 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v28, &v53, 0, v51, 1);
      if (v52 == 1)
      {
        v32 = v51[0];
        v51[0] = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      v33 = v53;
      v53 = 0;
      if (v33)
      {
        break;
      }

      if (v28)
      {
        goto LABEL_35;
      }

LABEL_36:
      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v49);
      v27 = v50;
      if (v50 == v45)
      {
        return result;
      }
    }

    IPC::Encoder::~Encoder(v33, v31);
    bmalloc::api::tzoneFree(v34, v35);
    if (!v28)
    {
      goto LABEL_36;
    }

LABEL_35:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v28 + 16), v31);
    goto LABEL_36;
  }

  return result;
}

API::ContentRuleListStore *API::ContentRuleListStore::ContentRuleListStore(API::ContentRuleListStore *this, atomic_uint **a2)
{
  *API::Object::Object(this) = &unk_1F111AFD0;
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *(this + 2) = v5;
  WTF::FileSystemImpl::makeAllDirectories(a2, v4);
  return this;
}

void sub_19D587684(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebPreferences::setTelephoneNumberParsingEnabled(WebKit::WebPreferences *this, BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key = WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key = WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::telephoneNumberParsingEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::updateBoolValueForKey(WebKit::WebPreferences *this, atomic_uint **a2, const WTF::StringImpl *a3, char a4)
{
  v4 = a3;
  if ((a4 & 1) == 0)
  {
    WebKit::WebPreferences::platformUpdateBoolValueForKey(this, a2, a3);
  }

  {
    v7 = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key;
  }

  else
  {
    v7 = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::key = WebKit::WebPreferencesKey::processSwapOnCrossSiteNavigationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WTF::equal(*a2, v7, a3))
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 11, &v21);
    v8 = *(this + 11);
    if (v8)
    {
      v9 = *(v8 - 4);
      v10 = v8 + 8 * v9;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v16 = this + 88;
    v17 = v10;
    v18 = v10;
    v19 = v10;
    v20 = v8 + 8 * v9;
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v12 = v22;
    if (v22 != v17)
    {
      v13 = v4 | 0x100;
      do
      {
        v14 = *(*v12 + 8);
        if (v14)
        {
          v15 = v14 - 16;
        }

        else
        {
          v15 = 0;
        }

        CFRetain(*(v15 + 8));
        *(*(API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(v15 + 64) + 16)) + 48) + 84) = v13;
        if (v14)
        {
          CFRelease(*(v14 - 8));
        }

        result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v21);
        v12 = v22;
      }

      while (v22 != v17);
    }
  }

  else
  {

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void WebKit::WebPreferences::platformUpdateBoolValueForKey(atomic_uint **this, atomic_uint **a2, uint64_t a3)
{
  if (this[2])
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    WebKit::makeKey(&v8, this[2], this + 3, a2);
    [v6 setBool:a3 forKey:v8];
    v7 = v8;
    v8 = 0;
    if (v7)
    {
    }
  }
}

void sub_19D58796C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebPreferences::update(void *this)
{
  v1 = this;
  if (*(this + 26))
  {
    *(this + 108) = 1;
  }

  else
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 11, &v12);
    v2 = v1[11];
    if (v2)
    {
      v3 = *(v2 - 4);
      v4 = v2 + 8 * v3;
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    v7 = v1 + 11;
    v8 = v4;
    v9 = v4;
    v10 = v4;
    v11 = v2 + 8 * v3;
    this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v7);
    while (v13 != v8)
    {
      v5 = *(*v13 + 8);
      if (v5)
      {
        v6 = v5 - 16;
      }

      else
      {
        v6 = 0;
      }

      CFRetain(*(v6 + 8));
      WebKit::WebPageProxy::preferencesDidChange(v6);
      if (v5)
      {
        CFRelease(*(v5 - 8));
      }

      this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v12);
    }
  }

  return this;
}

void *WebKit::WebPreferences::setShouldSuppressTextInputFromEditingDuringProvisionalNavigation(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key = WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldSuppressTextInputFromEditingDuringProvisionalNavigationKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setDiagnosticLoggingEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key = WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key = WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::diagnosticLoggingEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldAllowUserInstalledFonts(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key = WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key = WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldAllowUserInstalledFontsKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setShouldPrintBackgrounds(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key = WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key = WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::shouldPrintBackgroundsKey(void)::key, v5, 0);
  }

  return result;
}

BOOL WebKit::WebPreferencesStore::setUInt32ValueForKey(WebKit::WebPreferencesStore *this, WTF::StringImpl **a2, int a3)
{
  v6 = WebKit::valueForKey<unsigned int>(this, this + 24, a2);
  if (v6 != a3)
  {
    LODWORD(v11) = a3;
    v12 = 2;
    WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,mpark::variant<WTF::String,BOOL,unsigned int,double>>(this, a2, &v11, v10);
    if (!v12)
    {
      v8 = v11;
      v11 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }
      }
    }
  }

  return v6 != a3;
}

uint64_t WebKit::WebPreferences::setStorageBlockingPolicy(atomic_uint **this, const unsigned int *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setUInt32ValueForKey((this + 5), &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key = WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::$_0::operator() const(void)::impl;
    }

    WebKit::WebPreferences::platformUpdateUInt32ValueForKey(this, &WebKit::WebPreferencesKey::storageBlockingPolicyKey(void)::key, *a2);

    return WebKit::WebPreferences::update(this);
  }

  return result;
}

void *WebKit::WebPreferences::setNeedsSiteSpecificQuirks(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key = WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::needsSiteSpecificQuirksKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMediaDevicesEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaDevicesEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMediaSourceEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setFullScreenEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setTextExtractionEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key = WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::textExtractionEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setMockCaptureDevicesEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key = WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mockCaptureDevicesEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setMediaCaptureRequiresSecureConnection(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key = WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key = WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaCaptureRequiresSecureConnectionKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setEnumeratingAllNetworkInterfacesEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key = WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key = WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::enumeratingAllNetworkInterfacesEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setICECandidateFilteringEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key = WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key = WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::iceCandidateFilteringEnabledKey(void)::key, v5, 1);
  }

  return result;
}

void *WebKit::WebPreferences::setJavaScriptEnabled(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key = WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::javaScriptEnabledKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setJavaScriptCanOpenWindowsAutomatically(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key = WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::javaScriptCanOpenWindowsAutomaticallyKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebPreferences::setApplePayCapabilityDisclosureAllowed(WebKit::WebPreferences *this, const BOOL *a2)
{
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key = WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::setBoolValueForKey((this + 40), &WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key, *a2);
  if (result)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key = WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::$_0::operator() const(void)::impl;
    }

    v5 = *a2;

    return WebKit::WebPreferences::updateBoolValueForKey(this, &WebKit::WebPreferencesKey::applePayCapabilityDisclosureAllowedKey(void)::key, v5, 0);
  }

  return result;
}

void *WebKit::WebProcessPool::prewarmProcess(void *this)
{
  v1 = this;
  v9 = *MEMORY[0x1E69E9840];
  v2 = this[11];
  if (!v2 || !*(v2 + 8))
  {
    {
      WebKit::liveProcessesLRU(void)::processes = 0u;
      *algn_1ED643678 = 0u;
    }

    this = WTF::WeakListHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::removeNullReferences(&WebKit::liveProcessesLRU(void)::processes);
    v3 = WebKit::liveProcessesLRU(void)::processes;
    if (WebKit::liveProcessesLRU(void)::processes)
    {
      v3 = *(WebKit::liveProcessesLRU(void)::processes - 12);
    }

    if (v3 < WebKit::s_maxProcessCount)
    {
      v4 = qword_1ED640F68;
      v5 = os_log_type_enabled(qword_1ED640F68, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        *buf = 134217984;
        v8 = v1;
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WebProcessPool::prewarmProcess: Prewarming a WebProcess for performance", buf, 0xCu);
      }

      if (HIBYTE(WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally) == 1)
      {
        LOBYTE(isLockdownModeEnabledBySystemIgnoringCaching) = WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally;
      }

      else
      {
        isLockdownModeEnabledBySystemIgnoringCaching = WebKit::isLockdownModeEnabledBySystemIgnoringCaching(v5);
        WebKit::cachedLockdownModeEnabledGlobally(void)::cachedLockdownModeEnabledGlobally = isLockdownModeEnabledBySystemIgnoringCaching | 0x100;
      }

      WebKit::WebProcessPool::createNewWebProcess(v1, 0, isLockdownModeEnabledBySystemIgnoringCaching & 1, 1, 0);
    }
  }

  return this;
}

void WebKit::WebProcessProxy::create(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = WebKit::WebProcessProxy::operator new(0x4D8, a2);
  WebKit::WebProcessProxy::WebProcessProxy(v12, a1, a2, v8, v7, v9);
}

uint64_t WebKit::WebProcessProxy::operator new(WebKit::WebProcessProxy *this, void *a2)
{
  if (WebKit::WebProcessProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebProcessProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebProcessProxy::operatorNewSlow(0x4D8);
  }
}

void WebKit::WebProcessProxy::WebProcessProxy(unint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = WebKit::AuxiliaryProcessProxy::AuxiliaryProcessProxy(a1, *(a2 + 537), *(a2 + 536), 3.0);
  *v9 = &unk_1F1119F00;
  v9[3] = &unk_1F111A048;
  v9[4] = &unk_1F111A0D0;
  WebKit::BackgroundProcessResponsivenessTimer::BackgroundProcessResponsivenessTimer((v9 + 52), a1);
  *(a1 + 544) = a4;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v10 = *(a2 + 24);
  atomic_fetch_add(v10, 1u);
  *(a1 + 552) = v10;
  *(a1 + 560) = 0;
  WebKit::WebProcessProxy::WeakOrStrongPtr<WebKit::WebProcessPool>::updateStrongReference(a1 + 544);
  *(a1 + 568) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 1;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 1;
  *(a1 + 768) = 0u;
  v11 = WTF::fastMalloc((a1 + 576), 0x10);
  *v11 = &unk_1F111A920;
  v11[1] = a1;
  *(a1 + 784) = v11;
  operator new();
}

unint64_t WebKit::AuxiliaryProcessProxy::AuxiliaryProcessProxy(unint64_t a1, unint64_t a2, char a3, double a4)
{
  v6 = a2;
  *(a1 + 16) = 1;
  *(a1 + 48) = 0;
  *a1 = &unk_1F1114878;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_1F1114978;
  *(a1 + 32) = &unk_1F1114A00;
  *(a1 + 40) = 0;
  v8 = WTF::fastMalloc((a1 + 24), 0x58);
  v9 = WebKit::ResponsivenessTimer::ResponsivenessTimer(v8, a1, a4);
  *(a1 + 56) = v9;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a3;
  *(a1 + 113) = 0;
  *(a1 + 120) = WebCore::Process::generateIdentifier(v9);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  WebKit::ProcessThrottler::ProcessThrottler((a1 + 144), a1, v6);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  return a1;
}

uint64_t WebKit::ResponsivenessTimer::ResponsivenessTimer(uint64_t a1, unint64_t a2, double a3)
{
  *a1 = 1;
  v6 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v7 = *(a2 + 8);
  atomic_fetch_add(v7, 1u);
  *(a1 + 8) = v7;
  v8 = WTF::RunLoop::mainSingleton(v6);
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
  v14 = v9;
  v12 = WTF::fastMalloc(v10, 0x20);
  *v12 = &unk_1F1115880;
  v12[1] = a1;
  v12[2] = WebKit::ResponsivenessTimer::timerFired;
  v12[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 16) = &unk_1F10E6DC8;
  *(a1 + 56) = v12;
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v14 + 8));
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 74) = 0;
  *(a1 + 80) = a3;
  return a1;
}

WebKit::ProcessThrottler *WebKit::ProcessThrottler::ProcessThrottler(WebKit::ProcessThrottler *this, WebKit::AuxiliaryProcessProxy *a2, char a3)
{
  *this = 0;
  if (WebKit::ProcessThrottler::ProcessAssertionCache::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessThrottler::ProcessAssertionCache::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::ProcessThrottler::ProcessAssertionCache::operatorNewSlow(0);
  }

  NonCompact[1] = 0;
  NonCompact[2] = 0;
  *NonCompact = 0;
  *(NonCompact + 16) = 1;
  *(this + 1) = NonCompact;
  v7 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v8 = *(a2 + 1);
  atomic_fetch_add(v8, 1u);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v8;
  v9 = WTF::RunLoop::mainSingleton(v7);
  v10 = v9;
  while (1)
  {
    v11 = *(v9 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v9 + 8);
    atomic_compare_exchange_strong_explicit((v9 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
LABEL_8:
  v13 = WTF::RunLoop::Timer::Timer<WebKit::ProcessThrottler>(this + 5, this, WebKit::ProcessThrottler::prepareToSuspendTimeoutTimerFired, 0, v11);
  if (v10)
  {
    v13 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v10 + 8));
  }

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
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v14 + 8));
LABEL_15:
  v18 = WTF::RunLoop::Timer::Timer<WebKit::ProcessThrottler>(this + 11, this, WebKit::ProcessThrottler::dropNearSuspendedAssertionTimerFired, 0, v16);
  if (v15)
  {
    v18 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v15 + 8));
  }

  v19 = WTF::RunLoop::mainSingleton(v18);
  v20 = v19;
  while (1)
  {
    v21 = *(v19 + 8);
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = *(v19 + 8);
    atomic_compare_exchange_strong_explicit((v19 + 8), &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v22 == v21)
    {
      goto LABEL_22;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v19 + 8));
LABEL_22:
  WTF::RunLoop::Timer::Timer<WebKit::ProcessThrottler>(this + 17, this, WebKit::ProcessThrottler::prepareToDropLastAssertionTimeoutTimerFired, 0, v21);
  if (v20)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v20 + 8));
  }

  *(this + 224) = 0;
  *(this + 116) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0;
  *(this + 234) = a3;
  *(this + 235) = 257;
  *(this + 237) = 0;
  return this;
}

WebKit::BackgroundProcessResponsivenessTimer *WebKit::BackgroundProcessResponsivenessTimer::BackgroundProcessResponsivenessTimer(WebKit::BackgroundProcessResponsivenessTimer *this, WebKit::WebProcessProxy *a2)
{
  *this = 0;
  v4 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 1) = v5;
  *(this + 2) = 0x4034000000000000;
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
  v10 = WTF::RunLoop::Timer::Timer<WebKit::BackgroundProcessResponsivenessTimer>(this + 3, this, WebKit::BackgroundProcessResponsivenessTimer::responsivenessCheckTimerFired, 0, v8);
  if (v7)
  {
    v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v7 + 8));
  }

  v11 = WTF::RunLoop::mainSingleton(v10);
  v12 = v11;
  while (1)
  {
    v13 = *(v11 + 8);
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v11 + 8);
    atomic_compare_exchange_strong_explicit((v11 + 8), &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v13)
    {
      goto LABEL_13;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 8));
LABEL_13:
  WTF::RunLoop::Timer::Timer<WebKit::BackgroundProcessResponsivenessTimer>(this + 9, this, WebKit::BackgroundProcessResponsivenessTimer::timeoutTimerFired, 0, v13);
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v12 + 8));
  }

  *(this + 120) = 1;
  return this;
}

void WebKit::WebProcessProxy::WeakOrStrongPtr<WebKit::WebProcessPool>::updateStrongReference(uint64_t a1)
{
  if ((*a1 & 1) == 0 && (v2 = *(a1 + 8)) != 0 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = v3 - 16;
    CFRetain(*(v3 - 8));
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    v6 = *(v5 + 8);

    CFRelease(v6);
  }
}

uint64_t WebKit::UserMediaCaptureManagerProxy::operator new(WebKit::UserMediaCaptureManagerProxy *this, void *a2)
{
  if (WebKit::UserMediaCaptureManagerProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::UserMediaCaptureManagerProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::UserMediaCaptureManagerProxy::operatorNewSlow(0x58);
  }
}

uint64_t WebKit::UserMediaCaptureManagerProxy::UserMediaCaptureManagerProxy(uint64_t a1, uint64_t *a2)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FE448;
  *(a1 + 8) = 0;
  v3 = *a2;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = "UserMediaCaptureManagerProxy";
  v5[3] = 0;
  WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(v5, (a1 + 72));
  *(a1 + 80) = 0;
  (*(**(a1 + 32) + 16))(*(a1 + 32), 149, a1);
  return a1;
}

WTF::Lock *WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>@<X0>(WTF::NativePromiseBase *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x78);
  v6 = WTF::NativePromise<void,void,0u>::NativePromise(v5, a1);
  *a3 = v6;

  return WTF::NativePromise<void,void,0u>::resolve<std::enable_if<true,void>>(v6, a1);
}

WTF::Lock *WTF::NativePromise<void,void,0u>::resolve<std::enable_if<true,void>>(unsigned __int8 *a1, WTF::NativePromiseBase *a2)
{
  v4 = 0;
  v7 = (a1 + 48);
  v8 = 1;
  atomic_compare_exchange_strong_explicit(a1 + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30]();
  }

  WTF::NativePromiseBase::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,void,0u>>(a2, " resolving ", a1);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<void,void,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WTF::detail::VoidPlaceholder> ()(void)>>,(mpark::detail::Trait)1>::destroy(a1 + 56);
  *(a1 + 28) = 0;
  a1[64] = 1;
  result = WTF::NativePromise<void,void,0u>::dispatchAll(a1, &v7);
  v6 = v8;
  if (v8 == 1)
  {
    result = v7;
    atomic_compare_exchange_strong_explicit(v7, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<void,void,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FE610;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 88;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WTF::NativePromiseBase::log<char [10],WTF::NativePromise<void,void,0u>>("creating ", a1);
  return a1;
}

uint64_t WTF::NativePromise<void,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v17 = &v19;
  v18 = 1;
  std::exchange[abi:sn200100]<WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((a1 + 72), &v20, &v17);
  WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v4);
  v16[0] = 0;
  v16[1] = 0;
  v5 = *(a1 + 96);
  v17 = v5;
  v6 = *(a1 + 104);
  v7 = *(a1 + 108);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v18 = __PAIR64__(v7, v6);
  WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 96, v16);
  WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v8);
  if (v21)
  {
    v12 = v20;
    v13 = 8 * v21;
    do
    {
      v14 = *v12++;
      WTF::NativePromise<void,void,0u>::ThenCallbackBase::dispatch(v14, a1, a2);
      v13 -= 8;
    }

    while (v13);
  }

  if (v7)
  {
    v15 = 40 * v7;
    do
    {
      WTF::NativePromise<void,void,0u>::settleChainedPromise(a1, v5);
      v5 += 5;
      v15 -= 40;
    }

    while (v15);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v10);
}

WTF *WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(_DWORD *__dst, _DWORD *a2)
{
  v5 = (__dst + 4);
  result = *__dst;
  if (result != v5)
  {
    if (result)
    {
      *__dst = 0;
      __dst[2] = 0;
      result = WTF::fastFree(result, a2);
    }

    *__dst = v5;
  }

  v6 = a2 + 4;
  v7 = *a2;
  if (*a2 == a2 + 4)
  {
    result = memcpy(v5, v6, 8 * a2[3]);
    v8 = a2[2];
  }

  else
  {
    *a2 = v6;
    *__dst = v7;
    v8 = a2[2];
    a2[2] = 1;
  }

  __dst[2] = v8;
  v9 = a2[3];
  a2[3] = 0;
  __dst[3] = v9;
  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 40 * v3;
    do
    {
      v6 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v6) + 5;
      v7 -= 40;
    }

    while (v7);
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

uint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<void,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (a1 + 16 != *a1 && v4 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(atomic_uint *result, unint64_t a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v3 = result;
    atomic_store(add, result);
    v4 = WTF::fastMalloc(add, 0x10);
    *v4 = &unk_1F10E7450;
    v4[1] = v3;
    v5 = v4;
    WTF::ensureOnMainRunLoop();
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

uint64_t *WebKit::WebPasteboardProxy::singleton(WebKit::WebPasteboardProxy *this)
{
  if (atomic_load_explicit(&qword_1ED6429D0, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&qword_1ED6429D0, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebPasteboardProxy::singleton(void)::$_0 &&>>);
  }

  return &qword_1ED642A58;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::WebPasteboardProxy::singleton(void)::$_0 &&>>()
{
  qword_1ED642A60 = 0;
  unk_1ED642A68 = 0;
  qword_1ED642A58 = &unk_1F10F8080;
  qword_1ED642A70 = 0;
  unk_1ED642A78 = 0;
}

unsigned int *WebKit::WebPasteboardProxy::addWebProcessProxy(WebKit::WebPasteboardProxy *this, WebKit::WebProcessProxy *a2)
{
  v6 = -69;
  WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(a2 + 12, &v6, this, v5);
  return WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(this + 2, a2, v5);
}

void WebKit::WebProcessProxy::platformInitialize(WebKit::WebProcessProxy *this)
{
  [+[WKMouseDeviceObserver sharedInstance](WKMouseDeviceObserver start];
  [+[WKStylusDeviceObserver sharedInstance](WKStylusDeviceObserver start];
  if ((WebKit::WebProcessProxy::platformInitialize(void)::didSetScreenWakeLockHandler & 1) == 0)
  {
    WebKit::WebProcessProxy::platformInitialize(void)::didSetScreenWakeLockHandler = 1;
    v2 = WTF::fastMalloc(&byte_1ED641F58[168], 0x10);
    *v2 = &unk_1F110E3D8;
    v5 = v2;
    PAL::SleepDisablerCocoa::setScreenWakeLockHandler();
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v3 = *(*(this + 69) + 8);
  if (v3)
  {
    v4 = v3 - 16;
  }

  else
  {
    v4 = 0;
  }

  WebKit::ProcessThrottler::setAllowsActivities((this + 144), (*(v4 + 1016) & 1) == 0);
}

void sub_19D58A178(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ProcessThrottler::setAllowsActivities(WebKit::ProcessThrottler *this, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 236) != a2)
  {
    v4 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(this + 2) + 8);
      if (!v6)
      {
        __break(0xC471u);
        return;
      }

      v7 = *(v6 + 80);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 108);
      }

      v10 = 134218496;
      v11 = this;
      v12 = 1024;
      v13 = v7;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::setAllowsActivities %d", &v10, 0x18u);
    }

    v8 = *(this + 1);
    if (*(v8 + 16) == a2)
    {
      if (a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v8 + 16) = a2;
      if (a2)
      {
LABEL_14:
        *(this + 236) = a2;
        return;
      }

      v9 = *(v8 + 8);
      if (v9)
      {
        *(v8 + 8) = 0;
        WTF::HashTable<WebKit::ProcessAssertionType,WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::FastMalloc>::deallocateTable(v9, v5);
      }
    }

    WebKit::ProcessThrottler::invalidateAllActivities(this);
    goto LABEL_14;
  }
}

uint64_t WTF::ListHashSet<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>::add@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (*a1 || (WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(a2);
  v9 = 0;
  for (i = 1; ; ++i)
  {
    v11 = (v6 + 8 * (result & v7));
    v12 = *v11;
    if (!*v11)
    {
      break;
    }

    if (v12 != -1)
    {
      v11 = v9;
      if (*v12 == *a2)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }

    result = i + (result & v7);
    v9 = v11;
  }

  if (v9)
  {
    *v9 = 0;
    --*(*a1 - 16);
    v11 = v9;
  }

  result = WTF::fastMalloc(v9, 0x18);
  v13 = *a2;
  *a2 = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = v13;
  *v11 = result;
  v14 = *a1;
  if (*a1)
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
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_12;
    }

LABEL_22:
    v11 = WTF::HashTable<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>> *>,WTF::FastMalloc>::expand(a1, v11);
    result = *v11;
    goto LABEL_12;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_22;
  }

LABEL_12:
  v18 = a1[2];
  *(result + 8) = v18;
  *(result + 16) = 0;
  if (v18)
  {
    v19 = (v18 + 16);
  }

  else
  {
    v19 = a1 + 1;
  }

  *v19 = result;
  a1[2] = result;
  v12 = *v11;
  v20 = 1;
LABEL_16:
  *a3 = a1;
  *(a3 + 8) = v12;
  *(a3 + 16) = v20;
  return result;
}

WTF::StringImpl **WebKit::AuxiliaryProcessProxy::connect(WebKit::AuxiliaryProcessProxy *this)
{
  WTF::MonotonicTime::now(this);
  *(this + 17) = v2;
  v9 = *(this + 15);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  (*(*this + 192))(this, &v9);
  v4 = WTF::fastMalloc(v3, 0x70);
  v5 = WebKit::ProcessLauncher::ProcessLauncher(v4, this + 24, &v9);
  v7 = *(this + 10);
  *(this + 10) = v5;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessLauncher,(WTF::DestructionThread)0>::deref((v7 + 8), v6);
  }

  result = v11;
  if (v11)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v6);
  }

  return result;
}

void WebKit::WebProcessProxy::getLaunchOptions(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  WebKit::AuxiliaryProcessProxy::getLaunchOptions(a1, a2);
  v4 = *(*(a1 + 552) + 8);
  if (v4)
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  CFRetain(*(v5 + 8));
  v6 = &qword_1ED643000;
  {
    goto LABEL_23;
  }

  while (1)
  {
    v7 = WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(&WebKit::allInspectorProcessPools(void)::allInspectorProcessPools, v5);
    CFRelease(*(v5 + 8));
    if (v7)
    {
      v12 = "inspector-process";
      v13 = 18;
      v10 = "1";
      v11 = 2;
      v14 = &v10;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
    }

    *(a2 + 24) = 0;
    if (*(a1 + 811) == 1)
    {
      v12 = "is-prewarmed";
      v13 = 13;
      v10 = "1";
      v11 = 2;
      v14 = &v10;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
    }

    v5 = *(*(a1 + 552) + 8);
    if (v5)
    {
      v8 = v5 - 16;
    }

    else
    {
      v8 = 0;
    }

    if (*(v8 + 538) == 1)
    {
      CFRetain(*(v8 + 8));
      *(v8 + 538) = 0;
      if (v5)
      {
        CFRelease(*(v5 - 8));
      }

      *(a2 + 25) = 1;
    }

    if (*(a1 + 896) != 1)
    {
      break;
    }

    v12 = "service-worker-process";
    v13 = 23;
    v10 = "1";
    v11 = 2;
    v14 = &v10;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
    v12 = "registrable-domain";
    v13 = 19;
    v6 = *(a1 + 752);
    if (v6)
    {
      v10 = (a1 + 744);
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::String const&>(WTF::ASCIILiteral &&,WTF::String const&)::{lambda(void)#1}>((a2 + 16), &v12, &v10, v9);
      break;
    }

    __break(1u);
LABEL_23:
    WebKit::allInspectorProcessPools(void)::allInspectorProcessPools = 0;
    unk_1ED643740 = 0;
    *(v6 + 1864) = 1;
  }

  if (*(a1 + 812) == 1)
  {
    v12 = "enable-lockdown-mode";
    v13 = 21;
    v10 = "1";
    v11 = 2;
    v14 = &v10;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v12, &v14, v9);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::getLaunchOptions(WebKit::AuxiliaryProcessProxy *a1, uint64_t a2)
{
  v4 = getenv("DIRHELPER_USER_DIR_SUFFIX");
  if (v4)
  {
    strlen(v4);
    WTF::String::fromUTF8();
    if (v12)
    {
      v10 = "user-directory-suffix";
      v11 = 22;
      v8[0] = &v12;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::String&>(WTF::ASCIILiteral &&,WTF::String&)::{lambda(void)#1}>((a2 + 16), &v10, v8, v9);
      v6 = v12;
      v12 = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }
      }
    }
  }

  if (*(a1 + 112) == 1)
  {
    v10 = "always-runs-at-background-priority";
    v11 = 35;
    v8[0] = "true";
    v8[1] = 5;
    v12 = v8;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(WTF::ASCIILiteral &&,WTF::ASCIILiteral &&)::{lambda(void)#1}>((a2 + 16), &v10, &v12, v9);
  }

  WebKit::AuxiliaryProcessProxy::populateOverrideLanguagesLaunchOptions(a1, a2);
  return (*(*a1 + 200))(a1, a2);
}

WTF::StringImpl *WebKit::AuxiliaryProcessProxy::populateOverrideLanguagesLaunchOptions(WebKit::AuxiliaryProcessProxy *a1, uint64_t a2)
{
  {
    WebKit::overrideLanguagesStorage(void)::storage = 0;
    unk_1EB01E1D0 = 0;
  }

  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v28, &WebKit::overrideLanguagesStorage(void)::storage);
  v5 = HIDWORD(v29);
  if (HIDWORD(v29))
  {
    goto LABEL_9;
  }

  WebKit::AuxiliaryProcessProxy::platformOverrideLanguages(&v24);
  if (HIDWORD(v29))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(v28, (v28 + 8 * HIDWORD(v29)));
  }

  v7 = v28;
  if (v28)
  {
    v28 = 0;
    LODWORD(v29) = 0;
    WTF::fastFree(v7, v6);
  }

  v28 = v24;
  v8 = v25;
  v24 = 0;
  v25 = 0;
  v29 = v8;
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v6);
  v5 = HIDWORD(v29);
  if (HIDWORD(v29))
  {
LABEL_9:
    v9 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    do
    {
      if (v9)
      {
        LOBYTE(v22[0]) = 44;
        if (v25 && ((v10 = v26, v26 < *(v25 + 1)) ? (v11 = v24 == 0) : (v11 = 0), v11))
        {
          v12 = *(v25 + 4);
          v13 = *(v25 + 1);
          ++v26;
          if ((v12 & 4) != 0)
          {
            *(v13 + v10) = 44;
          }

          else
          {
            *(v13 + 2 * v10) = 44;
          }
        }

        else
        {
          result = WTF::StringBuilder::append();
        }

        v5 = HIDWORD(v29);
      }

      if (v9 >= v5)
      {
        __break(0xC471u);
        return result;
      }

      v14 = v28;
      v15 = *(v28 + v9);
      if (v26)
      {
        v16 = 0;
      }

      else
      {
        v16 = v25 == 0;
      }

      if (v16)
      {
        if (v15)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        result = v24;
        v24 = v15;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }

        v17 = *(v14 + v9);
        if (v17)
        {
          LODWORD(v17) = *(v17 + 4);
        }

        v26 = v17;
      }

      else
      {
        if (v15)
        {
          v18 = *(v15 + 8);
          v19 = *(v15 + 4) | (((*(v15 + 16) >> 2) & 1) << 32);
        }

        else
        {
          v18 = 0;
          v19 = 0x100000000;
        }

        result = WTF::StringBuilder::append(&v24, v18, v19);
      }

      ++v9;
      v5 = HIDWORD(v29);
    }

    while (v9 < HIDWORD(v29));
    v23[0] = "OverrideLanguages";
    v23[1] = 18;
    if (!v24)
    {
      WTF::StringBuilder::shrinkToFit(&v24);
      WTF::StringBuilder::reifyString(&v24);
    }

    v30 = &v24;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::addPassingHashCode<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTranslatorASCIILiteral>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::HashTranslatorASCIILiteral,WTF::ASCIILiteral,WTF::String const&>(WTF::ASCIILiteral &&,WTF::String const&)::{lambda(void)#1}>((a2 + 16), v23, &v30, v22);
    v20 = v25;
    v25 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v4);
    }

    v21 = v24;
    v24 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v4);
      }
    }
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v4);
}

uint64_t *WebKit::AuxiliaryProcessProxy::platformOverrideLanguages@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v1 = a1;
  if ((_MergedGlobals_45 & 1) == 0)
  {
    v9 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    v8 = &v9;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v6, [v9 count], &v8, 0);
    qword_1ED641A70 = v6;
    v3 = v7;
    v6 = 0;
    v7 = 0;
    qword_1ED641A78 = v3;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v4);
    v1 = a1;
    _MergedGlobals_45 = 1;
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v1, &qword_1ED641A70);
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  v4 = (v3 >> 29);
  if (!v4)
  {
    v6 = WTF::fastMalloc(v4, (8 * v3));
    *(v2 + 8) = v3;
    *v2 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = *a2;
      v9 = 8 * v7;
      do
      {
        v10 = *v8;
        if (*v8)
        {
          atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
        }

        *v6++ = v10;
        ++v8;
        v9 -= 8;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::String>,true>::isEmptyValue<WTF::ASCIILiteral>(void *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 1;
  }

  v2 = (v1 - 1);
  if (v1 == 1)
  {
    v3 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v3 = v5;
    if (!v5)
    {
      return 1;
    }
  }

  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  return 0;
}

uint64_t WTF::SuperFastHash::computeHashImpl<unsigned char,WTF::StringHasher::DefaultConverter>(uint64_t a1, unint64_t a2)
{
  result = 2654435769;
  if (a2 >= 2)
  {
    v4 = 0;
    do
    {
      v5 = (*(a1 + v4 + 1) << 11) ^ ((result + *(a1 + v4)) << 16) ^ (result + *(a1 + v4));
      result = v5 + (v5 >> 11);
      v6 = v4 + 3;
      v4 += 2;
    }

    while (v6 < a2);
  }

  if (a2)
  {
    v7 = result + *(a1 + a2 - 1);
    return (v7 ^ (v7 << 11)) + ((v7 ^ (v7 << 11)) >> 17);
  }

  return result;
}

WTF::StringImpl *WTF::HashTranslatorASCIILiteral::translate(WTF::StringImpl **a1, WTF::StringImpl *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v6 = v8;
    }
  }

  else
  {
    v6 = 0;
  }

  result = *a1;
  *a1 = v6;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *(*a1 + 4) |= a4 << 8;
  return result;
}

uint64_t WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(uint64_t *a1, uint64_t a2)
{
  ++*(a1 + 2);
  v2 = *(a2 + 24);
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

uint64_t WebKit::ProcessLauncher::ProcessLauncher(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1F10EA578;
  *(a1 + 8) = 3;
  *(a1 + 16) = a2;
  if (a2)
  {
    (*(*a2 + 104))(a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *a3;
  *(a1 + 80) = *(a3 + 2);
  *(a1 + 72) = v5;
  *(a1 + 88) = 0;
  v6 = a3[2];
  a3[2] = 0;
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a3 + 12);
  *(a1 + 104) = 1;
  *(a1 + 108) = 0;
  kdebug_trace();
  WebKit::ProcessLauncher::launchProcess(a1, v7);
  return a1;
}

void WebKit::ProcessLauncher::launchProcess(WebKit::ProcessLauncher *this@<X0>, uint64_t *x8_0@<X8>)
{
  v4 = *(this + 20);
  v5 = *(this + 2);
  v6 = WTF::fastMalloc(x8_0, 0x10);
  *v6 = &unk_1F11082E0;
  if (qword_1ED6426E8 != -1)
  {
    dispatch_once(&qword_1ED6426E8, &__block_literal_global_22);
  }

  v7 = _MergedGlobals_78;
  if (v4 == 2)
  {
    if (_MergedGlobals_78)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.GPUExtension", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")];
      if (!v10)
      {
        v26 = 0;
LABEL_21:
        v19 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1, v11);
        v20 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v19);
        v17 = malloc_type_malloc(0x48uLL, 0x10F004059447B72uLL);
        *v17 = MEMORY[0x1E69E9818];
        v17[1] = 50331650;
        v17[2] = WTF::BlockPtr<void ()(BERenderingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2)::{lambda(void *,BERenderingProcess *,NSError *)#1}::__invoke;
        v17[3] = &WTF::BlockPtr<void ()(BERenderingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_2)::descriptor;
        v17[4] = v6;
        v17[5] = this;
        v17[6] = v20;
        v17[7] = "com.apple.WebKit.GPU";
        v17[8] = 21;
        [MEMORY[0x1E695AA78] renderingProcessWithBundleID:v26 interruptionHandler:&__block_literal_global_64 completion:v17];
        goto LABEL_32;
      }
    }

    else
    {
      v10 = @"com.apple.WebKit.GPU";
    }

    v26 = v10;
    v18 = v10;
    goto LABEL_21;
  }

  if (v4 == 1)
  {
    if (_MergedGlobals_78)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.NetworkingExtension", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier")];
      if (!v8)
      {
        v26 = 0;
LABEL_18:
        v15 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1, v9);
        v16 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v15);
        v17 = malloc_type_malloc(0x48uLL, 0x10F004059447B72uLL);
        *v17 = MEMORY[0x1E69E9818];
        v17[1] = 50331650;
        v17[2] = WTF::BlockPtr<void ()(BENetworkingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1)::{lambda(void *,BENetworkingProcess *,NSError *)#1}::__invoke;
        v17[3] = &WTF::BlockPtr<void ()(BENetworkingProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_1)::descriptor;
        v17[4] = v6;
        v17[5] = this;
        v17[6] = v16;
        v17[7] = "com.apple.WebKit.Networking";
        v17[8] = 28;
        [MEMORY[0x1E695AA68] networkProcessWithBundleID:v26 interruptionHandler:&__block_literal_global_61 completion:v17];
        goto LABEL_32;
      }
    }

    else
    {
      v8 = @"com.apple.WebKit.Networking";
    }

    v26 = v8;
    v14 = v8;
    goto LABEL_18;
  }

  if (v5)
  {
    v12 = (*(*v5 + 64))(v5);
    if ((v7 & 1) == 0)
    {
      if (v12)
      {
        v21 = @"com.apple.WebKit.WebContent.CaptivePortal";
      }

      else
      {
        v21 = @"com.apple.WebKit.WebContent";
      }

      goto LABEL_30;
    }

    if (v12)
    {
      v13 = @"WebContentCaptivePortalExtension";
    }

    else
    {
      v13 = @"WebContentExtension";
    }
  }

  else
  {
    if ((_MergedGlobals_78 & 1) == 0)
    {
      v21 = @"com.apple.WebKit.WebContent";
      goto LABEL_30;
    }

    v13 = @"WebContentExtension";
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), "bundleIdentifier"), v13];
  if (v21)
  {
LABEL_30:
    v26 = v21;
    v23 = v21;
    goto LABEL_31;
  }

  v26 = 0;
LABEL_31:
  v24 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1, v22);
  v25 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v24);
  v17 = malloc_type_malloc(0x48uLL, 0x10F004059447B72uLL);
  *v17 = MEMORY[0x1E69E9818];
  v17[1] = 50331650;
  v17[2] = WTF::BlockPtr<void ()(BEWebContentProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0)::{lambda(void *,BEWebContentProcess *,NSError *)#1}::__invoke;
  v17[3] = &WTF::BlockPtr<void ()(BEWebContentProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0)::descriptor;
  v17[4] = v6;
  v17[5] = this;
  v17[6] = v25;
  v17[7] = "com.apple.WebKit.WebContent";
  v17[8] = 28;
  [MEMORY[0x1E695AAB0] webContentProcessWithBundleID:v26 interruptionHandler:&__block_literal_global_58 completion:v17];
LABEL_32:
  _Block_release(v17);
  if (v26)
  {
  }
}

void sub_19D58B4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  _Block_release(v12);
  if (a12)
  {
  }

  _Unwind_Resume(a1);
}

void *___ZN6WebKit15ProcessLauncher24hasExtensionsInAppBundleEv_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (result && (result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]) != 0)
  {
    result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_78 = v1;
  return result;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::controlBlock@<X0>(atomic_ullong *a1@<X0>, uint64_t *x8_0@<X8>)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(x8_0, 0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 1;
    while (1)
    {
      v6 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v6 >> 1;
      v7 = v6;
      atomic_compare_exchange_strong_explicit(a1, &v7, result, memory_order_release, memory_order_relaxed);
      if (v7 == v6)
      {
        return result;
      }
    }

    WTF::fastFree(result, v5);
    return *a1;
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::weakRef(atomic_uchar *this)
{
  v2 = 0;
  v3 = 1;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this);
  }

  ++*(this + 2);
  atomic_compare_exchange_strong_explicit(this, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(this);
  }

  return this;
}

void WebKit::WebProcessPool::initializeNewWebProcess(uint64_t a1, unint64_t a2, WebKit::WebsiteDataStore *a3, int a4)
{
  v235 = *MEMORY[0x1E69E9840];
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v190 = 0;
  *&v193[5] = 0;
  v192 = 0x7FF8000000000000;
  *v193 = 0;
  v193[13] = 1;
  memset(v195, 0, sizeof(v195));
  v194 = 0;
  v200 = 0;
  v201 = 0;
  v202 = 0;
  LOBYTE(v203) = 0;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v198 = 0u;
  memset(v199, 0, sizeof(v199));
  v218 = 0;
  v217 = 0;
  v219 = 0u;
  v220 = 0u;
  v221 = 0;
  *(v197 + 7) = 0;
  v196 = 0;
  v197[0] = 0;
  v222 = -1;
  v223 = -1;
  v224 = -1;
  v225 = 1;
  v226 = 0;
  v227 = 0;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  memset(v234, 0, 33);
  WebKit::AuxiliaryProcessProxy::auxiliaryProcessParameters(&v163);
  v9 = v163;
  v163 = 0;
  v10 = v172;
  *&v172 = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v164;
  v164 = 0;
  v12 = *(&v172 + 1);
  *(&v172 + 1) = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = v173;
  *&v173 = v165;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  v14 = *(&v173 + 1);
  *(&v173 + 1) = *(&v165 + 1);
  if (v14)
  {
    if (*v14)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v14, v8);
    }

    WTF::fastFree(v14, v8);
  }

  v15 = *(a1 + 736);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v16 = v174;
  *&v174 = v15;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v8);
    }

    v15 = v174;
  }

  if (v15)
  {
    v17 = *(v15 + 4);
    if (v17)
    {
      WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v15 + 8), (v17 | (((*(v15 + 16) >> 2) & 1) << 32)), 0, &v163);
      if (v164 == 1)
      {
        v18 = v163;
        v163 = 0;
        v19 = *(&v174 + 1);
        *(&v174 + 1) = v18;
        if (!v19 || (WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v19), bmalloc::api::tzoneFree(v140, v141), (v164 & 1) != 0))
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v163);
        }
      }
    }
  }

  v160[0] = 0;
  v160[1] = 0;
  v20 = *(a1 + 764);
  if (!v20)
  {
    goto LABEL_23;
  }

  v142 = (v20 >> 29);
  if (v142)
  {
    __break(0xC471u);
LABEL_195:
    JUMPOUT(0x19D58C704);
  }

  LODWORD(v160[1]) = *(a1 + 764);
  v160[0] = WTF::fastMalloc(v142, (8 * v20));
  v143 = *(a1 + 764);
  if (v143)
  {
    v144 = *(a1 + 752);
    v145 = 8 * v143;
    do
    {
      v146 = *v144;
      if (*v144)
      {
        v147 = *(v146 + 8);
        v148 = *(v146 + 4) | (((*(v146 + 16) >> 2) & 1) << 32);
      }

      else
      {
        v147 = 0;
        v148 = 0x100000000;
      }

      WebKit::SandboxExtension::createHandleWithoutResolvingPath(v147, v148, 0, &v163);
      if (v164 == 1)
      {
        v149 = v163;
        v162 = v163;
        v163 = 0;
        LODWORD(v150) = HIDWORD(v160[1]);
        if (HIDWORD(v160[1]) == LODWORD(v160[1]))
        {
          v151 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v160, HIDWORD(v160[1]) + 1, &v162);
          v150 = HIDWORD(v160[1]);
          v152 = v160[0];
          v153 = *v151;
          *v151 = 0;
          *(v152 + v150) = v153;
        }

        else
        {
          v162 = 0;
          *(v160[0] + HIDWORD(v160[1])) = v149;
        }

        HIDWORD(v160[1]) = v150 + 1;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v162);
        if (v164)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v163);
        }
      }

      ++v144;
      v145 -= 8;
    }

    while (v145);
    v21 = HIDWORD(v160[1]);
  }

  else
  {
LABEL_23:
    v21 = 0;
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v160, v21);
  if (HIDWORD(v175))
  {
    v154 = v175;
    v155 = 8 * HIDWORD(v175);
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v154);
      v154 = (v156 + 8);
      v155 -= 8;
    }

    while (v155);
  }

  v23 = v175;
  if (v175)
  {
    *&v175 = 0;
    DWORD2(v175) = 0;
    WTF::fastFree(v23, v22);
  }

  *&v175 = v160[0];
  v24 = v160[1];
  v160[0] = 0;
  v160[1] = 0;
  *(&v175 + 1) = v24;
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v160, v22);
  WebKit::WebProcessPool::setJavaScriptConfigurationFileEnabledFromDefaults(a1);
  {
    v26 = WebKit::LegacyGlobalSettings::singleton(void)::properties;
  }

  else
  {
    v26 = 2;
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v191 = v26;
  {
    WebKit::overrideLanguagesStorage(void)::storage = 0;
    unk_1EB01E1D0 = 0;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v189 + 2, &WebKit::overrideLanguagesStorage(void)::storage, v25);
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, &qword_1ED643540);
  if (DWORD1(v179))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v178 + 1), (*(&v178 + 1) + 8 * DWORD1(v179)));
  }

  v28 = *(&v178 + 1);
  if (*(&v178 + 1))
  {
    *(&v178 + 1) = 0;
    LODWORD(v179) = 0;
    WTF::fastFree(v28, v27);
  }

  *(&v178 + 1) = v163;
  v29 = v164;
  v163 = 0;
  v164 = 0;
  *&v179 = v29;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v27);
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, &qword_1ED643548);
  if (DWORD1(v180))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v179 + 1), (*(&v179 + 1) + 8 * DWORD1(v180)));
  }

  v31 = *(&v179 + 1);
  if (*(&v179 + 1))
  {
    *(&v179 + 1) = 0;
    LODWORD(v180) = 0;
    WTF::fastFree(v31, v30);
  }

  *(&v179 + 1) = v163;
  v32 = v164;
  v163 = 0;
  v164 = 0;
  *&v180 = v32;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v30);
  {
    WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
    *&qword_1ED643540 = 0u;
    *&qword_1ED643550 = 0u;
  }

  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, &qword_1ED643550);
  if (DWORD1(v182))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v181 + 1), (*(&v181 + 1) + 8 * DWORD1(v182)));
  }

  v34 = *(&v181 + 1);
  if (*(&v181 + 1))
  {
    *(&v181 + 1) = 0;
    LODWORD(v182) = 0;
    WTF::fastFree(v34, v33);
  }

  *(&v181 + 1) = v163;
  v35 = v164;
  v163 = 0;
  v164 = 0;
  *&v182 = v35;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v33);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, (a1 + 344));
  if (DWORD1(v178))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v177 + 1), (*(&v177 + 1) + 8 * DWORD1(v178)));
  }

  v37 = *(&v177 + 1);
  if (*(&v177 + 1))
  {
    *(&v177 + 1) = 0;
    LODWORD(v178) = 0;
    WTF::fastFree(v37, v36);
  }

  *(&v177 + 1) = v163;
  v38 = v164;
  v163 = 0;
  v164 = 0;
  *&v178 = v38;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v36);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, (a1 + 352));
  if (DWORD1(v181))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v180 + 1), (*(&v180 + 1) + 8 * DWORD1(v181)));
  }

  v40 = *(&v180 + 1);
  if (*(&v180 + 1))
  {
    *(&v180 + 1) = 0;
    LODWORD(v181) = 0;
    WTF::fastFree(v40, v39);
  }

  *(&v180 + 1) = v163;
  v41 = v164;
  v163 = 0;
  v164 = 0;
  *&v181 = v41;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v39);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, (a1 + 360));
  if (DWORD1(v183))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v182 + 1), (*(&v182 + 1) + 8 * DWORD1(v183)));
  }

  v43 = *(&v182 + 1);
  if (*(&v182 + 1))
  {
    *(&v182 + 1) = 0;
    LODWORD(v183) = 0;
    WTF::fastFree(v43, v42);
  }

  *(&v182 + 1) = v163;
  v44 = v164;
  v163 = 0;
  v164 = 0;
  *&v183 = v44;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v42);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, (a1 + 368));
  if (DWORD1(v184))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v183 + 1), (*(&v183 + 1) + 8 * DWORD1(v184)));
  }

  v46 = *(&v183 + 1);
  if (*(&v183 + 1))
  {
    *(&v183 + 1) = 0;
    LODWORD(v184) = 0;
    WTF::fastFree(v46, v45);
  }

  *(&v183 + 1) = v163;
  v47 = v164;
  v163 = 0;
  v164 = 0;
  *&v184 = v47;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v45);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, (a1 + 376));
  if (DWORD1(v185))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v184 + 1), (*(&v184 + 1) + 8 * DWORD1(v185)));
  }

  v49 = *(&v184 + 1);
  if (*(&v184 + 1))
  {
    *(&v184 + 1) = 0;
    LODWORD(v185) = 0;
    WTF::fastFree(v49, v48);
  }

  *(&v184 + 1) = v163;
  v50 = v164;
  v163 = 0;
  v164 = 0;
  *&v185 = v50;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v48);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, (a1 + 384));
  if (DWORD1(v186))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v185 + 1), (*(&v185 + 1) + 8 * DWORD1(v186)));
  }

  v52 = *(&v185 + 1);
  if (*(&v185 + 1))
  {
    *(&v185 + 1) = 0;
    LODWORD(v186) = 0;
    WTF::fastFree(v52, v51);
  }

  *(&v185 + 1) = v163;
  v53 = v164;
  v163 = 0;
  v164 = 0;
  *&v186 = v53;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v51);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, (a1 + 392));
  if (DWORD1(v187))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v186 + 1), (*(&v186 + 1) + 8 * DWORD1(v187)));
  }

  v55 = *(&v186 + 1);
  if (*(&v186 + 1))
  {
    *(&v186 + 1) = 0;
    LODWORD(v187) = 0;
    WTF::fastFree(v55, v54);
  }

  *(&v186 + 1) = v163;
  v56 = v164;
  v163 = 0;
  v164 = 0;
  *&v187 = v56;
  v57 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v54);
  v58 = WebKit::WebExtensionMatchPattern::extensionSchemes(v57);
  v163 = 0;
  v164 = 0;
  WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v163, v58);
  if (DWORD1(v188))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*(&v187 + 1), (*(&v187 + 1) + 8 * DWORD1(v188)));
  }

  v60 = *(&v187 + 1);
  if (*(&v187 + 1))
  {
    *(&v187 + 1) = 0;
    LODWORD(v188) = 0;
    WTF::fastFree(v60, v59);
  }

  *(&v187 + 1) = v163;
  v61 = v164;
  v163 = 0;
  v164 = 0;
  *&v188 = v61;
  v62 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v59);
  v193[4] = *(a1 + 400);
  v193[7] = *(a1 + 401);
  WebKit::mutableState(v62);
  BYTE1(v194) = WebKit::mutableState(void)::state;
  v64 = WebKit::WebProcessProxy::fullKeyboardAccessEnabled(v63);
  v193[8] = v64;
  WebCore::ResourceRequestBase::defaultTimeoutInterval(v64);
  v192 = v67;
  *v193 = *(*(a1 + 808) + 16);
  if (a3)
  {
    (*(**(a3 + 52) + 56))(&v163);
    v68 = v163;
    v163 = 0;
    v69 = *(&v198 + 1);
    *(&v198 + 1) = v68;
    if (v69)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v69, v65);
      if (v163)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v163, v65);
      }
    }
  }

  if (!*(&v198 + 1) || !*(*(&v198 + 1) - 12))
  {
    v163 = "WebNotificationManagerProxy";
    v164 = 28;
    v70 = WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>((a1 + 456), &v163);
    v71 = v70;
    if (v70)
    {
      v72 = v70 - 16;
    }

    else
    {
      v72 = 0;
    }

    if (v70)
    {
      CFRetain(*(v70 - 8));
    }

    (*(**(v72 + 32) + 64))(&v163);
    v73 = v163;
    v163 = 0;
    v74 = *(&v198 + 1);
    *(&v198 + 1) = v73;
    if (v74)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v74, v65);
      if (v163)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v163, v65);
      }
    }

    if (v71)
    {
      CFRelease(*(v71 - 8));
    }
  }

  v193[11] = *(a1 + 521);
  v75 = *(a1 + 48);
  *&v193[12] = *(v75 + 74);
  LOBYTE(v194) = *(a2 + 813);
  *&v195[5] = *(v75 + 80);
  v76 = *(v75 + 136);
  if (v76)
  {
    atomic_fetch_add_explicit(v76, 2u, memory_order_relaxed);
  }

  v77 = v228;
  *&v228 = v76;
  if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v77, v65);
  }

  v78 = *(a1 + 48);
  *(&v233 + 1) = *(v78 + 144);
  WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v234, v78 + 152, v66);
  WebKit::WebProcessPool::platformInitializeWebProcess(a1, a2, &v172);
  (*(**(a1 + 200) + 32))(&v159);
  v79 = v159;
  if (!v159)
  {
    v79 = *(a1 + 192);
    if (v79)
    {
      CFRetain(v79->var1);
      v157 = v159;
      v159 = v79;
      if (v157)
      {
        CFRelease(v157->var1);
        v79 = v159;
      }
    }

    else
    {
      v159 = 0;
    }
  }

  v163 = &unk_1F111A300;
  WebKit::UserData::transform(v79, &v163, v160);
  v80 = v160[0];
  v160[0] = 0;
  if (v80)
  {
    CFRetain(*(v80 + 1));
  }

  v81 = v176;
  *&v176 = v80;
  if (v81)
  {
    CFRelease(*(v81 + 8));
    if (!v80)
    {
      goto LABEL_104;
    }
  }

  else if (!v80)
  {
    goto LABEL_104;
  }

  CFRelease(*(v80 + 1));
LABEL_104:
  v82 = v160[0];
  v160[0] = 0;
  if (v82)
  {
    CFRelease(*(v82 + 1));
    if (!a3)
    {
      goto LABEL_129;
    }
  }

  else if (!a3)
  {
    goto LABEL_129;
  }

  WebKit::WebProcessPool::webProcessDataStoreParameters(&v163, a1, a3);
  v84 = v164;
  v203 = v163;
  v164 = 0;
  if (v212 == 1)
  {
    v85 = v204;
    v204 = v84;
    if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v85, v83);
    }

    v86 = v165;
    *&v165 = 0;
    v87 = v205;
    *&v205 = v86;
    if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v87, v83);
    }

    v88 = *(&v165 + 1);
    *(&v165 + 1) = 0;
    v89 = *(&v205 + 1);
    *(&v205 + 1) = v88;
    if (v89)
    {
      WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v89);
      bmalloc::api::tzoneFree(v134, v135);
    }

    v90 = v167;
    *&v167 = 0;
    v91 = v207;
    v206 = v166;
    *&v207 = v90;
    if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v91, v83);
    }

    v92 = *(&v167 + 1);
    *(&v167 + 1) = 0;
    v93 = *(&v207 + 1);
    *(&v207 + 1) = v92;
    if (v93)
    {
      WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v93);
      bmalloc::api::tzoneFree(v136, v137);
    }

    v208 = v168;
    v94 = v169;
    *&v169 = 0;
    v95 = v209;
    *&v209 = v94;
    if (v95)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v95, v83);
    }

    v96 = *(&v169 + 1);
    *(&v169 + 1) = 0;
    v97 = *(&v209 + 1);
    *(&v209 + 1) = v96;
    if (v97)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v97, v83);
    }

    v98 = v170;
    v170 = 0;
    v99 = v210;
    v210 = v98;
    if (v99)
    {
      WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v99);
      bmalloc::api::tzoneFree(v138, v139);
    }

    v211 = v171;
  }

  else
  {
    v100 = v165;
    v165 = 0u;
    v205 = v100;
    v204 = v84;
    v206 = v166;
    v101 = v167;
    v167 = 0u;
    v207 = v101;
    v208 = v168;
    v102 = v169;
    v169 = 0u;
    v209 = v102;
    v103 = v170;
    v170 = 0;
    v210 = v103;
    v211 = v171;
    v212 = 1;
  }

  WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(&v163);
LABEL_129:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v104 = *(a2 + 8);
  atomic_fetch_add(v104, 1u);
  v160[0] = v104;
  WebKit::AuxiliaryProcessProxy::initializationActivityAndGrant(&v160[1], a2, v105);
  v107 = IPC::Encoder::operator new(0x238, v106);
  *v107 = 2956;
  *(v107 + 68) = 0;
  *(v107 + 70) = 0;
  *(v107 + 69) = 0;
  *(v107 + 2) = 0;
  *(v107 + 3) = 0;
  *(v107 + 1) = 0;
  IPC::Encoder::encodeHeader(v107);
  v162 = v107;
  IPC::ArgumentCoder<WebKit::WebProcessCreationParameters,void>::encode(v107, &v172);
  v108 = v161;
  v158 = *v160;
  v160[0] = 0;
  v160[1] = 0;
  v161 = 0;
  v110 = WTF::fastMalloc(v109, 0x20);
  *v110 = &unk_1F111A998;
  *(v110 + 1) = v158;
  v110[3] = v108;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_195;
  }

  v111 = v110;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v163 = v111;
  v164 = IdentifierInternal;
  LOBYTE(v165) = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(a2, &v162, 0, &v163, 1);
  if (v165 == 1)
  {
    v114 = v163;
    v163 = 0;
    if (v114)
    {
      (*(*v114 + 1))(v114);
    }
  }

  v115 = v162;
  v162 = 0;
  if (v115)
  {
    IPC::Encoder::~Encoder(v115, v113);
    bmalloc::api::tzoneFree(v132, v133);
  }

  v116 = v161;
  v161 = 0;
  if (v116)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v116);
  }

  v117 = v160[1];
  v160[1] = 0;
  if (v117)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v117 + 2, v113);
  }

  v118 = v160[0];
  v160[0] = 0;
  if (v118 && atomic_fetch_add(v118, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v118);
    WTF::fastFree(v118, v113);
  }

  WebKit::WebProcessPool::setMediaAccessibilityPreferences(a1, a2);
  v119 = *(a1 + 320);
  if (!v119)
  {
    goto LABEL_147;
  }

  v120 = *(v119 + 64);
  if (v120)
  {
    atomic_fetch_add_explicit(v120, 2u, memory_order_relaxed);
  }

  v160[0] = v120;
  v163 = v160;
  WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::EnsureAutomationSessionProxy>(a2, &v163, 0, 0);
  v122 = v160[0];
  v160[0] = 0;
  if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v122, v121);
    if (!a4)
    {
      goto LABEL_151;
    }
  }

  else
  {
LABEL_147:
    if (!a4)
    {
      goto LABEL_151;
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v124 = *(a2 + 8);
  atomic_fetch_add(v124, 1u);
  v125 = *(a1 + 88);
  *(a1 + 88) = v124;
  if (v125 && atomic_fetch_add(v125, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v125);
    WTF::fastFree(v125, v123);
  }

LABEL_151:
  softLinkBKSDisplayBrightnessGetCurrent();
  LODWORD(v163) = v126;
  v127 = WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::BacklightLevelDidChange>(a2, &v163, 0, 0);
  isIBooks = WTF::CocoaApplication::isIBooks(v127);
  if (isIBooks)
  {
    isIBooks = WebKit::WebProcessPool::registerAssetFonts(a1, a2);
  }

  WebKit::WebProcessPool::registerHighDynamicRangeChangeCallback(isIBooks, v129);
  v131 = v159;
  v159 = 0;
  if (v131)
  {
    CFRelease(v131->var1);
  }

  WebKit::WebProcessCreationParameters::~WebProcessCreationParameters(&v172, v130);
}

uint64_t *WebKit::AuxiliaryProcessProxy::auxiliaryProcessParameters@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  a1[3] = 0;
  WebKit::UIProcess::wtfLogLevelString(a1);
  WebKit::UIProcess::webCoreLogLevelString(&v7);
  a1[1] = v7;
  v2 = WebKit::UIProcess::webKitLogLevelString(&v7);
  a1[2] = v7;
  result = WebKit::SecureCoding::internalClassNamesExemptFromSecureCodingCrash(v2);
  v5 = *result;
  if (*result)
  {
    v6 = WTF::fastMalloc(v4, 8);
    result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v6, v5);
    a1[3] = result;
  }

  return result;
}

uint64_t *WebKit::SecureCoding::internalClassNamesExemptFromSecureCodingCrash(WebKit::SecureCoding *this)
{
  if ((_MergedGlobals_143 & 1) == 0)
  {
    qword_1ED643228 = 0;
    _MergedGlobals_143 = 1;
  }

  if (qword_1ED643220 != -1)
  {
    dispatch_once(&qword_1ED643220, &__block_literal_global_38);
  }

  return &qword_1ED643228;
}

void ___ZN6WebKit12SecureCodingL45internalClassNamesExemptFromSecureCodingCrashEv_block_invoke(WTF *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((WTF::isInAuxiliaryProcess(a1) & 1) == 0)
  {
    v1 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v1)
    {
      v2 = v1;
      v3 = v1;
      v5 = WTF::fastMalloc(v4, 8);
      *v5 = 0;
      v18[0] = 0;
      v7 = qword_1ED643228;
      qword_1ED643228 = v5;
      if (v7)
      {
        std::default_delete<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::operator()[abi:sn200100](v7, v6);
      }

      std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](v18, v6);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:{16, v18[0]}];
      if (v8)
      {
        v9 = *v21;
        do
        {
          v10 = 0;
          do
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v2);
            }

            v11 = *(*(&v20 + 1) + 8 * v10);
            if (v11)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v12 = v11;
                v13 = qword_1ED643228;
                MEMORY[0x19EB02040](&v19, v11);
                WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v13, &v19, v14, v18);
                v16 = v19;
                v19 = 0;
                if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v16, v15);
                }
              }
            }

            ++v10;
          }

          while (v8 != v10);
          v17 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v8 = v17;
        }

        while (v17);
      }
    }
  }
}

void WebKit::SandboxExtension::createHandleWithoutResolvingPath(WebKit::SandboxExtensionImpl *a1@<X0>, WebKit::SandboxExtensionImpl *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v21[1] = a1;
  v21[2] = a2;
  v21[0] = 0;
  WTF::StringView::utf8();
  buf[0] = 0;
  v24 = 0;
  WebKit::SandboxExtensionImpl::create(a3, buf, &v20);
  v7 = v21[0];
  v21[0] = v20;
  if (v7)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v7);
    bmalloc::api::tzoneFree(v14, v15);
  }

  if (v19)
  {
    if (*v19 == 1)
    {
      WTF::fastFree(v19, v6);
    }

    else
    {
      --*v19;
    }
  }

  v8 = v21[0];
  v9 = qword_1ED641198;
  if (v21[0])
  {
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_DEFAULT))
    {
      WTF::StringView::utf8();
      if (v20)
      {
        v10 = v20 + 16;
      }

      else
      {
        v10 = 0;
      }

      *buf = 136380675;
      v23 = v10;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "Successfully created a sandbox extension for '%{private}s'", buf, 0xCu);
      v12 = v20;
      v20 = 0;
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

      v8 = v21[0];
    }

    v21[0] = 0;
    *a4 = v8;
    v13 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_ERROR))
    {
      WTF::StringView::utf8();
      v16 = v20 ? v20 + 16 : 0;
      *buf = 136380675;
      v23 = v16;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Could not create a sandbox extension for '%{private}s'", buf, 0xCu);
      v18 = v20;
      v20 = 0;
      if (v18)
      {
        if (*v18 == 1)
        {
          WTF::fastFree(v18, v17);
        }

        else
        {
          --*v18;
        }
      }
    }

    v13 = 0;
    *a4 = 0;
  }

  *(a4 + 8) = v13;
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v21);
}

void sub_19D58CC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(va);
  _Unwind_Resume(a1);
}

void WebKit::SandboxExtensionImpl::create(void *a2@<X1>, uint64_t a3@<X2>, WebKit::SandboxExtensionImpl **a5@<X8>)
{
  v6 = a2;
  v8 = WebKit::SandboxExtensionImpl::operator new(0x10, a2);
  v9 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v9;
  v13 = *(a3 + 32);
  WebKit::SandboxExtensionImpl::sandboxExtensionForType(v6, v12, v8);
  *(v8 + 1) = 0;
  if (*v8 && *(*v8 + 8))
  {
    *a5 = v8;
  }

  else
  {
    *a5 = 0;
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v8);

    bmalloc::api::tzoneFree(v10, v11);
  }
}

uint64_t WebKit::SandboxExtensionImpl::operator new(WebKit::SandboxExtensionImpl *this, void *a2)
{
  if (this == 16 && WebKit::SandboxExtensionImpl::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SandboxExtensionImpl::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

void WebKit::SandboxExtensionImpl::sandboxExtensionForType(unsigned int a2@<W2>, __int128 *a3@<X3>, WTF::CString *a5@<X8>)
{
  if (a2 <= 2)
  {
    if (a2 > 1)
    {
      if (a3[2])
      {
        v6 = sandbox_extension_issue_mach_to_process();
      }

      else
      {
        v6 = sandbox_extension_issue_mach();
      }
    }

    else
    {
      v6 = sandbox_extension_issue_file();
    }

    goto LABEL_7;
  }

  if (a2 == 3)
  {
    if (a3[2])
    {
      v6 = sandbox_extension_issue_iokit_registry_entry_class_to_process();
    }

    else
    {
      v6 = sandbox_extension_issue_iokit_registry_entry_class();
    }

    goto LABEL_7;
  }

  if (a2 == 4)
  {
    v6 = sandbox_extension_issue_generic();
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if (*(a3 + 32) == 1)
  {
    v6 = sandbox_extension_issue_file_to_process();
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:
  WTF::CString::CString(a5, v7);
  if (v7)
  {
    free(v7);
  }
}

void sub_19D58CF08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(WebKit::SandboxExtensionImpl **this)
{
  if (*this)
  {
    *(*this + 1) = 0;
    sandbox_extension_release();
  }

  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](this, 0);
}

WebKit::SandboxExtensionImpl *std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](WebKit::SandboxExtensionImpl **a1, WebKit::SandboxExtensionImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    if (result[3] > a2)
    {
      result = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(result, a2);
    }

    v4 = *v3;
    if (a2)
    {
      if (a2 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v5 = v3[3];
      result = WTF::fastMalloc(0, (8 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v4 && v5)
      {
        v6 = result;
        v7 = 8 * v5;
        result = v4;
        v8 = v4;
        do
        {
          v9 = *result;
          *v8 = 0;
          v8 += 2;
          *v6 = v9;
          v6 += 2;
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(result);
          result = v8;
          v7 -= 8;
        }

        while (v7);
      }
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v4, a2);
    }
  }

  return result;
}

void WebKit::WebProcessPool::setJavaScriptConfigurationFileEnabledFromDefaults(WebKit::WebProcessPool *this)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
    v2 = v4;
  }

  *(this + 522) = [v2 BOOLForKey:@"WebKitJavaScriptCoreUseConfigFile"];
  if (v4)
  {
  }
}

void sub_19D58D140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v6);
      v6 = (v8 + 8);
      v7 -= 8;
    }

    while (v7);
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

atomic_uint **WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(atomic_uint **result, atomic_uint ***a2)
{
  v3 = result;
  if (*a2)
  {
    v4 = *(*a2 - 3);
    if (v4)
    {
      v5 = (v4 >> 29);
      if (v5)
      {
        __break(0xC471u);
        return result;
      }

      v6 = WTF::fastMalloc(v5, (8 * v4));
      *(v3 + 2) = v4;
      *v3 = v6;
    }
  }

  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a2);
  v8 = *a2;
  if (*a2)
  {
    v8 += *(v8 - 1);
  }

  while (result != v8)
  {
    v9 = *result;
    if (*result)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v10 = *(v3 + 3);
    *&(*v3)[2 * v10] = v9;
    *(v3 + 3) = v10 + 1;
    do
    {
      ++result;
    }

    while (result != v7 && *result + 1 <= 1);
  }

  return result;
}

void WebKit::mutableState(WebKit *this)
{
  if (atomic_load_explicit(&WebKit::mutableState(void)::onceFlag, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&WebKit::mutableState(void)::onceFlag, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::mutableState(void)::$_0 &&>>);
  }
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::mutableState(void)::$_0 &&>>()
{
  WebKit::mutableState(void)::state |= 1u;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [MEMORY[0x1E69DD080] grammarCheckingEnabled];
    if (result)
    {
      WebKit::mutableState(void)::state |= 2u;
    }
  }

  return result;
}

void sub_19D58D460(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<WTF::RefPtr<WebKit::WebContextSupplement,WTF::RawPtrTraits<WebKit::WebContextSupplement>,WTF::DefaultRefDerefTraits<WebKit::WebContextSupplement>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>(uint64_t *a1, WTF::ASCIILiteralHash *this)
{
  if (!*(this + 1) || *this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58D564);
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(v3 - 8);
  v5 = WTF::ASCIILiteralHash::hash(this, this) & v4;
  v6 = v3 + 24 * v5;
  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  v10 = this;
  v9 = *this;
  v8 = *(v10 + 1);
  for (i = 1; ; ++i)
  {
    v12 = *v6 != -1 && v7 == v8;
    if (v12 && !memcmp(*v6, v9, v8))
    {
      break;
    }

    v5 = (v5 + i) & v4;
    v6 = v3 + 24 * v5;
    v7 = *(v6 + 8);
    if (!v7)
    {
      return 0;
    }
  }

  return *(v6 + 16);
}

void WebKit::WebProcessPool::platformInitializeWebProcess(WebKit::WebProcessPool *this, const WebKit::WebProcessProxy *a2, WebKit::WebProcessCreationParameters *a3)
{
  v160[2] = *MEMORY[0x1E69E9840];
  if ((byte_1ED642611 & 1) == 0)
  {
    goto LABEL_162;
  }

  while (1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v157, &qword_1ED642668);
    v7 = *(a3 + 103);
    if (v7)
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(*(a3 + 50), (*(a3 + 50) + 8 * v7));
    }

    v8 = *(a3 + 50);
    if (v8)
    {
      *(a3 + 50) = 0;
      *(a3 + 102) = 0;
      WTF::fastFree(v8, v6);
    }

    *(a3 + 50) = v157[0];
    v9 = v157[1];
    v157[0] = 0;
    v157[1] = 0;
    *(a3 + 51) = v9;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v157, v6);
    *(a3 + 370) = 0;
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    *(a3 + 368) = [v11 BOOLForKey:@"WebKitJSCJITEnabledDefaultsKey"];
    *(a3 + 369) = [v11 BOOLForKey:@"WebKitJSCFTLJITEnabledDefaultsKey"];
    *(a3 + 317) = [v11 BOOLForKey:@"LogMemoryJetsamDetails"];
    *(a3 + 318) = [v11 BOOLForKey:@"WebKitSuppressMemoryPressureHandler"];
    WTF::String::operator=(a3 + 44, this + 93);
    v13 = *(a3 + 44);
    if (v13)
    {
      v14 = *(v13 + 8);
      v15 = *(v13 + 4) | (((*(v13 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v14 = 0;
      v15 = 0x100000000;
    }

    WebKit::SandboxExtension::createHandleWithoutResolvingPath(v14, v15, 0, v157);
    if (LOBYTE(v157[1]) == 1)
    {
      v17 = v157[0];
      v157[0] = 0;
      v16 = std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a3 + 45, v17);
      if (v157[1])
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v157);
      }
    }

    WTF::applicationBundleIdentifier(v157, v16);
    v19 = v157[0];
    v157[0] = 0;
    v20 = *(a3 + 41);
    *(a3 + 41) = v19;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v18);
      }

      v21 = v157[0];
      v157[0] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v18);
      }
    }

    if (_MergedGlobals_75 == 1)
    {
      v22 = dword_1ED642614;
    }

    else
    {
      v22 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      dword_1ED642614 = v22;
      _MergedGlobals_75 = 1;
    }

    *(a3 + 84) = v22;
    if (byte_1ED642609 == 1)
    {
      v23 = dword_1ED642618;
    }

    else
    {
      v23 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      dword_1ED642618 = v23;
      byte_1ED642609 = 1;
    }

    *(a3 + 85) = v23;
    if (CFPreferencesGetAppIntegerValue(@"RemoteInspectorEnabled", @"com.apple.webinspectord", 0))
    {
      v160[0] = "com.apple.webinspector";
      v160[1] = 23;
      WebKit::WebProcessProxy::auditToken(v153, a2);
      *v157 = *v153;
      v158 = *&v153[16];
      v159 = v154;
      WebKit::SandboxExtension::createHandlesForMachLookup(v160, 1uLL, v157, 0, &v155);
      v26 = *(a3 + 21);
      if (v26)
      {
        v130 = *(a3 + 9);
        v131 = 8 * v26;
        do
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v130);
          v130 = (v132 + 8);
          v131 -= 8;
        }

        while (v131);
      }

      v27 = *(a3 + 9);
      if (v27)
      {
        *(a3 + 9) = 0;
        *(a3 + 20) = 0;
        v27 = WTF::fastFree(v27, v25);
      }

      *(a3 + 9) = v155;
      v28 = v156;
      v155 = 0;
      v156 = 0;
      *(a3 + 10) = v28;
      {
        if (WebKit::singleton(void)::singleton)
        {
          v29 = *(WebKit::singleton(void)::singleton + 8);
          if (v29)
          {
            atomic_fetch_add((v29 + 16), 1u);
            if ((*(v29 + 469) & 1) == 0)
            {
              WebKit::GPUProcessProxy::createGPUToolsSandboxExtensionHandlesIfNeeded(v157, v27);
              *v153 = v157;
              WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateSandboxAccess>(v29, v153, 0, 0);
              WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v157, v30);
            }

            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v29 + 16), v25);
          }
        }
      }

      else
      {
        WebKit::singleton(void)::singleton = 0;
      }

      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v155, v25);
    }

    v31 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a3 + 66, this + 102, v24);
    if (*(this + 87))
    {
      v32 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
      [v32 encodeObject:*(this + 87) forKey:@"parameters"];
      [v32 finishEncoding];
      v33 = [v32 encodedData];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      v31 = API::Data::createWithoutCopying(v34, v157);
      v36 = v157[0];
      v157[0] = 0;
      v37 = *(a3 + 47);
      *(a3 + 47) = v36;
      if (v37)
      {
        CFRelease(*(v37 + 8));
        v129 = v157[0];
        v157[0] = 0;
        if (v129)
        {
          CFRelease(*(v129 + 1));
        }
      }

      if (v34)
      {
      }

      if (v32)
      {
      }
    }

    v38 = MEMORY[0x19EB000C0](v31);
    v39 = *(a3 + 49);
    *(a3 + 49) = v38;
    if (v39)
    {
      CFRelease(v39);
    }

    v40 = [v11 BOOLForKey:@"WebKitLogCookieInformation"];
    *(a3 + 440) = v40;
    WebCore::collectScreenProperties(v157, v40);
    v152 = this;
    *(a3 + 104) = v157[0];
    v42 = v157[1];
    v157[1] = 0;
    v43 = *(a3 + 53);
    *(a3 + 53) = v42;
    if (v43)
    {
      v43 = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v43, v41);
    }

    *(a3 + 432) = v158;
    HasBattery = WebCore::systemHasBattery(v43);
    *(a3 + 586) = HasBattery;
    HasAC = WebCore::cachedSystemHasAC(HasBattery);
    *(a3 + 587) = ((HasAC & 0x100) == 0) | HasAC & 1;
    v46 = PAL::currentUserInterfaceIdiom(HasAC);
    *(a3 + 588) = v46;
    v47 = WebCore::supportsPictureInPicture(v46);
    *(a3 + 589) = v47;
    v49 = WebCore::RenderThemeIOS::cssValueToSystemColorMap(v47);
    v50 = *v49;
    if (!*v49 || (v51 = *(v50 - 12), !v51))
    {
      v52 = 0;
      goto LABEL_87;
    }

    v53 = *(v50 - 12);
    v54 = *(v50 - 12);
    if (v51 == 1)
    {
      goto LABEL_52;
    }

    v55 = __clz(v51 - 1);
    if (v55)
    {
      break;
    }

    __break(1u);
LABEL_162:
    unk_1ED642670 = 0;
    qword_1ED642668 = 0;
    byte_1ED642611 = 1;
  }

  v53 = (1 << -v55);
  v54 = 1 << -v55;
  if (v51 <= 0x400)
  {
LABEL_52:
    if (3 * v53 > 4 * v51)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v53 <= 2 * v51)
  {
LABEL_53:
    v54 *= 2;
  }

LABEL_54:
  if (v54 > 0x400)
  {
    v56 = 0.416666667;
  }

  else
  {
    v56 = 0.604166667;
  }

  if (v54 * v56 <= v51)
  {
    v54 *= 2;
  }

  if (v54 <= 8)
  {
    v57 = 8;
  }

  else
  {
    v57 = v54;
  }

  v58 = WTF::fastMalloc((16 * v57), (16 * v57 + 16));
  v59 = v58;
  v52 = v58 + 2;
  v60 = 2;
  v61 = v57;
  do
  {
    *&v58[v60] = xmmword_19E703050;
    v60 += 2;
    --v61;
  }

  while (v61);
  *(v58 + 2) = v57 - 1;
  *(v58 + 3) = v57;
  *v58 = 0;
  *(v58 + 1) = v51;
  v62 = *v49;
  if (*v49)
  {
    if (*(v62 - 12))
    {
      v63 = v62 + 16 * *(v62 - 4);
      *v153 = *v49;
      *&v153[8] = v63;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(v153);
      v64 = *v153;
      v65 = *&v153[8];
      v62 = *v49;
      goto LABEL_69;
    }

    v66 = *(v62 - 4);
    v64 = (v62 + 16 * v66);
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v65 = v62 + 16 * v66;
LABEL_69:
  *v153 = v64;
  *&v153[8] = v65;
  if (v62)
  {
    v67 = (v62 + 16 * *(v62 - 4));
  }

  else
  {
    v67 = 0;
  }

  if (v67 != v64)
  {
    do
    {
      v68 = 0;
      for (i = *v64; ; i = v68 + v70)
      {
        v70 = i & v59[1];
        v71 = &v52[2 * v70];
        v72 = !*v71 && *(v71 + 4) == 0;
        if (v72 && !*(v71 + 5))
        {
          break;
        }

        ++v68;
      }

      v73 = *v64;
      v74 = *(v64 + 1);
      if ((v74 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v74 & 0xFFFFFFFFFFFFLL), 1u);
      }

      *v71 = v73;
      v75 = v71[1];
      if ((v75 & 0x8000000000000) != 0)
      {
        v76 = (v75 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v75 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v76);
          WTF::fastFree(v76, v48);
        }
      }

      v71[1] = v74;
      *v153 += 16;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(v153);
      v64 = *v153;
    }

    while (*v153 != v67);
  }

LABEL_87:
  v77 = *(a3 + 74);
  *(a3 + 74) = v52;
  if (v77)
  {
    v77 = WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(v77, v48);
  }

  v78 = WebCore::RenderThemeIOS::systemFocusRingColor(v153, v77);
  v80 = (a3 + 600);
  if (a3 + 600 == v153)
  {
    if ((*v153 & 0x8000000000000) != 0)
    {
      v78 = (*v153 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((*v153 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v78);
        v78 = WTF::fastFree(v78, v79);
      }
    }
  }

  else
  {
    v81 = *v80;
    if ((*v80 & 0x8000000000000) != 0)
    {
      v78 = (v81 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v81 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v78);
        v78 = WTF::fastFree(v78, v79);
      }
    }

    *v80 = *v153;
  }

  WebCore::localizedDeviceModel(v153, v78);
  v83 = *v153;
  *v153 = 0;
  v84 = *(a3 + 76);
  *(a3 + 76) = v83;
  if (v84)
  {
    if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v84, v82);
    }

    v84 = *v153;
    *v153 = 0;
    if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v84 = WTF::StringImpl::destroy(v84, v82);
    }
  }

  v85 = WebCore::contentSizeCategory(v84);
  MEMORY[0x19EB02040](v153, v85);
  v87 = *v153;
  *v153 = 0;
  v88 = *(a3 + 77);
  *(a3 + 77) = v87;
  if (v88)
  {
    if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v88, v86);
    }

    v89 = *v153;
    *v153 = 0;
    if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v89, v86);
    }
  }

  WebKit::AuxiliaryProcessProxy::createMobileGestaltSandboxExtensionIfNeeded(v153);
  std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(a3 + 69, v153);
  if (v153[8] == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v153);
  }

  *(a3 + 292) = 257;
  if ([MEMORY[0x1E69DC668] sharedApplication] && !objc_msgSend(objc_msgSend(MEMORY[0x1E69DC668], "sharedApplication"), "applicationState") && qword_1ED642630 != -1)
  {
    dispatch_once(&qword_1ED642630, &__block_literal_global_70);
  }

  *(a3 + 321) = [+[WKMouseDeviceObserver sharedInstance](WKMouseDeviceObserver hasMouseDevice];
  v90 = [+[WKStylusDeviceObserver sharedInstance](WKStylusDeviceObserver hasStylusDevice];
  *(a3 + 322) = v90;
  v91 = WebCore::IOSurface::maximumSize(v90);
  *(a3 + 78) = v91;
  *(a3 + 79) = WebCore::IOSurface::bytesPerRowAlignment(v91);
  WebKit::accessibilityPreferences(v153);
  *(a3 + 40) = *v153;
  *(a3 + 655) = *&v153[15];
  *(a3 + 664) = _AXSApplicationAccessibilityEnabled() != 0;
  {
    if (qword_1ED63B690 && (v94 = *(qword_1ED63B690 - 12)) != 0)
    {
      v95 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(qword_1ED63B690 - 12));
      v96 = WTF::fastZeroedMalloc((16 * v95 + 16));
      v96[2] = v95 - 1;
      v96[3] = v95;
      *v96 = 0;
      v96[1] = v94;
      v99 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(&qword_1ED63B690, v97, v98);
      v100 = v99;
      v101 = v96 + 4;
      *v153 = v99;
      *&v153[8] = v92;
      v151 = v11;
      if (qword_1ED63B690)
      {
        v102 = qword_1ED63B690 + 16 * *(qword_1ED63B690 - 4);
      }

      else
      {
        v102 = 0;
      }

      if (v102 != v99)
      {
        do
        {
          v103 = v96[2];
          v104 = WTF::ASCIICaseInsensitiveHash::hash(*v100, v92);
          v106 = 0;
          do
          {
            v107 = v104 & v103;
            v109 = WTF::equal(*&v101[4 * v107], 0, v105);
            v104 = ++v106 + v107;
          }

          while (!v109);
          v110 = *v100;
          if (*v100)
          {
            atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
          }

          v111 = *(v100 + 8);
          if (v111)
          {
            atomic_fetch_add_explicit(v111, 2u, memory_order_relaxed);
          }

          v112 = &v101[4 * v107];
          v113 = *v112;
          *v112 = v110;
          if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v113, v108);
          }

          v114 = v112[1];
          v112[1] = v111;
          if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v114, v108);
          }

          *v153 += 16;
          WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v153, v108, v105);
          v100 = *v153;
        }

        while (*v153 != v102);
      }

      v11 = v151;
    }

    else
    {
      v101 = 0;
    }
  }

  else
  {
    v101 = 0;
    unk_1ED63B660 = 0u;
    *&qword_1ED63B680 = 0u;
    dword_1ED63B668 = 1;
    qword_1ED63B670 = 0;
    unk_1ED63B678 = 0;
    qword_1ED63B680 = 0;
    byte_1ED63B688 = 0;
    qword_1ED63B690 = 0;
    WebKit::ListDataController<WebKit::StorageAccessUserAgentStringQuirkController,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE500;
  }

  v115 = *(a3 + 85);
  *(a3 + 85) = v101;
  if (v115)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v115, v92);
  }

  {
    if (dword_1ED63B6E4)
    {
      v116 = off_1ED63B6D8;
      v117 = off_1ED63B6D8 + 32 * dword_1ED63B6E4;
      do
      {
        v118 = *(v116 + 7);
        if (v118)
        {
          v119 = *(v116 + 2);
          v120 = 40 * v118;
          do
          {
            WebCore::RegistrableDomain::RegistrableDomain(&v155, v119);
            WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a3 + 86, &v155, v121, v153);
            v122 = v155;
            v155 = 0;
            if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v122, v92);
            }

            v119 = (v119 + 40);
            v120 -= 40;
          }

          while (v120);
        }

        else
        {
          v123 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(v116 + 1, v92, v93);
          v125 = *(v116 + 1);
          if (v125)
          {
            v126 = (v125 + 24 * *(v125 - 4));
          }

          else
          {
            v126 = 0;
          }

          v155 = v123;
          v156 = v124;
          while (1)
          {
            v92 = v155;
            if (v155 == v126)
            {
              break;
            }

            WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a3 + 86, v155, v93, v153);
            v155 = (v155 + 24);
            WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v155, v127, v128);
          }
        }

        v116 += 32;
      }

      while (v116 != v117);
    }
  }

  else
  {
    *algn_1ED63B6A8 = 0u;
    *&qword_1ED63B6C8 = 0u;
    dword_1ED63B6B0 = 1;
    qword_1ED63B6B8 = 0;
    qword_1ED63B6C0 = 0;
    qword_1ED63B6C8 = 0;
    byte_1ED63B6D0 = 0;
    off_1ED63B6D8 = 0;
    *&dword_1ED63B6E0 = 0;
    WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
  }

  {
    *algn_1ED63B6F8 = 0u;
    *&qword_1ED63B718 = 0u;
    dword_1ED63B700 = 1;
    qword_1ED63B708 = 0;
    unk_1ED63B710 = 0;
    qword_1ED63B718 = 0;
    byte_1ED63B720 = 0;
    xmmword_1ED63B728 = 0u;
    xmmword_1ED63B738 = 0u;
    xmmword_1ED63B748 = 0u;
    xmmword_1ED63B758 = 0u;
    WebKit::ListDataController<WebKit::ScriptTrackingPrivacyController,WebKit::ScriptTrackingPrivacyRules>::sharedSingleton(void)::sharedInstance = &unk_1F10EE540;
  }

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a3 + 696), &xmmword_1ED63B728);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a3 + 712), &xmmword_1ED63B738);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a3 + 728), &xmmword_1ED63B748);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a3 + 744), &xmmword_1ED63B758);
  *v153 = 0;
  *&v153[8] = 0;
  v134 = *(v152 + 121);
  if (v134)
  {
    v135 = *(v134 - 3);
    if (!v135)
    {
      v137 = 0;
LABEL_173:
      if (*(v134 - 3))
      {
        v138 = *(v134 - 1);
        v139 = v134;
        if (v138)
        {
          v140 = 16 * v138;
          v139 = v134;
          while (*v139 + 1 <= 1)
          {
            v139 += 2;
            v140 -= 16;
            if (!v140)
            {
              goto LABEL_188;
            }
          }
        }

        v141 = &v134[2 * v138];
        if (v141 != v139)
        {
          v142 = 0;
          do
          {
            v143 = *v139;
            if (*v139)
            {
              atomic_fetch_add_explicit(v143, 2u, memory_order_relaxed);
            }

            v144 = v139[1];
            v145 = &v137[2 * v142];
            *v145 = v143;
            v145[1] = v144;
            do
            {
              v139 += 2;
            }

            while (v139 != v141 && *v139 + 1 <= 1);
            ++v142;
          }

          while (v139 != v141);
          *&v153[12] = v142;
        }
      }

      goto LABEL_188;
    }

    v136 = (v135 >> 28);
    if (v136)
    {
      __break(0xC471u);
      return;
    }

    v137 = WTF::fastMalloc(v136, (16 * v135));
    *&v153[8] = v135;
    *v153 = v137;
    v134 = *(v152 + 121);
    if (v134)
    {
      goto LABEL_173;
    }
  }

LABEL_188:
  v146 = *(a3 + 199);
  if (v146)
  {
    WTF::VectorDestructor<true,std::pair<WTF::String,unsigned long long>>::destruct(*(a3 + 98), (*(a3 + 98) + 16 * v146));
  }

  v147 = *(a3 + 98);
  if (v147)
  {
    *(a3 + 98) = 0;
    *(a3 + 198) = 0;
    WTF::fastFree(v147, v133);
  }

  *(a3 + 98) = *v153;
  v148 = *&v153[8];
  *v153 = 0;
  *&v153[8] = 0;
  *(a3 + 99) = v148;
  WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v153, v133);
  v150 = WebKit::cachedIsLiqudGlassEnabled(void)::isLiquidGlassEnabled;
  if ((WebKit::cachedIsLiqudGlassEnabled(void)::isLiquidGlassEnabled & 0x100) == 0)
  {
    v150 = _UISolariumEnabled();
  }

  *(a3 + 800) = v150 & 1;
  if (!v157[1])
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_196;
  }

  WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v157[1], v149);
  if (v11)
  {
LABEL_196:
  }
}

void sub_19D58E3B0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *exc_buf, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, char a22, uint64_t a23)
{
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, a2);
  if (v23)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t *API::Data::createWithoutCopying@<X0>(API::Data *this@<X0>, uint64_t *x8_0@<X8>)
{
  if (this)
  {
    v5 = [(API::Data *)this bytes];
    v6 = [(API::Data *)this length];
    v7 = this;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v8 = WTF::fastMalloc(x8_0, 0x10);
  *v8 = &unk_1F10F1858;
  v8[1] = this;
  v10 = v8;
  API::Data::createWithoutCopying(v5, v6, &v10, x8_0);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D58E5E4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AuxiliaryProcessProxy::createMobileGestaltSandboxExtensionIfNeeded(uint64_t *__return_ptr a1@<X8>)
{
  if (_MGCacheValid())
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = qword_1ED641198;
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_19D52D000, v3, OS_LOG_TYPE_FAULT, "MobileGestalt cache is invalid! Creating a sandbox extension to repopulate cache in memory.", v4, 2u);
    }

    v4[0] = 0;
    v5 = 0;
    WebKit::SandboxExtension::createHandleForMachLookup("com.apple.mobilegestalt.xpc", v4, a1);
  }
}

void std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(WebKit::SandboxExtensionImpl **a1, WebKit::SandboxExtensionImpl **a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {

      WebKit::SandboxExtensionHandle::operator=(a1, a2);
    }
  }

  else if (*(a1 + 8))
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(a1);
    *(v3 + 8) = 0;
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    *(a1 + 8) = 1;
  }
}

void WebKit::accessibilityPreferences(WebKit *this)
{
  *this = -1;
  *(this + 1) = -1;
  *(this + 4) = -1;
  *(this + 10) = 1;
  *(this + 22) = 0;
  WTF::applicationBundleIdentifier(&v17, this);
  WTF::String::createCFString(&cf, &v17);
  v3 = v17;
  v17 = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  v4 = _AXSReduceMotionEnabledApp();
  if ((v4 + 1) >= 3)
  {
    v5 = -2;
  }

  else
  {
    v5 = v4;
  }

  *this = v5;
  v6 = _AXSIncreaseButtonLegibilityApp();
  if ((v6 + 1) >= 3)
  {
    v7 = -2;
  }

  else
  {
    v7 = v6;
  }

  *(this + 1) = v7;
  v8 = _AXSEnhanceTextLegibilityEnabledApp();
  if ((v8 + 1) >= 3)
  {
    v9 = -2;
  }

  else
  {
    v9 = v8;
  }

  *(this + 2) = v9;
  v10 = _AXDarkenSystemColorsApp();
  if ((v10 + 1) >= 3)
  {
    v11 = -2;
  }

  else
  {
    v11 = v10;
  }

  *(this + 3) = v11;
  v12 = _AXSInvertColorsEnabledApp();
  if ((v12 + 1) >= 3)
  {
    v13 = -2;
  }

  else
  {
    v13 = v12;
  }

  *(this + 4) = v13;
  *(this + 21) = _AXSEnhanceTextLegibilityEnabled() != 0;
  if (byte_1ED64260B == 1)
  {
    v14 = off_1ED642638;
    if (!off_1ED642638)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (byte_1ED64260C == 1)
  {
    v16 = qword_1ED642640;
  }

  else
  {
    v16 = dlopen("/usr/lib/libAccessibility.dylib", 2);
    qword_1ED642640 = v16;
    byte_1ED64260C = 1;
  }

  v14 = dlsym(v16, "_AXSReduceMotionAutoplayAnimatedImagesEnabled");
  off_1ED642638 = v14;
  byte_1ED64260B = 1;
  if (v14)
  {
LABEL_21:
    *(this + 20) = (v14)(v14) != 0;
  }

LABEL_22:
  *(this + 22) = _AXSPrefersNonBlinkingCursorIndicator() != 0;
  v15 = cf;
  cf = 0;
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_19D58E908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(*a1, (*a1 + 16 * v3));
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

Object *WebKit::UserData::transform@<X0>(Object *result@<X0>, uint64_t a2@<X1>, CFTypeRef **a3@<X8>)
{
  if (result)
  {
    p_var0 = &result->var0;
    if (WebKit::shouldTransform(result, a2))
    {

      return WebKit::transformGraph(p_var0, a2, a3);
    }

    else
    {
      result = CFRetain(p_var0[1]);
      *a3 = p_var0;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

atomic_uint *WebKit::AuxiliaryProcessProxy::initializationActivityAndGrant@<X0>(unint64_t *__return_ptr a1@<X8>, WebKit::AuxiliaryProcessProxy *this@<X0>, void *a3@<X1>)
{
  v4 = *(*(this + 20) + 8);
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58EAD0);
  }

  atomic_fetch_add((v4 + 16), 1u);
  v6 = WebKit::ProcessThrottlerActivity::operator new(0x30, a3);
  *a1 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v6, this + 144, "Process initialization", 23, 1, 0);
  v8 = *(this + 10);
  if (v8)
  {
    v8 = *(v8 + 32);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }
  }

  a1[1] = v8;

  return WebKit::ProcessThrottler::deref((this + 144), v7);
}

uint64_t WebKit::ProcessThrottlerActivity::operator new(WebKit::ProcessThrottlerActivity *this, void *a2)
{
  if (this == 48 && WebKit::ProcessThrottlerActivity::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessThrottlerActivity::s_heapRef, a2);
  }

  else
  {
    return WebKit::ProcessThrottlerActivity::operatorNewSlow(this);
  }
}

unint64_t WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(unint64_t a1, unint64_t a2, const char *a3, uint64_t a4, int a5, char a6)
{
  v36 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 1;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2, a2);
  v13 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v13, 1u);
  }

  *(a1 + 16) = v13;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 41) = a6;
  if (*(a2 + 236))
  {
    if (a5)
    {
      v14 = a2 + 184;
    }

    else
    {
      v14 = a2 + 200;
    }

    WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::ProcessThrottlerActivity>(&v26, v14, a1);
    WebKit::ProcessThrottler::updateThrottleStateIfNeeded(a2, *(a1 + 24), *(a1 + 32));
    if (*(a1 + 41))
    {
      return a1;
    }

    v19 = qword_1ED641030;
    if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    v20 = *(a1 + 16);
    if (!v20 || (v20 = *(v20 + 8)) == 0)
    {
      LODWORD(v22) = 0;
LABEL_26:
      v23 = "background";
      v24 = *(a1 + 24);
      v26 = 134219010;
      if (a5)
      {
        v23 = "foreground";
      }

      v27 = a1;
      v28 = 1024;
      v29 = v22;
      v30 = 2048;
      v31 = v20;
      v32 = 2082;
      v33 = v23;
      v34 = 2082;
      v35 = v24;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d, throttler=%p] ProcessThrottler::Activity::Activity: Starting %{public}s activity / '%{public}s'", &v26, 0x30u);
      return a1;
    }

    v21 = *(*(v20 + 16) + 8);
    if (v21)
    {
      v22 = *(v21 + 80);
      if (v22)
      {
        LODWORD(v22) = *(v22 + 108);
      }

      goto LABEL_26;
    }

    __break(0xC471u);
LABEL_32:
    JUMPOUT(0x19D58ED98);
  }

  if ((a6 & 1) == 0)
  {
    v15 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a2 + 16) + 8);
      if (!v16)
      {
        __break(0xC471u);
        goto LABEL_32;
      }

      v17 = *(v16 + 80);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 108);
      }

      v18 = "background";
      v26 = 134218754;
      v27 = a2;
      v28 = 1024;
      if (a5)
      {
        v18 = "foreground";
      }

      v29 = v17;
      v30 = 2080;
      v31 = v18;
      v32 = 2080;
      v33 = a3;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::addActivity: not allowed to add %s activity %s", &v26, 0x26u);
      v13 = *(a1 + 16);
    }
  }

  *(a1 + 16) = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, v12);
  }

  return a1;
}

atomic_uint *WebKit::ProcessThrottler::updateThrottleStateIfNeeded(atomic_uint *result, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(result + 237) != 1)
  {
    return result;
  }

  v5 = result;
  if (!WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(result + 23) || !WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v5 + 200)))
  {
    if (*(v5 + 232))
    {
      if ((*(v5 + 224) & 1) == 0)
      {
        goto LABEL_28;
      }

      v6 = qword_1ED641030;
      if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v7 = *(*(v5 + 16) + 8);
      if (!v7)
      {
        __break(0xC471u);
        goto LABEL_33;
      }

      v8 = *(v7 + 80);
      if (v8)
      {
        LODWORD(v8) = *(v8 + 108);
      }

      v9 = *(v5 + 216);
      v10 = "unknown";
      if (a3)
      {
        v10 = a2;
      }

      v22 = 134218754;
      v23 = v5;
      v24 = 1024;
      v25 = v8;
      v26 = 2048;
      v27 = v9;
      v28 = 2082;
      v29 = v10;
      v11 = "%p - [PID=%d] ProcessThrottler::updateThrottleStateIfNeeded: sending ProcessDidResume IPC because the WebProcess is still processing request to suspend=%llu (probable wakeup reason: %{public}s)";
      v12 = v6;
      v13 = 38;
    }

    else
    {
      v14 = qword_1ED641030;
      if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v18 = *(*(v5 + 16) + 8);
        if (v18)
        {
          atomic_fetch_add(v18 + 4, 1u);
          v19 = WebKit::ProcessThrottler::expectedThrottleState(v5) != 2;
          (*(*v18 + 128))(v18, v19);
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v18 + 4, v20);
          WTF::RunLoop::TimerBase::stop((v5 + 40));
          if (*(v5 + 224) == 1)
          {
            *(v5 + 224) = 0;
          }

          goto LABEL_28;
        }

        __break(0xC471u);
LABEL_33:
        JUMPOUT(0x19D58F07CLL);
      }

      v15 = *(*(v5 + 16) + 8);
      if (!v15)
      {
        __break(0xC471u);
        JUMPOUT(0x19D58F09CLL);
      }

      v16 = *(v15 + 80);
      if (v16)
      {
        LODWORD(v16) = *(v16 + 108);
      }

      v17 = "unknown";
      v22 = 134218498;
      if (a3)
      {
        v17 = a2;
      }

      v23 = v5;
      v24 = 1024;
      v25 = v16;
      v26 = 2082;
      v27 = v17;
      v11 = "%p - [PID=%d] ProcessThrottler::updateThrottleStateIfNeeded: sending ProcessDidResume IPC because the process was suspended (probable wakeup reason: %{public}s)";
      v12 = v14;
      v13 = 28;
    }

    _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
    goto LABEL_25;
  }

  if (!*(v5 + 232))
  {
LABEL_28:
    v21 = WebKit::ProcessThrottler::expectedThrottleState(v5);
    return WebKit::ProcessThrottler::setThrottleState(v5, v21);
  }

  WTF::RunLoop::TimerBase::start();

  return WebKit::ProcessThrottler::sendPrepareToSuspendIPC(v5, 0);
}

atomic_uint *WebKit::ProcessThrottler::deref(WebKit::ProcessThrottler *this, unint64_t a2)
{
  v2 = *(*(this + 2) + 8);
  if (!v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19D58F0F0);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16), a2);
}

uint64_t IPC::Encoder::operator new(IPC::Encoder *this, void *a2)
{
  if (this == 568 && IPC::Encoder::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(IPC::Encoder::s_heapRef, a2);
  }

  else
  {
    return IPC::Encoder::operatorNewSlow(this);
  }
}

uint64_t IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(IPC::Encoder *a1, char a2)
{
  result = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v4)
  {
    *result = a2;
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t IPC::Encoder::encodeHeader(IPC::Encoder *this)
{
  IPC::Encoder::operator<<<unsigned char const&>(this, IPC::defaultMessageFlags);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(this, *this);
  v2 = *(this + 1);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(this, v2);
}

char *IPC::Encoder::grow(IPC::Encoder *this, unint64_t a2, uint64_t a3)
{
  v4 = (a2 + *(this + 68) - 1) / a2 * a2;
  v5 = v4 + a3;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(this + 3);
  }

  else
  {
    v7 = 512;
  }

  if (v7 < v5)
  {
    goto LABEL_14;
  }

  while (1)
  {
    if (v6)
    {
      v8 = *(this + 3);
    }

    else
    {
      v6 = this + 32;
      v8 = 512;
    }

    v7 = *(this + 68);
    v9 = v8 - v7;
    if (v8 >= v7)
    {
      if (v4 - v7 == -1 || (v11 = v9 >= v4 - v7, v9 = v4 - v7, v11))
      {
        bzero(&v6[v7], v9);
        *(this + 68) = v5;
        if (v8 >= v4)
        {
          return &v6[v4];
        }
      }
    }

    do
    {
      __break(1u);
LABEL_14:
      v12 = (2 * v7 + 4095) & 0xFFFFFFFFFFFFF000;
      do
      {
        v13 = v12;
        v12 *= 2;
      }

      while (v13 < v5);
      v14 = mmap(0, v13, 3, 4098, -1, 0);
      if ((v14 + 1) <= 1)
      {
        goto LABEL_24;
      }

      v6 = v14;
      v15 = *(this + 2);
      if (v15)
      {
        v7 = *(this + 3);
      }

      else
      {
        v15 = this + 32;
        v7 = 512;
      }

      v16 = *(this + 68);
    }

    while (v7 < v16);
    if (v13 < v16)
    {
LABEL_24:
      __break(0xC471u);
      JUMPOUT(0x19D58F32CLL);
    }

    memcpy(v14, v15, v16);
    v17 = *(this + 2);
    v18 = *(this + 3);
    *(this + 2) = v6;
    *(this + 3) = v13;
    if (v17)
    {
      munmap(v17, v18);
      v6 = *(this + 2);
    }
  }
}

uint64_t IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(IPC::Encoder *a1, __int16 a2)
{
  result = IPC::Encoder::grow(a1, 2uLL, 2);
  if (v4 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

void *IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v18 = (*(v3 + 16) & 4) != 0;
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(v3 + 4));
    IPC::Encoder::operator<<<BOOL &>(a1, &v18);
    v5 = *a2;
    if (v18)
    {
      if (!v5)
      {
        v6 = a1;
        v7 = 1;
LABEL_5:
        v8 = IPC::Encoder::grow(v6, v7, 0);
        v9 = 0;
        v10 = 0;
        return memcpy(v8, v10, v9);
      }

      v17 = *(v5 + 8);
      v15 = *(v5 + 4);
      v8 = IPC::Encoder::grow(a1, 1uLL, v15);
      if (v16 >= v15)
      {
        v9 = v15;
        v10 = v17;
        return memcpy(v8, v10, v9);
      }
    }

    else
    {
      if (!v5)
      {
        v6 = a1;
        v7 = 2;
        goto LABEL_5;
      }

      v12 = *(v5 + 8);
      v13 = *(v5 + 4);
      v8 = IPC::Encoder::grow(a1, 2uLL, 2 * v13);
      if (v14 >= 2 * v13)
      {
        v10 = v12;
        v9 = 2 * v13;
        return memcpy(v8, v10, v9);
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D58F4F0);
  }

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, -1);
}

uint64_t *IPC::ArgumentCoder<WebKit::AuxiliaryProcessCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);

  return IPC::ArgumentCoder<std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,void>::encode<IPC::Encoder,std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> const&>(a1, a2 + 3);
}

uint64_t IPC::ArgumentCoder<WebKit::WebProcessCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::AuxiliaryProcessCreationParameters,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 40));
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 48);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(a1, (a2 + 64));
  IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 72);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 88);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 104);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 120);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 136);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 152);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 168);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 184);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 200);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 216);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 232);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 248);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 264);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 280);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 296));
  IPC::ArgumentCoder<WTF::Markable<double,WTF::MarkableTraits<double>>,void>::encode<IPC::Encoder,WTF::Markable<double,WTF::MarkableTraits<double>>>(a1, (a2 + 304));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 312));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 316));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 317));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 318));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 319));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 320));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 321));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 322));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 323));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 324));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 325));
  LOBYTE(v37) = *(a2 + 326);
  IPC::Encoder::operator<<<BOOL>(a1, &v37);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 327));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 328));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 336));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 340));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 344));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 352));
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 360));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 368));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 369));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 370));
  IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::encode<IPC::Encoder,API::Data>(a1, a2 + 376);
  v4 = *(a2 + 384);
  if (v4)
  {
    v5 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v5);
  v6 = *(a2 + 384);
  if (!v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_5:
    v9 = v7;
    v7 = v6 + 16 * v8;
    goto LABEL_6;
  }

  v8 = *(v6 - 4);
  v7 = v6 + 16 * v8;
  if (!*(v6 - 12))
  {
    goto LABEL_5;
  }

  if (!v8)
  {
    v36 = 0;
    v9 = *(a2 + 384);
    goto LABEL_54;
  }

  v35 = 16 * v8;
  v9 = *(a2 + 384);
  while ((*v9 + 1) <= 1)
  {
    v9 += 16;
    v35 -= 16;
    if (!v35)
    {
      v9 = v7;
      break;
    }
  }

LABEL_6:
  if (v6)
  {
    goto LABEL_59;
  }

  for (i = 0; ; i = v6 + 16 * v36)
  {
    while (v9 != i)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v9);
      IPC::Encoder::operator<<<BOOL>(a1, (v9 + 8));
      do
      {
        v9 += 16;
      }

      while (v9 != v7 && (*v9 + 1) <= 1);
    }

    IPC::ArgumentCoder<__CFData const*,void>::encode(a1, *(a2 + 392));
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 400);
    IPC::ArgumentCoder<WebCore::ScreenProperties,void>::encode(a1, a2 + 416);
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 440));
    if ((*(a2 + 544) & 1) == 0)
    {
      break;
    }

    LOBYTE(v37) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v37);
    if (*(a2 + 544))
    {
      IPC::ArgumentCoder<WebKit::WebProcessDataStoreParameters,void>::encode(a1, a2 + 448);
      goto LABEL_17;
    }

    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_59:
    v36 = *(v6 - 4);
LABEL_54:
    ;
  }

  LOBYTE(v37) = 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v37);
LABEL_17:
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 552);
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, a2 + 568);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 584));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 585));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 586));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 587));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 588));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 589));
  v11 = *(a2 + 592);
  if (v11)
  {
    v12 = *(v11 - 12);
  }

  else
  {
    v12 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v12);
  v13 = *(a2 + 592);
  if (v13)
  {
    if (*(v13 - 12))
    {
      v14 = v13 + 16 * *(v13 - 4);
      v37 = *(a2 + 592);
      v38 = v14;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(&v37);
      v16 = v37;
      v15 = v38;
      v13 = *(a2 + 592);
      goto LABEL_24;
    }

    v17 = *(v13 - 4);
    v16 = (v13 + 16 * v17);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v15 = v13 + 16 * v17;
LABEL_24:
  v37 = v16;
  v38 = v15;
  if (v13)
  {
    v18 = (v13 + 16 * *(v13 - 4));
  }

  else
  {
    v18 = 0;
  }

  if (v18 != v16)
  {
    do
    {
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *v16);
      IPC::Encoder::operator<<<BOOL>(a1, v16 + 4);
      IPC::Encoder::operator<<<BOOL>(a1, v16 + 5);
      IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (v16 + 1));
      v37 += 2;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>,WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>>::skipEmptyBuckets(&v37);
      v16 = v37;
    }

    while (v37 != v18);
  }

  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 600));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 608));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 616));
  IPC::Encoder::operator<<<WebCore::IntSize>(a1, (a2 + 624));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 632));
  IPC::ArgumentCoder<WebKit::AccessibilityPreferences,void>::encode(a1, (a2 + 640));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 664));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 672));
  v19 = *(a2 + 680);
  if (v19)
  {
    v20 = *(v19 - 12);
  }

  else
  {
    v20 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v20);
  v23 = *(a2 + 680);
  if (v23)
  {
    if (*(v23 - 12))
    {
      v24 = v23 + 16 * *(v23 - 4);
      v37 = *(a2 + 680);
      v38 = v24;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v37, v21, v22);
      v26 = v37;
      v25 = v38;
      v23 = *(a2 + 680);
      goto LABEL_37;
    }

    v27 = *(v23 - 4);
    v26 = (v23 + 16 * v27);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v25 = v23 + 16 * v27;
LABEL_37:
  v37 = v26;
  v38 = v25;
  if (v23)
  {
    v28 = (v23 + 16 * *(v23 - 4));
  }

  else
  {
    v28 = 0;
  }

  if (v28 != v26)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v26);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v26 + 1);
      v37 += 2;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v37, v29, v30);
      v26 = v37;
    }

    while (v37 != v28);
  }

  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 688));
  IPC::ArgumentCoder<WebKit::ScriptTrackingPrivacyRules,void>::encode(a1, (a2 + 696));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 760));
  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 768), *(a2 + 780));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 796));
  v31 = *(a2 + 796);
  if (v31)
  {
    v32 = *(a2 + 784);
    v33 = &v32[2 * v31];
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v32);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v32[1]);
      v32 += 2;
    }

    while (v32 != v33);
  }

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 800));
}

uint64_t IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(IPC::Encoder *a1, int a2)
{
  result = IPC::Encoder::grow(a1, 4uLL, 4);
  if (v4 <= 3)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,void>::encode<IPC::Encoder,std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>> const&>(IPC::Encoder *a1, void *a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(v3, *a2);
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

uint64_t IPC::ArgumentCoder<std::unique_ptr<WebKit::SandboxExtensionImpl>,void>::encode<IPC::Encoder,std::unique_ptr<WebKit::SandboxExtensionImpl>>(IPC::Encoder *a1, uint64_t **a2)
{
  if (*a2)
  {
    v9 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v9);
    v4 = **a2;
    if (v4)
    {
      v5 = (v4 + 16);
      v6 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v3, v5, v6);
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

WebKit::SandboxExtensionImpl *IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(IPC::Encoder *a1, WebKit::SandboxExtensionImpl **a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a2, 0);
  IPC::ArgumentCoder<std::unique_ptr<WebKit::SandboxExtensionImpl>,void>::encode<IPC::Encoder,std::unique_ptr<WebKit::SandboxExtensionImpl>>(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(result);
    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void sub_19D58FD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebKit::SandboxExtensionImpl *a10)
{
  if (a10)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(a10);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, size_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {
    v7 = IPC::Encoder::grow(a1, 1uLL, a3);
    if (v8 < a3)
    {
      result = 1067;
      __break(0xC471u);
    }

    else
    {

      return memcpy(v7, a2, a3);
    }
  }

  return result;
}

void WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(WebKit::SandboxExtensionImpl *this)
{
  if (*this)
  {
    v2 = WTF::CString::mutableSpan(this);
    bzero(v2, v3);
    v5 = *this;
    *this = 0;
    if (v5)
    {
      if (*v5 == 1)
      {
        WTF::fastFree(v5, v4);
      }

      else
      {
        --*v5;
      }
    }
  }
}

WebKit::SandboxExtensionImpl *IPC::VectorArgumentCoder<false,WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void IPC::ArgumentCoder<WebKit::UserData,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*(v3 + 8));
  }

  v5 = v3;
  IPC::ArgumentCoder<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,void>::encode<IPC::Encoder,API::Object>(a1, &v5);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    CFRelease(v4[1]);
  }
}

void sub_19D58FF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,void>::encode<IPC::Encoder,API::Object>(IPC::Encoder *a1, atomic_ullong **a2)
{
  if (*a2)
  {
    v5 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v5);
    IPC::ArgumentCoder<API::Object,void>::encode(v3, *a2);
  }

  else
  {
    v4 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v4);
  }
}

void *IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(IPC::Encoder *a1, double a2)
{
  result = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v4 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::encode<IPC::Encoder,API::Data>(IPC::Encoder *a1, uint64_t a2)
{
  if (*a2)
  {
    v6 = 1;
    v3 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v3, *(*a2 + 16), *(*a2 + 24));
  }

  else
  {
    v5 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }
}

void IPC::ArgumentCoder<__CFData const*,void>::encode(IPC::Encoder *a1, CFTypeRef cf)
{
  cfa = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  IPC::ArgumentCoder<WebKit::CoreIPCData,void>::encode(a1, &cfa);
  v3 = cfa;
  cfa = 0;
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_19D59013C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

CFIndex WebKit::CoreIPCData::dataReference@<X0>(CFIndex this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  if (!*this)
  {
    v5 = 0;
    *a2 = 0;
    goto LABEL_4;
  }

  BytePtr = CFDataGetBytePtr(*this);
  this = CFDataGetLength(v3);
  if ((this & 0x8000000000000000) == 0)
  {
    *a2 = BytePtr;
    *(a2 + 8) = this;
    v5 = 1;
LABEL_4:
    *(a2 + 16) = v5;
    return this;
  }

  __break(0xC471u);
  return this;
}

uint64_t IPC::ArgumentCoder<std::optional<std::span<unsigned char const,18446744073709551615ul>>,void>::encode<IPC::Encoder,std::optional<std::span<unsigned char const,18446744073709551615ul>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 8));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::ScreenProperties,void>::encode(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::ScreenProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

int *IPC::ArgumentCoder<WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(IPC::Encoder *a1, void *a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 12);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::begin(a2);
  v6 = result;
  v8 = v7;
  if (*a2)
  {
    v9 = *a2 + 72 * *(*a2 - 4);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *v6);
      result = IPC::ArgumentCoder<WebCore::ScreenData,void>::encode(a1, (v6 + 2));
      for (v6 += 18; v6 != v8; v6 += 18)
      {
        if ((*v6 + 1) > 1)
        {
          break;
        }
      }
    }

    while (v6 != v9);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(IPC::Encoder *a1, float a2)
{
  result = IPC::Encoder::grow(a1, 4uLL, 4);
  if (v4 <= 3)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(IPC::Encoder *a1, float *a2)
{
  v4 = a2[1];
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
  v5 = a2[3];
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[2]);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v5);
}

uint64_t IPC::ArgumentCoder<WebCore::ScreenData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 44));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 48));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 49));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 50));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 51));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  v4 = *(a2 + 60);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(IPC::Encoder *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  IPC::ArgumentCoder<CGColorSpace *,void>::encode(a1, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_19D590528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<CGColorSpace *,void>::encode(IPC::Encoder *a1, CGColorSpace *a2)
{
  WebKit::CoreIPCCGColorSpace::CoreIPCCGColorSpace(v5, a2);
  v3 = v6;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v6);
  IPC::ArgumentCoder<mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>> const&>(a1, v5, v3);
  return mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(v5);
}

WebKit::CoreIPCCGColorSpace *WebKit::CoreIPCCGColorSpace::CoreIPCCGColorSpace(WebKit::CoreIPCCGColorSpace *this, CGColorSpace *a2)
{
  *this = 0;
  *(this + 8) = 0;
  v4 = WebCore::colorSpaceForCGColorSpace(a2, a2);
  v13 = v4;
  if ((v4 & 0x100) == 0)
  {
    Name = CGColorSpaceGetName(a2);
    v7 = Name;
    if (Name)
    {
      CFRetain(Name);
      v8 = *(this + 8);
      if (!*(this + 8) || v8 == 255)
      {
LABEL_8:
        *this = v7;
        *(this + 8) = 1;
        return this;
      }

      if (v8 != 1)
      {
        v10 = *this;
        *this = 0;
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_8;
      }

      v9 = *this;
      *this = v7;
      if (!v9)
      {
        return this;
      }
    }

    else
    {
      v12 = CGColorSpaceCopyPropertyList(a2);
      if (!v12)
      {
        v11 = 17;
        mpark::detail::impl<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::assign<0ul,WebCore::ColorSpace>(this, &v11);
        return this;
      }

      mpark::detail::impl<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::assign<2ul,WTF::RetainPtr<void const*>>(this, &v12);
      v9 = v12;
      v12 = 0;
      if (!v9)
      {
        return this;
      }
    }

    CFRelease(v9);
    return this;
  }

  if (*(this + 8))
  {
    mpark::detail::assignment<mpark::detail::traits<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>>::emplace<0ul,WebCore::ColorSpace&>(this, &v13);
  }

  else
  {
    *this = v4;
  }

  return this;
}

void sub_19D5906C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  mpark::variant<WebCore::ColorSpace,WTF::RetainPtr<__CFString const*>,WTF::RetainPtr<void const*>>::~variant(v11);
  _Unwind_Resume(a1);
}

WebKit::SandboxExtensionImpl *IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<std::optional<WebCore::ColorDataForIPC>,void>::encode<IPC::Encoder,std::optional<WebCore::ColorDataForIPC>>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

mpark *IPC::ArgumentCoder<std::optional<WebCore::ColorDataForIPC>,void>::encode<IPC::Encoder,std::optional<WebCore::ColorDataForIPC>>(IPC::Encoder *a1, char *a2)
{
  if (a2[28])
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (a2[28])
    {
      return IPC::ArgumentCoder<WebCore::ColorDataForIPC,void>::encode(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::ArgumentCoder<WebCore::Color,void>::encode(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

mpark *IPC::ArgumentCoder<WebCore::ColorDataForIPC,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  v4 = a2[24];
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[24]);

  return IPC::ArgumentCoder<mpark::variant<WebCore::PackedColor::RGBA,WebCore::OutOfLineColorDataForIPC>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PackedColor::RGBA,WebCore::OutOfLineColorDataForIPC> const&>(a1, (a2 + 4), v4);
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::IntSize>(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[1]);
  return a1;
}

uint64_t IPC::ArgumentCoder<WebKit::AccessibilityPreferences,void>::encode(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 20);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 21);

  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 22);
}

uint64_t *IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t *a2)
{
  if (*a2)
  {
    v4 = *(*a2 - 12);
  }

  else
  {
    v4 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  result = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v5, v6);
  v8 = result;
  v13[0] = result;
  v13[1] = v9;
  if (*a2)
  {
    v10 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v8);
      v13[0] += 8;
      result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v13, v11, v12);
      v8 = v13[0];
    }

    while (v13[0] != v10);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a3);
  if (a3)
  {

    return IPC::Encoder::encodeSpan<unsigned long long const,18446744073709551615ul>(a1, a2, a3);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendMessage(uint64_t a1, IPC::Encoder **a2, char a3, uint64_t *a4, int a5)
{
  isMainRunLoop = WTF::isMainRunLoop(a1);
  if ((isMainRunLoop & 1) == 0)
  {
    add = atomic_fetch_add((a1 + 16), 1u);
    v16 = *a2;
    *a2 = 0;
    v17 = *(a4 + 16);
    if (v17 == 1)
    {
      v18 = *a4;
      v5 = a4[1];
      *a4 = 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = WTF::fastMalloc(add, 0x40);
    *v19 = &unk_1F1114C60;
    v19[1] = a1;
    v19[2] = v16;
    *(v19 + 24) = a3;
    *(v19 + 32) = 0;
    *(v19 + 48) = 0;
    if (v17)
    {
      v19[4] = v18;
      v19[5] = v5;
      *(v19 + 48) = 1;
      v18 = 0;
    }

    *(v19 + 56) = a5;
    v59 = v19;
    WTF::callOnMainRunLoop();
    v20 = v59;
    v59 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
      if (v17)
      {
LABEL_13:
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }
    }

    else if (v17)
    {
      goto LABEL_13;
    }

    return 1;
  }

  if (*(a4 + 16) == 1 && ((v14 = *(a1 + 80)) != 0 && (*(v14 + 104) & 1) != 0 || *(a1 + 88)))
  {
    if (a5)
    {
      v21 = *a4;
      *a4 = 0;
      v22 = *(*(a1 + 160) + 8);
      if (!v22)
      {
        result = 92;
        __break(0xC471u);
        goto LABEL_58;
      }

      atomic_fetch_add((v22 + 16), 1u);
      v23 = **a2;
      if (v23 >= 0x107F)
      {
        v23 = 4223;
      }

      v24 = &(&IPC::Detail::messageDescriptions)[3 * v23];
      v25 = *v24;
      v26 = v24[1];
      v27 = WebKit::ProcessThrottlerActivity::operator new(0x30, v12);
      WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v27, a1 + 144, v25, v26, 0, 1);
      result = WTF::fastMalloc(v28, 0x18);
      *result = &unk_1F1114C88;
      *(result + 8) = v27;
      *(result + 16) = v21;
      if ((a4[2] & 1) == 0)
      {
        goto LABEL_58;
      }

      v31 = result;
      v32 = *a4;
      *a4 = v31;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      isMainRunLoop = WebKit::ProcessThrottler::deref((a1 + 144), v30);
    }
  }

  v33 = *(a1 + 80);
  if (v33 && (*(v33 + 104) & 1) != 0)
  {
    v34 = *a2;
    *a2 = 0;
    v59 = v34;
    v60 = a3;
    LOBYTE(v61) = 0;
    v63 = 0;
    v35 = *(a4 + 16);
    if (v35 == 1)
    {
      v36 = *a4;
      v13 = a4[1];
      *a4 = 0;
      v61 = v36;
      v62 = v13;
      v63 = 1;
    }

    v37 = *(a1 + 76);
    if (v37 == *(a1 + 72))
    {
      v38 = WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((a1 + 64), v37 + 1, &v59);
      v39 = *(a1 + 64) + 40 * *(a1 + 76);
      v40 = *v38;
      *v38 = 0;
      *v39 = v40;
      *(v39 + 8) = *(v38 + 8);
      *(v39 + 16) = 0;
      *(v39 + 32) = 0;
      if (*(v38 + 32) == 1)
      {
        v41 = *(v38 + 16);
        *(v38 + 16) = 0;
        *(v39 + 16) = v41;
        *(v39 + 24) = *(v38 + 24);
        *(v39 + 32) = 1;
      }

      ++*(a1 + 76);
      if (v63)
      {
        v42 = v61;
        v61 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }
      }
    }

    else
    {
      v53 = *(a1 + 64);
      v59 = 0;
      v54 = v53 + 40 * v37;
      *v54 = v34;
      *(v54 + 8) = a3;
      *(v54 + 16) = 0;
      *(v54 + 32) = 0;
      if (v35)
      {
        *(v54 + 16) = v61;
        *(v54 + 24) = v13;
        *(v54 + 32) = 1;
        ++*(a1 + 76);
        v61 = 0;
      }

      else
      {
        ++*(a1 + 76);
      }
    }

    v55 = v59;
    v59 = 0;
    if (v55)
    {
      IPC::Encoder::~Encoder(v55, v12);
      bmalloc::api::tzoneFree(v56, v57);
    }

    return 1;
  }

  if (*(a1 + 88))
  {
    if (*(a4 + 16) == 1)
    {
      result = WebKit::AuxiliaryProcessProxy::protectedConnection(&v59, a1);
      if ((a4[2] & 1) == 0)
      {
        goto LABEL_58;
      }

      v43 = v59;
      v44 = *a4;
      v45 = a4[1];
      *a4 = 0;
      v58[0] = v44;
      v58[1] = v45;
      v47 = IPC::Connection::sendMessageWithAsyncReply(v43, a2, v58, a3, 0);
      v48 = v58[0];
      v58[0] = 0;
      if (v48)
      {
        (*(*v48 + 8))(v48);
      }
    }

    else
    {
      WebKit::AuxiliaryProcessProxy::protectedConnection(&v59, a1);
      v47 = IPC::Connection::sendMessageImpl(v59, a2, a3, 0);
    }

    isMainRunLoop = v59;
    v59 = 0;
    if (isMainRunLoop)
    {
      isMainRunLoop = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(isMainRunLoop, v46);
    }

    if (!v47)
    {
      return 1;
    }
  }

  if (*(a4 + 16) != 1 || !*a4)
  {
    return 0;
  }

  result = WTF::RunLoop::currentSingleton(isMainRunLoop);
  v49 = *(a4 + 16);
  if (v49)
  {
    v50 = *a4;
    *a4 = 0;
    v51 = WTF::fastMalloc(v49, 0x10);
    *v51 = &unk_1F1114CB0;
    v51[1] = v50;
    v59 = v51;
    WTF::RunLoop::dispatch();
    v52 = v59;
    v59 = 0;
    if (v52)
    {
      (*(*v52 + 8))(v52);
    }

    return 0;
  }

LABEL_58:
  __break(1u);
  return result;
}

unint64_t WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(WTF **a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF **WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 40 * a2;
      result = WTF::fastMalloc((5 * a2), (40 * a2));
      *(v2 + 8) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 0;
        v9 = 40 * v4;
        do
        {
          v10 = &v7[v8 / 8];
          v11 = v3 + v8;
          v12 = *(v3 + v8);
          *(v3 + v8) = 0;
          *v10 = v12;
          v10[8] = *(v3 + v8 + 8);
          v10[16] = 0;
          v10[32] = 0;
          if (*(v3 + v8 + 32) == 1)
          {
            v13 = *(v11 + 2);
            *(v11 + 2) = 0;
            *(v10 + 2) = v13;
            *(v10 + 3) = *(v11 + 3);
            v10[32] = 1;
            if (v11[32])
            {
              v14 = *(v11 + 2);
              *(v11 + 2) = 0;
              if (v14)
              {
                (*(*v14 + 8))(v14);
              }
            }
          }

          result = std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + v8), 0);
          v8 += 40;
        }

        while (v9 != v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 8) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

unsigned int *WebKit::WebProcessPool::setMediaAccessibilityPreferences(WebKit::WebProcessPool *this, WebKit::WebProcessProxy *a2)
{
  if (qword_1ED642628 != -1)
  {
    dispatch_once(&qword_1ED642628, &__block_literal_global_21);
  }

  v3 = qword_1ED642620;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyE_block_invoke_2;
  block[3] = &__block_descriptor_40_e8_32c92_ZTSKZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyEE3__0_e5_v8__0l;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
    v8 = v4;
    dispatch_async(v3, block);
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, v5);
    }
  }

  else
  {
    v8 = 0;
    dispatch_async(v3, block);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

dispatch_queue_t ___ZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyE_block_invoke()
{
  result = dispatch_queue_create("MediaAccessibility queue", 0);
  qword_1ED642620 = result;
  if (result)
  {

    return result;
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c92_ZTSKZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyEE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  *(result + 32) = v2;
  return result;
}

uint64_t initBKSDisplayBrightnessGetCurrent(void)
{
  if (byte_1ED64260D == 1)
  {
    v0 = qword_1ED642648;
  }

  else
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices", 2);
    if (!v0)
    {
      goto LABEL_9;
    }

    qword_1ED642648 = v0;
    byte_1ED64260D = 1;
  }

  v1 = dlsym(v0, "BKSDisplayBrightnessGetCurrent");
  softLinkBKSDisplayBrightnessGetCurrent = v1;
  if (!v1)
  {
LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x19D59142CLL);
  }

  return v1();
}

uint64_t ___ZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyE_block_invoke_2(atomic_uint **a1)
{
  v2 = WebCore::CaptionUserPreferencesMediaAF::platformCaptionDisplayMode(a1);
  v3 = v2;
  WebCore::CaptionUserPreferencesMediaAF::platformPreferredLanguages(v16, v2);
  v4 = a1[4];
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  v12 = v4;
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(v16, &v13);
  v6 = WTF::fastMalloc(v5, 0x28);
  *v6 = &unk_1F1105F58;
  v6[1] = v12;
  *(v6 + 16) = v3;
  v6[3] = v13;
  v7 = v14;
  v13 = 0;
  v14 = 0;
  v6[4] = v7;
  v15 = v6;
  WTF::callOnMainRunLoop();
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v8);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v10);
}

void sub_19D591570(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14, a2, a3, a4, a5, a6, a7, a8);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14 + 16, a2);
  if (a10)
  {
    if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10);
      WTF::fastFree(a10, v17);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 - 32, v17);
  _Unwind_Resume(a1);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::BacklightLevelDidChange>(uint64_t a1, float *a2, size_t a3, char a4)
{
  if (*(a1 + 114) != 1)
  {
    v8 = IPC::Encoder::operator new(0x238, a2);
    *v8 = 2929;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = a3;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v29 = v8;
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v8, *a2);
    LOBYTE(v26) = 0;
    v27 = 0;
    v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v29, a4, &v26, 1);
    if (v27 == 1)
    {
      v11 = v26;
      v26 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    v12 = v29;
    v29 = 0;
    if (!v12)
    {
      return v10;
    }

    goto LABEL_19;
  }

  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 2929;
  v14[2] = 0;
  v14[3] = 0;
  v14[1] = a3;
  v15 = v14 + 68;
  v14[68] = 0;
  v14[70] = 0;
  v14[69] = 0;
  result = IPC::Encoder::encodeHeader(v14);
  v17 = v14[2];
  if (v17)
  {
    v18 = v14[3];
  }

  else
  {
    v17 = v14 + 4;
    v18 = 512;
  }

  v19 = *v15;
  if (v18 < *v15)
  {
    __break(1u);
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = v19;
    if (!v19)
    {
      goto LABEL_14;
    }

    if (!HIDWORD(v19))
    {
      v30 = v19;
      v29 = WTF::fastMalloc(0, v19);
      memcpy(v29, v17, v19);
LABEL_14:
      v20 = IPC::Encoder::operator new(0x238, v16);
      *v20 = 2929;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 1) = a3;
      *(v20 + 68) = 0;
      *(v20 + 70) = 0;
      *(v20 + 69) = 0;
      IPC::Encoder::encodeHeader(v20);
      v28 = v20;
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v20, *a2);
      v10 = WebKit::AuxiliaryProcessProxy::sendMessageAfterResuming(a1, &v29, &v28);
      if (v28)
      {
        IPC::Encoder::~Encoder(v28, v9);
        bmalloc::api::tzoneFree(v24, v25);
      }

      v21 = v29;
      if (v29)
      {
        v29 = 0;
        v30 = 0;
        WTF::fastFree(v21, v9);
      }

      v12 = v14;
LABEL_19:
      IPC::Encoder::~Encoder(v12, v9);
      bmalloc::api::tzoneFree(v22, v23);
      return v10;
    }
  }

  __break(0xC471u);
  return result;
}

void sub_19D591824(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  IPC::Encoder::~Encoder(v13, a2);
  bmalloc::api::tzoneFree(v15, v16);
  _Unwind_Resume(a1);
}

void WebKit::WebProcessPool::registerHighDynamicRangeChangeCallback(WebKit::WebProcessPool *this, unint64_t a2)
{
  {
    *v2 = &unk_1F1106608;
    v4 = v2;
    MEMORY[0x19EB08CD0](&WebKit::WebProcessPool::registerHighDynamicRangeChangeCallback(void)::notifier, &v4);
    v3 = v4;
    v4 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

void sub_19D591964(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebProcessCreationParameters::~WebProcessCreationParameters(WebKit::WebProcessCreationParameters *this, void *a2)
{
  WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 784, a2);
  v4 = *(this + 96);
  if (v4)
  {
    *(this + 96) = 0;
    *(this + 194) = 0;
    WTF::fastFree(v4, v3);
  }

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 744, v3);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 728, v5);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 712, v6);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 696, v7);
  v9 = *(this + 86);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v8);
  }

  v10 = *(this + 85);
  if (v10)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v10, v8);
  }

  v11 = *(this + 84);
  *(this + 84) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  v12 = *(this + 77);
  *(this + 77) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  v13 = *(this + 76);
  *(this + 76) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  v14 = *(this + 75);
  if ((v14 & 0x8000000000000) != 0)
  {
    v45 = (v14 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v45);
      WTF::fastFree(v45, v8);
    }
  }

  v15 = *(this + 74);
  if (v15)
  {
    WTF::HashTable<WebCore::CSSValueKey,WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::CSSValueKey,WebCore::Color>>,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::CSSValueKey>,WTF::FastMalloc>::deallocateTable(v15, v8);
  }

  if (*(this + 576) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 71);
  }

  if (*(this + 560) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 69);
  }

  if (*(this + 544) == 1)
  {
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(this + 56);
  }

  v16 = *(this + 53);
  if (v16)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebCore::ScreenData>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebCore::ScreenData>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebCore::ScreenData,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebCore::ScreenData>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v16, v8);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 400, v8);
  v18 = *(this + 49);
  *(this + 49) = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 48);
  if (v19)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v19, v17);
  }

  v20 = *(this + 47);
  *(this + 47) = 0;
  if (v20)
  {
    CFRelease(*(v20 + 8));
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 45);
  v22 = *(this + 44);
  *(this + 44) = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  v23 = *(this + 41);
  *(this + 41) = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v21);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 280, v21);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 264, v24);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 248, v25);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 232, v26);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v27);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 200, v28);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 184, v29);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 168, v30);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 152, v31);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 136, v32);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 120, v33);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, v34);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v35);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 72, v36);
  v38 = *(this + 8);
  *(this + 8) = 0;
  if (v38)
  {
    CFRelease(*(v38 + 8));
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, v37);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 5);
  v40 = *(this + 4);
  *(this + 4) = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v39);
  }

  std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](this + 3, v39);
  v42 = *(this + 2);
  *(this + 2) = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v41);
  }

  v43 = *(this + 1);
  *(this + 1) = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v41);
  }

  v44 = *this;
  *this = 0;
  if (v44)
  {
    if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v41);
    }
  }
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::SpeechRecognitionAlternativeData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 16);
    }

    while (v3 != a2);
  }

  return result;
}

void API::Data::~Data(API::Data *this)
{
  *this = &unk_1F10E8400;
  (*(**(this + 4) + 16))(*(this + 4));
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  API::Data::~Data(this);

  JUMPOUT(0x19EB14CF0);
}

void sub_19D591E58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<API::Data::createWithoutCopying(NSData *)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10F1858;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl ****std::unique_ptr<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::~unique_ptr[abi:sn200100](WTF::StringImpl ****a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*v3)
    {
      v5 = v3;
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v3, a2);
      v3 = v5;
    }

    WTF::fastFree(v3, a2);
  }

  return a1;
}

unint64_t WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(void **a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc(0, (8 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 8 * v5);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

WTF *WTF::CrossThreadCopierBase<false,false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a1;
    v6 = 8 * v4;
    do
    {
      WTF::String::isolatedCopy();
      v8 = *v5;
      *v5 = v10;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      v10 = 0;
      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  *a2 = 0;
  a2[1] = 0;
  return WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a2, a1);
}

void sub_19D592168(_Unwind_Exception *exception_object, void *a2)
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

unsigned int *__destroy_helper_block_e8_32c92_ZTSKZN6WebKit14WebProcessPool32setMediaAccessibilityPreferencesERNS_15WebProcessProxyEE3__0(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
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

WTF::StringImpl *WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WebKit::WebsiteDataStore *a1)
{
  v2 = WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(a1);
  v3 = *a1;
  *a1 = 0;
  v10 = v3;
  WebKit::defaultWebsiteDataStoreRootDirectory();
  WTF::String::isolatedCopy();
  v5 = WTF::fastMalloc(v4, 0x18);
  *v5 = &unk_1F110C2F8;
  v5[1] = v10;
  v5[2] = v11;
  v12 = v5;
  (*(*v2 + 48))(v2, &v12);
  v7 = v12;
  v12 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v9;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v9, v6);
    }
  }

  return result;
}

void sub_19D592310(_Unwind_Exception *exception_object, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12)
{
  v14 = *(v12 - 24);
  *(v12 - 24) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
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

uint64_t WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(WebKit::WebsiteDataStore *this)
{
  {
    return WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(void)::queue;
  }

  WTF::WorkQueue::create();
  result = v2;
  WebKit::WebsiteDataStore::websiteDataStoreIOQueueSingleton(void)::queue = v2;
  return result;
}

void WebKit::defaultWebsiteDataStoreRootDirectory()
{
  if ((byte_1ED64278D & 1) == 0)
  {
    qword_1ED6427E0 = 0;
    byte_1ED64278D = 1;
  }

  if (qword_1ED6427D8 != -1)
  {
    dispatch_once(&qword_1ED6427D8, &__block_literal_global_263);
  }

  [objc_msgSend(qword_1ED6427E0 "absoluteURL")];

  JUMPOUT(0x19EB02040);
}

void ___ZN6WebKitL36defaultWebsiteDataStoreRootDirectoryEv_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (!v0)
  {
    __break(0xC471u);
    return;
  }

  v12 = v0;
  v1 = v0;
  v2 = [v12 URLByAppendingPathComponent:@"WebKit" isDirectory:1];
  v3 = v2;
  if (v2)
  {
    v2 = v2;
  }

  if ((WebKit::processHasContainer(v2) & 1) == 0)
  {
    WebKit::applicationOrProcessIdentifier(&v14);
    v4 = v14;
    v5 = [v3 URLByAppendingPathComponent:v14 isDirectory:1];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    if (v3)
    {

      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
LABEL_10:
      v3 = v6;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v8 = [v3 URLByAppendingPathComponent:@"WebsiteDataStore" isDirectory:{1, v12}];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = qword_1ED6427E0;
  qword_1ED6427E0 = v9;
  if (v11)
  {

    if (!v3)
    {
      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_15;
  }

  if (v3)
  {
    goto LABEL_19;
  }

LABEL_15:
}

void sub_19D592660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

WTF *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1, const WTF::String *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  result = WTF::FileSystemImpl::listDirectory(&v22, (a1 + 16), a2);
  v24 = 0;
  v25 = 0;
  v4 = v23;
  if (!v23)
  {
    goto LABEL_9;
  }

  v5 = (v23 >> 28);
  if (v5)
  {
    __break(0xC471u);
    return result;
  }

  v6 = WTF::fastMalloc(v5, (16 * v23));
  LODWORD(v25) = v4;
  v24 = v6;
  if (v23)
  {
    v7 = 0;
    v8 = v22;
    v9 = 8 * v23;
    do
    {
      WTF::UUID::parse();
      if (v28 == 1)
      {
        v10 = v27;
        v11 = &v6[2 * v7];
        *v11 = v26;
        v11[1] = v10;
        ++v7;
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
    HIDWORD(v25) = v7;
    v12 = v7;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v24, v12);
  v14 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v13);
  WTF::RunLoop::mainSingleton(v14);
  v15 = *(a1 + 8);
  *(a1 + 8) = 0;
  v16 = v24;
  v17 = v25;
  v24 = 0;
  v25 = 0;
  v19 = WTF::fastMalloc(v18, 0x20);
  *v19 = &unk_1F110C320;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  v26 = v19;
  WTF::RunLoop::dispatch();
  v21 = v26;
  v26 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  result = v24;
  if (v24)
  {
    v24 = 0;
    LODWORD(v25) = 0;
    return WTF::fastFree(result, v20);
  }

  return result;
}

void sub_19D592878(_Unwind_Exception *exception_object, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WTF *a11, int a12, int a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t *result, unint64_t a2)
{
  if (*(result + 2) > a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 3);
    if (v4 > a2)
    {
      *(result + 3) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *result;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(0, (16 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 16 * v4;
        v7 = v5;
        do
        {
          v8 = *v7;
          v7 = (v7 + 16);
          *result = v8;
          result += 2;
          v6 -= 16;
        }

        while (v6);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::fetchAllDataStoreIdentifiers(WTF::CompletionHandler<void ()(WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F110C2F8;
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

WTF::ThreadSafeWeakPtrControlBlock *WTF::BlockPtr<void ()(BEWebContentProcess *,NSError *)>::fromCallable<WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0>(WebKit::launchWithExtensionKit(WebKit::ProcessLauncher &,WebKit::ProcessLaunchType,WebKit::ProcessLauncher::Client *,WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)> &&)::$_0)::{lambda(void *,BEWebContentProcess *,NSError *)#1}::__invoke(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[5];
  v5 = a1[6];
  v11 = v6;
  if (v5)
  {
    v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  if (a2)
  {
    v8 = a2;
  }

  WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)>::operator()(a1[4], &v11);
  if (a2)
  {
  }

  result = v12;
  if (v12)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v12, v9);
  }

  return result;
}

void sub_19D592BE0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::ThreadSafeWeakPtrControlBlock *WTF::Function<void ()(WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = v2;
  v7 = v3;
  (*(*a1 + 16))(a1, &v6);
  result = v7;
  v7 = 0;
  if (result)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v4);
  }

  return result;
}

void sub_19D592C8C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::ThreadSafeWeakPtrControlBlock *a10)
{
  if (a10)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WTF::Detail::CallableWrapper<WebKit::ProcessLauncher::launchProcess(void)::$_0,void,WTF::ThreadSafeWeakPtr<WebKit::ProcessLauncher,WTF::NoTaggingTraits<WebKit::ProcessLauncher>>,WebKit::ExtensionProcess &&,WTF::ASCIILiteral,NSError *>::call(uint64_t a1, uint64_t *a2, WebKit::ExtensionProcess *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *MEMORY[0x1E69E9840];
  v47 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v8 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (a6)
  {
    v11 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_FAULT))
    {
      MEMORY[0x19EB02040](&v42, [a6 localizedDescription]);
      WTF::String::utf8();
      if (v43)
      {
        v32 = v43 + 16;
      }

      else
      {
        v32 = 0;
      }

      MEMORY[0x19EB02040](&v40, [a6 localizedFailureReason]);
      WTF::String::utf8();
      if (v41)
      {
        v33 = v41 + 16;
      }

      else
      {
        v33 = 0;
      }

      *buf = 136315394;
      *&buf[4] = v32;
      v45 = 2080;
      v46 = v33;
      _os_log_fault_impl(&dword_19D52D000, v11, OS_LOG_TYPE_FAULT, "Error launching process, description '%s', reason '%s'", buf, 0x16u);
      v35 = v41;
      v41 = 0;
      if (v35)
      {
        add_explicit = (*v35 - 1);
        if (*v35 == 1)
        {
          WTF::fastFree(v35, v34);
        }

        else
        {
          *v35 = add_explicit;
        }
      }

      v36 = v40;
      v40 = 0;
      if (v36)
      {
        add_explicit = atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed);
        if (add_explicit == 2)
        {
          WTF::StringImpl::destroy(v36, v34);
        }
      }

      v37 = v43;
      v43 = 0;
      if (v37)
      {
        add_explicit = (*v37 - 1);
        if (*v37 == 1)
        {
          WTF::fastFree(v37, v34);
        }

        else
        {
          *v37 = add_explicit;
        }
      }

      v38 = v42;
      v42 = 0;
      if (v38)
      {
        add_explicit = atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed);
        if (add_explicit == 2)
        {
          WTF::StringImpl::destroy(v38, v34);
        }
      }
    }

    if (v8)
    {
      v13 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
    }

    else
    {
      v13 = 0;
    }

    v14 = WTF::fastMalloc(add_explicit, 0x18);
    *v14 = &unk_1F1108308;
    v14[1] = v9;
    v14[2] = v13;
    *buf = v14;
    WTF::callOnMainRunLoop();
    v15 = *buf;
    *buf = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    WebKit::ExtensionProcess::invalidate(a3);
  }

  else
  {
    v19 = WTF::fastMalloc(v7, 0x18);
    *v19 = 1;
    v19[1] = 0;
    v19[2] = 0;
    v20 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v42 = v20;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v41 = v43;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    aBlock = 0;
    v40 = v43;
    v43 = 0;
    WebKit::AssertionCapability::AssertionCapability(buf, &v42, &v41, &v40, &v43, &aBlock);
    if (aBlock)
    {
      (*(*aBlock + 8))(aBlock);
    }

    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    v22 = v40;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v41;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v21);
    }

    v24 = v42;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v21);
    }

    aBlock = _Block_copy(&__block_literal_global_31);
    WebKit::ExtensionProcess::grantCapability(a3, &buf[8], &aBlock, &v43);
    _Block_release(aBlock);
    WebKit::ExtensionCapabilityGrant::setPlatformGrant((v19 + 1), &v43);
    v25 = v43;
    v43 = 0;
    if (v25)
    {
    }

    WebKit::AssertionCapability::~AssertionCapability(buf);
    if (v8)
    {
      v27 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
    }

    else
    {
      v27 = 0;
    }

    v28 = *(a3 + 8);
    if (v28 == 255)
    {
      v29 = 0;
    }

    else
    {
      v29 = *a3;
      *a3 = 0;
    }

    v30 = WTF::fastMalloc(v26, 0x40);
    *v30 = &unk_1F1108330;
    v30[1] = v9;
    v30[2] = v27;
    v30[3] = a4;
    v30[4] = a5;
    *(v30 + 40) = 0;
    *(v30 + 48) = -1;
    if (v28 != 255)
    {
      v30[5] = v29;
      *(v30 + 48) = v28;
      v29 = 0;
    }

    v30[7] = v19;
    *buf = v30;
    WTF::callOnMainRunLoop();
    v31 = *buf;
    *buf = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    if (v28 != 255 && v29)
    {
    }
  }

  if (v8)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v8, v16);
  }
}