void sub_19D78A8F0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *&STACK[0x270];
  if (LOBYTE(STACK[0xA98]) == 1)
  {
    v23 = STACK[0xA90];
    STACK[0xA90] = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, a2);
      }
    }
  }

  if (LOBYTE(STACK[0xAD0]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0xAC8]);
  }

  if (LOBYTE(STACK[0xAE8]) == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xAD8], a2);
  }

  if (LOBYTE(STACK[0xB00]) == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xAF0], a2);
  }

  if (LOBYTE(STACK[0xB60]) == 1 && LOBYTE(STACK[0xB58]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xB48], a2);
  }

  if (LOBYTE(STACK[0xB88]) == 1)
  {
    v24 = STACK[0xB80];
    STACK[0xB80] = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, a2);
      }
    }
  }

  std::optional<std::optional<WebKit::RemotePageParameters>>::~optional(&STACK[0xB90], a2);
  if (LOBYTE(STACK[0xC88]) == 1)
  {
    v26 = STACK[0xC80];
    STACK[0xC80] = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }
    }
  }

  if ((STACK[0x3F8] & 1) != 0 && (STACK[0x3F4] & 1) != 0 && a10)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a10, v22);
  }

  if (LOBYTE(STACK[0xC98]) == 1 && STACK[0xC90])
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(STACK[0xC90], v25);
  }

  if (LOBYTE(STACK[0xCB0]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xCA0], v25);
  }

  if (LOBYTE(STACK[0xCC0]) == 1)
  {
    v27 = STACK[0xCB8];
    STACK[0xCB8] = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }
  }

  std::optional<std::optional<WebCore::Color>>::~optional(&STACK[0xCE0], v25);
  if (LOBYTE(STACK[0xD20]) == 1 && LOBYTE(STACK[0xD18]) == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xD08], v28);
  }

  std::optional<WebKit::UserContentControllerParameters>::~optional(&STACK[0xD28], v28);
  if (LOBYTE(STACK[0xEA0]) == 1 && LOBYTE(STACK[0xE98]) == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(&STACK[0xD88], v29);
  }

  if (LOBYTE(STACK[0xEB8]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xEA8], v29);
    if ((STACK[0x3FC] & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (!LODWORD(STACK[0x3FC]))
  {
    goto LABEL_37;
  }

  if (STACK[0x348])
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(STACK[0x348], v29);
  }

LABEL_37:
  if (LOBYTE(STACK[0xEE0]) == 1)
  {
    v30 = STACK[0xED8];
    STACK[0xED8] = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v29);
      }
    }
  }

  if (LOBYTE(STACK[0xEF8]) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xEE8], v29);
  }

  if (LOBYTE(STACK[0xF10]) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xF00], v29);
  }

  if (LOBYTE(STACK[0xF28]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xF18], v29);
  }

  std::optional<WebCore::Color>::~optional(&STACK[0xF30], v29);
  if (LOBYTE(STACK[0xF80]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xF70], v31);
  }

  if (LOBYTE(STACK[0xFA8]) == 1)
  {
    v32 = STACK[0xFA0];
    STACK[0xFA0] = 0;
    if (v32)
    {
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v31);
      }
    }
  }

  std::optional<WebCore::Color>::~optional(v20 - 232, v31);
  if (a20 && STACK[0x3E8] && atomic_fetch_add_explicit(STACK[0x3E8], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(STACK[0x3E8], v33);
  }

  std::optional<WebKit::WebPreferencesStore>::~optional(v20 - 216);
  _Unwind_Resume(a1);
}

void sub_19D78B340(uint64_t a1, void *a2)
{
  std::optional<WebCore::Color>::~optional(v3 - 232, a2);
  if (!v2)
  {
    JUMPOUT(0x19D78B194);
  }

  JUMPOUT(0x19D78B18CLL);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::ActivityState>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::ActivityState>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

WTF *IPC::Decoder::decode<WebKit::WebPreferencesStore>(uint64_t a1, IPC::Decoder *this, double a3, __n128 a4)
{
  result = IPC::ArgumentCoder<WebKit::WebPreferencesStore,void>::decode(this, a1, a3, a4);
  if ((*(a1 + 48) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PaginationMode>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::PaginationMode,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::MediaProducerMutedState>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::MediaProducerMutedState>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::ScrollbarOverlayStyle>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::ScrollbarOverlayStyle>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::Decoder::decode<WebKit::HardwareKeyboardState>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebKit::HardwareKeyboardState,void>::decode(a1);
  if (!BYTE3(v2))
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WebCore::UserInterfaceLayoutDirection>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 > 1)
  {
LABEL_8:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(v6);
    v4 = 0;
    v3 = 0;
    return v4 | v3;
  }

  v3 = v2 != 0;
  v4 = 256;
  return v4 | v3;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::LayoutMilestone>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::LayoutMilestone>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::Decoder::decode<WebCore::HighlightVisibility>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::HighlightVisibility,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, void *a3@<X1>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a3, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D78B634(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebKit::RemotePageParameters>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 216) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((a1 + 96), a2);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v5)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v5, v4);
    }

    v6 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }

  return a1;
}

void WebKit::WebPreferencesStore::~WebPreferencesStore(WebKit::WebPreferencesStore *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v2, *(this + 8));
  }

  if (*this)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*this, *(this + 2));
  }
}

uint64_t std::optional<std::optional<WebKit::RemotePageParameters>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 232) == 1 && *(a1 + 224) == 1)
  {
    if (*(a1 + 216) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((a1 + 96), a2);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v5)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v5, v4);
    }

    v6 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }

  return a1;
}

uint64_t std::optional<WebKit::UserContentControllerParameters>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 88) == 1)
  {
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, a2);
    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v3);
    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v4);
    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 24), v5);
    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, v6);
  }

  return a1;
}

uint64_t std::optional<WebKit::WebPreferencesStore>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v2, *(a1 + 32));
    }

    if (*a1)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*a1, *(a1 + 8));
    }
  }

  return a1;
}

WTF *IPC::Decoder::decode<WebKit::FrameTreeCreationParameters>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v5;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v61);
  if ((v63 & 1) == 0)
  {
    v35 = *a2;
    v36 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (v37 && v36 != 0)
    {
      (*(*v37 + 16))(v37, v35);
    }
  }

  IPC::Decoder::decode<WTF::String>(a2, &v59);
  IPC::Decoder::decode<WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>>>(a2, &v57);
  v8 = *(a2 + 1);
  v9 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a2;
  v11 = v9 - *a2;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (!v12 || v13 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v51 = *(a2 + 3);
    if (v51)
    {
      if (v8)
      {
        (*(*v51 + 16))(v51);
        v8 = *(a2 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_86;
  }

  *(a2 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_86:
    *a2 = 0;
    *(a2 + 1) = 0;
    v52 = *(a2 + 3);
    if (v52 && v8)
    {
      (*(*v52 + 16))(v52);
    }

    LOBYTE(v55) = 0;
    v56 = 0;
LABEL_88:
    v43 = *a2;
    v53 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v53)
    {
      result = (*(*result + 16))(result, v43);
    }

    goto LABEL_58;
  }

  v15 = *v9;
  v70 = 0;
  v71 = 0;
  if (v15 >= 0x4924)
  {
    v26 = v56;
    do
    {
      IPC::Decoder::decode<WebKit::FrameTreeCreationParameters>(&v64, a2);
      v27 = v69;
      if (v69)
      {
        if (HIDWORD(v71) == v71)
        {
          WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeCreationParameters>(&v70, &v64);
        }

        else
        {
          v28 = v70 + 56 * HIDWORD(v71);
          v29 = v64;
          v28[16] = v65;
          *v28 = v29;
          v30 = v66;
          v66 = 0;
          *(v28 + 3) = v30;
          v31 = v67;
          v67 = 0;
          *(v28 + 5) = 0;
          *(v28 + 6) = 0;
          *(v28 + 4) = v31;
          v32 = v68;
          *&v68 = 0;
          *(v28 + 5) = v32;
          LODWORD(v32) = DWORD2(v68);
          DWORD2(v68) = 0;
          *(v28 + 12) = v32;
          LODWORD(v32) = HIDWORD(v68);
          HIDWORD(v68) = 0;
          *(v28 + 13) = v32;
          ++HIDWORD(v71);
        }
      }

      else
      {
        v26 = 0;
      }

      if (v69 == 1)
      {
        WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v10);
        v33 = v67;
        v67 = 0;
        if (v33)
        {
          WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v33, v10);
        }

        v34 = v66;
        v66 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v10);
        }
      }

      if ((v27 & 1) == 0)
      {
        LOBYTE(v55) = 0;
        v56 = v26;
        goto LABEL_57;
      }

      --v15;
    }

    while (v15);
    LOBYTE(v55) = 0;
    v56 = v26;
    v39 = HIDWORD(v71);
    if (v71 > HIDWORD(v71))
    {
      result = v70;
      if (HIDWORD(v71))
      {
        v54 = v70;
        if (HIDWORD(v71) >= 0x4924925)
        {
          __break(0xC471u);
          goto LABEL_96;
        }

        v41 = WTF::fastMalloc((HIDWORD(v71) << 6), (56 * HIDWORD(v71)));
        result = v54;
        LODWORD(v71) = 56 * v39 / 0x38;
        v70 = v41;
        if (v41 != v54)
        {
          WTF::VectorMover<false,WebKit::FrameTreeCreationParameters>::move(v54, (v54 + 56 * v39), v41);
          result = v54;
        }
      }

      if (result)
      {
        if (v70 == result)
        {
          v70 = 0;
          LODWORD(v71) = 0;
        }

        WTF::fastFree(result, v10);
      }
    }
  }

  else if (v15)
  {
    v16 = WTF::fastMalloc((v15 << 6), (56 * v15));
    LODWORD(v71) = 56 * v15 / 0x38u;
    v70 = v16;
    v17 = v56;
    do
    {
      IPC::Decoder::decode<WebKit::FrameTreeCreationParameters>(&v64, a2);
      v18 = v69;
      if (v69)
      {
        if (HIDWORD(v71) == v71)
        {
          WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeCreationParameters>(&v70, &v64);
        }

        else
        {
          v19 = v70 + 56 * HIDWORD(v71);
          v20 = v64;
          v19[16] = v65;
          *v19 = v20;
          v21 = v66;
          v66 = 0;
          *(v19 + 3) = v21;
          v22 = v67;
          v67 = 0;
          *(v19 + 5) = 0;
          *(v19 + 6) = 0;
          *(v19 + 4) = v22;
          v23 = v68;
          *&v68 = 0;
          *(v19 + 5) = v23;
          LODWORD(v23) = DWORD2(v68);
          DWORD2(v68) = 0;
          *(v19 + 12) = v23;
          LODWORD(v23) = HIDWORD(v68);
          HIDWORD(v68) = 0;
          *(v19 + 13) = v23;
          ++HIDWORD(v71);
        }
      }

      else
      {
        v17 = 0;
      }

      if (v69 != 1)
      {
        goto LABEL_21;
      }

      WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v10);
      v24 = v67;
      v67 = 0;
      if (v24)
      {
        WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v24, v10);
      }

      v25 = v66;
      v66 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v10);
        if ((v18 & 1) == 0)
        {
LABEL_25:
          LOBYTE(v55) = 0;
          v56 = v17;
          goto LABEL_57;
        }
      }

      else
      {
LABEL_21:
        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      --v15;
    }

    while (v15);
  }

  *&v55 = v70;
  v42 = v71;
  v70 = 0;
  v71 = 0;
  *(&v55 + 1) = v42;
  v56 = 1;
LABEL_57:
  result = WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v10);
  if ((v56 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_58:
  v44 = *a2;
  if (!*a2)
  {
    *a1 = 0;
    *(a1 + 56) = 0;
    goto LABEL_69;
  }

  if ((v6 & 1) == 0 || (*&v64 = v4, (v63 & 1) == 0) || (*(&v64 + 1) = v61, v65 = v62, (v60 & 1) == 0) || (v45 = v59, v59 = 0, (v58 & 1) == 0) || (v46 = v57, v57 = 0, (v56 & 1) == 0))
  {
LABEL_96:
    __break(1u);
    return result;
  }

  *&v7 = 0;
  v47 = v55;
  v55 = v7;
  *a1 = v64;
  *(a1 + 16) = v65;
  v66 = 0;
  v67 = 0;
  *(a1 + 24) = v45;
  *(a1 + 32) = v46;
  v68 = v7;
  *(a1 + 40) = v47;
  *(a1 + 56) = 1;
  WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v43);
  v48 = v67;
  v67 = 0;
  if (v48)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v48, v43);
  }

  result = v66;
  v66 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v43);
  }

LABEL_69:
  if (v56 == 1)
  {
    result = WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v43);
  }

  if (v58 == 1)
  {
    result = v57;
    v57 = 0;
    if (result)
    {
      result = WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(result, v43);
    }
  }

  if (v60 == 1 && (result = v59, v59 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v43);
    if (v44)
    {
      return result;
    }
  }

  else if (v44)
  {
    return result;
  }

  v49 = *a2;
  v50 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v50)
    {
      return (*(*result + 16))(result, v49);
    }
  }

  return result;
}

void sub_19D78BF0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, bmalloc::api *a13, char a14, WTF::StringImpl *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, bmalloc::api *a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a14 & 1) != 0 && a13)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebPageNetworkParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v7);
  v6 = *a1;
  if (*a1)
  {
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v6 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *a2 = v6;
    LOBYTE(v6) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = v6;
  if (v8 == 1)
  {
    result = v7;
    v7 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebPopupItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  v6 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 25));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 48));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 49));
  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 50));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebPopupItem,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    goto LABEL_74;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_76;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_79;
  }

  v8 = 0;
  v9 = v7 != 0;
  while (1)
  {
    IPC::Decoder::decode<WTF::String>(a1, &v68);
    IPC::Decoder::decode<WTF::String>(a1, &v66);
    v10 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
    v11 = *(a1 + 1);
    v12 = *(a1 + 2);
    v13 = *a1;
    if (v11 <= &v12[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v41 = *(a1 + 3);
      if (v41)
      {
        if (v11)
        {
          (*(*v41 + 16))(v41);
          v11 = *(a1 + 1);
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v12 + 1;
      if (v12)
      {
        v14 = *v12;
        if (v14 < 2)
        {
          v15 = 1;
          goto LABEL_9;
        }

        goto LABEL_86;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (!v42)
    {
      v11 = 0;
LABEL_85:
      v13 = 0;
      v14 = 0;
      goto LABEL_86;
    }

    if (!v11)
    {
      goto LABEL_85;
    }

    (*(*v42 + 16))(v42);
    v14 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
LABEL_86:
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (v43 && v11)
    {
      (*(*v43 + 16))(v43, v13);
    }

    v15 = 0;
LABEL_9:
    v16 = v14 ? v15 : 0;
    IPC::Decoder::decode<WTF::String>(a1, &v64);
    result = IPC::Decoder::decode<WTF::String>(a1, &v62);
    v4 = *(a1 + 1);
    v18 = *(a1 + 2);
    v19 = *a1;
    if (v4 <= &v18[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v44 = *(a1 + 3);
      if (v44)
      {
        if (v4)
        {
          (*(*v44 + 16))(v44);
          v4 = *(a1 + 1);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v20 = v18 + 1;
      *(a1 + 2) = v18 + 1;
      if (v18)
      {
        v21 = *v18;
        if (v21 < 2)
        {
          v22 = 1;
          goto LABEL_16;
        }

        v61 = v21;
        goto LABEL_94;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (!v45)
    {
      v4 = 0;
LABEL_92:
      v19 = 0;
      v61 = 0;
      goto LABEL_94;
    }

    if (!v4)
    {
      goto LABEL_92;
    }

    (*(*v45 + 16))(v45);
    v61 = 0;
    v19 = *a1;
    v4 = *(a1 + 1);
LABEL_94:
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (!v46 || !v4)
    {
      v60 = 0;
      v47 = 0;
      v19 = 0;
LABEL_96:
      *a1 = 0;
      *(a1 + 1) = 0;
      v48 = *(a1 + 3);
      if (v48 && v47)
      {
        (*(*v48 + 16))(v48, v19, v47);
        v59 = 0;
        v19 = *a1;
        v4 = *(a1 + 1);
      }

      else
      {
        v4 = 0;
        v19 = 0;
        v59 = 0;
      }

      goto LABEL_99;
    }

    result = (*(*v46 + 16))(v46, v19);
    v22 = 0;
    v19 = *a1;
    v4 = *(a1 + 1);
    v20 = *(a1 + 2);
    v21 = v61;
LABEL_16:
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v4 <= v20 - v19)
    {
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v47 = 0;
      v52 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v52 && v4)
      {
        (*(*v52 + 16))(v52);
        v19 = *a1;
        v47 = *(a1 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_96;
    }

    v24 = v20 + 1;
    *(a1 + 2) = v20 + 1;
    if (!v20)
    {
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v47 = v4;
      goto LABEL_96;
    }

    v25 = *v20;
    if (v25 < 2)
    {
      v26 = 1;
      goto LABEL_23;
    }

    v59 = v25;
    LOBYTE(v60) = v22;
    BYTE4(v60) = v23;
LABEL_99:
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (!v49 || !v4)
    {
      v58 = 0;
      v50 = 0;
      v19 = 0;
LABEL_101:
      *a1 = 0;
      *(a1 + 1) = 0;
      v51 = *(a1 + 3);
      if (v51 && v50)
      {
        (*(*v51 + 16))(v51, v19, v50);
        v57 = 0;
        v19 = *a1;
        v4 = *(a1 + 1);
      }

      else
      {
        v4 = 0;
        v19 = 0;
        v57 = 0;
      }

      goto LABEL_104;
    }

    result = (*(*v49 + 16))(v49, v19);
    v26 = 0;
    v19 = *a1;
    v4 = *(a1 + 1);
    v24 = *(a1 + 2);
    v22 = v60;
    v23 = BYTE4(v60);
    v25 = v59;
LABEL_23:
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v4 <= v24 - v19)
    {
      LOBYTE(v58) = v26;
      BYTE4(v58) = v27;
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v50 = 0;
      v53 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v53 && v4)
      {
        (*(*v53 + 16))(v53);
        v19 = *a1;
        v50 = *(a1 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_101;
    }

    *(a1 + 2) = v24 + 1;
    if (!v24)
    {
      LOBYTE(v58) = v26;
      BYTE4(v58) = v27;
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v50 = v4;
      goto LABEL_101;
    }

    v28 = *v24;
    if (v28 >= 2)
    {
      v57 = v28;
      LOBYTE(v58) = v26;
      BYTE4(v58) = v27;
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
LABEL_104:
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (!result || !v4)
      {
        goto LABEL_105;
      }

      result = (*(*result + 16))(result, v19);
      v29 = 0;
      v19 = *a1;
      v22 = v60;
      v23 = BYTE4(v60);
      v26 = v58;
      v27 = BYTE4(v58);
      v28 = v57;
      goto LABEL_30;
    }

    v29 = 1;
LABEL_30:
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (!v19)
    {
LABEL_105:
      v37 = 0;
      *a2 = 0;
      goto LABEL_56;
    }

    if (!v8 && (v69 & 1) != 0 && (v67 & 1) != 0 && v10 > 0xFFu && (v15 & 1) != 0 && (v65 & 1) != 0 && (v63 & 1) != 0 && (v22 & 1) != 0 && (v26 & 1) != 0 && (v29 & 1) != 0)
    {
      break;
    }

    __break(1u);
LABEL_74:
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v4)
      {
        (*(*v38 + 16))(v38);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_76:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (!v39)
    {
      v4 = 0;
LABEL_78:
      v6 = 0;
      goto LABEL_79;
    }

    if (!v4)
    {
      goto LABEL_78;
    }

    (*(*v39 + 16))(v39);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40 && v4)
    {
      (*(*v40 + 16))(v40, v6);
      v9 = 0;
      v54 = *(a1 + 3);
      v55 = *a1;
      v56 = *(a1 + 1);
      v8 = 1;
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v54 && v56)
      {
        (*(*v54 + 16))(v54, v55);
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }
  }

  v31 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
  }

  v32 = v66;
  if (v66)
  {
    atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
  }

  if (v16)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
  }

  v35 = v33 & 0xFFFE | v10 & 1;
  v36 = v62;
  if (v62)
  {
    atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
  }

  *a2 = v9;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v23;
  *(a2 + 49) = v27;
  v37 = 1;
  *(a2 + 50) = v30;
LABEL_56:
  *(a2 + 56) = v37;
  if (v63 == 1)
  {
    result = v62;
    v62 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v65 == 1)
  {
    result = v64;
    v64 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v67 == 1)
  {
    result = v66;
    v66 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v69 == 1)
  {
    result = v68;
    v68 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  return result;
}

void sub_19D78C954(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, char a20)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebKit::WebPreferencesStore,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>, double a3@<D0>, __n128 a4@<Q1>)
{
  IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v21, this, a3, a4);
  result = IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v16, this, v6, v7);
  if (*this)
  {
    if ((v25 & 1) == 0 || (v9 = v21, v21 = 0, v10 = v22, v22 = 0, (v20 & 1) == 0))
    {
      __break(1u);
      return result;
    }

    v11 = v24;
    v12 = v16;
    v13 = v18;
    v14 = v19;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 12) = v23;
    *(a2 + 20) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v17;
    *(a2 + 40) = v13;
    *(a2 + 44) = v14;
    *(a2 + 48) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    if (v20)
    {
      result = v16;
      if (v16)
      {
        result = WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v16, v17);
      }
    }
  }

  if (v25 == 1)
  {
    result = v21;
    if (v21)
    {
      v15 = v22;

      return WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(result, v15);
    }
  }

  return result;
}

void sub_19D78CB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, unsigned int a14, uint64_t a15, char a16)
{
  if (a16)
  {
    if (a13)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a13, a14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *this, double a3, __n128 a4)
{
  v6 = *(this + 1);
  v7 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = v7 - *this;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_106:
    IPC::Decoder::markInvalid(this);
    *a1 = 0;
    *(a1 + 24) = 0;
    return IPC::Decoder::markInvalid(this);
  }

  *(this + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_106;
  }

  v12 = *v7;
  *v64 = 0;
  *&v64[8] = 0;
  *&v64[13] = 0;
  v58 = v12;
  if (!v12)
  {
    v51 = 0;
    v49 = 0;
    v50 = 0;
LABEL_72:
    a4.n128_u64[0] = 0;
    *v64 = a4;
    *a1 = v49;
    *(a1 + 8) = v50;
    *&v64[16] = 0;
    *(a1 + 16) = v51;
    v64[20] = 0;
    *(a1 + 20) = v12;
    v52 = 1;
    *(a1 + 24) = 1;
    goto LABEL_73;
  }

  v13 = 0;
  while (1)
  {
    v14 = IPC::Decoder::decode<WTF::String>(this, &v62);
    if ((v63 & 1) == 0)
    {
      v52 = 0;
      *a1 = 0;
      *(a1 + 24) = 0;
      goto LABEL_73;
    }

    v17 = *(this + 1);
    v16 = *(this + 2);
    v18 = *this;
    if (v17 <= &v16[-*this])
    {
      goto LABEL_101;
    }

    v19 = v16 + 1;
    *(this + 2) = v16 + 1;
    if (!v16)
    {
      goto LABEL_102;
    }

    v20 = *v16;
    if (v20 <= 3)
    {
      if (!*v16)
      {
        v14 = IPC::Decoder::decode<WTF::String>(this, &v66);
        if (v67 == 1)
        {
          v59 = v66;
          v60 = 0;
          goto LABEL_19;
        }

        goto LABEL_103;
      }

      if (v20 != 1)
      {
        v14 = IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::decode<IPC::Decoder,0ul,1ul>(&v59, this, v20);
        if (v61)
        {
          goto LABEL_20;
        }

        goto LABEL_104;
      }

      if (v17 <= &v19[-v18])
      {
        IPC::Decoder::markInvalid(this);
      }

      else
      {
        *(this + 2) = v16 + 2;
        if (v16 != -1)
        {
          if (*v19 <= 1u)
          {
            LOBYTE(v59) = *v19;
            v60 = 1;
LABEL_19:
            v61 = 1;
            goto LABEL_20;
          }

          goto LABEL_102;
        }
      }

LABEL_101:
      IPC::Decoder::markInvalid(this);
LABEL_102:
      IPC::Decoder::markInvalid(this);
    }

LABEL_103:
    LOBYTE(v59) = 0;
    v61 = 0;
LABEL_104:
    v14 = IPC::Decoder::markInvalid(this);
    if ((v61 & 1) == 0)
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      goto LABEL_80;
    }

LABEL_20:
    v21 = v63;
    if ((v63 & 1) == 0)
    {
      __break(1u);
      goto LABEL_95;
    }

    v14 = v62;
    if (v62 + 1 <= 1)
    {
      *a1 = 0;
      *(a1 + 24) = 0;
LABEL_78:
      if (!v60)
      {
        v54 = v59;
        v59 = 0;
        if (v54)
        {
          if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v54, v15);
          }
        }
      }

      goto LABEL_80;
    }

    v65 = &v59;
    v4 = *&v64[8];
    v21 = *&v64[12];
    if (10 * *&v64[12] < 9 * *&v64[8])
    {
      if (v64[20] != 1)
      {
        goto LABEL_24;
      }

LABEL_95:
      if (v4 > 2 * v21)
      {
        goto LABEL_24;
      }
    }

    v56 = v4 ? 2 * v4 : 8;
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(v64, v56);
    v4 = *&v64[8];
    v14 = v62;
LABEL_24:
    v22 = *&v64[16];
    v23 = *(v14 + 4);
    v24 = v23 < 0x100 ? WTF::StringImpl::hashSlowCase(v14) : v23 >> 8;
    v25 = v4 - 1;
    v26 = (v24 ^ v22) & (v4 - 1);
    v27 = *v64 + 24 * v26;
    v28 = *v27;
    if (*v27)
    {
      break;
    }

LABEL_35:
    WTF::HashMapTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>(WTF::String &&,mpark::variant<WTF::String,BOOL,unsigned int,double> &&)::{lambda(void)#1}>(v27, &v62, &v65);
LABEL_36:
    ++*&v64[12];
    if (v61 == 1 && !v60)
    {
      v34 = v59;
      v59 = 0;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v33);
        }
      }
    }

    if (v63 == 1)
    {
      v35 = v62;
      v62 = 0;
      if (v35)
      {
        if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v33);
        }
      }
    }

    if (++v13 == v58)
    {
      v49 = *v64;
      v50 = *&v64[8];
      v51 = *&v64[16];
      LOBYTE(v12) = v64[20];
      goto LABEL_72;
    }
  }

  v29 = 0;
  while (1)
  {
    v30 = *(v28 + 4);
    if (v30 < 0x100)
    {
      v31 = WTF::StringImpl::hashSlowCase(v28);
    }

    else
    {
      v31 = v30 >> 8;
    }

    v32 = (v26 + v4 - ((v31 ^ v22) & v25)) & v25;
    if (v29 > v32)
    {
      if (v29 >= 0x80)
      {
        v64[20] = 1;
      }

      v36 = *v27;
      *v27 = 0;
      v66 = v36;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::move_constructor(&v67, (v27 + 8));
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::~copy_constructor(v27 + 8, v37);
      v39 = *v27;
      *v27 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v38);
      }

      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      WTF::HashMapTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>(WTF::String &&,mpark::variant<WTF::String,BOOL,unsigned int,double> &&)::{lambda(void)#1}>(v27, &v62, &v65);
      for (i = v26 + 1; ; i = v41 + 1)
      {
        v41 = i & v25;
        v42 = (*v64 + 24 * (i & v25));
        v43 = *v42;
        if (!*v42)
        {
          break;
        }

        v44 = *(v43 + 4);
        if (v44 < 0x100)
        {
          v45 = WTF::StringImpl::hashSlowCase(v43);
        }

        else
        {
          v45 = v44 >> 8;
        }

        v46 = v32 + 1;
        v32 = (v41 + v4 - ((v45 ^ v22) & v25)) & v25;
        if (v46 <= v32)
        {
          v32 = v46;
        }

        else
        {
          std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>(&v66, v42);
        }
      }

      WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>((*v64 + 24 * v41), &v66);
      if (!v68)
      {
        v47 = v67;
        v67 = 0;
        if (v47)
        {
          if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v47, v33);
          }
        }
      }

      v68 = -1;
      v48 = v66;
      v66 = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v33);
      }

      goto LABEL_36;
    }

    if (v31 == v24 && (WTF::equal(*v27, v62, v20) & 1) != 0)
    {
      break;
    }

    v26 = (v26 + 1) & v25;
    ++v29;
    v27 = *v64 + 24 * v26;
    v28 = *v27;
    if (!*v27)
    {
      if (v29 >= 0x80)
      {
        v64[20] = 1;
      }

      goto LABEL_35;
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v61)
  {
    goto LABEL_78;
  }

LABEL_80:
  if (v63 == 1)
  {
    v55 = v62;
    v62 = 0;
    if (v55)
    {
      if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v15);
      }
    }
  }

  v52 = 0;
LABEL_73:
  result = *v64;
  if (*v64)
  {
    result = WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*v64, *&v64[8]);
  }

  if ((v52 & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

void sub_19D78D14C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16, WTF::StringImpl *a17, char a18, WTF *a19, unsigned int a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a19)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a19, a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyRules>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::ScriptTrackingPrivacyRules,void>::decode(a1, a2);
  if ((a2[64] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void *WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D78D2CC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t std::optional<WebKit::ScriptTrackingPrivacyRules>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 64) == 1)
  {
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 48, a2);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, v3);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, v4);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, v5);
  }

  return a1;
}

void IPC::ArgumentCoder<WebKit::WebProcessDataStoreParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::String>(a1, &v39);
  IPC::Decoder::decode<WTF::String>(a1, &v37);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v35);
  v7 = IPC::Decoder::decode<std::array<unsigned char,8ul>>(a1);
  v9 = v8;
  IPC::Decoder::decode<WTF::String>(a1, &v33);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v31);
  v10 = IPC::Decoder::decode<WebCore::ThirdPartyCookieBlockingMode>(a1);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v29);
  IPC::Decoder::decode<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v27, a1);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v25);
  v11 = IPC::Decoder::decode<BOOL>(a1);
  v12 = IPC::Decoder::decode<BOOL>(a1);
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v41 = v4, (v40 & 1) == 0) || (v14 = v39, v39 = 0, *&v42 = v14, (v38 & 1) == 0) || (v15 = v37, v37 = 0, (v36 & 1) == 0) || (v16 = v35, v35 = 0, (v9 & 1) == 0) || (v44 = v7, (v34 & 1) == 0) || (v17 = v33, v33 = 0, (v32 & 1) == 0) || (v18 = v31, v31 = 0, (v10 & 0x100) == 0) || (v46 = v10, (v30 & 1) == 0) || (v19 = v29, v29 = 0, (v28 & 1) == 0) || (v20 = v27, v27 = 0, (v26 & 1) == 0) || (v21 = v25, v25 = 0, (v11 & 0x100) == 0) || (LOBYTE(v49) = v11, (v12 & 0x100) == 0))
    {
      __break(1u);
    }

    HIBYTE(v49) = v12;
    *a2 = v4;
    *(a2 + 8) = v14;
    v42 = 0u;
    v43 = 0;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v7;
    *(a2 + 40) = v17;
    v45 = 0u;
    *(a2 + 48) = v18;
    *(a2 + 56) = v10;
    v47 = 0u;
    *(a2 + 64) = v19;
    *(a2 + 72) = v20;
    v48 = 0;
    *(a2 + 80) = v21;
    *(a2 + 88) = v49;
    *(a2 + 96) = 1;
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(&v41);
  }

  else
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  if (v26 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v25);
  }

  if (v28 == 1 && v27)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v27, v13);
  }

  if (v30 == 1 && v29)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v13);
  }

  if (v32 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v31);
  }

  if (v34 == 1)
  {
    v22 = v33;
    v33 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v13);
      }
    }
  }

  if (v36 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v35);
  }

  if (v38 == 1)
  {
    v23 = v37;
    v37 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v13);
      }
    }
  }

  if (v40 == 1)
  {
    v24 = v39;
    v39 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v13);
      }
    }
  }
}

void sub_19D78D678(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebKit::SandboxExtensionImpl *a10, __int16 a12, char a13, char a14, WTF::StringImpl **a15, char a16, WTF::StringImpl **a17, char a18, int a19, WebKit::SandboxExtensionImpl *a20, __int16 a24, char a25, char a26, WTF::StringImpl *a27, char a28, int a29, WebKit::SandboxExtensionImpl *a30, __int16 a34, char a35, char a36, WTF::StringImpl *a37, char a38, WTF::StringImpl *a39, char a40)
{
  if (a12 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a10);
  }

  if (a16 == 1 && a15)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(a15, a2);
  }

  if (a18 == 1 && a17)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a17, a2);
  }

  if (a24 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a20);
  }

  if (a28 == 1)
  {
    v34 = a27;
    a27 = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, a2);
      }
    }
  }

  if (a34 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a30);
  }

  if (a38 == 1)
  {
    v35 = a37;
    a37 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, a2);
      }
    }
  }

  if (a40 == 1)
  {
    v36 = a39;
    a39 = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<std::array<unsigned char,8ul>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 8);
  IPC::VectorArgumentCoder<false,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 74));
  v5 = *(a2 + 80);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 96));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 98));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 99));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 100));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 101));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 102));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 103));
  v6 = *(a2 + 104);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 105));
  v7 = *(a2 + 106);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 107));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 108));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 109));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 111));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 112));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 113));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 114));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 115));
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 116));
}

void IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(&v173, a1);
  if ((v174 & 1) == 0)
  {
    goto LABEL_172;
  }

  while (1)
  {
    v5 = *(a1 + 1);
    v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v7 = v6 - *a1;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (!v8 || v9 <= 7)
    {
      IPC::Decoder::markInvalid(a1);
LABEL_210:
      IPC::Decoder::markInvalid(a1);
      LOBYTE(v170) = 0;
      v172 = 0;
      goto LABEL_170;
    }

    *(a1 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_210;
    }

    v11 = *v6;
    v167 = 0;
    v168 = 0;
    if (v11 >= 0x8000)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::CustomHeaderFields>(&v129, a1);
        if ((v133 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v168) == v168)
        {
          WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CustomHeaderFields>(&v167, &v129);
        }

        else
        {
          WebCore::CustomHeaderFields::CustomHeaderFields(&v167[4 * HIDWORD(v168)], &v129);
          ++HIDWORD(v168);
        }

        std::optional<WebCore::CustomHeaderFields>::~optional(&v129, v87);
        if (!--v11)
        {
          WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v167, HIDWORD(v168));
          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v11)
      {
LABEL_10:
        v170 = v167;
        v12 = v168;
        v167 = 0;
        v168 = 0;
        v171 = v12;
        v172 = 1;
        WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v167, v4);
        goto LABEL_11;
      }

      v93 = WTF::fastMalloc(v6, (32 * v11));
      LODWORD(v168) = v11;
      v167 = v93;
      while (1)
      {
        IPC::Decoder::decode<WebCore::CustomHeaderFields>(&v129, a1);
        if ((v133 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v168) == v168)
        {
          WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CustomHeaderFields>(&v167, &v129);
        }

        else
        {
          WebCore::CustomHeaderFields::CustomHeaderFields(&v167[4 * HIDWORD(v168)], &v129);
          ++HIDWORD(v168);
        }

        std::optional<WebCore::CustomHeaderFields>::~optional(&v129, v94);
        if (!--v11)
        {
          goto LABEL_10;
        }
      }
    }

    LOBYTE(v170) = 0;
    v172 = 0;
    std::optional<WebCore::CustomHeaderFields>::~optional(&v129, v88);
    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v167, v89);
LABEL_170:
    IPC::Decoder::markInvalid(a1);
LABEL_11:
    v14 = *(a1 + 1);
    v15 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v16 = v15 - *a1;
    v8 = v14 >= v16;
    v17 = v14 - v16;
    if (!v8 || v17 <= 7)
    {
      IPC::Decoder::markInvalid(a1);
LABEL_211:
      IPC::Decoder::markInvalid(a1);
      LOBYTE(v167) = 0;
      v169 = 0;
LABEL_208:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_20;
    }

    *(a1 + 2) = v15 + 1;
    if (!v15)
    {
      goto LABEL_211;
    }

    v19 = *v15;
    v175 = 0;
    v176 = 0;
    if (v19 >= 0x10000)
    {
      v90 = v169;
      while (1)
      {
        IPC::Decoder::decode<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v129);
        v91 = v131;
        if (v131)
        {
          if (HIDWORD(v176) == v176)
          {
            WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v175, &v129);
          }

          else
          {
            WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v175[2 * HIDWORD(v176)], &v129);
            ++HIDWORD(v176);
          }
        }

        else
        {
          v90 = 0;
        }

        if (v131 == 1)
        {
          WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v129, v13);
        }

        if ((v91 & 1) == 0)
        {
          break;
        }

        if (!--v19)
        {
          WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v175, HIDWORD(v176));
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v19)
      {
LABEL_19:
        v167 = v175;
        v20 = v176;
        v175 = 0;
        v176 = 0;
        v168 = v20;
        v169 = 1;
        WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v175, v13);
        goto LABEL_20;
      }

      v95 = WTF::fastMalloc(v15, (16 * v19));
      LODWORD(v176) = v19;
      v175 = v95;
      v90 = v169;
      while (1)
      {
        IPC::Decoder::decode<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v129);
        v96 = v131;
        if (v131)
        {
          if (HIDWORD(v176) == v176)
          {
            WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v175, &v129);
          }

          else
          {
            WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v175[2 * HIDWORD(v176)], &v129);
            ++HIDWORD(v176);
          }
        }

        else
        {
          v90 = 0;
        }

        if (v131 == 1)
        {
          WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v129, v13);
        }

        if ((v96 & 1) == 0)
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_19;
        }
      }
    }

    LOBYTE(v167) = 0;
    v169 = v90;
    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v175, v13);
    if ((v90 & 1) == 0)
    {
      goto LABEL_208;
    }

LABEL_20:
    IPC::Decoder::decode<WTF::String>(a1, &v175);
    IPC::Decoder::decode<WTF::String>(a1, &v165);
    IPC::Decoder::decode<WTF::String>(a1, &v163);
    IPC::Decoder::decode<WTF::String>(a1, &v161);
    v127 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(a1);
    v21 = *(a1 + 1);
    v22 = *(a1 + 2);
    v23 = *a1;
    if (v21 <= &v22[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_213:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_214;
    }

    v24 = v22 + 1;
    *(a1 + 2) = v22 + 1;
    if (!v22)
    {
      goto LABEL_213;
    }

    v25 = *v22;
    if (v25 < 0x10)
    {
      v126 = v25 | 0x100;
      goto LABEL_24;
    }

LABEL_214:
    IPC::Decoder::markInvalid(a1);
    v126 = 0;
    v21 = *(a1 + 1);
    v24 = *(a1 + 2);
    v23 = *a1;
LABEL_24:
    if (v21 <= &v24[-v23])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_216:
      IPC::Decoder::markInvalid(a1);
LABEL_217:
      IPC::Decoder::markInvalid(a1);
      IPC::Decoder::markInvalid(a1);
      goto LABEL_218;
    }

    *(a1 + 2) = v24 + 1;
    if (!v24)
    {
      goto LABEL_216;
    }

    v26 = *v24;
    if (v26 >= 2)
    {
      goto LABEL_217;
    }

    IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v129, a1);
    if (v130 == 1)
    {
      v125 = v129;
      v27 = 1;
      goto LABEL_29;
    }

LABEL_218:
    IPC::Decoder::markInvalid(a1);
    v27 = 0;
    LOBYTE(v26) = 0;
LABEL_29:
    v128 = v27;
    v124 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
    v28 = *(a1 + 1);
    v29 = *(a1 + 2);
    v30 = *a1;
    if (v28 <= &v29[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_220:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_221;
    }

    v31 = v29 + 1;
    *(a1 + 2) = v29 + 1;
    if (!v29)
    {
      goto LABEL_220;
    }

    v32 = *v29;
    if (v32 < 4)
    {
      v33 = 0;
      goto LABEL_33;
    }

LABEL_221:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v32) = 0;
    v28 = *(a1 + 1);
    v31 = *(a1 + 2);
    v33 = 1;
    v30 = *a1;
LABEL_33:
    if (v28 <= &v31[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_223:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_224;
    }

    v34 = v31 + 1;
    *(a1 + 2) = v31 + 1;
    if (!v31)
    {
      goto LABEL_223;
    }

    v35 = *v31;
    if (v35 < 3)
    {
      v36 = 0;
      goto LABEL_37;
    }

LABEL_224:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v35) = 0;
    v28 = *(a1 + 1);
    v34 = *(a1 + 2);
    v36 = 1;
    v30 = *a1;
LABEL_37:
    if (v28 <= &v34[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_226:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_227;
    }

    v37 = v34 + 1;
    *(a1 + 2) = v34 + 1;
    if (!v34)
    {
      goto LABEL_226;
    }

    v38 = *v34;
    if (v38 < 3)
    {
      v39 = 0;
      goto LABEL_41;
    }

LABEL_227:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v38) = 0;
    v28 = *(a1 + 1);
    v37 = *(a1 + 2);
    v39 = 1;
    v30 = *a1;
LABEL_41:
    if (v28 <= &v37[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_229:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_230;
    }

    v40 = v37 + 1;
    *(a1 + 2) = v37 + 1;
    if (!v37)
    {
      goto LABEL_229;
    }

    v41 = *v37;
    if (v41 < 3)
    {
      v113 = v41;
      v115 = 0;
      goto LABEL_45;
    }

LABEL_230:
    IPC::Decoder::markInvalid(a1);
    v113 = 0;
    v28 = *(a1 + 1);
    v40 = *(a1 + 2);
    v115 = 1;
    v30 = *a1;
LABEL_45:
    if (v28 <= &v40[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_232:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_233;
    }

    v42 = v40 + 1;
    *(a1 + 2) = v40 + 1;
    if (!v40)
    {
      goto LABEL_232;
    }

    v121 = *v40;
    if (v121 < 3)
    {
      v112 = 0;
      goto LABEL_49;
    }

LABEL_233:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v121) = 0;
    v28 = *(a1 + 1);
    v42 = *(a1 + 2);
    v112 = 1;
    v30 = *a1;
LABEL_49:
    if (v28 <= &v42[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_235:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_236;
    }

    v43 = v42 + 1;
    *(a1 + 2) = v42 + 1;
    if (!v42)
    {
      goto LABEL_235;
    }

    v118 = *v42;
    if (v118 < 3)
    {
      v111 = 0;
      goto LABEL_53;
    }

LABEL_236:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v118) = 0;
    v28 = *(a1 + 1);
    v43 = *(a1 + 2);
    v111 = 1;
    v30 = *a1;
LABEL_53:
    if (v28 <= &v43[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_238:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_239;
    }

    *(a1 + 2) = v43 + 1;
    if (!v43)
    {
      goto LABEL_238;
    }

    v108 = *v43;
    if (v108 < 2)
    {
      v110 = 0;
      goto LABEL_57;
    }

LABEL_239:
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v108) = 0;
    v110 = 1;
LABEL_57:
    v107 = IPC::Decoder::decode<IPC::WebCore_Filter_Subclass>(a1);
    v45 = *(a1 + 1);
    v46 = *(a1 + 2);
    v47 = *a1;
    if (v45 <= &v46[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_241:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_242;
    }

    v48 = v46 + 1;
    *(a1 + 2) = v46 + 1;
    if (!v46)
    {
      goto LABEL_241;
    }

    v104 = *v46;
    if (v104 < 2)
    {
      v106 = 0;
      goto LABEL_61;
    }

LABEL_242:
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v104) = 0;
    v45 = *(a1 + 1);
    v48 = *(a1 + 2);
    v106 = 1;
    v47 = *a1;
LABEL_61:
    if (v45 <= &v48[-v47])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_244:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_245;
    }

    v49 = v48 + 1;
    *(a1 + 2) = v48 + 1;
    if (!v48)
    {
      goto LABEL_244;
    }

    v50 = *v48;
    if (v50 < 3)
    {
      v103 = v50;
      v105 = 0;
      goto LABEL_65;
    }

LABEL_245:
    IPC::Decoder::markInvalid(a1);
    v103 = 0;
    v45 = *(a1 + 1);
    v49 = *(a1 + 2);
    v105 = 1;
    v47 = *a1;
LABEL_65:
    if (v45 <= &v49[-v47])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_247:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_248;
    }

    v51 = v49 + 1;
    *(a1 + 2) = v49 + 1;
    if (!v49)
    {
      goto LABEL_247;
    }

    v109 = *v49;
    if (v109 < 3)
    {
      v102 = 0;
      goto LABEL_69;
    }

LABEL_248:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v109) = 0;
    v45 = *(a1 + 1);
    v51 = *(a1 + 2);
    v102 = 1;
    v47 = *a1;
LABEL_69:
    if (v45 <= &v51[-v47])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_250:
      IPC::Decoder::markInvalid(a1);
LABEL_251:
      IPC::Decoder::markInvalid(a1);
      v100 = 0;
      v101 = 0;
      goto LABEL_252;
    }

    *(a1 + 2) = v51 + 1;
    if (!v51)
    {
      goto LABEL_250;
    }

    if (*v51 >= 2u)
    {
      goto LABEL_251;
    }

    if (!*v51)
    {
      v100 = 0;
      v101 = 0;
      v53 = 0x10000;
      goto LABEL_75;
    }

    v52 = IPC::Decoder::decode<WebCore::StoredCredentialsPolicy>(a1);
    v100 = (v52 & ((v52 << 7) >> 15));
    v101 = 256;
    if ((v52 & 0x100) != 0)
    {
      v53 = (v52 & 0x100) << 8;
LABEL_75:
      v99 = v53;
      goto LABEL_76;
    }

LABEL_252:
    IPC::Decoder::markInvalid(a1);
    v99 = 0;
LABEL_76:
    v119 = v36;
    v120 = v32;
    v117 = v35;
    v122 = v33;
    v123 = v26;
    v97 = a2;
    v54 = *(a1 + 1);
    v55 = *(a1 + 2);
    v56 = *a1;
    if (v54 <= &v55[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_254:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_255;
    }

    v57 = v55 + 1;
    *(a1 + 2) = v55 + 1;
    if (!v55)
    {
      goto LABEL_254;
    }

    v58 = *v55;
    if (v58 < 4)
    {
      v98 = 0;
      goto LABEL_80;
    }

LABEL_255:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v58) = 0;
    v54 = *(a1 + 1);
    v57 = *(a1 + 2);
    v98 = 1;
    v56 = *a1;
LABEL_80:
    v114 = v38;
    v116 = v39;
    if (v54 <= &v57[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_257:
      IPC::Decoder::markInvalid(a1);
      v60 = 0;
      goto LABEL_258;
    }

    v59 = v57 + 1;
    *(a1 + 2) = v57 + 1;
    if (!v57)
    {
      goto LABEL_257;
    }

    v60 = *v57;
    if (v60 < 2)
    {
      v61 = 1;
      goto LABEL_84;
    }

LABEL_258:
    IPC::Decoder::markInvalid(a1);
    v61 = 0;
    v54 = *(a1 + 1);
    v59 = *(a1 + 2);
    v56 = *a1;
LABEL_84:
    if (v60)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    if (v54 <= &v59[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_260:
      IPC::Decoder::markInvalid(a1);
      v64 = 0;
      goto LABEL_261;
    }

    v63 = v59 + 1;
    *(a1 + 2) = v59 + 1;
    if (!v59)
    {
      goto LABEL_260;
    }

    v64 = *v59;
    if (v64 < 2)
    {
      v65 = 1;
      goto LABEL_91;
    }

LABEL_261:
    IPC::Decoder::markInvalid(a1);
    v65 = 0;
    v54 = *(a1 + 1);
    v63 = *(a1 + 2);
    v56 = *a1;
LABEL_91:
    if (v64)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    if (v54 <= &v63[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_263:
      IPC::Decoder::markInvalid(a1);
      v68 = 0;
      goto LABEL_264;
    }

    v67 = v63 + 1;
    *(a1 + 2) = v63 + 1;
    if (!v63)
    {
      goto LABEL_263;
    }

    v68 = *v63;
    if (v68 < 2)
    {
      a2 = 1;
      goto LABEL_98;
    }

LABEL_264:
    IPC::Decoder::markInvalid(a1);
    a2 = 0;
    v54 = *(a1 + 1);
    v67 = *(a1 + 2);
    v56 = *a1;
LABEL_98:
    if (v68)
    {
      v69 = a2;
    }

    else
    {
      v69 = 0;
    }

    if (v54 <= &v67[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_266:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_267;
    }

    v70 = v67 + 1;
    *(a1 + 2) = v67 + 1;
    if (!v67)
    {
      goto LABEL_266;
    }

    v71 = *v67;
    if (v71 < 3)
    {
      v72 = 0;
      goto LABEL_105;
    }

LABEL_267:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v71) = 0;
    v54 = *(a1 + 1);
    v70 = *(a1 + 2);
    v72 = 1;
    v56 = *a1;
LABEL_105:
    if (v54 <= &v70[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_269:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_270;
    }

    *(a1 + 2) = v70 + 1;
    if (!v70)
    {
      goto LABEL_269;
    }

    v73 = *v70;
    if (v73 < 3)
    {
      v74 = 0;
      goto LABEL_109;
    }

LABEL_270:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v73) = 0;
    v56 = *a1;
    v74 = 1;
LABEL_109:
    if (!v56)
    {
      break;
    }

    if (v174)
    {
      v75 = v173;
      v173 = 0;
      v129 = v75;
      if (v172)
      {
        v130 = v170;
        v76 = v171;
        v170 = 0;
        v171 = 0;
        v131 = v76;
        if (v169)
        {
          v132 = v167;
          v77 = v168;
          v167 = 0;
          v168 = 0;
          v133 = v77;
          if (v176)
          {
            v78 = v175;
            v175 = 0;
            v134 = v78;
            if (v166)
            {
              v79 = v165;
              v165 = 0;
              v135 = v79;
              if (v164)
              {
                v80 = v163;
                v163 = 0;
                v136 = v80;
                if (v162)
                {
                  v81 = v161;
                  v161 = 0;
                  v137 = v81;
                  if ((v127 & 0x10000) != 0)
                  {
                    v138 = v127;
                    if (v126 > 0xFF)
                    {
                      v139 = v126;
                      if (v128)
                      {
                        v140 = v123;
                        v141 = v125;
                        if ((v124 & 0x10000) != 0)
                        {
                          v142 = v124;
                          if (!v122)
                          {
                            v143 = v120;
                            if (!v119)
                            {
                              v144 = v117;
                              if (!v116)
                              {
                                v145 = v114;
                                if (!v115)
                                {
                                  v146 = v113;
                                  if (!v112)
                                  {
                                    v147 = v121;
                                    if (!v111)
                                    {
                                      v148 = v118;
                                      if (!v110)
                                      {
                                        v149 = v108;
                                        if ((v107 & 0x100) != 0)
                                        {
                                          v150 = v107;
                                          if (!v106)
                                          {
                                            v151 = v104;
                                            if (!v105)
                                            {
                                              v152 = v103;
                                              if (!v102)
                                              {
                                                v153 = v109;
                                                if ((v100 | v101 | v99) >> 16)
                                                {
                                                  v154 = v100 | v101;
                                                  if (!v98)
                                                  {
                                                    v155 = v58;
                                                    if (v61)
                                                    {
                                                      v156 = v62;
                                                      if (v65)
                                                      {
                                                        v157 = v66;
                                                        if (a2)
                                                        {
                                                          v158 = v69;
                                                          if (!v72)
                                                          {
                                                            v159 = v71;
                                                            if (!v74)
                                                            {
                                                              v160 = v73;
                                                              *(WebKit::WebsitePoliciesData::WebsitePoliciesData(v97, &v129) + 120) = 1;
                                                              WebKit::WebsitePoliciesData::~WebsitePoliciesData(&v129, v82);
                                                              goto LABEL_140;
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_172:
    IPC::Decoder::markInvalid(a1);
  }

  *v97 = 0;
  v97[120] = 0;
  v92 = v128;
  if (!v125)
  {
    v92 = 0;
  }

  if (v92)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v125, v44);
  }

LABEL_140:
  if (v162 == 1)
  {
    v83 = v161;
    v161 = 0;
    if (v83)
    {
      if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v83, v44);
      }
    }
  }

  if (v164 == 1)
  {
    v84 = v163;
    v163 = 0;
    if (v84)
    {
      if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v84, v44);
      }
    }
  }

  if (v166 == 1)
  {
    v85 = v165;
    v165 = 0;
    if (v85)
    {
      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v44);
      }
    }
  }

  if (v176 == 1)
  {
    v86 = v175;
    v175 = 0;
    if (v86)
    {
      if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v44);
      }
    }
  }

  if (v169 == 1)
  {
    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v167, v44);
  }

  if (v172 == 1)
  {
    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v170, v44);
  }

  if (v174 == 1)
  {
    if (v173)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v173, v44);
    }
  }
}

void sub_19D78E7FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl **a24, uint64_t a25, int a26, char a27, char a28, uint64_t a29, char a30)
{
  if (!a24)
  {
    a27 = 0;
  }

  if (a27)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a24, a2);
  }

  if (*(v30 - 208) == 1)
  {
    v33 = *(v30 - 216);
    *(v30 - 216) = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, a2);
      }
    }
  }

  if (*(v30 - 192) == 1)
  {
    v34 = *(v30 - 200);
    *(v30 - 200) = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, a2);
      }
    }
  }

  if (*(v30 - 176) == 1)
  {
    v35 = *(v30 - 184);
    *(v30 - 184) = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, a2);
      }
    }
  }

  if (*(v30 - 96) == 1)
  {
    v36 = *(v30 - 104);
    *(v30 - 104) = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, a2);
      }
    }
  }

  if (*(v30 - 152) == 1)
  {
    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30 - 168, a2);
  }

  if (*(v30 - 128) == 1)
  {
    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30 - 144, a2);
  }

  if (*(v30 - 112) == 1)
  {
    v37 = *(v30 - 120);
    if (v37)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::PaymentSetupFeatures,void>::decode(WebKit::CoreIPCCFDictionary ***a1@<X0>, uint64_t a2@<X8>)
{
  v21[16] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v21[0] = v4;
  if (v4)
  {
    v4 = v4;
  }

  v5 = MEMORY[0x1E69E2378];
  v6 = (*MEMORY[0x1E69E2378])(v4);
  v21[1] = v6;
  if (v6)
  {
    v7 = v6;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v17, v21, 2);
  IPC::decodeRequiringAllowedClasses<NSArray,NSArray*>(&v15, a1);
  if (v17)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v17, v8);
  }

  for (i = 1; i != -1; --i)
  {
    v10 = v21[i];
    v21[i] = 0;
    if (v10)
    {
    }
  }

  if (*a1)
  {
    if ((v16 & 1) == 0)
    {
      __break(1u);
    }

    v11 = v15;
    if (v15 && (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v12 = [v15 countByEnumeratingWithState:&v17 objects:v21 count:16]) != 0))
    {
      v13 = *v18;
LABEL_16:
      v14 = 0;
      while (1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*v5)();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v12)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      if (*a1)
      {
        *a2 = v11;
        *(a2 + 8) = 1;
        return;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  if (v15)
  {
  }
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::PaymentSetupConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v45);
  IPC::Decoder::decode<WTF::String>(a1, &v43);
  IPC::Decoder::decode<WTF::String>(a1, &v41);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v32);
  if (!*a1)
  {
    goto LABEL_61;
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_60;
  }

  v5 = v45;
  v45 = 0;
  v27 = v5;
  if ((v44 & 1) == 0)
  {
    goto LABEL_60;
  }

  v6 = v43;
  v43 = 0;
  v28 = v6;
  if ((v42 & 1) == 0)
  {
    goto LABEL_60;
  }

  v7 = v41;
  v41 = 0;
  v29 = v7;
  if ((v34 & 1) == 0)
  {
    goto LABEL_60;
  }

  v30[0] = v32;
  v8 = v33;
  v32 = 0;
  v33 = 0;
  v30[1] = v8;
  WebCore::ApplePaySetupConfiguration::ApplePaySetupConfiguration(&v36, &v27);
  v40 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v9);
  v10 = v29;
  v29 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = v28;
  v28 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = v27;
  v27 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v4);
  }

  while (1)
  {
    if (v34 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v4);
    }

    if (v42 == 1)
    {
      v13 = v41;
      v41 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v4);
        }
      }
    }

    if (v44 == 1)
    {
      v14 = v43;
      v43 = 0;
      if (v14)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v4);
        }
      }
    }

    if (v46 == 1)
    {
      v15 = v45;
      v45 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v4);
        }
      }
    }

    if ((v40 & 1) == 0)
    {
      v24 = *a1;
      v25 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v26 = *(a1 + 3);
      if (v26)
      {
        if (v25)
        {
          (*(*v26 + 16))(v26, v24);
        }
      }
    }

    result = IPC::Decoder::decode<WTF::URL>(a1, &v32);
    if (!*a1)
    {
      *a2 = 0;
      a2[80] = 0;
      goto LABEL_45;
    }

    if (v40 & 1) != 0 && (v35)
    {
      break;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    LOBYTE(v36) = 0;
    v40 = 0;
  }

  WebKit::PaymentSetupConfiguration::PaymentSetupConfiguration(&v27, &v36, &v32);
  WebCore::ApplePaySetupConfiguration::ApplePaySetupConfiguration(a2, &v27);
  WTF::URL::URL((a2 + 40), &v31);
  a2[80] = 1;
  v18 = v31;
  v31 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v17);
  v19 = v29;
  v29 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v4);
  }

  v20 = v28;
  v28 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v4);
  }

  result = v27;
  v27 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v4);
  }

LABEL_45:
  if (v35 == 1)
  {
    result = v32;
    v32 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  if (v40 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v4);
    v22 = v38;
    v38 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v37;
    v37 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v21);
    }

    result = v36;
    v36 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

void sub_19D78F060(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, WTF::StringImpl *a25, WTF::StringImpl *a26, WTF::StringImpl *a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a30 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a28, a2);
    if (a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a27, v31);
    }

    if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a26, v31);
    }

    if (a25)
    {
      if (atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a25, v31);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebIDBResult,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::IDBResultData,void>::decode(a1, v37);
  if ((v44 & 1) == 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v4, &v34);
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 120) = 0;
      goto LABEL_10;
    }

    if (v44 & 1) != 0 && (v36)
    {
      break;
    }

    __break(1u);
LABEL_20:
    v4 = *a1;
    v22 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      (*(*v23 + 16))(v23, v4);
    }
  }

  MEMORY[0x19EB04BF0](&v25, v37);
  v7 = v34;
  v34 = 0;
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  v8 = v28;
  v28 = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = v29;
  v9 = v30;
  v30 = 0u;
  *(a2 + 56) = v9;
  v10 = *v31;
  *v31 = 0;
  *(a2 + 72) = v10;
  v11 = *&v31[16];
  v12 = v32;
  *&v31[8] = 0u;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  v33[0] = 0;
  *(a2 + 104) = v7;
  v33[1] = 0;
  v13 = v35;
  v35 = 0;
  *(a2 + 112) = v13;
  *(a2 + 120) = 1;
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v14);
  std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&v31[16], 0);
  std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&v31[8], 0);
  v16 = *v31;
  *v31 = 0;
  if (v16)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v16 + 8, v15);
    bmalloc::api::tzoneFree(v16, v17);
  }

  std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&v30 + 1, 0);
  std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v30, 0);
  result = v28;
  v28 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v6);
  }

LABEL_10:
  if (v36 == 1)
  {
    result = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v6);
  }

  if (v44 == 1)
  {
    std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&v43, 0);
    std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&v42, 0);
    v19 = v41;
    v41 = 0;
    if (v19)
    {
      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v19 + 8, v18);
      bmalloc::api::tzoneFree(v19, v20);
    }

    std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&v40, 0);
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v39, 0);
    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

void sub_19D78F580(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, WTF::StringImpl *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, bmalloc::api *a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a27 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a25, a2);
  }

  if (a44 == 1)
  {
    std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&a42, 0);
    std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&a41, 0);
    v46 = a40;
    a40 = 0;
    if (v46)
    {
      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v46 + 8, v45);
      bmalloc::api::tzoneFree(v46, v47);
    }

    std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&a39, 0);
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&a38, 0);
    v49 = a35;
    a35 = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v48);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreProperties,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 120);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 144);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 168);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 192);
  IPC::ArgumentCoder<std::optional<WebCore::IntRect>,void>::encode<IPC::Encoder,std::optional<WebCore::IntRect>>(a1, a2 + 208);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 228));
  v5 = *(a2 + 229);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 230));
  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 232));
}

void IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreProperties,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v93[2] = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, v90);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *v2;
  if (v4 <= &v5[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v13 = *(v2 + 3);
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_10;
  }

  *(v2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_10:
    *v2 = 0;
    *(v2 + 1) = 0;
    v14 = *(v2 + 3);
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v6 = *v2;
        v4 = *(v2 + 1);
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_13:
    *v2 = 0;
    *(v2 + 1) = 0;
    v15 = *(v2 + 3);
    if (v15 && v4)
    {
      (*(*v15 + 16))(v15, v6);
    }

    goto LABEL_14;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = 0;
    v60 = 0;
    v12 = 1;
    goto LABEL_16;
  }

  v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v2);
  if (v9)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFF00;
    v11 = v8;
    v12 = 1;
    v60 = 1;
    goto LABEL_16;
  }

LABEL_14:
  v16 = *v2;
  v17 = *(v2 + 1);
  *v2 = 0;
  *(v2 + 1) = 0;
  v18 = *(v2 + 3);
  if (v18 && v17)
  {
    (*(*v18 + 16))(v18, v16);
  }

  v12 = 0;
  v10 = 0;
  v11 = 0;
LABEL_16:
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v87, v2);
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v84, v2);
  v65 = v12;
  v63 = v11;
  v64 = v10;
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v81, v2);
  v19 = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v2, &v78);
  v20 = *(v2 + 1);
  if ((v80 & 1) == 0)
  {
    v27 = *v2;
    *v2 = 0;
    *(v2 + 1) = 0;
    v28 = *(v2 + 3);
    if (!v28 || !v20)
    {
      v20 = 0;
      v21 = *v2;
LABEL_28:
      *v2 = 0;
      *(v2 + 1) = 0;
      v29 = *(v2 + 3);
      if (v29)
      {
        if (v20)
        {
          (*(*v29 + 16))(v29, v21);
          v20 = *(v2 + 1);
        }
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_30;
    }

    v19 = (*(*v28 + 16))(v28, v27);
    v20 = *(v2 + 1);
  }

  v21 = *v2;
  v22 = *(v2 + 2);
  if (v20 <= &v22[-*v2])
  {
    goto LABEL_28;
  }

  *(v2 + 2) = v22 + 1;
  if (!v22)
  {
LABEL_30:
    *v2 = 0;
    *(v2 + 1) = 0;
    v30 = *(v2 + 3);
    if (v30)
    {
      if (v20)
      {
        (*(*v30 + 16))(v30);
        v21 = *v2;
        v20 = *(v2 + 1);
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
LABEL_33:
    *v2 = 0;
    *(v2 + 1) = 0;
    v31 = *(v2 + 3);
    if (v31 && v20)
    {
      (*(*v31 + 16))(v31, v21);
    }

LABEL_34:
    v32 = *v2;
    v33 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v19 = *(v2 + 3);
    if (v19)
    {
      goto LABEL_77;
    }

    goto LABEL_35;
  }

  v23 = *v22;
  if (v23 >= 2)
  {
    goto LABEL_33;
  }

  if (!v23)
  {
    v24 = 0;
    v26 = 0;
    i = 1;
    goto LABEL_37;
  }

  v19 = IPC::Decoder::decode<WebCore::IntRect>(v2, &v66);
  if (v68 != 1)
  {
    goto LABEL_34;
  }

  v24 = v66;
  v93[0] = *v67;
  *(v93 + 7) = *&v67[7];
  for (i = 1; ; i = 0)
  {
    v26 = 1;
LABEL_37:
    v33 = *(v2 + 1);
    v34 = *(v2 + 2);
    v32 = *v2;
    v61 = v26;
    v62 = i;
    if (v33 <= &v34[-*v2])
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v48 = *(v2 + 3);
      if (v48)
      {
        if (v33)
        {
          (*(*v48 + 16))(v48);
          v33 = *(v2 + 1);
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v35 = v34 + 1;
      *(v2 + 2) = v34 + 1;
      if (v34)
      {
        v36 = *v34;
        if (v36 < 2)
        {
          v37 = 1;
          goto LABEL_41;
        }

        goto LABEL_92;
      }
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v49 = *(v2 + 3);
    if (!v49)
    {
      v33 = 0;
LABEL_91:
      v32 = 0;
      v36 = 0;
      goto LABEL_92;
    }

    if (!v33)
    {
      goto LABEL_91;
    }

    (*(*v49 + 16))(v49);
    v36 = 0;
    v32 = *v2;
    v33 = *(v2 + 1);
LABEL_92:
    *v2 = 0;
    *(v2 + 1) = 0;
    v19 = *(v2 + 3);
    if (v19)
    {
      if (v33)
      {
        v19 = (*(*v19 + 16))(v19, v32);
        v32 = *v2;
        v33 = *(v2 + 1);
        goto LABEL_95;
      }
    }

    else
    {
      v33 = 0;
    }

    v32 = 0;
LABEL_95:
    v37 = 0;
    v35 = *(v2 + 2);
LABEL_41:
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v33 <= &v35[-v32])
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v50 = *(v2 + 3);
      if (v50)
      {
        if (v33)
        {
          (*(*v50 + 16))(v50);
          v32 = *v2;
          v33 = *(v2 + 1);
LABEL_99:
          *v2 = 0;
          *(v2 + 1) = 0;
          v51 = *(v2 + 3);
          if (v51)
          {
            if (v33)
            {
              (*(*v51 + 16))(v51, v32);
              v32 = *v2;
              v33 = *(v2 + 1);
LABEL_102:
              *v2 = 0;
              *(v2 + 1) = 0;
              v52 = *(v2 + 3);
              if (v52)
              {
                if (v33)
                {
                  (*(*v52 + 16))(v52, v32);
                  v41 = 0;
                  v32 = 0;
                  v57 = *(v2 + 3);
                  v58 = *v2;
                  v59 = *(v2 + 1);
                  v40 = 1;
                  *v2 = 0;
                  *(v2 + 1) = 0;
                  v33 = 0;
                  if (!v57 || !v59)
                  {
                    goto LABEL_105;
                  }

                  v19 = (*(*v57 + 16))(v57, v58, v59);
                  v41 = 0;
                  v32 = *v2;
                  v33 = *(v2 + 1);
                  goto LABEL_48;
                }

                v32 = 0;
                v41 = 0;
              }

              else
              {
                v32 = 0;
                v41 = 0;
                v33 = 0;
              }

              v40 = 1;
              goto LABEL_105;
            }
          }

          else
          {
            v33 = 0;
          }

          v32 = 0;
          goto LABEL_102;
        }
      }

      else
      {
        v33 = 0;
      }

      v32 = 0;
      goto LABEL_99;
    }

    *(v2 + 2) = v35 + 1;
    if (!v35)
    {
      goto LABEL_99;
    }

    v39 = *v35;
    if (v39 >= 2)
    {
      goto LABEL_102;
    }

    v40 = 0;
    v41 = v39 != 0;
LABEL_48:
    v42 = *(v2 + 2);
    if (v33 > &v42[-v32])
    {
      *(v2 + 2) = v42 + 1;
      if (v42)
      {
        v43 = *v42;
        if (v43 < 2)
        {
          v44 = 1;
          goto LABEL_52;
        }

        goto LABEL_111;
      }

      goto LABEL_108;
    }

LABEL_105:
    *v2 = 0;
    *(v2 + 1) = 0;
    v53 = *(v2 + 3);
    if (v53)
    {
      if (v33)
      {
        (*(*v53 + 16))(v53, v32);
        v32 = *v2;
        v33 = *(v2 + 1);
        goto LABEL_108;
      }
    }

    else
    {
      v33 = 0;
    }

    v32 = 0;
LABEL_108:
    *v2 = 0;
    *(v2 + 1) = 0;
    v54 = *(v2 + 3);
    if (!v54)
    {
      v33 = 0;
LABEL_110:
      v32 = 0;
      v43 = 0;
      goto LABEL_111;
    }

    if (!v33)
    {
      goto LABEL_110;
    }

    (*(*v54 + 16))(v54, v32);
    v43 = 0;
    v32 = *v2;
    v33 = *(v2 + 1);
LABEL_111:
    *v2 = 0;
    *(v2 + 1) = 0;
    v19 = *(v2 + 3);
    if (!v19)
    {
      v32 = 0;
      v33 = 0;
LABEL_113:
      v44 = 0;
      goto LABEL_52;
    }

    if (!v33)
    {
      v32 = 0;
      goto LABEL_113;
    }

    v19 = (*(*v19 + 16))(v19, v32);
    v44 = 0;
    v32 = *v2;
    v33 = *(v2 + 1);
LABEL_52:
    v45 = v43 ? v44 : 0;
    v46 = ((*(v2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v33 < v46 - v32 || v33 - (v46 - v32) <= 3)
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v55 = *(v2 + 3);
      if (v55)
      {
        if (v33)
        {
          (*(*v55 + 16))(v55);
          v32 = *v2;
          v33 = *(v2 + 1);
          goto LABEL_117;
        }
      }

      else
      {
        v33 = 0;
      }

      v32 = 0;
    }

    else
    {
      *(v2 + 2) = v46 + 1;
      if (v46)
      {
        v47 = *v46 | 0x100000000;
        if (!v32)
        {
          goto LABEL_118;
        }

        goto LABEL_59;
      }
    }

LABEL_117:
    *v2 = 0;
    *(v2 + 1) = 0;
    v56 = *(v2 + 3);
    if (!v56 || !v33 || (v19 = (*(*v56 + 16))(v56, v32), v47 = 0, (v32 = *v2) == 0))
    {
LABEL_118:
      *a2 = 0;
      *(a2 + 240) = 0;
      goto LABEL_72;
    }

LABEL_59:
    v66 = 0;
    v69 = 0;
    v70 = 0;
    LOBYTE(v71) = 0;
    BYTE8(v71) = 0;
    LOBYTE(v72) = 0;
    v73[0] = 0;
    v73[8] = 0;
    v73[24] = 0;
    LOBYTE(v74) = 0;
    LOBYTE(v75) = 0;
    BYTE8(v75) = 0;
    v76[0] = 0;
    v76[8] = 0;
    v76[24] = 0;
    v76[28] = 0;
    v76[30] = 0;
    v77 = 1065353216;
    if (v92)
    {
      std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(&v66, v90);
      if (v65)
      {
        *&v71 = v63 | v64;
        BYTE8(v71) = v60;
        if (v89)
        {
          v2 = &v66;
          v72 = v87;
          v73[0] = v88;
          if (v86)
          {
            *&v73[8] = v84;
            v73[24] = v85;
            if (v83)
            {
              v74 = v81;
              LOBYTE(v75) = v82;
              if (v80)
              {
                *(&v75 + 1) = v78;
                v76[0] = v79;
                if (v62)
                {
                  v76[8] = v24;
                  *&v76[9] = v93[0];
                  *&v76[16] = *(v93 + 7);
                  v76[24] = v61;
                  if (v37)
                  {
                    v76[28] = v38;
                    if (!v40)
                    {
                      v76[29] = v41;
                      if (v44)
                      {
                        v76[30] = v45;
                        if ((v47 & 0x100000000) != 0)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_77:
    if (v33)
    {
      v19 = (*(*v19 + 16))(v19, v32);
    }

LABEL_35:
    v24 = 0;
  }

  v77 = v47;
  std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](a2, &v66);
  *(a2 + 96) = v70;
  *(a2 + 184) = v75;
  *(a2 + 200) = *v76;
  *(a2 + 216) = *&v76[16];
  *(a2 + 232) = v77;
  *(a2 + 120) = v72;
  *(a2 + 136) = *v73;
  *(a2 + 152) = *&v73[16];
  *(a2 + 168) = v74;
  *(a2 + 104) = v71;
  *(a2 + 240) = 1;
  v70 = 0;
  if (v69 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&v66);
  }

LABEL_72:
  if (v92 == 1 && v91 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v90);
  }
}

void sub_19D79010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  if (*(v27 - 120) == 1 && *(v27 - 128) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v27 - 216));
  }

  _Unwind_Resume(exception_object);
}

WTF::MachSendRight *IPC::Decoder::decode<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[96] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D7901CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1 && *(v1 + 88) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = a2[2];
  v4 = *a2;
  v5 = v2[1];
  if (v5 <= v3 - v4)
  {
    v28 = result;
    *v2 = 0;
    v2[1] = 0;
    v31 = v2;
    v23 = v2[3];
    if (v23)
    {
      if (v5)
      {
        (*(*v23 + 16))(v23);
        v4 = *v31;
        v5 = v31[1];
LABEL_46:
        *v31 = 0;
        v31[1] = 0;
        v24 = v31[3];
        if (v24)
        {
          if (v5)
          {
            (*(*v24 + 16))(v24, v4);
            v5 = v31[1];
          }
        }

        else
        {
          v5 = 0;
        }

LABEL_50:
        v2 = v31;
        *v31 = 0;
        v31[1] = 0;
        v20 = v31[3];
        result = v28;
        if (v20)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_46;
  }

  v2[2] = v3 + 1;
  if (!v3)
  {
    v31 = v2;
    v28 = result;
    goto LABEL_46;
  }

  if (*v3 >= 2u)
  {
    v31 = v2;
    v28 = result;
    goto LABEL_50;
  }

  if (!*v3)
  {
    v13 = 0;
    *result = 0;
LABEL_22:
    *(result + 16) = v13;
    *(result + 24) = 1;
    return result;
  }

  v6 = v3 & 0xFFFFFFFFFFFFFFF8;
  v7 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v5 >= v7 - v4 && v5 - (v7 - v4) > 7)
  {
    v2[2] = v6 + 16;
    if (v7)
    {
      if (v4)
      {
        v9 = *v7;
        if ((v9 - 1) < 0xFFFFFFFFFFFFFFFELL)
        {
          v10 = 1;
          goto LABEL_14;
        }
      }

      v30 = v2;
      v27 = result;
      goto LABEL_25;
    }

    v30 = v2;
    v27 = result;
    v15 = v5;
    v16 = v4;
  }

  else
  {
    v27 = result;
    v15 = 0;
    v16 = 0;
    *v2 = 0;
    v2[1] = 0;
    v30 = v2;
    result = v2[3];
    if (result)
    {
      goto LABEL_61;
    }
  }

  while (1)
  {
    *v30 = 0;
    v30[1] = 0;
    v17 = v30[3];
    if (v17 && v15)
    {
      result = (*(*v17 + 16))(v17, v16, v15);
      if (*v30)
      {
        goto LABEL_60;
      }

      v4 = 0;
      v5 = v30[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

LABEL_25:
    *v30 = 0;
    v30[1] = 0;
    v14 = v30[3];
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14, v4);
        v10 = 0;
        v9 = 0;
        v2 = v30;
        v4 = *v30;
        v5 = v30[1];
        result = v27;
        goto LABEL_14;
      }

      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v10 = 0;
    v9 = 0;
    result = v27;
    v2 = v30;
LABEL_14:
    v11 = ((v2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
    {
      v26 = v10;
      v25 = v9;
      v27 = result;
      *v2 = 0;
      v2[1] = 0;
      v30 = v2;
      v18 = v2[3];
      if (v18)
      {
        if (v5)
        {
          (*(*v18 + 16))(v18);
          v4 = *v30;
          v5 = v30[1];
          goto LABEL_34;
        }
      }

      else
      {
        v5 = 0;
      }

      v4 = 0;
    }

    else
    {
      v2[2] = v11 + 1;
      if (v11)
      {
        v12 = *v11 | 0x100000000;
        if (!v4)
        {
          break;
        }

        goto LABEL_18;
      }

      v26 = v10;
      v25 = v9;
      v30 = v2;
      v27 = result;
    }

LABEL_34:
    v2 = v30;
    *v30 = 0;
    v30[1] = 0;
    v19 = v30[3];
    result = v27;
    if (!v19 || !v5)
    {
      goto LABEL_38;
    }

    (*(*v19 + 16))(v30[3], v4);
    v2 = v30;
    result = v27;
    v12 = 0;
    v9 = v25;
    v10 = v26;
    if (!*v30)
    {
      break;
    }

LABEL_18:
    if ((v10 & 1) != 0 && (v12 & 0x100000000) != 0)
    {
      *result = v9;
      *(result + 8) = v12;
      v13 = 1;
      goto LABEL_22;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    (*(*result + 16))(result);
    v16 = *v30;
    v15 = v30[1];
  }

  v5 = v2[1];
  v20 = v2[3];
  *v2 = 0;
  v2[1] = 0;
  if (!v20)
  {
    goto LABEL_38;
  }

LABEL_51:
  if (v5)
  {
    v29 = result;
    v32 = v2;
    (*(*v20 + 16))(v20);
    v2 = v32;
    result = v29;
  }

LABEL_38:
  *result = 0;
  *(result + 24) = 0;
  v21 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v21)
  {
    v22 = *(*result + 16);

    return v22();
  }

  return result;
}

void WebKit::RemoteLayerBackingStoreProperties::~RemoteLayerBackingStoreProperties(WebKit::RemoteLayerBackingStoreProperties *this)
{
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
  }

  if (*(this + 88) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(this);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WebKit::ChangedLayers,void>::encode(a1, (a2 + 24));
  v5 = *(a2 + 40);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5 == 0);
  if (v5)
  {
    v11 = *(a2 + 40);
    if (!v11)
    {
      result = 157;
      __break(0xC471u);
      return result;
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v11);
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 60));
  v6 = *(a2 + 60);
  if (!v6)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 48);
  v2 = 112 * v6;
LABEL_4:
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v5 + 16));
  if ((*(v5 + 56) & 1) == 0)
  {
    v14 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    goto LABEL_6;
  }

  v13 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v13);
  if (*(v5 + 56))
  {
    IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::VideoElementData,void>::encode(a1, v5 + 24);
LABEL_6:
    v12 = *(v5 + 104);
    v7 = IPC::Encoder::operator<<<BOOL>(a1, &v12);
    v8 = v12;
    if (!v12)
    {
      if (*(v5 + 104))
      {
        mpark::throw_bad_variant_access(v7);
      }

      goto LABEL_8;
    }

    goto LABEL_27;
  }

  while (1)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_27:
    IPC::ArgumentCoder<mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&,0ul>(a1, (v5 + 64), v8);
LABEL_8:
    v5 += 112;
    v2 -= 112;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_9:
    IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 64);
    IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
    IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 96);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 124));
    v9 = *(a2 + 124);
    if (v9)
    {
      v5 = *(a2 + 112);
      v2 = 8 * v9;
      do
      {
        IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, v5);
        v5 += 8;
        v2 -= 8;
      }

      while (v2);
    }

    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 132));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 136));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 140));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 148));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 156));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 160));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 164));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 168));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 172));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 176));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 180));
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 184));
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 192));
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 200));
    if ((*(a2 + 272) & 1) == 0)
    {
      v16 = 0;
      IPC::Encoder::operator<<<BOOL>(a1, &v16);
      goto LABEL_12;
    }

    v15 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v15);
    if (*(a2 + 272))
    {
      v17 = *(a2 + 216);
      IPC::Encoder::operator<<<BOOL>(a1, &v17);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 208), v17);
      v18 = *(a2 + 232);
      IPC::Encoder::operator<<<BOOL>(a1, &v18);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 224), v18);
      v19 = *(a2 + 248);
      IPC::Encoder::operator<<<BOOL>(a1, &v19);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 240), v19);
      v20 = *(a2 + 264);
      IPC::Encoder::operator<<<BOOL>(a1, &v20);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 256), v20);
LABEL_12:
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 280));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 288));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 296));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 304));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 312));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 320));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 328));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 336));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 344));
      IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 352));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 354));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 355));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 356));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 357));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 358));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 359));
      if ((*(a2 + 912) & 1) == 0)
      {
        v22 = 0;
        IPC::Encoder::operator<<<BOOL>(a1, &v22);
        goto LABEL_14;
      }

      v21 = 1;
      IPC::Encoder::operator<<<BOOL>(a1, &v21);
      if (*(a2 + 912))
      {
        break;
      }
    }
  }

  IPC::ArgumentCoder<WebKit::EditorState,void>::encode(a1, a2 + 368);
LABEL_14:
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, a2 + 928);
  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 944));
}

void IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction,void>::decode(IPC::Decoder *a1@<X0>, IPC::Decoder *a2@<X8>)
{
  v10 = a1;
  v378 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(&v297, a1);
  v11 = &v299;
  v12 = *(v10 + 1);
  v13 = ((*(v10 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = *v10;
  v15 = v13 - *v10;
  v16 = v12 >= v15;
  v17 = v12 - v15;
  if (!v16 || v17 <= 3)
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    v172 = *(v10 + 3);
    if (v172)
    {
      if (v12)
      {
        (*(*v172 + 16))(v172);
        v12 = *(v10 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_297;
  }

  *(v10 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_297:
    *v10 = 0;
    *(v10 + 1) = 0;
    v173 = *(v10 + 3);
    v11 = &v299;
    if (v173 && v12)
    {
      (*(*v173 + 16))(v173);
    }

    goto LABEL_47;
  }

  v4 = *v13;
  v270[0] = 0;
  if (!v4)
  {
    v134 = 0;
LABEL_50:
    *v318 = v134;
    LOBYTE(i) = 1;
    v318[8] = 1;
    if (v14)
    {
      WebKit::ChangedLayers::ChangedLayers(&v358, v318);
      WebKit::ChangedLayers::ChangedLayers(v295, &v358);
      v296 = 1;
      WebKit::ChangedLayers::~ChangedLayers(&v358, v41);
      if ((v318[8] & 1) == 0)
      {
        goto LABEL_53;
      }

      v134 = *v318;
      if (!*v318)
      {
        goto LABEL_53;
      }
    }

    else
    {
      LOBYTE(v295[0]) = 0;
      v296 = 0;
      if (!v134)
      {
        goto LABEL_53;
      }
    }

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v134, v14);
    goto LABEL_53;
  }

  LODWORD(v5) = 0;
  LOBYTE(v6) = 24;
  while (1)
  {
    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v358);
    if ((v359 & 1) == 0)
    {
      break;
    }

    IPC::ArgumentCoder<WebKit::LayerProperties,void>::decode(v318, v10);
    v20 = v354;
    if ((v354 & 1) == 0)
    {
      v19 = *v10;
      v32 = *(v10 + 1);
      *v10 = 0;
      *(v10 + 1) = 0;
      v33 = *(v10 + 3);
      if (!v33)
      {
        goto LABEL_470;
      }

      if (!v32)
      {
        v11 = &v299;
LABEL_470:
        *v10 = 0;
        *(v10 + 1) = 0;
        break;
      }

      (*(*v33 + 16))(v33, v19);
      v20 = v354;
      v11 = &v299;
      if ((v354 & 1) == 0)
      {
        v19 = *v10;
        v34 = *(v10 + 1);
        v35 = *(v10 + 3);
        *v10 = 0;
        *(v10 + 1) = 0;
        if (v35 && v34)
        {
          (*(*v35 + 16))(v35, v19);
        }

        break;
      }
    }

    v3 = WTF::fastMalloc(v20, 0x310);
    v21 = WebKit::LayerProperties::LayerProperties(v3, v318);
    if (v354)
    {
      WebKit::LayerProperties::~LayerProperties(v318);
    }

    if ((v359 & 1) == 0)
    {
      goto LABEL_443;
    }

    if (*(&v358 + 1) == -1 || v358 == 0)
    {
      goto LABEL_44;
    }

    v7 = v270[0];
    if (v270[0] || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v270, 0), (v7 = v270[0]) != 0))
    {
      v8 = *(v7 - 8);
    }

    else
    {
      v8 = 0;
    }

    v23 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v358) & v8;
    i = v7 + 24 * v23;
    v25 = *i;
    v24 = *(i + 8);
    if (*i != 0)
    {
      v26 = 0;
      v27 = 1;
      while (__PAIR128__(v24, v25) != v358)
      {
        if (v24 == -1)
        {
          v26 = i;
        }

        v23 = (v23 + v27) & v8;
        i = v7 + 24 * v23;
        v25 = *i;
        v24 = *(i + 8);
        ++v27;
        if (*i == 0)
        {
          if (v26)
          {
            *v26 = 0;
            v26[1] = 0;
            v26[2] = 0;
            --*(v7 - 16);
            i = v26;
          }

          goto LABEL_27;
        }
      }

LABEL_44:
      WebKit::LayerProperties::~LayerProperties(v3);
      WTF::fastFree(v36, v37);
      break;
    }

LABEL_27:
    *i = v358;
    std::unique_ptr<WebKit::LayerProperties>::reset[abi:sn200100]((i + 16), v3);
    v28 = v270[0];
    if (v270[0])
    {
      v29 = *(v270[0] - 12) + 1;
    }

    else
    {
      v29 = 1;
    }

    *(v270[0] - 12) = v29;
    v30 = (*(v28 - 16) + v29);
    v31 = *(v28 - 4);
    if (v31 > 0x400)
    {
      if (v31 > 2 * v30)
      {
        goto LABEL_33;
      }

LABEL_32:
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v270, i);
      goto LABEL_33;
    }

    if (3 * v31 <= 4 * v30)
    {
      goto LABEL_32;
    }

LABEL_33:
    LODWORD(v5) = v5 + 1;
    if (v5 == v4)
    {
      v134 = v270[0];
      v14 = *v10;
      goto LABEL_50;
    }
  }

  if (v270[0])
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v270[0], v19);
  }

LABEL_47:
  v38 = *v10;
  v39 = *(v10 + 1);
  *v10 = 0;
  *(v10 + 1) = 0;
  v40 = *(v10 + 3);
  if (v40)
  {
    if (v39)
    {
      v21 = (*(*v40 + 16))(v40, v38);
      if (*v10)
      {
        goto LABEL_443;
      }
    }
  }

  LOBYTE(v295[0]) = 0;
  v296 = 0;
LABEL_53:
  v42 = *(v10 + 1);
  if ((v296 & 1) == 0)
  {
    v137 = *v10;
    *v10 = 0;
    *(v10 + 1) = 0;
    v138 = *(v10 + 3);
    if (v138 && v42)
    {
      (*(*v138 + 16))(v138, v137);
      v42 = *(v10 + 1);
      goto LABEL_54;
    }

    v42 = 0;
    v43 = *v10;
    goto LABEL_223;
  }

LABEL_54:
  v43 = *v10;
  v44 = *(v10 + 2);
  if (v42 <= &v44[-*v10])
  {
LABEL_223:
    *v10 = 0;
    *(v10 + 1) = 0;
    v139 = *(v10 + 3);
    if (v139)
    {
      if (v42)
      {
        (*(*v139 + 16))(v139, v43);
        v42 = *(v10 + 1);
      }
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_225;
  }

  *(v10 + 2) = v44 + 1;
  if (!v44)
  {
LABEL_225:
    *v10 = 0;
    *(v10 + 1) = 0;
    v140 = *(v10 + 3);
    if (v140)
    {
      if (v42)
      {
        (*(*v140 + 16))(v140);
        v43 = *v10;
        v42 = *(v10 + 1);
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

LABEL_227:
    *v10 = 0;
    *(v10 + 1) = 0;
    v141 = *(v10 + 3);
    if (v141 && v42)
    {
      (*(*v141 + 16))(v141, v43);
    }

    goto LABEL_228;
  }

  v45 = *v44;
  if (v45 >= 2)
  {
    goto LABEL_227;
  }

  if (v45)
  {
    v7 = 0;
    goto LABEL_61;
  }

  v46 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v10);
  if (v47)
  {
    v7 = v46;
LABEL_61:
    LOBYTE(v8) = 1;
    goto LABEL_62;
  }

LABEL_228:
  v142 = *v10;
  v143 = *(v10 + 1);
  *v10 = 0;
  *(v10 + 1) = 0;
  v144 = *(v10 + 3);
  if (v144)
  {
    if (!v143)
    {
      v7 = 0;
      LOBYTE(v8) = 0;
      goto LABEL_62;
    }

    (*(*v144 + 16))(v144, v142);
  }

  v7 = 0;
  LOBYTE(v8) = 0;
LABEL_62:
  v48 = *(v10 + 1);
  v49 = ((*(v10 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v50 = *v10;
  v51 = v49 - *v10;
  v16 = v48 >= v51;
  v52 = v48 - v51;
  if (!v16 || v52 <= 7)
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    v166 = *(v10 + 3);
    if (v166)
    {
      if (v48)
      {
        (*(*v166 + 16))(v166);
        v48 = *(v10 + 1);
      }
    }

    else
    {
      v48 = 0;
    }

    goto LABEL_285;
  }

  *(v10 + 2) = v49 + 1;
  if (!v49)
  {
LABEL_285:
    *v10 = 0;
    *(v10 + 1) = 0;
    v167 = *(v10 + 3);
    if (v167 && v48)
    {
      (*(*v167 + 16))(v167);
    }

    LOBYTE(v292) = 0;
    v294 = 0;
    goto LABEL_250;
  }

  v3 = *v49;
  v358 = 0uLL;
  if (v3 >= 0x2492)
  {
    v128 = v294;
    LOBYTE(i) = 112;
    while (1)
    {
      IPC::Decoder::decode<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(v318, v10);
      v145 = v326;
      if (v326)
      {
        if (HIDWORD(v358) == DWORD2(v358))
        {
          WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(&v358, v318);
        }

        else
        {
          v146 = v358 + 112 * HIDWORD(v358);
          v147 = *v318;
          v148 = *&v318[16];
          v149 = *v319;
          *(v146 + 41) = *&v319[9];
          *(v146 + 16) = v148;
          *(v146 + 32) = v149;
          *v146 = v147;
          mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor((v146 + 64), &v320);
          ++HIDWORD(v358);
        }
      }

      else
      {
        v128 = 0;
      }

      if (v326 == 1)
      {
        mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v320, v50);
      }

      if ((v145 & 1) == 0)
      {
        break;
      }

      if (!--v3)
      {
        v150 = HIDWORD(v358);
        if (DWORD2(v358) <= HIDWORD(v358))
        {
          goto LABEL_68;
        }

        i = v358;
        if (HIDWORD(v358))
        {
          if (HIDWORD(v358) >= 0x2492493)
          {
            __break(0xC471u);
            return;
          }

          LODWORD(v3) = 112 * HIDWORD(v358);
          v151 = WTF::fastMalloc((HIDWORD(v358) << 7), (112 * HIDWORD(v358)));
          DWORD2(v358) = (613566757 * (v3 >> 4)) >> 32;
          *&v358 = v151;
          if (v151 != i)
          {
            WTF::VectorMover<false,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>::move(i, (i + 112 * v150), v151);
          }
        }

        if (i)
        {
          if (v358 == i)
          {
            *&v358 = 0;
            DWORD2(v358) = 0;
          }

          WTF::fastFree(i, v50);
        }

        goto LABEL_68;
      }
    }
  }

  else
  {
    if (!v3)
    {
LABEL_68:
      v53 = *(&v358 + 1);
      v292 = v358;
      v358 = 0uLL;
      v293 = v53;
      v294 = 1;
      WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v358, v50);
      goto LABEL_69;
    }

    v127 = WTF::fastMalloc((v3 << 7), (112 * v3));
    DWORD2(v358) = (613566757 * ((7 * v3) & 0xFFFFFFF)) >> 32;
    *&v358 = v127;
    v128 = v294;
    LOBYTE(i) = 112;
    while (1)
    {
      IPC::Decoder::decode<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(v318, v10);
      v129 = v326;
      if (v326)
      {
        if (HIDWORD(v358) == DWORD2(v358))
        {
          WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(&v358, v318);
        }

        else
        {
          v130 = v358 + 112 * HIDWORD(v358);
          v131 = *v318;
          v132 = *&v318[16];
          v133 = *v319;
          *(v130 + 41) = *&v319[9];
          *(v130 + 16) = v132;
          *(v130 + 32) = v133;
          *v130 = v131;
          mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor((v130 + 64), &v320);
          ++HIDWORD(v358);
        }
      }

      else
      {
        v128 = 0;
      }

      if (v326 == 1)
      {
        mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v320, v50);
      }

      if ((v129 & 1) == 0)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_68;
      }
    }
  }

  LOBYTE(v292) = 0;
  v294 = v128;
  WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v358, v50);
  if (v128)
  {
    goto LABEL_69;
  }

LABEL_250:
  v152 = *v10;
  v153 = *(v10 + 1);
  *v10 = 0;
  *(v10 + 1) = 0;
  v154 = *(v10 + 3);
  if (v154 && v153)
  {
    (*(*v154 + 16))(v154, v152);
  }

LABEL_69:
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v289, v10);
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v286, v10);
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v283, v10);
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v10, &v280);
  if ((v282 & 1) == 0)
  {
    v155 = *v10;
    v156 = *(v10 + 1);
    *v10 = 0;
    *(v10 + 1) = 0;
    v157 = *(v10 + 3);
    if (v157)
    {
      if (v156)
      {
        (*(*v157 + 16))(v157, v155);
      }
    }
  }

  v54 = IPC::Decoder::decode<WebCore::IntSize>(v10);
  v266 = v55;
  v4 = v54;
  v56 = IPC::Decoder::decode<WebCore::IntSize>(v10);
  v265 = v57;
  v5 = v56;
  v58 = IPC::Decoder::decode<WebCore::IntPoint>(v10);
  v264 = v59;
  v6 = v58;
  v60 = IPC::Decoder::decode<WebCore::LayoutPoint>(v10);
  v263 = v61;
  v11 = v60;
  v62 = IPC::Decoder::decode<WebCore::LayoutPoint>(v10);
  v262 = v63;
  v9 = v62;
  v258 = IPC::Decoder::decode<WebCore::LayoutPoint>(v10);
  v260 = v64;
  v255 = IPC::Decoder::decode<WebCore::IntPoint>(v10);
  v257 = v65;
  IPC::Decoder::decode<WebCore::Color>(v10, &v278);
  IPC::Decoder::decode<WebCore::Color>(v10, &v276);
  IPC::Decoder::decode<WebCore::Color>(v10, &v274);
  v66 = *(v10 + 1);
  v67 = *(v10 + 2);
  v68 = *v10;
  if (v66 <= &v67[-*v10])
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    v174 = *(v10 + 3);
    if (v174)
    {
      if (v66)
      {
        (*(*v174 + 16))(v174);
        v66 = *(v10 + 1);
      }
    }

    else
    {
      v66 = 0;
    }

    goto LABEL_302;
  }

  *(v10 + 2) = v67 + 1;
  if (!v67)
  {
LABEL_302:
    *v10 = 0;
    *(v10 + 1) = 0;
    v175 = *(v10 + 3);
    if (v175)
    {
      if (v66)
      {
        (*(*v175 + 16))(v175);
        v68 = *v10;
        v66 = *(v10 + 1);
        goto LABEL_305;
      }
    }

    else
    {
      v66 = 0;
    }

    v68 = 0;
LABEL_305:
    *v10 = 0;
    *(v10 + 1) = 0;
    v176 = *(v10 + 3);
    if (v176 && v66)
    {
      (*(*v176 + 16))(v176, v68);
    }

    goto LABEL_265;
  }

  v69 = *v67;
  if (v69 >= 2)
  {
    goto LABEL_305;
  }

  if (v69)
  {
    IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v315, v10);
    IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v312, v10);
    IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v309, v10);
    v21 = IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v306, v10);
    if (*v10)
    {
      if ((v317 & 1) == 0 || (v314 & 1) == 0 || (v311 & 1) == 0 || (v308 & 1) == 0)
      {
        goto LABEL_443;
      }

      LOBYTE(v299) = 0;
      BYTE8(v299) = -1;
      if (v316 != 255)
      {
        if (v316)
        {
          v73 = v315;
          v315 = 0;
          *&v299 = v73;
        }

        else
        {
          LOBYTE(v299) = v315;
        }

        BYTE8(v299) = v316;
      }

      LOBYTE(v300) = 0;
      v301 = -1;
      if (v313 != 255)
      {
        if (v313)
        {
          v74 = v312;
          v312 = 0;
          v300 = v74;
        }

        else
        {
          LOBYTE(v300) = v312;
        }

        v301 = v313;
      }

      LOBYTE(v302) = 0;
      v303 = -1;
      if (v310 != 255)
      {
        if (v310)
        {
          v75 = v309;
          v309 = 0;
          v302 = v75;
        }

        else
        {
          LOBYTE(v302) = v309;
        }

        v303 = v310;
      }

      LOBYTE(v304) = 0;
      v305 = -1;
      if (v307 != 255)
      {
        if (v307)
        {
          v76 = v306;
          v306 = 0;
          v304 = v76;
        }

        else
        {
          LOBYTE(v304) = v306;
        }

        v305 = v307;
      }

      v3 = &v299;
      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(v318, &v299);
      LOBYTE(v320) = 1;
      for (i = 48; i != -16; i -= 16)
      {
        v21 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v299 + i, v22);
      }
    }

    else
    {
      v318[0] = 0;
      LOBYTE(v320) = 0;
    }

    if (v308 == 1)
    {
      v21 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v306, v22);
    }

    if (v311 == 1)
    {
      v21 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v309, v22);
    }

    if (v314 == 1)
    {
      v21 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v312, v22);
    }

    if (v317 == 1)
    {
      v21 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v315, v22);
    }

    if ((v320 & 1) == 0)
    {
      v22 = *v10;
      v161 = *(v10 + 1);
      *v10 = 0;
      *(v10 + 1) = 0;
      v21 = *(v10 + 3);
      if (v21)
      {
        if (v161)
        {
          v21 = (*(*v21 + 16))(v21, v22);
        }
      }
    }

    if (*v10)
    {
      if ((v320 & 1) == 0)
      {
        goto LABEL_443;
      }

      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(&v299, v318);
      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(&v358, &v299);
      v362 = 1;
      for (j = 48; j != -16; j -= 16)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v299 + j, v22);
      }
    }

    else
    {
      LOBYTE(v358) = 0;
      v362 = 0;
    }

    if (v320 == 1)
    {
      v78 = &v319[16];
      v79 = -64;
      do
      {
        v78 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v78, v22) - 16);
        v79 += 16;
      }

      while (v79);
    }

    if (v362 & 1) != 0 || (v162 = *v10, v163 = *(v10 + 1), *v10 = 0, *(v10 + 1) = 0, (v164 = *(v10 + 3)) != 0) && v163 && ((*(*v164 + 16))(v164, v162), (v362))
    {
      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(v270, &v358);
      v272 = 1;
      v273 = 1;
      if (v362)
      {
        v135 = &v360;
        v136 = -64;
        do
        {
          v135 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v135, v80) - 16);
          v136 += 16;
        }

        while (v136);
      }
    }

    else
    {
LABEL_265:
      LOBYTE(v270[0]) = 0;
      v273 = 0;
    }
  }

  else
  {
    v318[0] = 0;
    LOBYTE(v320) = 0;
    std::__optional_move_base<WebCore::FixedContainerEdges,false>::__optional_move_base[abi:sn200100](v270, v318);
    v273 = 1;
    if (v320 == 1)
    {
      v71 = &v319[16];
      v72 = -64;
      do
      {
        v71 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v71, v70) - 16);
        v72 += 16;
      }

      while (v72);
    }
  }

  if ((v273 & 1) == 0)
  {
    v158 = *v10;
    v159 = *(v10 + 1);
    *v10 = 0;
    *(v10 + 1) = 0;
    v160 = *(v10 + 3);
    if (v160)
    {
      if (v159)
      {
        (*(*v160 + 16))(v160, v158);
      }
    }
  }

  v81 = IPC::Decoder::decode<unsigned long long>(v10);
  v252 = v82;
  v83 = v81;
  v84 = IPC::Decoder::decode<unsigned long long>(v10);
  v251 = v85;
  v86 = v84;
  v247 = IPC::Decoder::decode<unsigned long long>(v10);
  v249 = v87;
  v245 = IPC::Decoder::decode<unsigned long long>(v10);
  v246 = v88;
  v243 = IPC::Decoder::decode<unsigned long long>(v10);
  v244 = v89;
  v90 = *(v10 + 1);
  v91 = ((*(v10 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v92 = v91 - *v10;
  v16 = v90 >= v92;
  v93 = v90 - v92;
  if (v16 && v93 > 7)
  {
    *(v10 + 2) = v91 + 1;
    if (v91)
    {
      v241 = *v91;
      v242 = 1;
      goto LABEL_129;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    v168 = *(v10 + 3);
    if (v168)
    {
      if (v90)
      {
        (*(*v168 + 16))(v168);
        v90 = *(v10 + 1);
      }
    }

    else
    {
      v90 = 0;
    }
  }

  *v10 = 0;
  *(v10 + 1) = 0;
  v169 = *(v10 + 3);
  if (v169 && v90)
  {
    (*(*v169 + 16))(v169);
  }

  v242 = 0;
  v241 = 0;
LABEL_129:
  IPC::Decoder::decode<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>(&v299, v10);
  v94 = *(v10 + 1);
  v95 = ((*(v10 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v96 = v95 - *v10;
  v16 = v94 >= v96;
  v97 = v94 - v96;
  if (v16 && v97 > 7)
  {
    *(v10 + 2) = v95 + 1;
    if (v95)
    {
      v239 = *v95;
      v240 = 1;
      goto LABEL_134;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    v170 = *(v10 + 3);
    if (v170)
    {
      if (v94)
      {
        (*(*v170 + 16))(v170);
        v94 = *(v10 + 1);
      }
    }

    else
    {
      v94 = 0;
    }
  }

  *v10 = 0;
  *(v10 + 1) = 0;
  v171 = *(v10 + 3);
  if (v171 && v94)
  {
    (*(*v171 + 16))(v171);
  }

  v240 = 0;
  v239 = 0;
LABEL_134:
  v238 = IPC::Decoder::decode<WTF::OptionSet<WebCore::LayoutMilestone>>(v10);
  v98 = *(v10 + 1);
  v99 = *(v10 + 2);
  v100 = *v10;
  v267 = v7;
  v268 = v8;
  v261 = v4;
  v259 = v5;
  v256 = v6;
  v253 = v9;
  v254 = v11;
  v250 = v83;
  v248 = v86;
  if (v98 <= &v99[-*v10])
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    v177 = *(v10 + 3);
    if (v177)
    {
      if (v98)
      {
        (*(*v177 + 16))(v177);
        v98 = *(v10 + 1);
      }
    }

    else
    {
      v98 = 0;
    }
  }

  else
  {
    v101 = v99 + 1;
    *(v10 + 2) = v99 + 1;
    if (v99)
    {
      v102 = *v99;
      if (v102 < 2)
      {
        v103 = 1;
        goto LABEL_138;
      }

      goto LABEL_313;
    }
  }

  *v10 = 0;
  *(v10 + 1) = 0;
  v178 = *(v10 + 3);
  if (v178)
  {
    if (v98)
    {
      (*(*v178 + 16))(v178);
      v102 = 0;
      v100 = *v10;
      v98 = *(v10 + 1);
      goto LABEL_313;
    }
  }

  else
  {
    v98 = 0;
  }

  v100 = 0;
  v102 = 0;
LABEL_313:
  *v10 = 0;
  *(v10 + 1) = 0;
  v179 = *(v10 + 3);
  if (!v179 || !v98)
  {
    v236 = 0;
    v237 = 0;
    v180 = 0;
    v100 = 0;
LABEL_315:
    *v10 = 0;
    *(v10 + 1) = 0;
    v181 = *(v10 + 3);
    if (v181 && v180)
    {
      (*(*v181 + 16))(v181, v100, v180);
      v106 = 0;
      v100 = *v10;
      v98 = *(v10 + 1);
    }

    else
    {
      v98 = 0;
      v100 = 0;
      v106 = 0;
    }

    goto LABEL_317;
  }

  (*(*v179 + 16))(v179, v100);
  v103 = 0;
  v100 = *v10;
  v98 = *(v10 + 1);
  v101 = *(v10 + 2);
LABEL_138:
  v237 = v103;
  if (v102)
  {
    v104 = v103;
  }

  else
  {
    v104 = 0;
  }

  v236 = v104;
  if (v98 <= v101 - v100)
  {
    v180 = 0;
    v228 = *(v10 + 3);
    *v10 = 0;
    *(v10 + 1) = 0;
    if (v228 && v98)
    {
      (*(*v228 + 16))(v228);
      v100 = *v10;
      v180 = *(v10 + 1);
    }

    else
    {
      v100 = 0;
    }

    goto LABEL_315;
  }

  v105 = v101 + 1;
  *(v10 + 2) = v101 + 1;
  if (!v101)
  {
    v180 = v98;
    goto LABEL_315;
  }

  v106 = *v101;
  if (v106 < 2)
  {
    LOBYTE(v6) = 1;
    goto LABEL_145;
  }

LABEL_317:
  *v10 = 0;
  *(v10 + 1) = 0;
  v182 = *(v10 + 3);
  if (!v182 || !v98)
  {
    v235 = 0;
    LOBYTE(v6) = 0;
    v183 = 0;
    v100 = 0;
LABEL_319:
    *v10 = 0;
    *(v10 + 1) = 0;
    v184 = *(v10 + 3);
    if (v184 && v183)
    {
      (*(*v184 + 16))(v184, v100, v183);
      v109 = 0;
      v100 = *v10;
      v98 = *(v10 + 1);
    }

    else
    {
      v98 = 0;
      v100 = 0;
      v109 = 0;
    }

    goto LABEL_321;
  }

  (*(*v182 + 16))(v182, v100);
  LOBYTE(v6) = 0;
  v100 = *v10;
  v98 = *(v10 + 1);
  v105 = *(v10 + 2);
LABEL_145:
  if (v106)
  {
    v107 = v6;
  }

  else
  {
    v107 = 0;
  }

  v235 = v107;
  if (v98 <= v105 - v100)
  {
    v183 = 0;
    v229 = *(v10 + 3);
    *v10 = 0;
    *(v10 + 1) = 0;
    if (v229 && v98)
    {
      (*(*v229 + 16))(v229);
      v100 = *v10;
      v183 = *(v10 + 1);
    }

    else
    {
      v100 = 0;
    }

    goto LABEL_319;
  }

  v108 = v105 + 1;
  *(v10 + 2) = v105 + 1;
  if (!v105)
  {
    v183 = v98;
    goto LABEL_319;
  }

  v109 = *v105;
  if (v109 < 2)
  {
    LOBYTE(v8) = 1;
    goto LABEL_152;
  }

LABEL_321:
  *v10 = 0;
  *(v10 + 1) = 0;
  v185 = *(v10 + 3);
  if (!v185 || !v98)
  {
    v234 = 0;
    LOBYTE(v8) = 0;
    v186 = 0;
    v100 = 0;
LABEL_323:
    *v10 = 0;
    *(v10 + 1) = 0;
    v187 = *(v10 + 3);
    if (v187 && v186)
    {
      (*(*v187 + 16))(v187, v100, v186);
      v112 = 0;
      v100 = *v10;
      v98 = *(v10 + 1);
    }

    else
    {
      v98 = 0;
      v100 = 0;
      v112 = 0;
    }

    goto LABEL_325;
  }

  (*(*v185 + 16))(v185, v100);
  LOBYTE(v8) = 0;
  v100 = *v10;
  v98 = *(v10 + 1);
  v108 = *(v10 + 2);
LABEL_152:
  if (v109)
  {
    v110 = v8;
  }

  else
  {
    v110 = 0;
  }

  v234 = v110;
  if (v98 <= v108 - v100)
  {
    v186 = 0;
    v230 = *(v10 + 3);
    *v10 = 0;
    *(v10 + 1) = 0;
    if (v230 && v98)
    {
      (*(*v230 + 16))(v230);
      v100 = *v10;
      v186 = *(v10 + 1);
    }

    else
    {
      v100 = 0;
    }

    goto LABEL_323;
  }

  v111 = v108 + 1;
  *(v10 + 2) = v108 + 1;
  if (!v108)
  {
    v186 = v98;
    goto LABEL_323;
  }

  v112 = *v108;
  if (v112 < 2)
  {
    LOBYTE(v3) = 1;
    goto LABEL_159;
  }

LABEL_325:
  *v10 = 0;
  *(v10 + 1) = 0;
  v188 = *(v10 + 3);
  if (!v188 || !v98)
  {
    v233 = 0;
    LOBYTE(v3) = 0;
    v189 = 0;
    v100 = 0;
LABEL_327:
    *v10 = 0;
    *(v10 + 1) = 0;
    v190 = *(v10 + 3);
    if (v190 && v189)
    {
      (*(*v190 + 16))(v190, v100, v189);
      v115 = 0;
      v100 = *v10;
      v98 = *(v10 + 1);
    }

    else
    {
      v98 = 0;
      v100 = 0;
      v115 = 0;
    }

    goto LABEL_329;
  }

  (*(*v188 + 16))(v188, v100);
  LOBYTE(v3) = 0;
  v100 = *v10;
  v98 = *(v10 + 1);
  v111 = *(v10 + 2);
LABEL_159:
  if (v112)
  {
    v113 = v3;
  }

  else
  {
    v113 = 0;
  }

  v233 = v113;
  if (v98 <= v111 - v100)
  {
    v189 = 0;
    v231 = *(v10 + 3);
    *v10 = 0;
    *(v10 + 1) = 0;
    if (v231 && v98)
    {
      (*(*v231 + 16))(v231);
      v100 = *v10;
      v189 = *(v10 + 1);
    }

    else
    {
      v100 = 0;
    }

    goto LABEL_327;
  }

  v114 = v111 + 1;
  *(v10 + 2) = v111 + 1;
  if (!v111)
  {
    v189 = v98;
    goto LABEL_327;
  }

  v115 = *v111;
  if (v115 < 2)
  {
    LOBYTE(v11) = 1;
    goto LABEL_166;
  }

LABEL_329:
  *v10 = 0;
  *(v10 + 1) = 0;
  v191 = *(v10 + 3);
  if (!v191 || !v98)
  {
    LOBYTE(v7) = 0;
    LOBYTE(v11) = 0;
    v192 = 0;
    v100 = 0;
LABEL_331:
    *v10 = 0;
    *(v10 + 1) = 0;
    v193 = *(v10 + 3);
    if (v193 && v192)
    {
      (*(*v193 + 16))(v193, v100, v192);
      v116 = 0;
      v100 = *v10;
      v98 = *(v10 + 1);
    }

    else
    {
      v98 = 0;
      v100 = 0;
      v116 = 0;
    }

    goto LABEL_333;
  }

  (*(*v191 + 16))(v191, v100);
  LOBYTE(v11) = 0;
  v100 = *v10;
  v98 = *(v10 + 1);
  v114 = *(v10 + 2);
LABEL_166:
  if (v115)
  {
    LOBYTE(v7) = v11;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  if (v98 <= v114 - v100)
  {
    v192 = 0;
    v232 = *(v10 + 3);
    *v10 = 0;
    *(v10 + 1) = 0;
    if (v232 && v98)
    {
      (*(*v232 + 16))(v232);
      v100 = *v10;
      v192 = *(v10 + 1);
    }

    else
    {
      v100 = 0;
    }

    goto LABEL_331;
  }

  *(v10 + 2) = v114 + 1;
  if (!v114)
  {
    v192 = v98;
    goto LABEL_331;
  }

  v116 = *v114;
  if (v116 < 2)
  {
    LOBYTE(v9) = 1;
    goto LABEL_173;
  }

LABEL_333:
  *v10 = 0;
  *(v10 + 1) = 0;
  v194 = *(v10 + 3);
  if (!v194 || !v98)
  {
    v100 = 0;
    LOBYTE(i) = 0;
    LOBYTE(v9) = 0;
    v98 = 0;
LABEL_335:
    *v10 = 0;
    *(v10 + 1) = 0;
    v195 = *(v10 + 3);
    if (v195)
    {
      if (v98)
      {
        (*(*v195 + 16))(v195, v100);
        v100 = *v10;
        v98 = *(v10 + 1);
        goto LABEL_338;
      }
    }

    else
    {
      v98 = 0;
    }

    v100 = 0;
LABEL_338:
    *v10 = 0;
    *(v10 + 1) = 0;
    v196 = *(v10 + 3);
    if (v196)
    {
      if (v98)
      {
        (*(*v196 + 16))(v196, v100);
        v100 = *v10;
        v98 = *(v10 + 1);
        goto LABEL_341;
      }
    }

    else
    {
      v98 = 0;
    }

    v100 = 0;
LABEL_341:
    *v10 = 0;
    *(v10 + 1) = 0;
    v197 = *(v10 + 3);
    if (v197 && v98)
    {
      (*(*v197 + 16))(v197, v100);
    }

    goto LABEL_342;
  }

  (*(*v194 + 16))(v194, v100);
  LOBYTE(v9) = 0;
  v100 = *v10;
  v98 = *(v10 + 1);
LABEL_173:
  if (v116)
  {
    LOBYTE(i) = v9;
  }

  else
  {
    LOBYTE(i) = 0;
  }

  v117 = *(v10 + 2);
  if (v98 <= v117 - v100)
  {
    goto LABEL_335;
  }

  *(v10 + 2) = v117 + 1;
  if (!v117)
  {
    goto LABEL_338;
  }

  v118 = *v117;
  if (v118 >= 2)
  {
    goto LABEL_341;
  }

  if (!v118)
  {
    v318[0] = 0;
    v353 = 0;
    std::__optional_move_base<WebKit::EditorState,false>::__optional_move_base[abi:sn200100](&v358, v318);
    v377 = 1;
    if (v353 == 1)
    {
      goto LABEL_184;
    }

    goto LABEL_343;
  }

  IPC::Decoder::decode<WebKit::EditorState>(v10, v318);
  if (v353 != 1)
  {
LABEL_342:
    LOBYTE(v358) = 0;
    v377 = 0;
    goto LABEL_343;
  }

  std::optional<WebKit::EditorState>::optional[abi:sn200100]<WebKit::EditorState,0>(&v358, v318);
  v377 = 1;
  if (v353)
  {
LABEL_184:
    if (v352 == 1)
    {
      v120 = v350;
      if (v350)
      {
        v350 = 0;
        v351 = 0;
        WTF::fastFree(v120, v119);
      }

      v121 = v347;
      if (v347)
      {
        v347 = 0;
        v348 = 0;
        WTF::fastFree(v121, v119);
      }

      v122 = *(&v345 + 1);
      if (*(&v345 + 1))
      {
        *(&v345 + 1) = 0;
        LODWORD(v346) = 0;
        WTF::fastFree(v122, v119);
      }
    }

    if (v338[48] == 1)
    {
      if ((v328 & 0x8000000000000) != 0)
      {
        v165 = (v328 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v328 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v165);
          WTF::fastFree(v165, v119);
        }
      }

      v123 = v325;
      if (v325)
      {
        v325 = 0;
        LODWORD(v326) = 0;
        WTF::fastFree(v123, v119);
      }

      v124 = v322;
      v322 = 0;
      if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v124, v119);
      }

      v125 = v321;
      v321 = 0;
      if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v125, v119);
      }

      if ((*&v319[24] & 0x8000000000000) != 0)
      {
        v126 = (*&v319[24] & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&v319[24] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v126);
          WTF::fastFree(v126, v119);
        }
      }
    }
  }

LABEL_343:
  if ((v377 & 1) == 0)
  {
    v219 = *v10;
    v220 = *(v10 + 1);
    *v10 = 0;
    *(v10 + 1) = 0;
    v221 = *(v10 + 3);
    if (v221)
    {
      if (v220)
      {
        (*(*v221 + 16))(v221, v219);
      }
    }
  }

  IPC::Decoder::decode<std::optional<unsigned long long>>(v10, &v315);
  v198 = IPC::Decoder::decode<WTF::Seconds>(v10);
  if (*v10)
  {
    v4 = v198;
    LOBYTE(v5) = v199;
    v21 = WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v318);
    if ((v298 & 1) == 0)
    {
      goto LABEL_443;
    }

    *&v318[8] = v297;
    if ((v296 & 1) == 0)
    {
      goto LABEL_443;
    }

    v21 = WebKit::ChangedLayers::operator=(&v318[24], v295);
    if ((v268 & 1) == 0)
    {
      goto LABEL_443;
    }

    *&v319[8] = v267;
    if ((v294 & 1) == 0)
    {
      goto LABEL_443;
    }

    if (*&v319[28])
    {
      v225 = 112 * *&v319[28];
      v226 = (*&v319[16] + 64);
      do
      {
        v226 = mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(v226, v22) + 14;
        v225 -= 112;
      }

      while (v225);
    }

    v21 = *&v319[16];
    v10 = a2;
    if (*&v319[16])
    {
      *&v319[16] = 0;
      *&v319[24] = 0;
      v21 = WTF::fastFree(v21, v22);
    }

    *&v319[16] = v292;
    v200 = v293;
    v292 = 0;
    v293 = 0;
    *&v319[24] = v200;
    if ((v291 & 1) == 0)
    {
      goto LABEL_443;
    }

    v21 = v320;
    if (v320)
    {
      goto LABEL_444;
    }

    while (1)
    {
      v320 = v289;
      v201 = v290;
      v289 = 0;
      v290 = 0;
      v321 = v201;
      if (v288)
      {
        v21 = v322;
        if (v322)
        {
          v322 = 0;
          LODWORD(v323) = 0;
          v21 = WTF::fastFree(v21, v22);
        }

        v322 = v286;
        v202 = v287;
        v286 = 0;
        v287 = 0;
        v323 = v202;
        if (v285)
        {
          v21 = v324;
          if (v324)
          {
            v324 = 0;
            LODWORD(v325) = 0;
            v21 = WTF::fastFree(v21, v22);
          }

          v324 = v283;
          v203 = v284;
          v283 = 0;
          v284 = 0;
          v325 = v203;
          if (v282)
          {
            v21 = v326;
            if (v326)
            {
              v326 = 0;
              LODWORD(v327) = 0;
              v21 = WTF::fastFree(v21, v22);
            }

            v326 = v280;
            v204 = v281;
            v280 = 0;
            v281 = 0;
            v327 = v204;
            if (v266)
            {
              v328 = v261;
              if (v265)
              {
                v329 = v259;
                if (v264)
                {
                  v330 = v256;
                  if (v263)
                  {
                    v331 = v254;
                    if (v262)
                    {
                      v332 = v253;
                      if (v260)
                      {
                        v333 = v258;
                        if (v257)
                        {
                          v334 = v255;
                          if (v279)
                          {
                            if ((v335 & 0x8000000000000) != 0)
                            {
                              v21 = (v335 & 0xFFFFFFFFFFFFLL);
                              if (atomic_fetch_add((v335 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                              {
                                atomic_store(1u, v21);
                                v21 = WTF::fastFree(v21, v22);
                              }
                            }

                            v205 = v278;
                            v278 = 0;
                            v335 = v205;
                            if (v277)
                            {
                              if ((v336 & 0x8000000000000) != 0)
                              {
                                v21 = (v336 & 0xFFFFFFFFFFFFLL);
                                if (atomic_fetch_add((v336 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                                {
                                  atomic_store(1u, v21);
                                  v21 = WTF::fastFree(v21, v22);
                                }
                              }

                              v206 = v276;
                              v276 = 0;
                              v336 = v206;
                              if (v275)
                              {
                                if ((v337 & 0x8000000000000) != 0)
                                {
                                  v21 = (v337 & 0xFFFFFFFFFFFFLL);
                                  if (atomic_fetch_add((v337 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                                  {
                                    atomic_store(1u, v21);
                                    v21 = WTF::fastFree(v21, v22);
                                  }
                                }

                                v207 = v274;
                                v274 = 0;
                                v337 = v207;
                                if (v273)
                                {
                                  v21 = std::__optional_storage_base<WebCore::FixedContainerEdges,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::FixedContainerEdges,false>>(v338, v270);
                                  if (v252)
                                  {
                                    v339 = v250;
                                    if (v251)
                                    {
                                      v340 = v248;
                                      if (v249)
                                      {
                                        v341 = v247;
                                        if (v246)
                                        {
                                          v342 = v245;
                                          if (v244)
                                          {
                                            v343 = v243;
                                            if (v242)
                                            {
                                              v344 = v241;
                                              if (v300)
                                              {
                                                v345 = v299;
                                                if (v240)
                                                {
                                                  v346 = v239;
                                                  if ((v238 & 0x10000) != 0)
                                                  {
                                                    LOWORD(v347) = v238;
                                                    if (v237)
                                                    {
                                                      BYTE2(v347) = v236;
                                                      if (v6)
                                                      {
                                                        BYTE3(v347) = v235;
                                                        if (v8)
                                                        {
                                                          BYTE4(v347) = v234;
                                                          if (v3)
                                                          {
                                                            BYTE5(v347) = v233;
                                                            if (v11)
                                                            {
                                                              BYTE6(v347) = v7;
                                                              if (v9)
                                                              {
                                                                HIBYTE(v347) = i;
                                                                if (v377)
                                                                {
                                                                  std::__optional_storage_base<WebKit::EditorState,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::EditorState,false>>(&v349, &v358);
                                                                  if (v317)
                                                                  {
                                                                    v355 = v315;
                                                                    v356 = v316;
                                                                    if (v5)
                                                                    {
                                                                      break;
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_443:
      __break(1u);
LABEL_444:
      v320 = 0;
      LODWORD(v321) = 0;
      v21 = WTF::fastFree(v21, v22);
    }

    v357 = v4;
    WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v10, v318);
    *(v10 + 960) = 1;
    WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(v318, v208);
  }

  else
  {
    *a2 = 0;
    *(a2 + 960) = 0;
  }

  if (v377 == 1 && v376 == 1)
  {
    if (v375 == 1)
    {
      v210 = v373;
      if (v373)
      {
        v373 = 0;
        v374 = 0;
        WTF::fastFree(v210, v199);
      }

      v211 = v371;
      if (v371)
      {
        v371 = 0;
        v372 = 0;
        WTF::fastFree(v211, v199);
      }

      v212 = v369;
      if (v369)
      {
        v369 = 0;
        v370 = 0;
        WTF::fastFree(v212, v199);
      }
    }

    if (v368 == 1)
    {
      if ((v367 & 0x8000000000000) != 0)
      {
        v227 = (v367 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v367 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v227);
          WTF::fastFree(v227, v199);
        }
      }

      v213 = v365;
      if (v365)
      {
        v365 = 0;
        v366 = 0;
        WTF::fastFree(v213, v199);
      }

      v214 = v364;
      v364 = 0;
      if (v214 && atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v214, v199);
      }

      v215 = v363;
      v363 = 0;
      if (v215 && atomic_fetch_add_explicit(v215, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v215, v199);
      }

      if ((v361 & 0x8000000000000) != 0)
      {
        v216 = (v361 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v361 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v216);
          WTF::fastFree(v216, v199);
        }
      }
    }
  }

  if (v273 == 1 && v272 == 1)
  {
    v217 = &v271;
    v218 = -64;
    do
    {
      v217 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v217, v199) - 16);
      v218 += 16;
    }

    while (v218);
  }

  if (v275 == 1 && (v274 & 0x8000000000000) != 0)
  {
    v222 = (v274 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v274 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v222);
      WTF::fastFree(v222, v199);
    }
  }

  if (v277 == 1 && (v276 & 0x8000000000000) != 0)
  {
    v223 = (v276 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v276 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v223);
      WTF::fastFree(v223, v199);
    }
  }

  if (v279 == 1 && (v278 & 0x8000000000000) != 0)
  {
    v224 = (v278 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v278 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v224);
      WTF::fastFree(v224, v199);
    }
  }

  if (v282 == 1)
  {
    v209 = v280;
    if (v280)
    {
      v280 = 0;
      LODWORD(v281) = 0;
      WTF::fastFree(v209, v199);
    }
  }

  if (v285 == 1 && v283)
  {
    WTF::fastFree(v283, v199);
  }

  if (v288 == 1 && v286)
  {
    WTF::fastFree(v286, v199);
  }

  if (v291 == 1 && v289)
  {
    WTF::fastFree(v289, v199);
  }

  if (v294 == 1)
  {
    WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v292, v199);
  }

  if (v296 == 1)
  {
    WebKit::ChangedLayers::~ChangedLayers(v295, v199);
  }
}

void sub_19D792C58(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, int a53, char a54, uint64_t a55, char a56, uint64_t a57, char a58, uint64_t a59, char a60, WTF *a61, int a62, int a63)
{
  if (a54 == 1 && a52 == 1)
  {
    v73 = &a50;
    v74 = -64;
    do
    {
      v73 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v73, a2) - 16);
      v74 += 16;
    }

    while (v74);
  }

  if (a56 == 1 && (a55 & 0x8000000000000) != 0)
  {
    v77 = (a55 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a55 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v77);
      WTF::fastFree(v77, a2);
    }
  }

  if (a58 == 1 && (a57 & 0x8000000000000) != 0)
  {
    v76 = (a57 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a57 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v76);
      WTF::fastFree(v76, a2);
    }
  }

  if (a60 == 1 && (a59 & 0x8000000000000) != 0)
  {
    v75 = (a59 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a59 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v75);
      WTF::fastFree(v75, a2);
    }
  }

  if (a64 == 1)
  {
    v72 = a61;
    if (a61)
    {
      a61 = 0;
      a62 = 0;
      WTF::fastFree(v72, a2);
    }
  }

  if (a66 == 1 && a65)
  {
    WTF::fastFree(a65, a2);
  }

  if (a68 == 1 && a67)
  {
    WTF::fastFree(a67, a2);
  }

  if (a70 == 1 && a69)
  {
    WTF::fastFree(a69, a2);
  }

  if (LOBYTE(STACK[0x208]) == 1)
  {
    WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a71, a2);
  }

  if (LOBYTE(STACK[0x220]) == 1)
  {
    WebKit::ChangedLayers::~ChangedLayers(&STACK[0x210], a2);
  }

  _Unwind_Resume(a1);
}

void *IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(void *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      if (v6)
      {
        (*(*v9 + 16))(v9);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_13:
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_16;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_16:
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v6)
    {
      (*(*v11 + 16))(v11, v5);
    }

    goto LABEL_17;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_13;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    *result = 0;
    result[1] = 0;
    v8 = 1;
LABEL_8:
    *(v3 + 16) = v8;
    return result;
  }

  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v14);
  v8 = v15;
  if (v15 == 1)
  {
    *v3 = v14;
    goto LABEL_8;
  }

LABEL_17:
  *v3 = 0;
  *(v3 + 16) = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::VideoElementData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  v4 = *(a2 + 28);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::LayerProperties::AnimationChanges,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);

  return IPC::ArgumentCoder<WebCore::AcceleratedEffectValues,void>::encode(a1, a2 + 40);
}

void IPC::ArgumentCoder<WebKit::LayerProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = *a2;
  if (*a2)
  {
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
    v4 = *a2;
  }

  if ((v4 & 2) != 0)
  {
    IPC::ArgumentCoder<std::unique_ptr<WebCore::TransformationMatrix>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::TransformationMatrix> const&>(a1, (a2 + 24));
    v4 = *a2;
  }

  if ((v4 & 4) != 0)
  {
    IPC::ArgumentCoder<std::unique_ptr<WebCore::TransformationMatrix>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::TransformationMatrix> const&>(a1, (a2 + 32));
    v4 = *a2;
  }

  if ((v4 & 8) != 0)
  {
    IPC::ArgumentCoder<std::unique_ptr<WebCore::FloatRoundedRect>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::FloatRoundedRect> const&>(a1, (a2 + 40));
    v4 = *a2;
  }

  if ((v4 & 0x10) != 0)
  {
    IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 48);
    v4 = *a2;
  }

  if ((v4 & 0x20) != 0)
  {
    IPC::ArgumentCoder<WebKit::LayerProperties::AnimationChanges,void>::encode(a1, a2 + 64);
    v4 = *a2;
  }

  if ((v4 & 0x40) != 0)
  {
    IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(a1, (a2 + 352));
    v4 = *a2;
  }

  if ((v4 & 0x80) != 0)
  {
    IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(a1, (a2 + 364));
    v4 = *a2;
  }

  if ((v4 & 0x100) != 0)
  {
    IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 376));
    v4 = *a2;
  }

  if ((v4 & 0x200) != 0)
  {
    IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 392));
    v4 = *a2;
  }

  if ((v4 & 0x400) != 0)
  {
    IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreOrProperties,void>::encode(a1, (a2 + 408));
    v4 = *a2;
  }

  if ((v4 & 0x800) != 0)
  {
    if (*(a2 + 424))
    {
      v14 = 1;
      v6 = IPC::Encoder::operator<<<BOOL>(a1, &v14);
      IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6, *(a2 + 424));
    }

    else
    {
      v13 = 0;
      IPC::Encoder::operator<<<BOOL>(a1, &v13);
    }

    v4 = *a2;
  }

  if ((v4 & 0x1000) != 0)
  {
    IPC::ArgumentCoder<WebCore::Path,void>::encode(a1, (a2 + 432));
    v4 = *a2;
  }

  if ((v4 & 0x2000) != 0)
  {
    IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 496));
    v4 = *a2;
  }

  if ((v4 & 0x4000) != 0)
  {
    IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 512));
    v4 = *a2;
  }

  if ((v4 & 0x8000) != 0)
  {
    IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 528));
    v4 = *a2;
  }

  if ((v4 & 0x10000) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 536));
    v4 = *a2;
  }

  if ((v4 & 0x20000) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 540));
    v4 = *a2;
  }

  if ((v4 & 0x40000) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 544));
    v4 = *a2;
  }

  if ((v4 & 0x80000) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 548));
    v4 = *a2;
  }

  if ((v4 & 0x100000) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 552));
    v4 = *a2;
  }

  if ((v4 & 0x200000) != 0)
  {
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 560));
    v4 = *a2;
  }

  if ((v4 & 0x400000) != 0)
  {
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 568));
    v4 = *a2;
  }

  if ((v4 & 0x800000) != 0)
  {
    v11 = *(a2 + 576);
    IPC::Encoder::operator<<<BOOL>(a1, &v11);
    v4 = *a2;
  }

  if ((v4 & 0x1000000) != 0)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 577));
    v4 = *a2;
  }

  if ((v4 & 0x2000000) != 0)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 578));
    v4 = *a2;
  }

  if ((v4 & 0x4000000) != 0)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 579));
    v4 = *a2;
  }

  if ((v4 & 0x8000000) != 0)
  {
    v12 = *(a2 + 580);
    IPC::Encoder::operator<<<BOOL>(a1, &v12);
    v4 = *a2;
  }

  if ((v4 & 0x10000000) != 0)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 581));
    v4 = *a2;
  }

  if ((v4 & 0x20000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 582));
    v4 = *a2;
  }

  if ((v4 & 0x40000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 583));
    v4 = *a2;
  }

  if ((v4 & 0x80000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 584));
    v4 = *a2;
  }

  if ((v4 & 0x100000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 585));
    v4 = *a2;
  }

  if ((v4 & 0x200000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 586));
    v4 = *a2;
  }

  if ((v4 & 0x400000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 587));
    v4 = *a2;
  }

  if ((v4 & 0x800000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 589));
    v4 = *a2;
  }

  if ((v4 & 0x1000000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 590));
    v4 = *a2;
  }

  if ((v4 & 0x2000000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 591));
    v4 = *a2;
  }

  if ((v4 & 0x4000000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 592));
    v4 = *a2;
  }

  if ((v4 & 0x8000000000) != 0)
  {
    IPC::Encoder::operator<<<BOOL>(a1, (a2 + 593));
    v4 = *a2;
  }

  if ((v4 & 0x10000000000) != 0)
  {
    IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 600);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 636));
    v5 = *(a2 + 636);
    if (v5)
    {
      v7 = *(a2 + 624);
      v8 = 24 * v5;
      do
      {
        IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, v7);
        v7 += 24;
        v8 -= 24;
      }

      while (v8);
    }

    IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 640);
    IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 664);
    if (*(a2 + 712))
    {
      v15 = 1;
      IPC::Encoder::operator<<<BOOL>(a1, &v15);
      if ((*(a2 + 712) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:sn200100]();
        IPC::ArgumentCoder<WebKit::LayerProperties,void>::decode(v9, v10);
        return;
      }

      IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 688);
    }

    else
    {
      v16 = 0;
      IPC::Encoder::operator<<<BOOL>(a1, &v16);
    }

    v4 = *a2;
  }

  if ((v4 & 0x20000000000) != 0)
  {
    IPC::ArgumentCoder<WebCore::AppleVisualEffectData,void>::encode(a1, a2 + 724);
  }
}

void IPC::ArgumentCoder<WebKit::LayerProperties,void>::decode(_BYTE *a1, IPC::Decoder *a2)
{
  v466 = *MEMORY[0x1E69E9840];
  WebKit::LayerProperties::LayerProperties(v397);
  v4 = *(a2 + 1);
  v5 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a2;
  v7 = v5 - *a2;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v239 = *(a2 + 3);
    if (v239)
    {
      if (v4)
      {
        (*(*v239 + 16))(v239);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_427;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_427:
    *a2 = 0;
    *(a2 + 1) = 0;
    v240 = *(a2 + 3);
    if (v240)
    {
      if (v4)
      {
        (*(*v240 + 16))(v240);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_429;
  }

  v11 = *v5;
  if (*v5 >> 42)
  {
LABEL_429:
    *a2 = 0;
    *(a2 + 1) = 0;
    v241 = *(a2 + 3);
    if (v241 && v4)
    {
      (*(*v241 + 16))(v241);
    }

    goto LABEL_430;
  }

  v397[0] = *v5;
  if (v11)
  {
    IPC::Decoder::decode<WTF::String>(a2, v380);
    v12 = v380[8];
    if (v380[8] == 1)
    {
      v13 = *v380;
      *v380 = 0;
      v14 = v398;
      v398 = v13;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }
    }

    else
    {
      *a1 = 0;
      a1[784] = 0;
    }

    if (v380[8] == 1 && (v15 = *v380, *v380 = 0, v15) && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v6);
      if (!v12)
      {
        goto LABEL_431;
      }
    }

    else if (!v12)
    {
      goto LABEL_431;
    }
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_21;
  }

  IPC::Decoder::decode<std::unique_ptr<WebCore::TransformationMatrix>>(v380, a2);
  if (v380[8] != 1)
  {
    goto LABEL_430;
  }

  v16 = v399;
  v399 = *v380;
  if (v16)
  {
    bmalloc::api::tzoneFree(v16, v6);
    if ((v11 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
    if ((v11 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

  IPC::Decoder::decode<std::unique_ptr<WebCore::TransformationMatrix>>(v380, a2);
  if (v380[8] != 1)
  {
    goto LABEL_430;
  }

  v17 = v400;
  v400 = *v380;
  if (v17)
  {
    bmalloc::api::tzoneFree(v17, v6);
  }

LABEL_25:
  if ((v11 & 8) == 0)
  {
    goto LABEL_34;
  }

  v18 = *(a2 + 1);
  v19 = *(a2 + 2);
  v6 = *a2;
  if (v18 <= &v19[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v260 = *(a2 + 3);
    if (v260)
    {
      if (v18)
      {
        (*(*v260 + 16))(v260);
        v18 = *(a2 + 1);
      }
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_463;
  }

  *(a2 + 2) = v19 + 1;
  if (!v19)
  {
LABEL_463:
    *a2 = 0;
    *(a2 + 1) = 0;
    v261 = *(a2 + 3);
    if (v261)
    {
      if (v18)
      {
        (*(*v261 + 16))(v261);
        v6 = *a2;
        v18 = *(a2 + 1);
        goto LABEL_466;
      }
    }

    else
    {
      v18 = 0;
    }

    v6 = 0;
LABEL_466:
    *a2 = 0;
    *(a2 + 1) = 0;
    v235 = *(a2 + 3);
    if (v235 && v18)
    {
LABEL_468:
      (*(*v235 + 16))(v235, v6);
    }

LABEL_422:
    v236 = *a2;
    v237 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v238 = *(a2 + 3);
    if (v238 && v237)
    {
      (*(*v238 + 16))(v238, v236);
    }

    goto LABEL_430;
  }

  v20 = *v19;
  if (v20 >= 2)
  {
    goto LABEL_466;
  }

  if (v20)
  {
    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a2, v380);
    if (v381)
    {
      v22 = WebCore::FloatRoundedRect::operator new(0x30, v21);
      *v22 = *v380;
      *(v22 + 1) = *&v380[16];
      *(v22 + 2) = *&v380[32];
      goto LABEL_33;
    }

    v6 = *a2;
    v234 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v235 = *(a2 + 3);
    if (v235 && v234)
    {
      goto LABEL_468;
    }

    goto LABEL_422;
  }

  v22 = 0;
LABEL_33:
  v23 = v401;
  v401 = v22;
  if (v23)
  {
    bmalloc::api::tzoneFree(v23, v6);
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_34:
  if ((v11 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v380, a2);
  if (v380[16] != 1)
  {
    goto LABEL_430;
  }

  v24 = v402;
  if (v402)
  {
    v402 = 0;
    LODWORD(v403) = 0;
    WTF::fastFree(v24, v6);
  }

  v402 = *v380;
  v403 = *&v380[8];
LABEL_39:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_149;
  }

  v25 = *(a2 + 1);
  v26 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v27 = *a2;
  v28 = v26 - *a2;
  v8 = v25 >= v28;
  v29 = v25 - v28;
  if (!v8 || v29 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v253 = *(a2 + 3);
    if (v253)
    {
      if (v25)
      {
        (*(*v253 + 16))(v253);
        v25 = *(a2 + 1);
      }
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_453;
  }

  *(a2 + 2) = v26 + 1;
  if (!v26)
  {
LABEL_453:
    *a2 = 0;
    *(a2 + 1) = 0;
    v254 = *(a2 + 3);
    if (v254 && v25)
    {
      (*(*v254 + 16))(v254);
    }

    LOBYTE(v376) = 0;
    v378 = 0;
    goto LABEL_64;
  }

  v30 = *v26;
  v357 = 0;
  v358 = 0;
  if (v30 >= 0x1C71)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v461, a2);
      if ((v465 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v358) == v358)
      {
        WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v357, &v461);
      }

      else
      {
        std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::pair[abi:sn200100](&v357[18 * HIDWORD(v358)], &v461);
        ++HIDWORD(v358);
      }

      std::optional<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::~optional(&v461, v34);
      if (!--v30)
      {
        WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v357, HIDWORD(v358));
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (!v30)
    {
LABEL_52:
      v376 = v357;
      v33 = v358;
      v357 = 0;
      v358 = 0;
      v377 = v33;
      v378 = 1;
      WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v357, v27);
      goto LABEL_65;
    }

    LODWORD(v358) = 144 * v30 / 0x90u;
    v357 = WTF::fastMalloc((9 * v30), (144 * v30));
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v461, a2);
      if ((v465 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v358) == v358)
      {
        WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v357, &v461);
      }

      else
      {
        std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::pair[abi:sn200100](&v357[18 * HIDWORD(v358)], &v461);
        ++HIDWORD(v358);
      }

      std::optional<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::~optional(&v461, v32);
      if (!--v30)
      {
        goto LABEL_52;
      }
    }
  }

  LOBYTE(v376) = 0;
  v378 = 0;
  std::optional<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::~optional(&v461, v31);
  WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v357, v35);
LABEL_64:
  v36 = *a2;
  v37 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v38 = *(a2 + 3);
  if (v38 && v37)
  {
    (*(*v38 + 16))(v38, v36);
  }

LABEL_65:
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v366, a2);
  v39 = *(a2 + 1);
  v40 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v41 = *a2;
  v42 = v40 - *a2;
  v8 = v39 >= v42;
  v43 = v39 - v42;
  if (!v8 || v43 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v255 = *(a2 + 3);
    if (v255)
    {
      if (v39)
      {
        (*(*v255 + 16))(v255);
        v39 = *(a2 + 1);
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_457:
    *a2 = 0;
    *(a2 + 1) = 0;
    v256 = *(a2 + 3);
    if (v256 && v39)
    {
      (*(*v256 + 16))(v256);
    }

    LOBYTE(v369) = 0;
    v371 = 0;
LABEL_97:
    v64 = *a2;
    v65 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v66 = *(a2 + 3);
    if (v66 && v65)
    {
      (*(*v66 + 16))(v66, v64);
    }

    goto LABEL_103;
  }

  *(a2 + 2) = v40 + 1;
  if (!v40)
  {
    goto LABEL_457;
  }

  v45 = *v40;
  v461 = 0uLL;
  if (v45 >= 0x20000)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>(&v357, a2);
      if ((v358 & 1) == 0)
      {
LABEL_96:
        LOBYTE(v369) = 0;
        v371 = 0;
        WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v461, v41);
        goto LABEL_97;
      }

      v55 = HIDWORD(v461);
      if (HIDWORD(v461) != DWORD2(v461))
      {
        break;
      }

      v56 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v461, HIDWORD(v461) + 1, &v357);
      v58 = HIDWORD(v461);
      v59 = HIDWORD(v461) + 1;
      v60 = v461;
      v61 = *v56;
      *v56 = 0;
      *(v60 + 8 * v58) = v61;
      HIDWORD(v461) = v59;
      if (v358)
      {
        goto LABEL_89;
      }

LABEL_92:
      if (!--v45)
      {
        WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v461, HIDWORD(v461), v57);
        goto LABEL_102;
      }
    }

    v62 = v357;
    v357 = 0;
    *(v461 + 8 * HIDWORD(v461)) = v62;
    HIDWORD(v461) = v55 + 1;
LABEL_89:
    v63 = v357;
    v357 = 0;
    if (v63)
    {
      if (*(v63 + 4) == 1)
      {
        (*(*v63 + 56))(v63);
      }

      else
      {
        --*(v63 + 4);
      }
    }

    goto LABEL_92;
  }

  if (v45)
  {
    v46 = WTF::fastMalloc(v40, (8 * v45));
    DWORD2(v461) = v45;
    *&v461 = v46;
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>(&v357, a2);
      if ((v358 & 1) == 0)
      {
        goto LABEL_96;
      }

      v47 = HIDWORD(v461);
      if (HIDWORD(v461) != DWORD2(v461))
      {
        break;
      }

      v48 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v461, HIDWORD(v461) + 1, &v357);
      v49 = HIDWORD(v461);
      v50 = HIDWORD(v461) + 1;
      v51 = v461;
      v52 = *v48;
      *v48 = 0;
      *(v51 + 8 * v49) = v52;
      HIDWORD(v461) = v50;
      if (v358)
      {
        goto LABEL_79;
      }

LABEL_82:
      if (!--v45)
      {
        goto LABEL_102;
      }
    }

    v53 = v357;
    v357 = 0;
    *(v461 + 8 * HIDWORD(v461)) = v53;
    HIDWORD(v461) = v47 + 1;
LABEL_79:
    v54 = v357;
    v357 = 0;
    if (v54)
    {
      if (*(v54 + 4) == 1)
      {
        (*(*v54 + 56))(v54);
      }

      else
      {
        --*(v54 + 4);
      }
    }

    goto LABEL_82;
  }

LABEL_102:
  v67 = *(&v461 + 1);
  v369 = v461;
  v461 = 0uLL;
  v370 = v67;
  v371 = 1;
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v461, v41);
LABEL_103:
  IPC::Decoder::decode<WebCore::AcceleratedEffectValues>(&v357, a2);
  if (*a2)
  {
    if ((v378 & 1) == 0)
    {
      goto LABEL_705;
    }

    *&v461 = v376;
    v69 = v377;
    v376 = 0;
    v377 = 0;
    *(&v461 + 1) = v69;
    if ((v367 & 1) == 0)
    {
      goto LABEL_705;
    }

    v70 = v366;
    v366 = 0;
    *v462 = v70;
    if ((v371 & 1) == 0)
    {
      goto LABEL_705;
    }

    *&v462[8] = v369;
    v71 = v370;
    v369 = 0;
    v370 = 0;
    *&v462[16] = v71;
    if ((v361 & 1) == 0)
    {
      goto LABEL_705;
    }

    WebCore::AcceleratedEffectValues::AcceleratedEffectValues(&v462[24], &v357);
    WebKit::LayerProperties::AnimationChanges::AnimationChanges(v380, &v461);
    v396 = 1;
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v462[24], v72);
    WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v462[8], v73);
    if (*v462)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v462, v74);
    }

    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v461, v74);
  }

  else
  {
    v380[0] = 0;
    v396 = 0;
  }

  if (v361 == 1)
  {
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v357, v68);
  }

  if (v371 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v369, v68);
  }

  if (v367 == 1 && v366)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v366, v68);
  }

  if (v378 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v376, v68);
  }

  if ((v396 & 1) == 0)
  {
    v217 = *a2;
    v218 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v219 = *(a2 + 3);
    if (!v219)
    {
      goto LABEL_430;
    }

    if (!v218)
    {
      goto LABEL_430;
    }

    (*(*v219 + 16))(v219, v217);
    if ((v396 & 1) == 0)
    {
      goto LABEL_430;
    }
  }

  if (HIDWORD(v405))
  {
    v75 = 144 * HIDWORD(v405);
    v76 = v404 + 128;
    do
    {
      WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v76, v68);
      WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v76 - 16), v77);
      v79 = *(v76 - 4);
      if (v79)
      {
        *(v76 - 4) = 0;
        *(v76 - 6) = 0;
        WTF::fastFree(v79, v78);
      }

      WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v76 - 48), v78);
      v80 = *(v76 - 8);
      *(v76 - 8) = 0;
      if (v80)
      {
        if (v80[2] == 1)
        {
          (*(*v80 + 16))(v80);
        }

        else
        {
          --v80[2];
        }
      }

      v81 = *(v76 - 15);
      *(v76 - 15) = 0;
      if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v81, v68);
      }

      v82 = *(v76 - 16);
      *(v76 - 16) = 0;
      if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v82, v68);
      }

      v76 += 144;
      v75 -= 144;
    }

    while (v75);
  }

  v83 = v404;
  if (v404)
  {
    v404 = 0;
    LODWORD(v405) = 0;
    WTF::fastFree(v83, v68);
  }

  v404 = *v380;
  v84 = *&v380[8];
  memset(v380, 0, 24);
  v405 = v84;
  v85 = v406;
  v406 = *&v380[16];
  if (v85)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v85, v68);
  }

  if (HIDWORD(v408))
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>::destruct(v407, v407 + HIDWORD(v408));
  }

  v86 = v407;
  if (v407)
  {
    v407 = 0;
    LODWORD(v408) = 0;
    WTF::fastFree(v86, v68);
  }

  v407 = *&v380[24];
  v87 = *&v380[32];
  *&v380[24] = 0;
  *&v380[32] = 0;
  v408 = v87;
  WebCore::AcceleratedEffectValues::operator=(v409, &v380[40]);
  if (v396)
  {
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v380[40], v6);
    WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v380[24], v88);
    if (*&v380[16])
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*&v380[16], v89);
    }

    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v380, v89);
  }

LABEL_149:
  if ((v11 & 0x40) != 0)
  {
    v90 = IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_430;
    }

    v409[31] = v90;
    v410 = v6;
  }

  if ((v11 & 0x80) != 0)
  {
    v91 = IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_430;
    }

    v411 = v91;
    v412 = v6;
  }

  if ((v11 & 0x100) != 0)
  {
    v92 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
    v94 = v93;
    if ((v93 & 1) == 0)
    {
      v262 = *a2;
      v263 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v264 = *(a2 + 3);
      if (v264)
      {
        if (v263)
        {
          (*(*v264 + 16))(v264, v262);
        }
      }
    }

    v95 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
    if ((v6 & 1) == 0)
    {
      v246 = *a2;
      v245 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v247 = *(a2 + 3);
      if (v247)
      {
        if (v245)
        {
          v355 = v95;
          v248 = v6;
          (*(*v247 + 16))(v247, v246);
          v6 = v248;
          v95 = v355;
        }
      }
    }

    if (!*a2)
    {
      v242 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v243 = *(a2 + 3);
      if (!v243 || !v242)
      {
        goto LABEL_430;
      }

LABEL_441:
      (*(*v243 + 16))(v243, 0);
      goto LABEL_430;
    }

    if ((v94 & 1) == 0 || (v6 & 1) == 0)
    {
      goto LABEL_705;
    }

    v413 = v92;
    v414 = v95;
  }

  if ((v11 & 0x200) == 0)
  {
    goto LABEL_169;
  }

  v96 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  v98 = v97;
  if ((v97 & 1) == 0)
  {
    v265 = *a2;
    v266 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v267 = *(a2 + 3);
    if (v267)
    {
      if (v266)
      {
        (*(*v267 + 16))(v267, v265);
      }
    }
  }

  v99 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  if ((v6 & 1) == 0)
  {
    v250 = *a2;
    v249 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v251 = *(a2 + 3);
    if (v251)
    {
      if (v249)
      {
        v356 = v99;
        v252 = v6;
        (*(*v251 + 16))(v251, v250);
        v6 = v252;
        v99 = v356;
      }
    }
  }

  if (!*a2)
  {
    v244 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v243 = *(a2 + 3);
    if (!v243 || !v244)
    {
      goto LABEL_430;
    }

    goto LABEL_441;
  }

  if ((v98 & 1) == 0 || (v6 & 1) == 0)
  {
    goto LABEL_705;
  }

  v415 = v96;
  v416 = v99;
LABEL_169:
  if ((v11 & 0x400) == 0)
  {
    goto LABEL_170;
  }

  v107 = *(a2 + 1);
  v108 = *(a2 + 2);
  v109 = *a2;
  if (v107 <= &v108[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v268 = *(a2 + 3);
    if (v268)
    {
      if (v107)
      {
        (*(*v268 + 16))(v268);
        v107 = *(a2 + 1);
      }
    }

    else
    {
      v107 = 0;
    }

    goto LABEL_477;
  }

  *(a2 + 2) = v108 + 1;
  if (!v108)
  {
LABEL_477:
    *a2 = 0;
    *(a2 + 1) = 0;
    v269 = *(a2 + 3);
    if (v269)
    {
      if (v107)
      {
        (*(*v269 + 16))(v269);
        v109 = *a2;
        v107 = *(a2 + 1);
        goto LABEL_480;
      }
    }

    else
    {
      v107 = 0;
    }

    v109 = 0;
LABEL_480:
    *a2 = 0;
    *(a2 + 1) = 0;
    v270 = *(a2 + 3);
    if (v270 && v107)
    {
      (*(*v270 + 16))(v270, v109);
    }

    goto LABEL_393;
  }

  v110 = *v108;
  if (v110 >= 2)
  {
    goto LABEL_480;
  }

  if (v110)
  {
    IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreProperties,void>::decode(a2, v380);
    if ((v395 & 1) == 0)
    {
      v222 = *a2;
      v223 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v224 = *(a2 + 3);
      if (!v224 || !v223 || ((*(*v224 + 16))(v224, v222), (v395 & 1) == 0))
      {
LABEL_393:
        v225 = *a2;
        v226 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v227 = *(a2 + 3);
        if (v227 && v226)
        {
          (*(*v227 + 16))(v227, v225);
        }

        v122 = 0;
        v113 = 0;
        goto LABEL_191;
      }
    }

    if (WebKit::RemoteLayerBackingStoreProperties::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerBackingStoreProperties::s_heapRef, v111);
    }

    else
    {
      NonCompact = WebKit::RemoteLayerBackingStoreProperties::operatorNewSlow(0xF0);
    }

    v113 = NonCompact;
    std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](NonCompact, v380);
    v114 = v385;
    v385 = 0;
    *(v113 + 12) = v114;
    *(v113 + 104) = v386;
    v115 = v387;
    v116 = v388;
    v117 = v389;
    *(v113 + 168) = v390;
    *(v113 + 152) = v117;
    *(v113 + 136) = v116;
    *(v113 + 120) = v115;
    v118 = v391;
    v119 = v392;
    v120 = v393;
    *(v113 + 58) = v394;
    *(v113 + 216) = v120;
    *(v113 + 200) = v119;
    *(v113 + 184) = v118;
    if (v395)
    {
      v121 = v385;
      v385 = 0;
      if (v121)
      {
      }

      if (v384[0] == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v380);
      }
    }
  }

  else
  {
    v113 = 0;
  }

  v122 = 1;
LABEL_191:
  v6 = *a2;
  if (*a2)
  {
    if ((v122 & 1) == 0)
    {
      goto LABEL_705;
    }

    *v380 = 0;
    *&v380[8] = 0;
    *&v461 = 0;
    *(&v461 + 1) = v113;
    v462[0] = 1;
    WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties(v380);
  }

  else
  {
    LOBYTE(v461) = 0;
    v462[0] = 0;
    if (!v113)
    {
      v122 = 0;
    }

    if (v122)
    {
      v229 = *(v113 + 12);
      *(v113 + 12) = 0;
      if (v229)
      {
      }

      if (v113[88] == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v113);
      }

      bmalloc::api::tzoneFree(v113, v6);
      v6 = *a2;
    }

    v220 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v221 = *(a2 + 3);
    if (v221 && v220)
    {
      (*(*v221 + 16))(v221);
    }
  }

  if (v462[0] != 1)
  {
    goto LABEL_430;
  }

  v123 = v461;
  *&v461 = 0;
  v124 = v417;
  v417 = v123;
  if (v124)
  {
    (*(*v124 + 8))(v124);
  }

  v125 = *(&v461 + 1);
  *(&v461 + 1) = 0;
  v126 = v418;
  v418 = v125;
  if (v126)
  {
    v228 = *(v126 + 12);
    *(v126 + 12) = 0;
    if (v228)
    {
    }

    if (*(v126 + 88) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v126);
    }

    bmalloc::api::tzoneFree(v126, v6);
  }

  if (v462[0])
  {
    WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties(&v461);
  }

LABEL_170:
  if ((v11 & 0x800) == 0)
  {
    goto LABEL_202;
  }

  v100 = *(a2 + 1);
  v101 = *(a2 + 2);
  v6 = *a2;
  if (v100 <= &v101[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v271 = *(a2 + 3);
    if (v271)
    {
      if (v100)
      {
        (*(*v271 + 16))(v271);
        v100 = *(a2 + 1);
      }
    }

    else
    {
      v100 = 0;
    }

    goto LABEL_485;
  }

  *(a2 + 2) = v101 + 1;
  if (!v101)
  {
LABEL_485:
    *a2 = 0;
    *(a2 + 1) = 0;
    v272 = *(a2 + 3);
    if (v272)
    {
      if (v100)
      {
        (*(*v272 + 16))(v272);
        v6 = *a2;
        v100 = *(a2 + 1);
        goto LABEL_488;
      }
    }

    else
    {
      v100 = 0;
    }

    v6 = 0;
LABEL_488:
    *a2 = 0;
    *(a2 + 1) = 0;
    v273 = *(a2 + 3);
    if (v273 && v100)
    {
      (*(*v273 + 16))(v273, v6);
    }

    goto LABEL_489;
  }

  v102 = *v101;
  if (v102 >= 2)
  {
    goto LABEL_488;
  }

  if (v102)
  {
    IPC::Decoder::decode<WebCore::FilterOperations>(v380, a2);
    if (v380[16] == 1)
    {
      v104 = WebCore::FilterOperations::operator new(0x10, v103);
      *v104 = 0;
      *(v104 + 8) = 0;
      v105 = *v380;
      *v380 = 0;
      *v104 = v105;
      LODWORD(v105) = *&v380[8];
      *&v380[8] = 0;
      *(v104 + 8) = v105;
      LODWORD(v105) = *&v380[12];
      *&v380[12] = 0;
      *(v104 + 12) = v105;
      WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v380, v106);
      goto LABEL_201;
    }

LABEL_489:
    v167 = *a2;
    v274 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v274)
    {
      goto LABEL_430;
    }

LABEL_636:
    (*(*v275 + 16))(v275, v167);
    goto LABEL_430;
  }

  v104 = 0;
LABEL_201:
  v127 = v419;
  v419 = v104;
  if (!v127)
  {
LABEL_202:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_203;
  }

  v131 = WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v127, v6);
  bmalloc::api::tzoneFree(v131, v132);
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_228;
  }

LABEL_203:
  IPC::ArgumentCoder<WebCore::Path,void>::decode(a2, v380, v6);
  if ((v383[0] & 1) == 0)
  {
    v257 = *a2;
    v258 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v259 = *(a2 + 3);
    if (!v259 || !v258 || ((*(*v259 + 16))(v259, v257), (v383[0] & 1) == 0))
    {
      v130 = 0;
      *a1 = 0;
      a1[784] = 0;
      goto LABEL_222;
    }
  }

  if (v422 == 255 && v382 == 255)
  {
    goto LABEL_221;
  }

  if (v382 == 255)
  {
    mpark::detail::destructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::destroy(v420);
    goto LABEL_221;
  }

  if (v382 != 2)
  {
    if (v382 == 1)
    {
      if (v422 == 1)
      {
        v420[0] = *v380;
        v420[1] = *&v380[16];
        v420[2] = *&v380[32];
        v421 = v381;
      }

      else
      {
        *&v461 = v420;
        *(&v461 + 1) = v380;
        mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<1ul,WebCore::PathSegment,WebCore::PathSegment>(mpark::detail::alt<1ul,WebCore::PathSegment> &,WebCore::PathSegment &&)::{unnamed type#1}::operator()(&v461);
      }
    }

    else if (v422)
    {
      *&v461 = v420;
      *(&v461 + 1) = v380;
      mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<0ul,std::monostate,std::monostate>(mpark::detail::alt<0ul,std::monostate> &,std::monostate &&)::{unnamed type#1}::operator()(&v461);
    }

    goto LABEL_221;
  }

  if (v422 != 2)
  {
    mpark::detail::destructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::destroy(v420);
    v133 = *v380;
    *v380 = 0;
    *&v420[0] = v133;
    v422 = 2;
    goto LABEL_221;
  }

  v128 = *v380;
  *v380 = 0;
  v129 = *&v420[0];
  *&v420[0] = v128;
  if (!v129)
  {
LABEL_221:
    v130 = 1;
    goto LABEL_222;
  }

  v130 = 1;
  if (atomic_fetch_add(v129 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v129 + 2);
    (*(*v129 + 8))(v129);
  }

LABEL_222:
  if (v383[0] == 1 && v382 >= 2u && v382 != 255 && (v134 = *v380, *v380 = 0, v134) && atomic_fetch_add(v134 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v134 + 2);
    (*(*v134 + 8))(v134);
    if ((v130 & 1) == 0)
    {
      goto LABEL_431;
    }
  }

  else if ((v130 & 1) == 0)
  {
    goto LABEL_431;
  }

LABEL_228:
  if ((v11 & 0x2000) != 0)
  {
    IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(v380, a2);
    if (v380[16] != 1)
    {
      goto LABEL_430;
    }

    v423 = *v380;
  }

  if ((v11 & 0x4000) != 0)
  {
    IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(v380, a2);
    if (v380[16] != 1)
    {
      goto LABEL_430;
    }

    v424 = *v380;
  }

  if ((v11 & 0x8000) != 0)
  {
    v135 = IPC::Decoder::decode<unsigned long long>(a2);
    if ((v136 & 1) == 0)
    {
      goto LABEL_430;
    }

    v425 = v135;
  }

  if ((v11 & 0x10000) != 0)
  {
    v137 = *(a2 + 1);
    v138 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v139 = v138 - *a2;
    v8 = v137 >= v139;
    v140 = v137 - v139;
    if (v8 && v140 > 3)
    {
      *(a2 + 2) = v138 + 1;
      if (v138)
      {
        v426 = *v138;
        goto LABEL_243;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v286 = *(a2 + 3);
      if (v286)
      {
        if (v137)
        {
          (*(*v286 + 16))(v286);
          v137 = *(a2 + 1);
        }
      }

      else
      {
        v137 = 0;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v287 = *(a2 + 3);
    if (v287 && v137)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

LABEL_243:
  if ((v11 & 0x20000) == 0)
  {
    goto LABEL_249;
  }

  v141 = *(a2 + 1);
  v142 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v143 = v142 - *a2;
  v8 = v141 >= v143;
  v144 = v141 - v143;
  if (!v8 || v144 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v288 = *(a2 + 3);
    if (v288)
    {
      if (v141)
      {
        (*(*v288 + 16))(v288);
        v141 = *(a2 + 1);
      }
    }

    else
    {
      v141 = 0;
    }

LABEL_531:
    *a2 = 0;
    *(a2 + 1) = 0;
    v287 = *(a2 + 3);
    if (v287 && v141)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v142 + 1;
  if (!v142)
  {
    goto LABEL_531;
  }

  v427 = *v142;
LABEL_249:
  if ((v11 & 0x40000) == 0)
  {
    goto LABEL_255;
  }

  v145 = *(a2 + 1);
  v146 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v147 = v146 - *a2;
  v8 = v145 >= v147;
  v148 = v145 - v147;
  if (!v8 || v148 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v289 = *(a2 + 3);
    if (v289)
    {
      if (v145)
      {
        (*(*v289 + 16))(v289);
        v145 = *(a2 + 1);
      }
    }

    else
    {
      v145 = 0;
    }

LABEL_536:
    *a2 = 0;
    *(a2 + 1) = 0;
    v287 = *(a2 + 3);
    if (v287 && v145)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v146 + 1;
  if (!v146)
  {
    goto LABEL_536;
  }

  v428 = *v146;
LABEL_255:
  if ((v11 & 0x80000) == 0)
  {
    goto LABEL_261;
  }

  v149 = *(a2 + 1);
  v150 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v151 = v150 - *a2;
  v8 = v149 >= v151;
  v152 = v149 - v151;
  if (!v8 || v152 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v290 = *(a2 + 3);
    if (v290)
    {
      if (v149)
      {
        (*(*v290 + 16))(v290);
        v149 = *(a2 + 1);
      }
    }

    else
    {
      v149 = 0;
    }

LABEL_541:
    *a2 = 0;
    *(a2 + 1) = 0;
    v287 = *(a2 + 3);
    if (v287 && v149)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v150 + 1;
  if (!v150)
  {
    goto LABEL_541;
  }

  v429 = *v150;
LABEL_261:
  if ((v11 & 0x100000) == 0)
  {
    goto LABEL_267;
  }

  v153 = *(a2 + 1);
  v154 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v155 = v154 - *a2;
  v8 = v153 >= v155;
  v156 = v153 - v155;
  if (!v8 || v156 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v291 = *(a2 + 3);
    if (v291)
    {
      if (v153)
      {
        (*(*v291 + 16))(v291);
        v153 = *(a2 + 1);
      }
    }

    else
    {
      v153 = 0;
    }

LABEL_546:
    *a2 = 0;
    *(a2 + 1) = 0;
    v287 = *(a2 + 3);
    if (v287 && v153)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v154 + 1;
  if (!v154)
  {
    goto LABEL_546;
  }

  v430 = *v154;
LABEL_267:
  if ((v11 & 0x200000) != 0)
  {
    IPC::Decoder::decode<WebCore::Color>(a2, v380);
    if (v380[8] != 1)
    {
      goto LABEL_430;
    }

    if ((v431 & 0x8000000000000) != 0)
    {
      v276 = (v431 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v431 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v276);
        WTF::fastFree(v276, v157);
      }
    }

    v431 = *v380;
  }

  if ((v11 & 0x400000) != 0)
  {
    IPC::Decoder::decode<WebCore::Color>(a2, v380);
    if (v380[8] != 1)
    {
      goto LABEL_430;
    }

    if ((v432 & 0x8000000000000) != 0)
    {
      v277 = (v432 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v432 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v277);
        WTF::fastFree(v277, v158);
      }
    }

    v432 = *v380;
  }

  if ((v11 & 0x800000) != 0)
  {
    v159 = *(a2 + 1);
    v160 = *(a2 + 2);
    v161 = *a2;
    if (v159 <= &v160[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v280 = *(a2 + 3);
      if (v280)
      {
        if (v159)
        {
          (*(*v280 + 16))(v280);
          v159 = *(a2 + 1);
        }
      }

      else
      {
        v159 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v160 + 1;
      if (v160)
      {
        v162 = *v160;
        if (v162 < 2)
        {
          v433 = v162;
          goto LABEL_280;
        }

        goto LABEL_511;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v281 = *(a2 + 3);
    if (v281)
    {
      if (v159)
      {
        (*(*v281 + 16))(v281);
        v161 = *a2;
        v159 = *(a2 + 1);
        goto LABEL_511;
      }
    }

    else
    {
      v159 = 0;
    }

    v161 = 0;
LABEL_511:
    *a2 = 0;
    *(a2 + 1) = 0;
    v282 = *(a2 + 3);
    if (!v282)
    {
      goto LABEL_430;
    }

    if (!v159)
    {
      goto LABEL_430;
    }

    (*(*v282 + 16))(v282, v161);
    v275 = *(a2 + 3);
    v167 = *a2;
    v283 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (!v275 || !v283)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

LABEL_280:
  if ((v11 & 0x1000000) != 0)
  {
    v163 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
    if (v163 < 0x100u)
    {
      goto LABEL_430;
    }

    v434 = v163;
  }

  if ((v11 & 0x2000000) != 0)
  {
    v164 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
    if (v164 < 0x100u)
    {
      goto LABEL_430;
    }

    v435 = v164;
  }

  if ((v11 & 0x4000000) != 0)
  {
    v165 = *(a2 + 1);
    v166 = *(a2 + 2);
    v167 = *a2;
    if (v165 <= &v166[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v284 = *(a2 + 3);
      if (v284)
      {
        if (v165)
        {
          (*(*v284 + 16))(v284);
          v165 = *(a2 + 1);
        }
      }

      else
      {
        v165 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v166 + 1;
      if (v166)
      {
        v168 = *v166;
        if ((v168 - 1) < 0x12)
        {
          v436 = v168;
          goto LABEL_291;
        }

        goto LABEL_521;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v285 = *(a2 + 3);
    if (v285)
    {
      if (v165)
      {
        (*(*v285 + 16))(v285);
        v167 = *a2;
        v165 = *(a2 + 1);
        goto LABEL_521;
      }
    }

    else
    {
      v165 = 0;
    }

    v167 = 0;
LABEL_521:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v165)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

LABEL_291:
  if ((v11 & 0x8000000) != 0)
  {
    v169 = IPC::Decoder::decode<WebCore::WindRule>(a2);
    if ((v169 & 0x100) == 0)
    {
      goto LABEL_430;
    }

    v437 = v169;
  }

  if ((v11 & 0x10000000) != 0)
  {
    v170 = IPC::Decoder::decode<WebCore::WritingDirection>(a2);
    if ((v170 & 0x100) == 0)
    {
      goto LABEL_430;
    }

    v438 = v170;
  }

  if ((v11 & 0x20000000) != 0)
  {
    v171 = *(a2 + 1);
    v172 = *(a2 + 2);
    v167 = *a2;
    if (v171 <= &v172[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v292 = *(a2 + 3);
      if (v292)
      {
        if (v171)
        {
          (*(*v292 + 16))(v292);
          v171 = *(a2 + 1);
        }
      }

      else
      {
        v171 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v172 + 1;
      if (v172)
      {
        v173 = *v172;
        if (v173 < 2)
        {
          v439 = v173;
          goto LABEL_302;
        }

        goto LABEL_554;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v293 = *(a2 + 3);
    if (v293)
    {
      if (v171)
      {
        (*(*v293 + 16))(v293);
        v167 = *a2;
        v171 = *(a2 + 1);
        goto LABEL_554;
      }
    }

    else
    {
      v171 = 0;
    }

    v167 = 0;
LABEL_554:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v171)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

LABEL_302:
  if ((v11 & 0x40000000) == 0)
  {
    goto LABEL_307;
  }

  v174 = *(a2 + 1);
  v175 = *(a2 + 2);
  v167 = *a2;
  if (v174 <= &v175[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v294 = *(a2 + 3);
    if (v294)
    {
      if (v174)
      {
        (*(*v294 + 16))(v294);
        v174 = *(a2 + 1);
      }
    }

    else
    {
      v174 = 0;
    }

    goto LABEL_559;
  }

  *(a2 + 2) = v175 + 1;
  if (!v175)
  {
LABEL_559:
    *a2 = 0;
    *(a2 + 1) = 0;
    v295 = *(a2 + 3);
    if (v295)
    {
      if (v174)
      {
        (*(*v295 + 16))(v295);
        v167 = *a2;
        v174 = *(a2 + 1);
        goto LABEL_562;
      }
    }

    else
    {
      v174 = 0;
    }

    v167 = 0;
LABEL_562:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v174)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v176 = *v175;
  if (v176 >= 2)
  {
    goto LABEL_562;
  }

  v440 = v176;
LABEL_307:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_312;
  }

  v177 = *(a2 + 1);
  v178 = *(a2 + 2);
  v167 = *a2;
  if (v177 <= &v178[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v296 = *(a2 + 3);
    if (v296)
    {
      if (v177)
      {
        (*(*v296 + 16))(v296);
        v177 = *(a2 + 1);
      }
    }

    else
    {
      v177 = 0;
    }

    goto LABEL_567;
  }

  *(a2 + 2) = v178 + 1;
  if (!v178)
  {
LABEL_567:
    *a2 = 0;
    *(a2 + 1) = 0;
    v297 = *(a2 + 3);
    if (v297)
    {
      if (v177)
      {
        (*(*v297 + 16))(v297);
        v167 = *a2;
        v177 = *(a2 + 1);
        goto LABEL_570;
      }
    }

    else
    {
      v177 = 0;
    }

    v167 = 0;
LABEL_570:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v177)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v179 = *v178;
  if (v179 >= 2)
  {
    goto LABEL_570;
  }

  v441 = v179;
LABEL_312:
  if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_317;
  }

  v180 = *(a2 + 1);
  v181 = *(a2 + 2);
  v167 = *a2;
  if (v180 <= &v181[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v298 = *(a2 + 3);
    if (v298)
    {
      if (v180)
      {
        (*(*v298 + 16))(v298);
        v180 = *(a2 + 1);
      }
    }

    else
    {
      v180 = 0;
    }

    goto LABEL_575;
  }

  *(a2 + 2) = v181 + 1;
  if (!v181)
  {
LABEL_575:
    *a2 = 0;
    *(a2 + 1) = 0;
    v299 = *(a2 + 3);
    if (v299)
    {
      if (v180)
      {
        (*(*v299 + 16))(v299);
        v167 = *a2;
        v180 = *(a2 + 1);
        goto LABEL_578;
      }
    }

    else
    {
      v180 = 0;
    }

    v167 = 0;
LABEL_578:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v180)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v182 = *v181;
  if (v182 >= 2)
  {
    goto LABEL_578;
  }

  v442 = v182;
LABEL_317:
  if ((v11 & 0x200000000) == 0)
  {
    goto LABEL_322;
  }

  v183 = *(a2 + 1);
  v184 = *(a2 + 2);
  v167 = *a2;
  if (v183 <= &v184[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v300 = *(a2 + 3);
    if (v300)
    {
      if (v183)
      {
        (*(*v300 + 16))(v300);
        v183 = *(a2 + 1);
      }
    }

    else
    {
      v183 = 0;
    }

    goto LABEL_583;
  }

  *(a2 + 2) = v184 + 1;
  if (!v184)
  {
LABEL_583:
    *a2 = 0;
    *(a2 + 1) = 0;
    v301 = *(a2 + 3);
    if (v301)
    {
      if (v183)
      {
        (*(*v301 + 16))(v301);
        v167 = *a2;
        v183 = *(a2 + 1);
        goto LABEL_586;
      }
    }

    else
    {
      v183 = 0;
    }

    v167 = 0;
LABEL_586:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v183)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v185 = *v184;
  if (v185 >= 2)
  {
    goto LABEL_586;
  }

  v443 = v185;
LABEL_322:
  if ((v11 & 0x400000000) == 0)
  {
    goto LABEL_327;
  }

  v186 = *(a2 + 1);
  v187 = *(a2 + 2);
  v167 = *a2;
  if (v186 <= &v187[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v302 = *(a2 + 3);
    if (v302)
    {
      if (v186)
      {
        (*(*v302 + 16))(v302);
        v186 = *(a2 + 1);
      }
    }

    else
    {
      v186 = 0;
    }

    goto LABEL_591;
  }

  *(a2 + 2) = v187 + 1;
  if (!v187)
  {
LABEL_591:
    *a2 = 0;
    *(a2 + 1) = 0;
    v303 = *(a2 + 3);
    if (v303)
    {
      if (v186)
      {
        (*(*v303 + 16))(v303);
        v167 = *a2;
        v186 = *(a2 + 1);
        goto LABEL_594;
      }
    }

    else
    {
      v186 = 0;
    }

    v167 = 0;
LABEL_594:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v186)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v188 = *v187;
  if (v188 >= 2)
  {
    goto LABEL_594;
  }

  v444 = v188;
LABEL_327:
  if ((v11 & 0x800000000) == 0)
  {
    goto LABEL_332;
  }

  v189 = *(a2 + 1);
  v190 = *(a2 + 2);
  v167 = *a2;
  if (v189 <= &v190[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v304 = *(a2 + 3);
    if (v304)
    {
      if (v189)
      {
        (*(*v304 + 16))(v304);
        v189 = *(a2 + 1);
      }
    }

    else
    {
      v189 = 0;
    }

    goto LABEL_599;
  }

  *(a2 + 2) = v190 + 1;
  if (!v190)
  {
LABEL_599:
    *a2 = 0;
    *(a2 + 1) = 0;
    v305 = *(a2 + 3);
    if (v305)
    {
      if (v189)
      {
        (*(*v305 + 16))(v305);
        v167 = *a2;
        v189 = *(a2 + 1);
        goto LABEL_602;
      }
    }

    else
    {
      v189 = 0;
    }

    v167 = 0;
LABEL_602:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v189)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v191 = *v190;
  if (v191 >= 2)
  {
    goto LABEL_602;
  }

  v445 = v191;
LABEL_332:
  if ((v11 & 0x1000000000) == 0)
  {
    goto LABEL_337;
  }

  v192 = *(a2 + 1);
  v193 = *(a2 + 2);
  v167 = *a2;
  if (v192 <= &v193[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v306 = *(a2 + 3);
    if (v306)
    {
      if (v192)
      {
        (*(*v306 + 16))(v306);
        v192 = *(a2 + 1);
      }
    }

    else
    {
      v192 = 0;
    }

    goto LABEL_607;
  }

  *(a2 + 2) = v193 + 1;
  if (!v193)
  {
LABEL_607:
    *a2 = 0;
    *(a2 + 1) = 0;
    v307 = *(a2 + 3);
    if (v307)
    {
      if (v192)
      {
        (*(*v307 + 16))(v307);
        v167 = *a2;
        v192 = *(a2 + 1);
        goto LABEL_610;
      }
    }

    else
    {
      v192 = 0;
    }

    v167 = 0;
LABEL_610:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v192)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v194 = *v193;
  if (v194 >= 2)
  {
    goto LABEL_610;
  }

  v446 = v194;
LABEL_337:
  if ((v11 & 0x2000000000) == 0)
  {
    goto LABEL_342;
  }

  v195 = *(a2 + 1);
  v196 = *(a2 + 2);
  v167 = *a2;
  if (v195 <= &v196[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v308 = *(a2 + 3);
    if (v308)
    {
      if (v195)
      {
        (*(*v308 + 16))(v308);
        v195 = *(a2 + 1);
      }
    }

    else
    {
      v195 = 0;
    }

    goto LABEL_615;
  }

  *(a2 + 2) = v196 + 1;
  if (!v196)
  {
LABEL_615:
    *a2 = 0;
    *(a2 + 1) = 0;
    v309 = *(a2 + 3);
    if (v309)
    {
      if (v195)
      {
        (*(*v309 + 16))(v309);
        v167 = *a2;
        v195 = *(a2 + 1);
        goto LABEL_618;
      }
    }

    else
    {
      v195 = 0;
    }

    v167 = 0;
LABEL_618:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v195)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v197 = *v196;
  if (v197 >= 2)
  {
    goto LABEL_618;
  }

  v447 = v197;
LABEL_342:
  if ((v11 & 0x4000000000) == 0)
  {
    goto LABEL_347;
  }

  v198 = *(a2 + 1);
  v199 = *(a2 + 2);
  v167 = *a2;
  if (v198 <= &v199[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v310 = *(a2 + 3);
    if (v310)
    {
      if (v198)
      {
        (*(*v310 + 16))(v310);
        v198 = *(a2 + 1);
      }
    }

    else
    {
      v198 = 0;
    }

    goto LABEL_623;
  }

  *(a2 + 2) = v199 + 1;
  if (!v199)
  {
LABEL_623:
    *a2 = 0;
    *(a2 + 1) = 0;
    v311 = *(a2 + 3);
    if (v311)
    {
      if (v198)
      {
        (*(*v311 + 16))(v311);
        v167 = *a2;
        v198 = *(a2 + 1);
        goto LABEL_626;
      }
    }

    else
    {
      v198 = 0;
    }

    v167 = 0;
LABEL_626:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v198)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v200 = *v199;
  if (v200 >= 2)
  {
    goto LABEL_626;
  }

  v448 = v200;
LABEL_347:
  if ((v11 & 0x8000000000) == 0)
  {
    goto LABEL_352;
  }

  v201 = *(a2 + 1);
  v202 = *(a2 + 2);
  v167 = *a2;
  if (v201 <= &v202[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v312 = *(a2 + 3);
    if (v312)
    {
      if (v201)
      {
        (*(*v312 + 16))(v312);
        v201 = *(a2 + 1);
      }
    }

    else
    {
      v201 = 0;
    }

    goto LABEL_631;
  }

  *(a2 + 2) = v202 + 1;
  if (!v202)
  {
LABEL_631:
    *a2 = 0;
    *(a2 + 1) = 0;
    v313 = *(a2 + 3);
    if (v313)
    {
      if (v201)
      {
        (*(*v313 + 16))(v313);
        v167 = *a2;
        v201 = *(a2 + 1);
        goto LABEL_634;
      }
    }

    else
    {
      v201 = 0;
    }

    v167 = 0;
LABEL_634:
    *a2 = 0;
    *(a2 + 1) = 0;
    v275 = *(a2 + 3);
    if (!v275 || !v201)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v203 = *v202;
  if (v203 >= 2)
  {
    goto LABEL_634;
  }

  v449 = v203;
LABEL_352:
  if ((v11 & 0x10000000000) == 0)
  {
    goto LABEL_684;
  }

  IPC::Decoder::decode<WebCore::Region>(&v376, a2);
  v204 = *(a2 + 1);
  v205 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v206 = *a2;
  v207 = v205 - *a2;
  v8 = v204 >= v207;
  v208 = v204 - v207;
  if (!v8 || v208 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v278 = *(a2 + 3);
    if (v278)
    {
      if (v204)
      {
        (*(*v278 + 16))(v278);
        v204 = *(a2 + 1);
      }
    }

    else
    {
      v204 = 0;
    }

    goto LABEL_498;
  }

  *(a2 + 2) = v205 + 1;
  if (!v205)
  {
LABEL_498:
    *a2 = 0;
    *(a2 + 1) = 0;
    v279 = *(a2 + 3);
    if (v279 && v204)
    {
      (*(*v279 + 16))(v279);
    }

    LOBYTE(v373) = 0;
    v375 = 0;
    goto LABEL_418;
  }

  v209 = *v205;
  v357 = 0;
  v358 = 0;
  if (v209 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::Region>(&v461, a2);
      v230 = v462[8];
      if (v462[8])
      {
        if (HIDWORD(v358) == v358)
        {
          WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region>(&v357, &v461);
        }

        else
        {
          WebCore::Region::Region();
          ++HIDWORD(v358);
        }
      }

      if (v462[8] == 1)
      {
        WebCore::Region::~Region(&v461);
      }

      if ((v230 & 1) == 0)
      {
        break;
      }

      if (!--v209)
      {
        WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v357, HIDWORD(v358));
        goto LABEL_368;
      }
    }
  }

  else
  {
    if (!v209)
    {
LABEL_368:
      v373 = v357;
      v212 = v358;
      v357 = 0;
      v358 = 0;
      v374 = v212;
      v375 = 1;
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v357, v206);
      goto LABEL_369;
    }

    v210 = WTF::fastMalloc((3 * v209), (24 * v209));
    LODWORD(v358) = 24 * v209 / 0x18u;
    v357 = v210;
    while (1)
    {
      IPC::Decoder::decode<WebCore::Region>(&v461, a2);
      v211 = v462[8];
      if (v462[8])
      {
        if (HIDWORD(v358) == v358)
        {
          WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region>(&v357, &v461);
        }

        else
        {
          WebCore::Region::Region();
          ++HIDWORD(v358);
        }
      }

      if (v462[8] == 1)
      {
        WebCore::Region::~Region(&v461);
      }

      if ((v211 & 1) == 0)
      {
        break;
      }

      if (!--v209)
      {
        goto LABEL_368;
      }
    }
  }

  LOBYTE(v373) = 0;
  v375 = 0;
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v357, v206);
LABEL_418:
  v231 = *a2;
  v232 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v233 = *(a2 + 3);
  if (v233 && v232)
  {
    (*(*v233 + 16))(v233, v231);
  }

LABEL_369:
  IPC::Decoder::decode<WebCore::Region>(&v369, a2);
  IPC::Decoder::decode<WebCore::Region>(&v366, a2);
  v213 = *(a2 + 1);
  v214 = *(a2 + 2);
  v215 = *a2;
  if (v213 <= &v214[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v314 = *(a2 + 3);
    if (v314)
    {
      if (v213)
      {
        (*(*v314 + 16))(v314);
        v213 = *(a2 + 1);
      }
    }

    else
    {
      v213 = 0;
    }

    goto LABEL_639;
  }

  *(a2 + 2) = v214 + 1;
  if (!v214)
  {
LABEL_639:
    *a2 = 0;
    *(a2 + 1) = 0;
    v315 = *(a2 + 3);
    if (v315)
    {
      if (v213)
      {
        (*(*v315 + 16))(v315);
        v215 = *a2;
        v213 = *(a2 + 1);
        goto LABEL_642;
      }
    }

    else
    {
      v213 = 0;
    }

    v215 = 0;
LABEL_642:
    *a2 = 0;
    *(a2 + 1) = 0;
    v316 = *(a2 + 3);
    if (v316 && v213)
    {
      (*(*v316 + 16))(v316, v215);
    }

    goto LABEL_643;
  }

  v216 = *v214;
  if (v216 >= 2)
  {
    goto LABEL_642;
  }

  if (!v216)
  {
    LOBYTE(v461) = 0;
    v462[8] = 0;
    std::__optional_move_base<WebCore::Region,false>::__optional_move_base[abi:sn200100](&v357, &v461);
    v360 = 1;
    if (v462[8] != 1)
    {
      goto LABEL_644;
    }

    goto LABEL_377;
  }

  IPC::Decoder::decode<WebCore::Region>(&v461, a2);
  if (v462[8] != 1)
  {
LABEL_643:
    LOBYTE(v357) = 0;
    v360 = 0;
    goto LABEL_644;
  }

  WebCore::Region::Region();
  v359 = 1;
  v360 = 1;
  if (v462[8])
  {
LABEL_377:
    WebCore::Region::~Region(&v461);
  }

LABEL_644:
  if ((v360 & 1) == 0)
  {
    goto LABEL_706;
  }

  while (1)
  {
    if (*a2)
    {
      if ((v379 & 1) == 0)
      {
        goto LABEL_705;
      }

      if ((v375 & 1) == 0)
      {
        goto LABEL_705;
      }

      v365[0] = v373;
      v317 = v374;
      v373 = 0;
      v374 = 0;
      v365[1] = v317;
      if ((v372 & 1) == 0)
      {
        goto LABEL_705;
      }

      WebCore::Region::Region();
      if ((v368 & 1) == 0)
      {
        goto LABEL_705;
      }

      WebCore::Region::Region();
      if ((v360 & 1) == 0)
      {
        goto LABEL_705;
      }

      std::__optional_move_base<WebCore::Region,false>::__optional_move_base[abi:sn200100](v362, &v357);
      WebCore::EventRegion::EventRegion();
      WebCore::EventRegion::EventRegion(v380, &v461);
      LOBYTE(v387) = 1;
      if (v464[24] == 1)
      {
        WebCore::Region::~Region(v464);
      }

      WebCore::Region::~Region(&v463);
      WebCore::Region::~Region(&v462[24]);
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v462[8], v318);
      WebCore::Region::~Region(&v461);
      if (v362[24] == 1)
      {
        WebCore::Region::~Region(v362);
      }

      WebCore::Region::~Region(v363);
      WebCore::Region::~Region(v364);
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v365, v319);
    }

    else
    {
      v380[0] = 0;
      LOBYTE(v387) = 0;
    }

    if (v360 == 1 && v359 == 1)
    {
      WebCore::Region::~Region(&v357);
    }

    if (v368 == 1)
    {
      WebCore::Region::~Region(&v366);
    }

    if (v372 == 1)
    {
      WebCore::Region::~Region(&v369);
    }

    if (v375 == 1)
    {
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v373, v215);
    }

    if (v379 == 1)
    {
      WebCore::Region::~Region(&v376);
    }

    if ((v387 & 1) == 0)
    {
      v342 = *a2;
      v343 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v344 = *(a2 + 3);
      if (!v344)
      {
        goto LABEL_430;
      }

      if (!v343)
      {
        goto LABEL_430;
      }

      (*(*v344 + 16))(v344, v342);
      if ((v387 & 1) == 0)
      {
        goto LABEL_430;
      }
    }

    WebCore::Region::operator=();
    if (HIDWORD(v451))
    {
      v321 = v450;
      v322 = 24 * HIDWORD(v451);
      do
      {
        WebCore::Region::~Region(v321);
        v321 = (v323 + 24);
        v322 -= 24;
      }

      while (v322);
    }

    v324 = v450;
    if (v450)
    {
      v450 = 0;
      LODWORD(v451) = 0;
      WTF::fastFree(v324, v320);
    }

    v450 = *&v380[24];
    v325 = *&v380[32];
    *&v380[24] = 0;
    *&v380[32] = 0;
    v451 = v325;
    WebCore::Region::operator=();
    WebCore::Region::operator=();
    if (v453 == BYTE8(v386))
    {
      if (v453)
      {
        WebCore::Region::operator=();
      }
    }

    else
    {
      if (v453)
      {
        WebCore::Region::~Region(&v452);
        v326 = 0;
      }

      else
      {
        WebCore::Region::Region();
        v326 = 1;
      }

      v453 = v326;
    }

    if (v387)
    {
      if (BYTE8(v386) == 1)
      {
        WebCore::Region::~Region(v384);
      }

      WebCore::Region::~Region(v383);
      WebCore::Region::~Region(&v380[40]);
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v380[24], v327);
      WebCore::Region::~Region(v380);
    }

LABEL_684:
    if (!(v11 >> 41))
    {
      goto LABEL_703;
    }

    v328 = IPC::Decoder::decode<WebCore::AppleVisualEffect>(a2);
    v329 = IPC::Decoder::decode<WebCore::AppleVisualEffect>(a2);
    v11 = &v461;
    v330 = *(a2 + 1);
    v331 = *(a2 + 2);
    v332 = *a2;
    if (v330 <= &v331[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v347 = *(a2 + 3);
      if (v347)
      {
        if (v330)
        {
          (*(*v347 + 16))(v347);
          v330 = *(a2 + 1);
        }
      }

      else
      {
        v330 = 0;
      }
    }

    else
    {
      v333 = v331 + 1;
      *(a2 + 2) = v331 + 1;
      if (v331)
      {
        v334 = *v331;
        if (v334 < 2)
        {
          v335 = v334 | 0x100;
          goto LABEL_689;
        }

        goto LABEL_725;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v348 = *(a2 + 3);
    if (v348)
    {
      if (v330)
      {
        (*(*v348 + 16))(v348);
        v332 = *a2;
        v330 = *(a2 + 1);
        goto LABEL_725;
      }
    }

    else
    {
      v330 = 0;
    }

    v332 = 0;
LABEL_725:
    *a2 = 0;
    *(a2 + 1) = 0;
    v349 = *(a2 + 3);
    if (!v349)
    {
      v335 = 0;
      goto LABEL_727;
    }

    if (!v330)
    {
      v335 = 0;
      goto LABEL_728;
    }

    (*(*v349 + 16))(v349, v332);
    v335 = 0;
    v332 = *a2;
    v330 = *(a2 + 1);
    v333 = *(a2 + 2);
LABEL_689:
    if (v330 <= &v333[-v332])
    {
      v354 = *(a2 + 3);
      *a2 = 0;
      *(a2 + 1) = 0;
      if (v354)
      {
        if (v330)
        {
          (*(*v354 + 16))(v354);
          v332 = *a2;
          v330 = *(a2 + 1);
LABEL_729:
          *a2 = 0;
          *(a2 + 1) = 0;
          v350 = *(a2 + 3);
          if (v350)
          {
            if (v330)
            {
              (*(*v350 + 16))(v350, v332);
              v332 = *a2;
              v330 = *(a2 + 1);
              goto LABEL_732;
            }
          }

          else
          {
            v330 = 0;
          }

          v332 = 0;
LABEL_732:
          *a2 = 0;
          *(a2 + 1) = 0;
          v346 = *(a2 + 3);
          if (v346 && v330)
          {
            goto LABEL_719;
          }

          goto LABEL_733;
        }

LABEL_728:
        v332 = 0;
        goto LABEL_729;
      }

LABEL_727:
      v330 = 0;
      goto LABEL_728;
    }

    *(a2 + 2) = v333 + 1;
    if (!v333)
    {
      goto LABEL_729;
    }

    v336 = *v333;
    if (v336 >= 2)
    {
      goto LABEL_732;
    }

    if (v336)
    {
      IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a2, v380);
      if (v381)
      {
        LOBYTE(v336) = v380[0];
        v461 = *&v380[1];
        *v462 = *&v380[17];
        *&v462[15] = *&v380[32];
        v337 = 1;
LABEL_695:
        v338 = 1;
        goto LABEL_697;
      }

      v332 = *a2;
      v345 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v346 = *(a2 + 3);
      if (v346 && v345)
      {
LABEL_719:
        (*(*v346 + 16))(v346, v332);
      }

LABEL_733:
      v351 = *a2;
      v352 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v353 = *(a2 + 3);
      if (v353 && v352)
      {
        (*(*v353 + 16))(v353, v351);
      }

      v337 = 0;
      LOBYTE(v336) = 0;
      goto LABEL_695;
    }

    v338 = 0;
    v337 = 1;
LABEL_697:
    if (!*a2)
    {
      break;
    }

    if (v328 > 0xFFu && v329 > 0xFFu && v335 > 0xFF && (v337 & 1) != 0)
    {
      v458 = v461;
      *v459 = *v462;
      *&v459[15] = *&v462[15];
      v454 = v328;
      v455 = v329;
      v456 = v335;
      v457 = v336;
      v460 = v338;
LABEL_703:
      if (!*a2)
      {
        goto LABEL_430;
      }

      WebKit::LayerProperties::LayerProperties(a1, v397);
      a1[784] = 1;
      goto LABEL_431;
    }

LABEL_705:
    __break(1u);
LABEL_706:
    v215 = *a2;
    v339 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v340 = *(a2 + 3);
    if (v340 && v339)
    {
      (*(*v340 + 16))(v340, v215);
    }
  }

  v341 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v287 = *(a2 + 3);
  if (!v287 || !v341)
  {
    goto LABEL_430;
  }

LABEL_712:
  (*(*v287 + 16))(v287);
LABEL_430:
  *a1 = 0;
  a1[784] = 0;
LABEL_431:
  WebKit::LayerProperties::~LayerProperties(v397);
}