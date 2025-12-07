uint64_t WebKit::NetworkProcess::allowsFirstPartyForCookies(uint64_t a1, uint64_t a2, WTF::URL *a3)
{
  WebCore::RegistrableDomain::RegistrableDomain(&v11, a3);
  v7 = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1, a2, &v11);
  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  if (v7 != 2)
  {
    return v7;
  }

  isAboutBlank = WTF::URL::isAboutBlank(a3);
  result = 0;
  if ((isAboutBlank & 1) == 0)
  {
    if (*a3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::allowsFirstPartyForCookies(uint64_t a1, uint64_t a2, WTF **a3)
{
  v21 = a2;
  if (*a3 && *(*a3 + 1) && !MEMORY[0x19EB01EF0]())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if ((a2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::pair<WebKit::LoadedWebArchive,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 256),  &v21);
    v9 = v7;
    v10 = *(a1 + 256);
    if (v10)
    {
      v10 += 3 * *(v10 - 1);
    }

    if (v10 != v7)
    {
      if (v7[1])
      {
        return 1;
      }

      if (*a3 != -1 && (WTF::equal(*a3, 0, v8) & 1) == 0 && v9[2])
      {
        if (WTF::equal(*a3, 0, v11) || *a3 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC65930);
        }

        v13 = v9[2];
        if (v13)
        {
          v14 = *(v13 - 8);
          v15 = WTF::ASCIICaseInsensitiveHash::hash(*a3, v12) & v14;
          v16 = (v13 + 8 * v15);
          if ((WTF::equal(*v16, 0, v17) & 1) == 0)
          {
            v19 = 1;
            while (*v16 == -1 || (WTF::equalIgnoringASCIICase(*v16, *a3, v18) & 1) == 0)
            {
              v15 = (v15 + v19) & v14;
              v16 = (v13 + 8 * v15);
              ++v19;
              if (WTF::equal(*v16, 0, v18))
              {
                return v6;
              }
            }

            return 1;
          }
        }
      }
    }
  }

  return v6;
}

void WebKit::NetworkProcess::addStorageSession(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(&v28, a1 + 31, &v30);
  if (v29 != 1)
  {
    return;
  }

  if (*(a3 + 346) != 1)
  {
    cf = 0;
    v6 = 1;
    if (a2 >= -1)
    {
      if (*(a3 + 12))
      {
        WebKit::SandboxExtension::consumePermanently((a3 + 16));
        if (a2 != 1)
        {
          WebKit::cookieStorageFromIdentifyingData(a3, v32);
          cf = v32[0];
          v6 = v32[0] == 0;
        }
      }
    }

    v7 = *WebKit::NetworkProcess::uiProcessBundleIdentifier(a1);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(&v26, v7, 46, a2);
      v9 = v26;
      if (v26)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }

LABEL_12:
        v25 = 0;
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        WTF::UUID::UUID(v31);
        v32[0] = ".PrivateBrowsing.";
        v32[1] = 17;
        v33 = v9;
        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::UUID,void>>(&v24, &v33, v32, v31);
        if (!v24)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC65C6CLL);
        }

        WTF::String::createCFString(v32, &v24);
        v11 = v24;
        v24 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v11 = WTF::StringImpl::destroy(v11, v10);
        }

        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v11 = WTF::StringImpl::destroy(v9, v10);
        }

        if (a2 > -2)
        {
          if (a2 == 1)
          {
            WebCore::NetworkStorageSession::processMayUseCookieAPI(v11);
LABEL_21:
            v15 = WebCore::NetworkStorageSession::operator new(0x170, v14);
            MEMORY[0x19EB09A50](v15, a2, &v25, &cf, 0);
            v16 = v28;
            v17 = *(v28 + 8);
            *(v28 + 8) = v15;
            if (v17)
            {
              WebCore::NetworkStorageSession::operator delete();
              v15 = *(v16 + 8);
            }

            if (!v15)
            {
              __break(0xC471u);
              JUMPOUT(0x19DC65C8CLL);
            }

            ++*(v15 + 2);
            WebCore::NetworkStorageSession::setCookiesVersion(v15);
            v19 = *(v15 + 2);
            if (v19)
            {
              *(v15 + 2) = v19 - 1;
              v20 = v32[0];
              v32[0] = 0;
              if (v20)
              {
                CFRelease(v20);
              }

              v21 = v25;
              v25 = 0;
              if (v21)
              {
                CFRelease(v21);
              }

              if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v9, v18);
              }

              v22 = cf;
              cf = 0;
              if (v22)
              {
                CFRelease(v22);
              }

              return;
            }

            __break(0xC471u);
LABEL_45:
            JUMPOUT(0x19DC65C64);
          }

          CFStorageSessionForIdentifier = WebCore::NetworkStorageSession::createCFStorageSessionForIdentifier();
        }

        else
        {
          CFStorageSessionForIdentifier = WebCore::createPrivateStorageSession();
        }

        v13 = v31[0];
        v25 = v31[0];
        if ((WebCore::NetworkStorageSession::processMayUseCookieAPI(CFStorageSessionForIdentifier) & v6) == 1 && v13)
        {
          cf = _CFURLStorageSessionCopyCookieStorage();
        }

        goto LABEL_21;
      }
    }

    else
    {
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<unsigned long long,void>>(&v26, 0, 46, a2);
      v9 = v26;
      if (v26)
      {
        goto LABEL_12;
      }
    }

    __break(0xC471u);
    goto LABEL_45;
  }

  WebKit::NetworkProcess::newTestingSession(v32, a2);
  v23 = *(v28 + 8);
  *(v28 + 8) = v32[0];
  if (v23)
  {
    WebCore::NetworkStorageSession::operator delete();
  }
}

void WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<decltype(nullptr)>(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(*a3);
  v7 = *a2;
  if (!*a2)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, 0, v6);
    v7 = *a2;
  }

  v8 = *(v7 - 2);
  v9 = *a3;
  v10 = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3) & v8;
  v11 = &v7[2 * v10];
  v12 = *v11;
  if (*v11)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v12 == v9)
      {
        v19 = 0;
        v18 = &v7[2 * *(v7 - 1)];
        goto LABEL_9;
      }

      if (v12 == -1)
      {
        v20 = v11;
      }

      v10 = (v10 + v21) & v8;
      v11 = &v7[2 * v10];
      v12 = *v11;
      ++v21;
    }

    while (*v11);
    if (v20)
    {
      *v20 = 0;
      v20[1] = 0;
      v7 = *a2;
      --*(*a2 - 4);
      v9 = *a3;
      v11 = v20;
    }
  }

  v13 = v11[1];
  *v11 = v9;
  v11[1] = 0;
  if (v13)
  {
    WebCore::NetworkStorageSession::operator delete();
    v7 = *a2;
  }

  v14 = *(v7 - 4);
  v15 = *(v7 - 3) + 1;
  *(v7 - 3) = v15;
  v16 = (v14 + v15);
  v17 = *(v7 - 1);
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_8;
    }

LABEL_18:
    v11 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, v11, v17);
    v7 = *a2;
    if (*a2)
    {
      v17 = *(v7 - 1);
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_8;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_18;
  }

LABEL_8:
  v18 = &v7[2 * v17];
  v19 = 1;
LABEL_9:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
}

void WebKit::NetworkProcess::newTestingSession(uint64_t *a1, uint64_t a2)
{
  v10 = a2;
  v11[0] = "WebKit Test-";
  v11[1] = 13;
  LODWORD(cf) = getpid();
  WTF::tryMakeString<WTF::ASCIILiteral,int>(v11, &cf, &v8);
  if (v8)
  {
    WTF::String::createCFString(&cf, &v8);
    WebCore::createPrivateStorageSession();
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v8;
    v8 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v5 = WTF::StringImpl::destroy(v5, v3);
    }

    cf = 0;
    if (WebCore::NetworkStorageSession::processMayUseCookieAPI(v5) && v11[0])
    {
      cf = _CFURLStorageSessionCopyCookieStorage();
    }

    std::make_unique[abi:sn200100]<WebCore::NetworkStorageSession,PAL::SessionID &,WTF::RetainPtr<__CFURLStorageSession const*>,WTF::RetainPtr<OpaqueCFHTTPCookieStorage *>,0>(a1, &v10, v11, &cf);
    v6 = cf;
    cf = 0;
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = v11[0];
    v11[0] = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<WebKit::NetworkProcess::addWebsiteDataStore(WebKit::WebsiteDataStoreParameters &&)::$_0>(uint64_t a1, uint64_t **a2, uint64_t *a3, WebKit::NetworkSession **a4)
{
  WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapEnsureTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(*a3);
  v9 = *a2;
  if (!*a2)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, 0, v8);
    v9 = *a2;
  }

  v10 = *(v9 - 2);
  v11 = *a3;
  result = WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::SessionSet,WTF::RawPtrTraits<WebKit::SessionSet>,WTF::DefaultRefDerefTraits<WebKit::SessionSet>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v13 = result & v10;
  v14 = &v9[2 * (result & v10)];
  v15 = *v14;
  if (*v14)
  {
    v22 = 0;
    v23 = 1;
    do
    {
      if (v15 == v11)
      {
        v21 = 0;
        v20 = &v9[2 * *(v9 - 1)];
        goto LABEL_9;
      }

      if (v15 == -1)
      {
        v22 = v14;
      }

      v13 = (v13 + v23) & v10;
      v14 = &v9[2 * v13];
      v15 = *v14;
      ++v23;
    }

    while (*v14);
    if (v22)
    {
      *v22 = 0;
      v22[1] = 0;
      --*(*a2 - 4);
      v11 = *a3;
      v14 = v22;
    }
  }

  result = WTF::HashMapEnsureTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>::translate<PAL::SessionID const&,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WebKit::NetworkProcess::addWebsiteDataStore(WebKit::WebsiteDataStoreParameters &&)::$_0>(v14, v11, *a4, a4[1]);
  v16 = *a2;
  if (*a2)
  {
    v17 = *(v16 - 3) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 3) = v17;
  v18 = (*(v16 - 4) + v17);
  v19 = *(v16 - 1);
  if (v19 > 0x400)
  {
    if (v19 > 2 * v18)
    {
      goto LABEL_8;
    }

LABEL_19:
    result = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(a2, v14, v16);
    v14 = result;
    v16 = *a2;
    if (*a2)
    {
      v19 = *(v16 - 1);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_8;
  }

  if (3 * v19 <= 4 * v18)
  {
    goto LABEL_19;
  }

LABEL_8:
  v20 = &v16[2 * v19];
  v21 = 1;
LABEL_9:
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v21;
  return result;
}

void *WebKit::NetworkProcess::cookieAcceptPolicyChanged(uint64_t a1, char a2)
{
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((a1 + 152));
  v5 = result;
  v7 = v6;
  v8 = *(a1 + 152);
  if (v8)
  {
    v9 = (v8 + 16 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != result)
  {
    do
    {
      v10 = *(v5[1] + 80);
      v11 = a2;
      result = IPC::Connection::send<Messages::NetworkProcessConnection::CookieAcceptPolicyChanged>(v10, &v11, 0, 0, 0);
      do
      {
        v5 += 2;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v9);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::destroySession(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = a2;
  WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v34, (a1 + 240), &v35);
  v6 = v34;
  if (v34)
  {
    if (v34[70] == 0)
    {
      v7 = 0;
      LOBYTE(v38) = 0;
    }

    else
    {
      v38 = v34[70];
      v7 = 1;
    }

    v39 = v7;
    v8 = qword_1ED641350;
    if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        WTF::UUID::toString(&v32, &v38);
        WTF::String::utf8();
        v9 = v33 ? v33 + 16 : 0;
      }

      else
      {
        v9 = "null";
      }

      *buf = 134218498;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2082;
      v37 = v9;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::destroySession sessionID=%llu identifier=%{public}s", buf, 0x20u);
      if (v7)
      {
        v11 = v33;
        v33 = 0;
        if (v11)
        {
          if (*v11 == 1)
          {
            WTF::fastFree(v11, v10);
          }

          else
          {
            --*v11;
          }
        }

        v12 = v32;
        v32 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }
      }
    }

    (*(*v6 + 80))(v6);
    v13 = v6[131];
    v14 = (v13 + 1);
    do
    {
      v15 = *v14;
      if ((*v14 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
        break;
      }

      v28 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v28, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v28 != v15);
    while (1)
    {
      v16 = *v14;
      if ((*v14 & 1) == 0)
      {
        break;
      }

      v29 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v29, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v29 == v16)
      {
        goto LABEL_17;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_17:
    v31 = v13;
    WTF::HashTable<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkStorageManager,WTF::RawPtrTraits<WebKit::NetworkStorageManager>,WTF::DefaultRefDerefTraits<WebKit::NetworkStorageManager>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(buf, (a1 + 368), &v31);
    if (v31)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v31 + 1, v17);
    }

    *buf = a1;
    *&buf[8] = a1;
    atomic_fetch_add((a1 + 144), 1u);
    while (1)
    {
      v18 = *v14;
      if ((*v14 & 1) == 0)
      {
        break;
      }

      v30 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v30, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v30 == v18)
      {
        goto LABEL_22;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_22:
    v19 = *a3;
    *a3 = 0;
    v20 = WTF::fastMalloc(v18, 0x28);
    *v20 = &unk_1F11014F0;
    v20[1] = *buf;
    v20[2] = a1;
    *&buf[8] = 0uLL;
    v20[3] = v13;
    v20[4] = v19;
    v37 = 0;
    v31 = v20;
    WebKit::NetworkStorageManager::close(v13, &v31);
    v22 = v31;
    v31 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    WebKit::NetworkProcess::destroySession(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(buf, v21);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v13 + 1, v23);
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  v24 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>((a1 + 248), &v35);
  WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((a1 + 248), v24);
  v25 = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>((a1 + 232), &v35);
  result = WTF::HashSet<PAL::SessionID,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((a1 + 232), v25);
  v27 = *a3;
  if (*a3)
  {
    *a3 = 0;
    (*(*v27 + 16))(v27);
    return (*(*v27 + 8))(v27);
  }

  return result;
}

void *WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(void *a1, uint64_t *a2, uint64_t *a3)
{
  result = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(a2, a3);
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
    result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, result);
  }

  *a1 = v7;
  return result;
}

void *WebKit::NetworkProcess::destroySession(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(void *a1, unint64_t a2)
{
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v4 + 8), a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add(v5 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 36);
    (*(*v5 + 24))(v5, a2);
  }

  return a1;
}

uint64_t WebKit::NetworkProcess::ensureSessionWithDataStoreIdentifierRemoved(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v31 = a3;
  v6 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    WTF::UUID::toString(&v28, &v30);
    WTF::String::utf8();
    if (v29)
    {
      v7 = v29 + 16;
    }

    else
    {
      v7 = 0;
    }

    *buf = 134218242;
    v33 = a1;
    v34 = 2082;
    v35 = v7;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcess::ensureSessionWithDataStoreIdentifierRemoved identifier=%{public}s", buf, 0x16u);
    v9 = v29;
    v29 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::fastFree(v9, v8);
      }

      else
      {
        --*v9;
      }
    }

    v10 = v28;
    v28 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  v11 = *(a1 + 30);
  v12 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v11);
  v13 = v12;
  v15 = v14;
  if (v11)
  {
    v16 = &v11[2 * *(v11 - 1)];
  }

  else
  {
    v16 = 0;
  }

  if (v16 != v12)
  {
    do
    {
      v17 = v13[1];
      v18 = *(v17 + 1128);
      v19 = *(v17 + 1120);
      if (v19 | v18)
      {
        if (v18 == v31 && v19 == v30)
        {
          v21 = qword_1ED641350;
          if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_ERROR))
          {
            WTF::UUID::toString(&v28, &v30);
            WTF::String::utf8();
            if (v29)
            {
              v22 = v29 + 16;
            }

            else
            {
              v22 = 0;
            }

            *buf = 136446210;
            v33 = v22;
            _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "NetworkProcess::ensureSessionWithDataStoreIdentifierRemoved session still exists for identifier %{public}s", buf, 0xCu);
            v24 = v29;
            v29 = 0;
            if (v24)
            {
              if (*v24 == 1)
              {
                WTF::fastFree(v24, v23);
              }

              else
              {
                --*v24;
              }
            }

            v25 = v28;
            v28 = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v23);
            }
          }
        }
      }

      do
      {
        v13 += 2;
      }

      while (v13 != v15 && (*v13 + 1) <= 1);
    }

    while (v13 != v16);
  }

  v26 = *a4;
  *a4 = 0;
  (*(*v26 + 16))(v26);
  return (*(*v26 + 8))(v26);
}

uint64_t WebKit::NetworkProcess::registrableDomainsWithLastAccessedTime(uint64_t a1, WTF::StringImpl **a2, uint64_t *a3)
{
  v15 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    *(v4 + 16) = v6 + 1;
    v7 = *(v4 + 72);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::registrableDomainsWithLastAccessedTime(v7, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7, v10);
      v12 = *(v5 + 16);
      if (v12)
      {
        *(v5 + 16) = v12 - 1;
        return result;
      }

LABEL_14:
      result = 290;
      __break(0xC471u);
      return result;
    }

    if (v6 == -1)
    {
      goto LABEL_14;
    }

    *(v4 + 16) = v6;
  }

  LOBYTE(v15) = 0;
  v16 = 0;
  v13 = *a3;
  *a3 = 0;
  (*(*v13 + 16))(v13, &v15);
  result = (*(*v13 + 8))(v13);
  if (v16 == 1)
  {
    result = v15;
    if (v15)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v14);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::registrableDomainsExemptFromWebsiteDataDeletion(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 16);
    *(v4 + 16) = v6 + 1;
    v7 = *(v4 + 72);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
      v10 = WTF::fastMalloc(v8, 0x10);
      *v10 = &unk_1F1101518;
      v11 = *a3;
      *a3 = 0;
      v10[1] = v11;
      v17 = v10;
      WebKit::WebResourceLoadStatisticsStore::registrableDomainsExemptFromWebsiteDataDeletion(v7, &v17);
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7, v12);
      v14 = *(v5 + 16);
      if (v14)
      {
        *(v5 + 16) = v14 - 1;
        return result;
      }

LABEL_15:
      result = 290;
      __break(0xC471u);
      return result;
    }

    if (v6 == -1)
    {
      goto LABEL_15;
    }

    *(v4 + 16) = v6;
  }

  v16 = 0;
  WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()(a3, &v16);
  result = v16;
  if (v16)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, v15);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()(uint64_t *a1, WTF::StringImpl ***a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  v7 = v2;
  WTF::Function<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>)>::operator()(&v7, &v6);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::dumpResourceLoadStatistics(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v18 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      v9 = WTF::fastMalloc(v7, 0x10);
      *v9 = &unk_1F1102268;
      v10 = *a3;
      *a3 = 0;
      v9[1] = v10;
      v18 = v9;
      WebKit::WebResourceLoadStatisticsStore::dumpResourceLoadStatistics(v6, &v18, v10);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, v11);
    }

    else
    {
      v17 = 0;
      WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v17);
      result = v17;
      v17 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v15);
      }
    }

    v13 = *(v5 + 16);
    if (v13)
    {
      *(v5 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = 0;
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v16);
    result = v16;
    v16 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v14);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::updatePrevalentDomainsToBlockCookiesFor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v10);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  ++*(v5 + 8);
  WebCore::NetworkStorageSession::setPrevalentDomainsToBlockAndDeleteCookiesFor();
  v7 = *(v6 + 8);
  if (v7)
  {
    *(v6 + 8) = v7 - 1;
LABEL_4:
    v8 = *a4;
    *a4 = 0;
    (*(*v8 + 16))(v8);
    return (*(*v8 + 8))(v8);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::isGrandfathered(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isGrandfathered(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15, 0);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14, 0);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15, 0);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14, 0);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isVeryPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isVeryPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15, 0);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14, 0);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setGrandfathered(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v6 = a4;
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setGrandfathered(v10, a3, v6, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPrevalentResourceForDebugMode(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setVeryPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setVeryPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::clearPrevalentResource(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl **a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::clearPrevalentResource(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::scheduleCookieBlockingUpdate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::scheduleCookieBlockingUpdate(v6, a3, v7);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, v9);
    }

    else
    {
      v13 = *a3;
      *a3 = 0;
      (*(*v13 + 16))(v13);
      result = (*(*v13 + 8))(v13);
    }

    v11 = *(v5 + 16);
    if (v11)
    {
      *(v5 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::scheduleClearInMemoryAndPersistent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, WTF::StringImpl *a6)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++v8[4];
    (*(*v8 + 160))(v8);
    v10 = *(v9 + 9);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(v10, a5, a6);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a6;
      *a6 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = v9[4];
    if (v15)
    {
      v9[4] = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a6;
    *a6 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::getResourceLoadStatisticsDataSummary(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::aggregatedThirdPartyData(v6, a3, v7);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, v9);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14, &v16);
      (*(*v14 + 8))(v14);
      result = WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v15);
    }

    v11 = *(v5 + 16);
    if (v11)
    {
      *(v5 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, &v16);
    (*(*v12 + 8))(v12);
    return WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resetParametersToDefaultValues(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (v4)
  {
    v6 = v4;
    ++*(v4 + 4);
    WebKit::NetworkSession::resetFirstPartyDNSData(v4, v5);
    v7 = *(v6 + 9);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::resetParametersToDefaultValues(v7, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7, v10);
    }

    else
    {
      v14 = *a3;
      *a3 = 0;
      (*(*v14 + 16))(v14);
      result = (*(*v14 + 8))(v14);
    }

    v12 = *(v6 + 4);
    if (v12)
    {
      *(v6 + 4) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v13 = *a3;
    *a3 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::scheduleStatisticsAndDataRecordsProcessing(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing(v6, a3, v7);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, v9);
    }

    else
    {
      v13 = *a3;
      *a3 = 0;
      (*(*v13 + 16))(v13);
      result = (*(*v13 + 8))(v13);
    }

    v11 = *(v5 + 16);
    if (v11)
    {
      *(v5 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::statisticsDatabaseHasAllTables(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v14);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    v6 = *(v4 + 72);
    if (v6)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables(v6, a3, v7);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v6, v9);
    }

    else
    {
      v13 = *a3;
      *a3 = 0;
      (*(*v13 + 16))(v13, 0);
      result = (*(*v13 + 8))(v13);
    }

    v11 = *(v5 + 16);
    if (v11)
    {
      *(v5 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 0);
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setResourceLoadStatisticsTimeAdvanceForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  *(v6 + 16) = v8 + 1;
  v9 = *(v6 + 72);
  if (v9)
  {
    while (1)
    {
      v10 = *v9;
      if ((*v9 & 1) == 0)
      {
        break;
      }

      v11 = *v9;
      atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_5:
    WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting(v9, a3, v10, a4);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v9, v12);
    v14 = *(v7 + 16);
    if (v14)
    {
      *(v7 + 16) = v14 - 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v8 != -1)
  {
    *(v6 + 16) = v8;
LABEL_10:
    v15 = *a3;
    *a3 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

LABEL_11:
  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setIsRunningResourceLoadStatisticsTest(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubframeUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubframeUnderTopFrameDomain(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRegisteredAsRedirectingTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRegisteredAsRedirectingTo(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17, 0);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16, 0);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRegisteredAsSubFrameUnder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubFrameUnder(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17, 0);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16, 0);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubresourceUnderTopFrameDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubresourceUnderTopFrameDomain(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubresourceUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectTo(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setSubresourceUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setSubresourceUniqueRedirectFrom(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRegisteredAsSubresourceUnder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRegisteredAsSubresourceUnder(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17, 0);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16, 0);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTopFrameUniqueRedirectTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectTo(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTopFrameUniqueRedirectFrom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setTopFrameUniqueRedirectFrom(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setLastSeen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, double a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setLastSeen(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a4;
      *a4 = 0;
      (*(*v17 + 16))(v17);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a4;
    *a4 = 0;
    (*(*v16 + 16))(v16);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::domainIDExistsInDatabase(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::domainIDExistsInDatabase(v8, a3, a4, v9);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15, 0);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14, 0);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::mergeStatisticForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, char a11, int a12, int a13, uint64_t **a14)
{
  v15 = a7;
  v17 = a6;
  v32 = a2;
  v22 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v32);
  if (v22)
  {
    v23 = v22;
    ++*(v22 + 16);
    v24 = *(v22 + 72);
    if (v24)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::mergeStatisticForTesting(v24, a3, a4, a5, v17, v15, a8, a11, a9, a10, a13, a14);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v24, v27);
    }

    else
    {
      v31 = *a14;
      *a14 = 0;
      (*(*v31 + 16))(v31);
      result = (*(*v31 + 8))(v31);
    }

    v29 = *(v23 + 16);
    if (v29)
    {
      *(v23 + 16) = v29 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v30 = *a14;
    *a14 = 0;
    (*(*v30 + 16))(v30);
    return (*(*v30 + 8))(v30);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::insertExpiredStatisticForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t **a8)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v24 = a2;
  v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v24);
  if (v14)
  {
    v15 = v14;
    ++*(v14 + 16);
    v16 = *(v14 + 72);
    if (v16)
    {
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
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::insertExpiredStatisticForTesting(v16, a3, v12, v11, v10, v9, a8);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v16, v19);
    }

    else
    {
      v23 = *a8;
      *a8 = 0;
      (*(*v23 + 16))(v23);
      result = (*(*v23 + 8))(v23);
    }

    v21 = *(v15 + 16);
    if (v21)
    {
      *(v15 + 16) = v21 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v22 = *a8;
    *a8 = 0;
    (*(*v22 + 16))(v22);
    return (*(*v22 + 8))(v22);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::getAllStorageAccessEntries(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v14);
  if (v4)
  {
    v6 = v4;
    ++*(v4 + 2);
    WebCore::NetworkStorageSession::getAllStorageAccessEntries(v13, v4);
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(a3, v13, v7);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v8);
    v10 = *(v6 + 2);
    if (v10)
    {
      *(v6 + 2) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(a3, v12, v5);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v11);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v3 = *a1;
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  v9 = a3;
  v10[0] = v4;
  v5 = a2[1];
  a2[1] = 0;
  v10[1] = v5;
  (*(*v3 + 16))(v3, v10);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v7);
  return (*(*v3 + 8))(v3);
}

uint64_t WebKit::NetworkProcess::logFrameNavigation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v9 = a8;
  v11 = a7;
  v12 = a6;
  v23 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v23);
  if (result)
  {
    v17 = result;
    v18 = *(result + 16) + 1;
    *(result + 16) = v18;
    v19 = *(result + 72);
    if (v19)
    {
      while (1)
      {
        v20 = *v19;
        if ((*v19 & 1) == 0)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v21 == v20)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(v19, a3, a4, a5, v12, v11, v9, a9);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v19, v22);
      v18 = *(v17 + 16);
    }

    if (v18)
    {
      *(v17 + 16) = v18 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::logUserInteraction(uint64_t a1, uint64_t a2, WTF **a3, const WTF::StringImpl *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::logUserInteraction(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::hadUserInteraction(uint64_t a1, uint64_t a2, WTF **a3, const WTF::StringImpl *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15, 0);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14, 0);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isRelationshipOnlyInDatabaseOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, WTF::StringImpl **a5)
{
  v18 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v18);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v10 = *(v8 + 72);
    if (v10)
    {
      while (1)
      {
        v11 = *v10;
        if ((*v10 & 1) == 0)
        {
          break;
        }

        v12 = *v10;
        atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isRelationshipOnlyInDatabaseOnce(v10, a3, a4, a5);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v10, v13);
    }

    else
    {
      v17 = *a5;
      *a5 = 0;
      (*(*v17 + 16))(v17, 0);
      result = (*(*v17 + 8))(v17);
    }

    v15 = *(v9 + 16);
    if (v15)
    {
      *(v9 + 16) = v15 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v16 = *a5;
    *a5 = 0;
    (*(*v16 + 16))(v16, 0);
    return (*(*v16 + 8))(v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::clearUserInteraction(uint64_t a1, uint64_t a2, WTF **a3, WTF::StringImpl **a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::hasLocalStorage(uint64_t a1, uint64_t *a2, atomic_uint **a3, uint64_t *a4)
{
  v17 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v17);
  if (!v6)
  {
    v16 = *a4;
    *a4 = 0;
    (*(*v16 + 16))(v16, 0);
    return (*(*v16 + 8))(v16);
  }

  v7 = v6;
  add_explicit = (*(v6 + 16) + 1);
  *(v6 + 16) = add_explicit;
  v9 = *(v6 + 1048);
  v10 = *a3;
  if (v10)
  {
    add_explicit = atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v11 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(add_explicit, 0x18);
  *v12 = &unk_1F1101540;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v12[1] = v10;
  v12[2] = v11;
  v17 = v12;
  WebKit::NetworkStorageManager::fetchData(v9, 0x20uLL, 0, &v17);
  result = v17;
  if (v17)
  {
    result = (*(*v17 + 8))(v17);
    if (v10)
    {
LABEL_8:
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v10, v13);
      }
    }
  }

  else if (v10)
  {
    goto LABEL_8;
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    *(v7 + 16) = v15 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setCacheMaxAgeCapForPrevalentResources(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v10 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v10);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  ++*(v5 + 8);
  WebCore::NetworkStorageSession::setCacheMaxAgeCapForPrevalentResources();
  v7 = *(v6 + 8);
  if (v7)
  {
    *(v6 + 8) = v7 - 1;
LABEL_4:
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8);
    return (*(*v8 + 8))(v8);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setGrandfatheringTime(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setGrandfatheringTime(v8, a3, v9, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a3;
      *a3 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a3;
    *a3 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setMaxStatisticsEntries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setMaxStatisticsEntries(v8, a3, a4, v9);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setMinimumTimeBetweenDataRecordsRemoval(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setMinimumTimeBetweenDataRecordsRemoval(v8, a3, v9, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a3;
      *a3 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a3;
    *a3 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setPruneEntriesDownTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setPruneEntriesDownTo(v8, a3, a4, v9);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTimeToLiveUserInteraction(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setTimeToLiveUserInteraction(v8, a3, v9, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a3;
      *a3 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a3;
    *a3 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setShouldClassifyResourcesBeforeDataRecordsRemoval(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(v8, a3, a4, v9);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setTrackingPreventionEnabled(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::setTrackingPreventionEnabled(result, a3);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setResourceLoadStatisticsLogTestingEvent@<X0>(WebKit::NetworkProcess *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1101568;
  *(v5 + 8) = v3;
  v8 = v5;
  WebKit::NetworkProcess::forEachNetworkSession(this, &v8);
  v6 = *(*v5 + 8);

  return v6(v5);
}

uint64_t WebKit::NetworkProcess::setResourceLoadStatisticsDebugMode(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::isResourceLoadStatisticsEphemeral(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = *(v4 + 16);
  *(v4 + 16) = v6 + 1;
  v7 = *(v4 + 72);
  if (!v7)
  {
    if (v6 == -1)
    {
LABEL_12:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v4 + 16) = v6;
LABEL_11:
    v15 = *a3;
    *a3 = 0;
    (*(*v15 + 16))(v15, 0);
    return (*(*v15 + 8))(v15);
  }

  while (1)
  {
    v8 = *v7;
    if ((*v7 & 1) == 0)
    {
      break;
    }

    v9 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
  v10 = *(v7 + 88);
  v11 = *a3;
  *a3 = 0;
  (*(*v11 + 16))(v11, v10);
  (*(*v11 + 8))(v11);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7, v12);
  v14 = *(v5 + 16);
  if (!v14)
  {
    goto LABEL_12;
  }

  *(v5 + 16) = v14 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::resetCacheMaxAgeCapForPrevalentResources(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v9);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  ++*(v4 + 2);
  WebCore::NetworkStorageSession::resetCacheMaxAgeCapForPrevalentResources(v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    *(v5 + 2) = v6 - 1;
LABEL_4:
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7);
    return (*(*v7 + 8))(v7);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

atomic_ullong *WebKit::NetworkProcess::didCommitCrossSiteLoadWithDataTransfer(uint64_t *a1, IPC::Encoder *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v32 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 31, &v32);
  if (result)
  {
    v16 = result + 1;
    ++*(result + 2);
    result = WebCore::NetworkStorageSession::shouldBlockThirdPartyCookies();
    if (!result)
    {
      v22 = *v16;
      if (!*v16)
      {
        goto LABEL_27;
      }

LABEL_22:
      *v16 = v22 - 1;
      return result;
    }

    if ((a5 & 2) != 0)
    {
      result = WebCore::NetworkStorageSession::didCommitCrossSiteLoadWithDataTransferFromPrevalentResource();
    }

    if ((a5 & 4) != 0)
    {
      WebKit::AuxiliaryProcess::protectedParentProcessConnection(&v31, a1);
      v17 = v31;
      v19 = IPC::Encoder::operator new(0x238, v18);
      *v19 = 532;
      *(v19 + 68) = 0;
      *(v19 + 70) = 0;
      *(v19 + 69) = 0;
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 1) = 0;
      IPC::Encoder::encodeHeader(v19);
      v32 = v19;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, a6);
      IPC::Connection::sendMessageImpl(v17, &v32, 0, 0);
      v21 = v32;
      v32 = 0;
      if (v21)
      {
        IPC::Encoder::~Encoder(v21, v20);
        bmalloc::api::tzoneFree(v29, v30);
      }

      result = v31;
      v31 = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result, v20);
      }
    }

    if (!*v16)
    {
      goto LABEL_27;
    }

    --*v16;
    if ((a5 & 2) != 0)
    {
LABEL_12:
      v32 = a2;
      result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 30, &v32);
      if (!result)
      {
        return result;
      }

      v16 = result + 2;
      v22 = *(result + 4) + 1;
      *(result + 4) = v22;
      v23 = result[9];
      if (v23)
      {
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
            goto LABEL_16;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_16:
        v26 = WTF::fastMalloc(v24, 0x10);
        *v26 = &unk_1F1101590;
        v32 = v26;
        WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(v23, a3, a4, v8, &v32);
        v28 = v32;
        v32 = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v23, v27);
        v22 = *v16;
      }

      if (!v22)
      {
LABEL_27:
        __break(0xC471u);
        JUMPOUT(0x19DC6B860);
      }

      goto LABEL_22;
    }
  }

  else if ((a5 & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setCrossSiteLoadWithLinkDecorationForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v7 = a5;
  v20 = a2;
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v20);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = *(v10 + 16);
  *(v10 + 16) = v12 + 1;
  v13 = *(v10 + 72);
  if (!v13)
  {
    if (v12 == -1)
    {
LABEL_12:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v10 + 16) = v12;
LABEL_11:
    v19 = *a6;
    *a6 = 0;
    (*(*v19 + 16))(v19);
    return (*(*v19 + 8))(v19);
  }

  while (1)
  {
    v14 = *v13;
    if ((*v13 & 1) == 0)
    {
      break;
    }

    v15 = *v13;
    atomic_compare_exchange_strong_explicit(v13, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_5:
  WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(v13, a3, a4, v7, a6);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v13, v16);
  v18 = *(v11 + 16);
  if (!v18)
  {
    goto LABEL_12;
  }

  *(v11 + 16) = v18 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::resetCrossSiteLoadsWithLinkDecorationForTesting(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v9);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  ++*(v4 + 2);
  WebCore::NetworkStorageSession::resetCrossSiteLoadsWithLinkDecorationForTesting(v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    *(v5 + 2) = v6 - 1;
LABEL_4:
    v7 = *a3;
    *a3 = 0;
    (*(*v7 + 16))(v7);
    return (*(*v7 + 8))(v7);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

WTF::StringImpl **WebKit::NetworkProcess::grantStorageAccessForTesting(uint64_t a1, WTF::StringImpl *a2, uint64_t *a3, const WTF::StringImpl **a4, uint64_t *a5)
{
  v32[4] = *MEMORY[0x1E69E9840];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32[1] = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32[2] = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32[3] = v31;
  WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v31, v32, 4);
  for (i = 3; i != -1; --i)
  {
    v13 = v32[i];
    v32[i] = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  v14 = v31;
  if (!v31)
  {
    goto LABEL_7;
  }

  v18 = *a4;
  if (*a4 == -1)
  {
LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x19DC6BDA0);
  }

  if (!v18)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6BDC0);
  }

  v19 = *(v31 - 2);
  v20 = *(v18 + 4);
  if (v20 < 0x100)
  {
    v21 = WTF::StringImpl::hashSlowCase(v18);
  }

  else
  {
    v21 = v20 >> 8;
  }

  for (j = 0; ; v21 = j + v23)
  {
    v23 = v21 & v19;
    v24 = v14[v21 & v19];
    if (v24 != -1)
    {
      if (!v24)
      {
        goto LABEL_7;
      }

      if (WTF::equal(v24, *a4, v11))
      {
        break;
      }
    }

    ++j;
  }

  v32[0] = a2;
  v25 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), v32);
  if (v25)
  {
    v26 = v25;
    v27 = *(v25 + 8) + 1;
    *(v25 + 8) = v27;
    v28 = *(a3 + 3);
    if (v28)
    {
      v29 = *a3;
      v30 = 8 * v28;
      do
      {
        WebCore::NetworkStorageSession::grantCrossPageStorageAccess();
        v29 += 8;
        v30 -= 8;
      }

      while (v30);
      v27 = *(v26 + 8);
    }

    if (v27)
    {
      *(v26 + 8) = v27 - 1;
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_7:
  v15 = *a5;
  *a5 = 0;
  (*(*v15 + 16))(v15);
  (*(*v15 + 8))(v15);
  result = v31;
  if (v31)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v16);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::hasIsolatedSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_4;
  }

  v7 = v6;
  ++v6[4];
  v8 = (*(*v6 + 152))(v6, a3);
  v9 = v7[4];
  if (v9)
  {
    v10 = v8;
    v7[4] = v9 - 1;
LABEL_4:
    v11 = *a4;
    *a4 = 0;
    (*(*v11 + 16))(v11, v10);
    return (*(*v11 + 8))(v11);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setAppBoundDomainsForResourceLoadStatistics(uint64_t a1, uint64_t a2, uint64_t *a3, const WTF::StringImpl *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  *(v6 + 16) = v8 + 1;
  v9 = *(v6 + 72);
  if (!v9)
  {
    if (v8 == -1)
    {
LABEL_12:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v6 + 16) = v8;
LABEL_11:
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    return (*(*v15 + 8))(v15);
  }

  while (1)
  {
    v10 = *v9;
    if ((*v9 & 1) == 0)
    {
      break;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_5:
  WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(v9, a3, a4);
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v9, v12);
  v14 = *(v7 + 16);
  if (!v14)
  {
    goto LABEL_12;
  }

  *(v7 + 16) = v14 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::setManagedDomainsForResourceLoadStatistics(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v21[0] = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), v21);
  if (v8)
  {
    v9 = v8;
    ++*(v8 + 16);
    v21[0] = "WebCookieManager";
    v21[1] = 17;
    v10 = WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>((a1 + 224), v21);
    v11 = v10;
    if (v10)
    {
      v12 = *(*(v10 + 24) + 8);
      if (!v12)
      {
        goto LABEL_13;
      }

      atomic_fetch_add((v12 + 144), 1u);
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v9 + 8), v9);
    v13 = *(v9 + 8);
    add = atomic_fetch_add(v13, 1u);
    v15 = *a3;
    *a3 = 0;
    v16 = *a4;
    *a4 = 0;
    v17 = WTF::fastMalloc(add, 0x20);
    *v17 = &unk_1F11015B8;
    v17[1] = v13;
    v17[2] = v15;
    v17[3] = v16;
    v21[0] = v17;
    WebKit::WebCookieManager::setHTTPCookieAcceptPolicy(v11, a2, 0, v21);
    result = v21[0];
    v21[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
      if (!v11)
      {
LABEL_8:
        v19 = *(v9 + 16);
        if (v19)
        {
          *(v9 + 16) = v19 - 1;
          return result;
        }

LABEL_13:
        __break(0xC471u);
        JUMPOUT(0x19DC6C20CLL);
      }
    }

    else if (!v11)
    {
      goto LABEL_8;
    }

    result = WebKit::WebCookieManager::deref(v11);
    goto LABEL_8;
  }

  v20 = *a4;
  *a4 = 0;
  (*(*v20 + 16))(v20);
  return (*(*v20 + 8))(v20);
}

uint64_t WebKit::NetworkProcess::setShouldDowngradeReferrerForTesting@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v7 = WTF::fastMalloc(a4, 0x10);
  *v7 = &unk_1F11015E0;
  *(v7 + 8) = v5;
  v11 = v7;
  WebKit::NetworkProcess::forEachNetworkSession(a1, &v11);
  (*(*v7 + 8))(v7);
  v8 = *a3;
  *a3 = 0;
  (*(*v8 + 16))(v8);
  v9 = *(*v8 + 8);

  return v9(v8);
}

uint64_t WebKit::NetworkProcess::setThirdPartyCookieBlockingMode(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  ++*(v6 + 16);
  WebKit::NetworkSession::setThirdPartyCookieBlockingMode(v6, a3);
  v8 = *(v7 + 16);
  if (v8)
  {
    *(v7 + 16) = v8 - 1;
LABEL_4:
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setShouldEnbleSameSiteStrictEnforcementForTesting(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v11 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  ++*(v6 + 16);
  WebKit::NetworkSession::setShouldEnbleSameSiteStrictEnforcement(v6, a3);
  v8 = *(v7 + 16);
  if (v8)
  {
    *(v7 + 16) = v8 - 1;
LABEL_4:
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setFirstPartyWebsiteDataRemovalModeForTesting(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v16 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = *(v6 + 72);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if ((*v8 & 1) == 0)
        {
          break;
        }

        v10 = *v8;
        atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(v8, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v11);
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      (*(*v15 + 16))(v15);
      result = (*(*v15 + 8))(v15);
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      *(v7 + 16) = v13 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    return (*(*v14 + 8))(v14);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setToSameSiteStrictCookiesForTesting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2;
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v10);
  if (v5)
  {
    v6 = v5;
    ++*(v5 + 8);
    result = WebCore::NetworkStorageSession::setAllCookiesToSameSiteStrict();
    v8 = *(v6 + 8);
    if (v8)
    {
      *(v6 + 8) = v8 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setFirstPartyHostCNAMEDomainForTesting(uint64_t a1, uint64_t a2, WTF **a3, const WTF::StringImpl **a4, uint64_t *a5)
{
  v13 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v13);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  ++*(v8 + 4);
  WebKit::NetworkSession::setFirstPartyHostCNAMEDomain(v8, a3, a4);
  v10 = *(v9 + 4);
  if (v10)
  {
    *(v9 + 4) = v10 - 1;
LABEL_4:
    v11 = *a5;
    *a5 = 0;
    (*(*v11 + 16))(v11);
    return (*(*v11 + 8))(v11);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setThirdPartyCNAMEDomainForTesting(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15 = a2;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v15);
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = v6;
  ++*(v6 + 16);
  v9 = *(v6 + 144);
  v10 = *a3;
  *a3 = 0;
  if (v9 == 1)
  {
    v11 = *(v6 + 136);
    *(v8 + 136) = v10;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v7);
      }
    }
  }

  else
  {
    *(v6 + 136) = v10;
    *(v6 + 144) = 1;
  }

  v12 = *(v8 + 16);
  if (v12)
  {
    *(v8 + 16) = v12 - 1;
LABEL_9:
    v13 = *a4;
    *a4 = 0;
    (*(*v13 + 16))(v13);
    return (*(*v13 + 8))(v13);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkProcess::notifyMediaStreamingActivity(WebKit::NetworkProcess *this, uint64_t state64)
{
  v2 = state64;
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(this + 99);
  if (v4 != -1 || (v9 = (this + 396), (v10 = notify_register_check("com.apple.WebKit.mediaStreamingActivity", this + 99)) == 0) && (v4 = *v9, *v9 != -1))
  {
    v5 = notify_set_state(v4, v2);
    if (v5)
    {
      v6 = v5;
      v7 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v14 = 136315650;
      v15 = "com.apple.WebKit.mediaStreamingActivity";
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = v6;
      v8 = "notify_set_state() for %s failed with status (%d) 0x%X";
    }

    else
    {
      v12 = notify_post("com.apple.WebKit.mediaStreamingActivity");
      if (!v12)
      {
        return;
      }

      v13 = v12;
      v7 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v14 = 136315650;
      v15 = "com.apple.WebKit.mediaStreamingActivity";
      v16 = 1024;
      v17 = v13;
      v18 = 1024;
      v19 = v13;
      v8 = "notify_post() for %s failed with status (%d) 0x%X";
    }

    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, v8, &v14, 0x18u);
    return;
  }

  v11 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315650;
    v15 = "com.apple.WebKit.mediaStreamingActivity";
    v16 = 1024;
    v17 = v10;
    v18 = 1024;
    v19 = v10;
    _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "notify_register_check() for %s failed with status (%d) 0x%X", &v14, 0x18u);
  }

  *v9 = -1;
}

uint64_t WebKit::NetworkProcess::setPrivateClickMeasurementDebugMode(WebKit::NetworkProcess *this, SessionID a2, uint64_t a3)
{
  m_identifier = a2.m_identifier;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &m_identifier);
  if (result)
  {
    v5 = result;
    v6 = *(result + 16) + 1;
    *(result + 16) = v6;
    if (*(result + 168) != a3)
    {
      *(result + 168) = a3;
      result = (*(**(result + 160) + 56))(*(result + 160), a3);
      v6 = *(v5 + 16);
    }

    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setShouldSendPrivateTokenIPCForTesting(WebKit::NetworkProcess *this, SessionID a2, char a3)
{
  m_identifier = a2.m_identifier;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &m_identifier);
  if (result)
  {
    v5 = *(result + 16);
    *(result + 726) = a3;
    *(result + 16) = v5 + 1;
    if (v5 == -1)
    {
      result = 290;
      __break(0xC471u);
    }

    else
    {
      *(result + 16) = v5;
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::setOptInCookiePartitioningEnabled(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v7 = a2;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v7);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = WebKit::NetworkSession::setOptInCookiePartitioningEnabled(result, a3);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::preconnectTo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v3;
  v64 = *MEMORY[0x1E69E9840];
  v19 = WebCore::ResourceRequestBase::url(v10);
  v20 = *v19;
  if (*v19)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  v50 = v20;
  v21 = *(v19 + 24);
  v51 = *(v19 + 8);
  v52 = v21;
  WebCore::ResourceRequestBase::httpUserAgent(&v49, v11);
  v53 = "LegacyCustomProtocolManager";
  v54 = 28;
  v22 = WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebKit::NetworkProcessSupplement>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkProcessSupplement>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>,WTF::ASCIILiteral>((v18 + 224), &v53);
  v23 = v22;
  if (v22)
  {
    WebKit::LegacyCustomProtocolManager::ref(v22);
  }

  v53 = WTF::URL::protocol(&v50);
  LODWORD(v54) = v24;
  BYTE4(v54) = v25;
  WTF::StringView::toString(&v53);
  v27 = WebKit::LegacyCustomProtocolManager::supportsScheme(v23, v60);
  v28 = v60[0];
  v60[0] = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  if (v23)
  {
    WebKit::LegacyCustomProtocolManager::deref(v23);
  }

  if ((v27 & 1) == 0)
  {
    v53 = v17;
    v29 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v18 + 240), &v53);
    if (v29)
    {
      v30 = v29;
      ++*(v29 + 16);
      WebKit::NetworkLoadParameters::NetworkLoadParameters(v60);
      WebCore::ResourceRequest::operator=(v61, v11);
      v60[0] = v15;
      v60[1] = v13;
      v62 = v7;
      v61[202] = v9;
      v61[3152] = 1;
      v63 = v5;
      WebKit::NetworkLoadParameters::NetworkLoadParameters(v59, v60);
      WebKit::NetworkSession::protectedNetworkLoadScheduler(&v53, v30, v31);
      WebKit::NetworkLoadScheduler::startedPreconnectForMainResource(v53, &v50, &v49);
      v33 = v53;
      v53 = 0;
      if (v33)
      {
        WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref(v33 + 2, v32);
      }

      WebKit::PreconnectTask::create(v30, v60, &v48);
      v34 = v48;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v30 + 2, v30);
      v35 = *(v30 + 1);
      atomic_fetch_add(v35, 1u);
      v53 = v35;
      v36 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v54 = v36;
      v55 = v51;
      v56 = v52;
      v37 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
      }

      v57 = v37;
      WebKit::NetworkLoadParameters::NetworkLoadParameters(&v58, v59);
      WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&)>::CompletionHandler<WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0,void>(&v47, &v53, v38);
      WebKit::PreconnectTask::start(v34, &v47, 10.0);
      v40 = v47;
      v47 = 0;
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

      WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0::~$_0(&v53, v39);
      v42 = v48;
      v48 = 0;
      if (v42)
      {
        if (v42[5] == 1)
        {
          (*(*v42 + 24))(v42);
        }

        else
        {
          --v42[5];
        }
      }

      WebKit::NetworkLoadParameters::~NetworkLoadParameters(v59, v41);
      WebKit::NetworkLoadParameters::~NetworkLoadParameters(v60, v43);
      v44 = v30[4];
      if (!v44)
      {
        result = 290;
        __break(0xC471u);
        return result;
      }

      v30[4] = v44 - 1;
    }
  }

  v45 = v49;
  v49 = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v26);
  }

  result = v50;
  v50 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v26);
    }
  }

  return result;
}

uint64_t **WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::NetworkLoadMetrics const&)>::CompletionHandler<WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0,void>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0xD10);
  *v5 = &unk_1F1101608;
  v6 = *a2;
  *a2 = 0;
  v5[2] = v6;
  WTF::URL::URL((v5 + 3), a2 + 1);
  v7 = a2[6];
  a2[6] = 0;
  v5[8] = v7;
  WebKit::NetworkLoadParameters::NetworkLoadParameters((v5 + 10), a2 + 4);
  *a1 = v5;
  return a1;
}

uint64_t WebKit::NetworkProcess::preconnectTo(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceRequest &&,WebCore::StoredCredentialsPolicy,std::optional<WebKit::NavigatingToAppBoundDomain>,unsigned long long)::$_0::~$_0(uint64_t a1, void *a2)
{
  if (*(a1 + 3296) == 1)
  {
    v11 = *(a1 + 3288);
    *(a1 + 3288) = 0;
    if (v11)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 3248, a2);
  if (*(a1 + 3232) == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData((a1 + 320), v3);
  }

  WebCore::ResourceRequest::~ResourceRequest((a1 + 112));
  v5 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v5, v4);
  }

  v6 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, v4);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v4);
  }

  return a1;
}

uint64_t *WebKit::NetworkProcess::setSessionIsControlledByAutomation(uint64_t *result, uint64_t a2, int a3)
{
  v3 = result;
  v21 = a2;
  if (!a3)
  {
    v18 = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(result + 29, &v21);
    return WTF::HashSet<PAL::SessionID,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(v3 + 29, v18);
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6D410);
  }

  v5 = result[29];
  if (!v5)
  {
    result = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(result + 29, 0, 0);
    v5 = v3[29];
  }

  v6 = *(v5 - 8);
  v7 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = (v5 + 8 * v10);
  v12 = *v11;
  if (*v11)
  {
    v13 = 0;
    v14 = 1;
    while (v12 != a2)
    {
      if (v12 == -1)
      {
        v13 = v11;
      }

      v10 = (v10 + v14) & v6;
      v11 = (v5 + 8 * v10);
      v12 = *v11;
      ++v14;
      if (!*v11)
      {
        if (!v13)
        {
          goto LABEL_15;
        }

        *v13 = 0;
        v5 = v3[29];
        *v13 = a2;
        v15 = vadd_s32(*(v5 - 16), 0x1FFFFFFFFLL);
        *(v5 - 16) = v15;
        v16 = v15.i32[1];
        v17 = v15.i32[0];
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_15:
    *v11 = a2;
    v17 = *(v5 - 16);
    v16 = *(v5 - 12) + 1;
    *(v5 - 12) = v16;
    v13 = v11;
LABEL_16:
    v19 = (v16 + v17);
    v20 = *(v5 - 4);
    if (v20 > 0x400)
    {
      if (v20 > 2 * v19)
      {
        return result;
      }
    }

    else
    {
      v20 *= 3;
      if (v20 > 4 * v19)
      {
        return result;
      }
    }

    return WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(v3 + 29, v13, v20);
  }

  return result;
}

WTF::RunLoop *WebKit::NetworkProcess::fetchWebsiteData(uint64_t a1, atomic_uint *a2, unsigned int a3, atomic_uint *a4, uint64_t *a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v11 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "NetworkProcess::fetchWebsiteData started to fetch data for session %llu", buf, 0xCu);
  }

  v13 = WTF::fastMalloc(v12, 0x38);
  *v13 = 1;
  v14 = *a5;
  *a5 = 0;
  *(v13 + 8) = v14;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  v95 = v13;
  *buf = a2;
  v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v17 = v15;
  if (v15)
  {
    ++*(v15 + 16);
  }

  if (a3)
  {
    *buf = a2;
    v18 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v18)
    {
      v19 = v18;
      ++*(v18 + 8);
      WebCore::NetworkStorageSession::getHostnamesWithCookies();
      v20 = *(v19 + 8);
      if (!v20)
      {
        __break(0xC471u);
        goto LABEL_227;
      }

      *(v19 + 8) = v20 - 1;
    }
  }

  if ((a3 & 0x2000) != 0)
  {
    *buf = a2;
    v85 = a1;
    if (WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf))
    {
      *buf = a2;
      v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
      WebCore::CredentialStorage::originsWithCredentials(&v93, (v21 + 112));
      v22 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v93);
      v23 = v16;
      v24 = v93;
      if (v93)
      {
        v25 = (v93 + 32 * *(v93 - 1));
      }

      else
      {
        v25 = 0;
      }

      if (v25 != v22)
      {
        v86 = v17;
        while (1)
        {
          v26 = v95;
          v27 = *(v22 + 24);
          if (*(v22 + 24))
          {
            if (v27 == 255)
            {
              v5 = 0;
              v13 &= 0xFFFFFFFFFFFFFF00;
              buf[0] = 0;
              v98 = -1;
              goto LABEL_29;
            }

            v13 = *v22;
            v17 = *(v22 + 1);
          }

          else
          {
            v13 = *v22;
            if (*v22)
            {
              atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            }

            v17 = *(v22 + 1);
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            LODWORD(a5) = *(v22 + 4);
            v27 = *(v22 + 24);
          }

          buf[0] = 0;
          v98 = -1;
          if (!v27)
          {
            if (v13)
            {
              atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            }

            *buf = v13;
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            *&buf[8] = v17;
            v97 = a5;
            goto LABEL_28;
          }

          if (v27 != 255)
          {
            *buf = v13;
            *&buf[8] = v17;
LABEL_28:
            v98 = v27;
            v5 = v27 == 0;
            goto LABEL_29;
          }

          v5 = 0;
LABEL_29:
          LODWORD(v99) = 0x2000;
          *(&v99 + 1) = 0;
          v28 = v26[7];
          if (v28 == v26[6])
          {
            WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>((v26 + 4), buf);
            goto LABEL_35;
          }

          v29 = *(v26 + 2) + 48 * v28;
          *v29 = 0;
          *(v29 + 24) = -1;
          if (v98)
          {
            if (v98 == 255)
            {
              goto LABEL_34;
            }

            *v29 = *buf;
          }

          else
          {
            v30 = *buf;
            *buf = 0;
            *v29 = v30;
            v31 = *&buf[8];
            *&buf[8] = 0;
            *(v29 + 8) = v31;
            *(v29 + 16) = v97;
          }

          *(v29 + 24) = v98;
LABEL_34:
          *(v29 + 32) = v99;
          ++v26[7];
LABEL_35:
          if (!v98)
          {
            v32 = *&buf[8];
            *&buf[8] = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v16);
            }

            v33 = *buf;
            *buf = 0;
            if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, v16);
            }
          }

          v98 = -1;
          if (!v5)
          {
            goto LABEL_50;
          }

          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v16);
            if (v13)
            {
LABEL_46:
              if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v13, v16);
              }

              v13 = 0;
            }
          }

          else if (v13)
          {
            goto LABEL_46;
          }

          v17 = 0;
          do
          {
LABEL_50:
            v22 = (v22 + 32);
          }

          while (v22 != v23 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v22));
          if (v22 == v25)
          {
            v24 = v93;
            v17 = v86;
            break;
          }
        }
      }

      if (v24)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v24, v16);
      }

      a1 = v85;
    }

    if (v17)
    {
      (*(*v17 + 120))(&v93, v17);
      v34 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v93);
      v35 = v16;
      v36 = v93;
      if (v93)
      {
        v37 = (v93 + 32 * *(v93 - 1));
      }

      else
      {
        v37 = 0;
      }

      if (v37 != v34)
      {
        v84 = a2;
        v87 = v17;
        v89 = a3;
        v91 = v37;
        while (1)
        {
          v38 = *(v34 + 24);
          if (*(v34 + 24))
          {
            if (v38 == 255)
            {
              v17 &= 0xFFFFFFFFFFFFFF00;
              v39 = v95 + 4;
              goto LABEL_134;
            }

            v17 = *v34;
            a2 = *(v34 + 1);
          }

          else
          {
            v17 = *v34;
            if (*v34)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            a2 = *(v34 + 1);
            if (a2)
            {
              atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
            }

            LODWORD(a5) = *(v34 + 4);
            v38 = *(v34 + 24);
          }

          v39 = v95 + 4;
          if (!v38)
          {
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            if (a2)
            {
              atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
            }

            buf[0] = 0;
            v98 = -1;
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            *buf = v17;
            if (a2)
            {
              atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
            }

            v38 = 0;
            *&buf[8] = a2;
            v97 = a5;
            v40 = 1;
            goto LABEL_89;
          }

          if (v38 != 255)
          {
            v40 = 0;
            *buf = v17;
            *&buf[8] = a2;
LABEL_89:
            v13 = a2;
            v5 = v17;
            goto LABEL_90;
          }

LABEL_134:
          v40 = 0;
          v5 &= 0xFFFFFFFFFFFFFF00;
          buf[0] = 0;
          v38 = 255;
LABEL_90:
          v98 = v38;
          LODWORD(v99) = 0x2000;
          *(&v99 + 1) = 0;
          v41 = v39[3];
          if (v41 == v39[2])
          {
            WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(v39, buf);
            goto LABEL_96;
          }

          v42 = *v39 + 48 * v41;
          *v42 = 0;
          *(v42 + 24) = -1;
          if (v98)
          {
            if (v98 == 255)
            {
              goto LABEL_95;
            }

            *v42 = *buf;
          }

          else
          {
            v43 = *buf;
            *buf = 0;
            *v42 = v43;
            v44 = *&buf[8];
            *&buf[8] = 0;
            *(v42 + 8) = v44;
            *(v42 + 16) = v97;
          }

          *(v42 + 24) = v98;
LABEL_95:
          *(v42 + 32) = v99;
          ++v39[3];
LABEL_96:
          if (!v98)
          {
            v45 = *&buf[8];
            *&buf[8] = 0;
            if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v45, v16);
            }

            v46 = *buf;
            *buf = 0;
            if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v46, v16);
            }
          }

          v98 = -1;
          if (!v38)
          {
            if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v16);
              if (v5)
              {
LABEL_107:
                if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v5, v16);
                }

                v5 = 0;
              }
            }

            else if (v5)
            {
              goto LABEL_107;
            }

            v13 = 0;
          }

          if (!v40)
          {
            goto LABEL_119;
          }

          if (a2 && atomic_fetch_add_explicit(a2, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(a2, v16);
            if (v17)
            {
LABEL_115:
              if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v16);
              }

              v17 = 0;
            }
          }

          else if (v17)
          {
            goto LABEL_115;
          }

          a2 = 0;
          do
          {
LABEL_119:
            v34 = (v34 + 32);
          }

          while (v34 != v35 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v34));
          if (v34 == v91)
          {
            v36 = v93;
            v17 = v87;
            a3 = v89;
            a2 = v84;
            break;
          }
        }
      }

      if (v36)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v36, v16);
      }

      a1 = v85;
    }
  }

  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::hostNamesWithHSTSCache(a1, a2, buf);
    v47 = *buf;
    *buf = 0;
    v48 = *(v95 + 5);
    *(v95 + 5) = v47;
    if (v48)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v48, v16);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v16);
      }
    }
  }

  v49 = a4;
  if ((a3 & 0x4000) != 0)
  {
    if (!v17)
    {
      goto LABEL_213;
    }

    if (*(v17 + 768) == 1)
    {
      v67 = *(v17 + 752);
      if (v67)
      {
        if (*(v67 + 4))
        {
          a4 = WebKit::NetworkSession::ensureSWServer(v17, v16);
          v13 = (a4 + 2);
          ++a4[2];
          v68 = v95;
          v69 = v95;
          atomic_fetch_add(v95, 1u);
          v93 = v69;
          v70 = WTF::fastMalloc(v68, 0x10);
          *v70 = &unk_1F1101658;
          v71 = v93;
          v93 = 0;
          v70[1] = v71;
          *buf = v70;
          WebCore::SWServer::getOriginsWithRegistrations();
          v72 = *buf;
          *buf = 0;
          if (v72)
          {
            (*(*v72 + 8))(v72);
          }

          WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v93);
          WTF::RefCounted<WebCore::SWServer>::deref(v13);
        }
      }
    }
  }

  if ((a3 & 2) != 0)
  {
    if (v17)
    {
      a4 = *(v17 + 624);
      if (a4)
      {
        v13 = (a4 + 2);
        ++a4[2];
        v50 = v95;
        v51 = v95;
        atomic_fetch_add(v95, 1u);
        v93 = v51;
        v52 = WTF::fastMalloc(v50, 0x10);
        *v52 = &unk_1F1101680;
        v53 = v93;
        v93 = 0;
        v52[1] = v53;
        *buf = v52;
        WebKit::NetworkCache::Cache::fetchData(a4, v49 & 1, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

        WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v93);
        WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(a4 + 2, v54);
      }
    }
  }

  if ((a3 & 0x40000) != 0)
  {
    if (!v17)
    {
      goto LABEL_213;
    }

    v92 = v49;
    v90 = a3;
    v88 = v17;
    (*(*v17 + 96))(&v93, v17);
    if (v94)
    {
      v56 = v93 + 24;
      v57 = 32 * v94;
      v58 = v95;
      do
      {
        v59 = *v56;
        if (*v56)
        {
          if (v59 == 255)
          {
            v60 = 0;
            v13 &= 0xFFFFFFFFFFFFFF00;
            buf[0] = 0;
            v98 = -1;
            goto LABEL_164;
          }

          v13 = *(v56 - 3);
          a4 = *(v56 - 2);
        }

        else
        {
          v13 = *(v56 - 3);
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          }

          a4 = *(v56 - 2);
          if (a4)
          {
            atomic_fetch_add_explicit(a4, 2u, memory_order_relaxed);
          }

          LODWORD(a1) = *(v56 - 2);
          v59 = *v56;
        }

        buf[0] = 0;
        v98 = -1;
        if (!v59)
        {
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          }

          *buf = v13;
          if (a4)
          {
            atomic_fetch_add_explicit(a4, 2u, memory_order_relaxed);
          }

          *&buf[8] = a4;
          v97 = a1;
          goto LABEL_163;
        }

        if (v59 != 255)
        {
          *buf = v13;
          *&buf[8] = a4;
LABEL_163:
          v98 = v59;
          v60 = v59 == 0;
          goto LABEL_164;
        }

        v60 = 0;
LABEL_164:
        LODWORD(v99) = 0x40000;
        *(&v99 + 1) = 0;
        v61 = v58[7];
        if (v61 == v58[6])
        {
          WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>((v58 + 4), buf);
          goto LABEL_170;
        }

        v62 = *(v58 + 2) + 48 * v61;
        *v62 = 0;
        *(v62 + 24) = -1;
        if (v98)
        {
          if (v98 == 255)
          {
            goto LABEL_169;
          }

          *v62 = *buf;
        }

        else
        {
          v63 = *buf;
          *buf = 0;
          *v62 = v63;
          v64 = *&buf[8];
          *&buf[8] = 0;
          *(v62 + 8) = v64;
          *(v62 + 16) = v97;
        }

        *(v62 + 24) = v98;
LABEL_169:
        *(v62 + 32) = v99;
        ++v58[7];
LABEL_170:
        if (!v98)
        {
          v65 = *&buf[8];
          *&buf[8] = 0;
          if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v65, v55);
          }

          v66 = *buf;
          *buf = 0;
          if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v66, v55);
          }
        }

        v98 = -1;
        if (!v60)
        {
          goto LABEL_185;
        }

        if (a4 && atomic_fetch_add_explicit(a4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(a4, v55);
          if (v13)
          {
LABEL_181:
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v55);
            }

            v13 = 0;
          }
        }

        else if (v13)
        {
          goto LABEL_181;
        }

        a4 = 0;
LABEL_185:
        v56 += 32;
        v57 -= 32;
      }

      while (v57);
    }

    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v93, v55);
    v17 = v88;
    a3 = v90;
    v49 = v92;
  }

  if ((a3 & 0x1000) != 0)
  {
    if (v17)
    {
      v73 = *(v17 + 72);
      if (v73)
      {
        while (1)
        {
          v74 = *v73;
          if ((*v73 & 1) == 0)
          {
            break;
          }

          v75 = *v73;
          atomic_compare_exchange_strong_explicit(v73, &v75, v74 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v75 == v74)
          {
            goto LABEL_210;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v73);
LABEL_210:
        v76 = v95;
        v77 = WTF::fastMalloc(atomic_fetch_add(v95, 1u), 0x10);
        *v77 = &unk_1F11016A8;
        v77[1] = v76;
        v93 = 0;
        *buf = v77;
        WebKit::WebResourceLoadStatisticsStore::registrableDomains(v73, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

        WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v93);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v73, v78);
      }
    }
  }

LABEL_213:
  if ((*&a3 & 0x8C0B0) != 0)
  {
    if (v17)
    {
      v79 = *(v17 + 1048);
      v80 = v95;
      v81 = WTF::fastMalloc(atomic_fetch_add(v95, 1u), 0x10);
      *v81 = &unk_1F11016D0;
      v81[1] = v80;
      v93 = 0;
      *buf = v81;
      WebKit::NetworkStorageManager::fetchData(v79, a3, v49 & 1, buf);
      if (*buf)
      {
        (*(**buf + 8))(*buf);
      }

      WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v93);
      goto LABEL_219;
    }
  }

  else if (v17)
  {
LABEL_219:
    v82 = *(v17 + 16);
    if (v82)
    {
      *(v17 + 16) = v82 - 1;
      return WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v95);
    }

    __break(0xC471u);
LABEL_227:
    JUMPOUT(0x19DC6E0B0);
  }

  return WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(&v95);
}

void WebKit::WebsiteData::Entry::~Entry(WebKit::WebsiteData::Entry *this, WTF::StringImpl *a2)
{
  if (!*(this + 24))
  {
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *this;
    *this = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 24) = -1;
}

WTF::RunLoop *WTF::Ref<WebKit::NetworkProcess::fetchWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WebKit::WebsiteData &&)> &>>::~Ref(WTF::RunLoop *this)
{
  v2 = *this;
  *this = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WTF::RunLoop::mainSingleton(this);
    v4 = *(v2 + 48);
    *(v2 + 48) = 0;
    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    v6 = *(v2 + 8);
    *(v2 + 8) = 0u;
    v17 = v6;
    v18 = *(v2 + 32);
    *(v2 + 32) = 0u;
    v8 = WTF::fastMalloc(v7, 0x38);
    *v8 = &unk_1F1101630;
    *(v8 + 1) = v17;
    v19 = 0u;
    v20 = 0;
    v8[3] = v5;
    *(v8 + 2) = v18;
    v21 = 0u;
    v22 = 0;
    v8[6] = v4;
    v23 = v8;
    WTF::RunLoop::dispatch();
    v10 = v23;
    v23 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19 + 8, v9);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v12 = *(v2 + 48);
    if (v12)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v11);
    }

    v13 = *(v2 + 40);
    if (v13)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v13, v11);
    }

    v14 = *(v2 + 32);
    if (v14)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v11);
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 16, v11);
    v16 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    WTF::fastFree(v2, v15);
  }

  return this;
}

void WebKit::NetworkProcess::performDeleteWebsiteDataTask(atomic_uint *result, uint64_t a2, int a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(result + 51);
  if (v3)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      goto LABEL_110;
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC6ED38);
    }

    v7 = *(v3 - 8);
    v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = (v3 + 48 * v11);
    v13 = *v12;
    if (*v12 != a2)
    {
      v14 = 1;
      while (v13)
      {
        v11 = (v11 + v14) & v7;
        v12 = (v3 + 48 * v11);
        v13 = *v12;
        ++v14;
        if (*v12 == a2)
        {
          goto LABEL_10;
        }
      }

      v12 = (v3 + 48 * *(v3 - 4));
    }

LABEL_10:
    v15 = *(v3 - 4);
    if ((v3 + 48 * v15) != v12)
    {
      v16 = v12[1];
      v17 = *(v12 + 16);
      v18 = *(v12 + 6);
      v19 = *(v12 + 4);
      v20 = v12[5];
      *v12 = -1;
      v12[5] = 0;
      v21 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
      *(v3 - 16) = v21;
      if (v15 >= 9 && 6 * v21.i32[1] < v15)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result + 51, v15 >> 1);
      }

      if (v17)
      {
        v22 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v24 = "timer is fired";
          if (a3)
          {
            v24 = "connections are closed";
          }

          *buf = 134218242;
          *&buf[4] = a2;
          v69 = 2082;
          v70 = v24;
          _os_log_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEFAULT, "NetworkProcess::performDeleteWebsiteDataTask started task (%llu) because %{public}s", buf, 0x16u);
        }

        v25 = WTF::fastMalloc(v23, 0x10);
        *v25 = &unk_1F1101798;
        v25[1] = v20;
        v27 = WTF::fastMalloc(v26, 0x10);
        *v27 = 1;
        v27[1] = v25;
        v28 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v19;
          v69 = 2048;
          v70 = v16;
          _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataImpl starts deleting data modified since %f for session %llu", buf, 0x16u);
        }

        *buf = v16;
        v29 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(result + 30, buf);
        v31 = v29;
        if (v29)
        {
          ++v29[4];
        }

        if ((v18 & 0x200) != 0)
        {
          WebKit::NetworkProcess::clearHSTSCache(result, v16);
        }

        if (v18)
        {
          *buf = v16;
          v29 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(result + 31, buf);
          if (v29)
          {
            v32 = v29;
            ++v29[2];
            v33 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
            *v33 = &unk_1F11017C0;
            v33[1] = v27;
            *buf = v33;
            WebCore::NetworkStorageSession::deleteAllCookiesModifiedSince();
            v29 = *buf;
            *buf = 0;
            if (v29)
            {
              v29 = (*(*v29 + 8))(v29);
            }

            v34 = v32[2];
            if (!v34)
            {
              __break(0xC471u);
              JUMPOUT(0x19DC6ED78);
            }

            v32[2] = v34 - 1;
          }
        }

        if ((v18 & 0x2000) == 0)
        {
          if ((v18 & 0xC000) == 0 || v16 < -1)
          {
            goto LABEL_50;
          }

          if (!v31)
          {
LABEL_68:
            v52 = 0;
            if ((v18 & 4) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          goto LABEL_46;
        }

        *buf = v16;
        v29 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(result + 31, buf);
        if (!v29)
        {
LABEL_43:
          if (!v31)
          {
            goto LABEL_68;
          }

          v29 = (*(*v31 + 136))(v31, v19);
          if ((v18 & 0xC000) == 0 || v16 < -1)
          {
LABEL_50:
            if ((v18 & 0x1000) != 0)
            {
              if (!v31)
              {
                goto LABEL_68;
              }

              v43 = *(v31 + 9);
              if (!v43)
              {
                goto LABEL_61;
              }

              while (1)
              {
                v44 = *v43;
                if ((*v43 & 1) == 0)
                {
                  break;
                }

                v45 = *v43;
                atomic_compare_exchange_strong_explicit(v43, &v45, v44 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v45 == v44)
                {
                  goto LABEL_55;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v43);
LABEL_55:
              {
                v46 = WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes;
              }

              else
              {
                v46 = 2672057;
                WebKit::WebResourceLoadStatisticsStore::monitoredDataTypes(void)::dataTypes = 2672057;
              }

              v47 = (v46 & ~v18) != 0;
              v48 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
              *v48 = &unk_1F1101838;
              v48[1] = v27;
              *buf = v48;
              WebKit::WebResourceLoadStatisticsStore::scheduleClearInMemoryAndPersistent(v43, v47, buf);
              if (*buf)
              {
                (*(**buf + 8))(*buf);
              }

              v29 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v43, v49);
            }

            if (!v31)
            {
              goto LABEL_68;
            }

LABEL_61:
            buf[0] = 0;
            buf[8] = 0;
            v50 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
            *v50 = &unk_1F1101860;
            v50[1] = v27;
            v67 = v50;
            (*(*v31 + 224))(v31, COERCE_DOUBLE(*&v19), 1, buf, &v67);
            v29 = v67;
            v67 = 0;
            if (v29)
            {
              v29 = (*(*v29 + 8))(v29);
            }

            if (buf[8] == 1)
            {
              v29 = *buf;
              if (*buf)
              {
                v29 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v51);
              }
            }

            v52 = 1;
            if ((v18 & 4) == 0)
            {
LABEL_70:
              if ((v18 & 2) != 0)
              {
                if (!v52)
                {
                  goto LABEL_98;
                }

                v54 = *(v31 + 78);
                if (v54)
                {
                  ++*(v54 + 8);
                  v55 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
                  *v55 = &unk_1F1101888;
                  v55[1] = v27;
                  *buf = v55;
                  WebKit::NetworkCache::Cache::clear(v54, buf, v19);
                  if (*buf)
                  {
                    (*(**buf + 8))(*buf);
                  }

                  WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v54 + 8), v56);
                }
              }

              v57 = v52 ^ 1;
              if ((v18 & 0x20000) == 0)
              {
                v57 = 1;
              }

              if (v57)
              {
                if ((v18 & 0x40000) == 0)
                {
                  goto LABEL_86;
                }

                if (!v52)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                v58 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
                *v58 = &unk_1F11018B0;
                v58[1] = v27;
                *buf = v58;
                WebKit::NetworkSession::clearPrivateClickMeasurement(v31);
                v59 = *buf;
                *buf = 0;
                if (v59)
                {
                  (*(*v59 + 8))(v59);
                }

                if ((v18 & 0x40000) == 0)
                {
LABEL_86:
                  v60 = v52 ^ 1;
                  if ((v18 & 2) == 0)
                  {
                    v60 = 1;
                  }

                  if (v60)
                  {
                    if ((v18 & 0x8C0B0) != 0)
                    {
                      v65 = v52;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    if (v65)
                    {
LABEL_92:
                      v63 = *(v31 + 131);
                      v64 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
                      *v64 = &unk_1F1101900;
                      v64[1] = v27;
                      *buf = v64;
                      WebKit::NetworkStorageManager::deleteDataModifiedSince(v63, v18, buf, v19);
                      if (*buf)
                      {
                        (*(**buf + 8))(*buf);
                      }

                      goto LABEL_99;
                    }
                  }

                  else
                  {
                    v61 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
                    *v61 = &unk_1F11018D8;
                    v61[1] = v27;
                    *buf = v61;
                    WebKit::NetworkSession::clearResourceMonitorThrottlerData(v31, buf);
                    v62 = *buf;
                    *buf = 0;
                    if (v62)
                    {
                      (*(*v62 + 8))(v62);
                    }

                    if ((v18 & 0x8C0B0) != 0)
                    {
                      goto LABEL_92;
                    }
                  }

LABEL_98:
                  if (!v31)
                  {
LABEL_101:
                    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v27);
                    return;
                  }

LABEL_99:
                  v66 = *(v31 + 4);
                  if (!v66)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19DC6ED58);
                  }

                  *(v31 + 4) = v66 - 1;
                  goto LABEL_101;
                }
              }

              (*(*v31 + 112))(v31, v19);
              goto LABEL_86;
            }

LABEL_69:
            v53 = WebCore::CrossOriginPreflightResultCache::singleton(v29);
            WebCore::CrossOriginPreflightResultCache::clear(v53);
            goto LABEL_70;
          }

LABEL_46:
          v38 = (WebKit::NetworkSession::ensureSWServer(v31, v30) + 8);
          ++*v38;
          v39 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
          *v39 = &unk_1F11017E8;
          v39[1] = v27;
          *buf = v39;
          WebCore::SWServer::clearAll();
          v40 = *buf;
          *buf = 0;
          if (v40)
          {
            (*(*v40 + 8))(v40);
          }

          WTF::RefCounted<WebCore::SWServer>::deref(v38);
          v41 = *(v31 + 135);
          v42 = WTF::fastMalloc(atomic_fetch_add(v27, 1u), 0x10);
          *v42 = &unk_1F1101810;
          v42[1] = v27;
          *buf = v42;
          WebKit::NetworkNotificationManager::removeAllPushSubscriptions(v41, buf);
          v29 = *buf;
          *buf = 0;
          if (v29)
          {
            v29 = (*(*v29 + 8))(v29);
          }

          goto LABEL_50;
        }

        v36 = v29;
        ++v29[2];
        v29 = WebCore::CredentialStorage::clearCredentials((v29 + 28));
        v37 = v36[2];
        if (v37)
        {
          v36[2] = v37 - 1;
          goto LABEL_43;
        }

        __break(0xC471u);
LABEL_110:
        JUMPOUT(0x19DC6ED18);
      }

      if (v20)
      {
        v35 = *(*v20 + 8);

        v35(v20);
      }
    }
  }
}

atomic_uint *WebKit::NetworkProcess::deleteWebsiteData(unint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v106 = *MEMORY[0x1E69E9840];
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v12 = *a5;
  *a5 = 0;
  if (IdentifierInternal == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6F6E0);
  }

  v13 = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC6F700);
  }

  v14 = *(a1 + 408);
  if (!v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 408));
    v14 = *(a1 + 408);
  }

  v15 = *(v14 - 8);
  v16 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
  v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
  v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
  v19 = v15 & ((v18 >> 31) ^ v18);
  v20 = (v14 + 48 * v19);
  v21 = *v20;
  if (*v20)
  {
    v22 = 0;
    v23 = 1;
    while (v21 != v13)
    {
      if (v21 == -1)
      {
        v22 = v20;
      }

      v19 = (v19 + v23) & v15;
      v20 = (v14 + 48 * v19);
      v21 = *v20;
      ++v23;
      if (!*v20)
      {
        if (v22)
        {
          v22[1] = 0u;
          v22[2] = 0u;
          *v22 = 0u;
          --*(*(a1 + 408) - 16);
          v20 = v22;
        }

        goto LABEL_13;
      }
    }

    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    goto LABEL_23;
  }

LABEL_13:
  *v20 = v13;
  *(v20 + 1) = a2;
  *(v20 + 16) = 1;
  *(v20 + 6) = a3;
  *(v20 + 4) = a6;
  v24 = *(v20 + 5);
  *(v20 + 5) = v12;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(a1 + 408);
  if (v25)
  {
    v26 = *(v25 - 12) + 1;
  }

  else
  {
    v26 = 1;
  }

  *(v25 - 12) = v26;
  v27 = (*(v25 - 16) + v26);
  v28 = *(v25 - 4);
  if (v28 > 0x400)
  {
    if (v28 > 2 * v27)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (3 * v28 <= 4 * v27)
  {
LABEL_22:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkProcess::DeleteWebsiteDataTask,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::NetworkProcess::DeleteWebsiteDataTask>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkProcess::TaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 408));
  }

LABEL_23:
  v29 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = a6;
    v104 = 2048;
    v105 = a2;
    _os_log_impl(&dword_19D52D000, v29, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteData scheduled task (%llu) to delete data modified since %f for session %llu", buf, 0x20u);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v101 = a1;
  v30 = *(a1 + 8);
  v31 = WTF::fastMalloc(atomic_fetch_add(v30, 1u), 0x18);
  *v31 = &unk_1F11016F8;
  v31[1] = v30;
  v32 = v101;
  v31[2] = v13;
  v34 = WTF::fastMalloc(v33, 0x10);
  *v34 = 1;
  v100 = v34;
  v34[1] = v31;
  v35 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v101 + 152));
  v37 = v35;
  v38 = v36;
  v39 = *(v101 + 152);
  if (v39)
  {
    v40 = (v39 + 16 * *(v39 - 4));
  }

  else
  {
    v40 = 0;
  }

  v41 = a4;
  if (v40 == v35)
  {
    if ((a3 & 0x4000) == 0)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v100);
    }

    *buf = a2;
    v35 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v101 + 240), buf);
    if (!v35)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v100);
    }

    v87 = v35;
    v88 = 0;
    goto LABEL_98;
  }

  v98 = 0;
  do
  {
    v42 = *(v37 + 1);
    if (*(v42 + 96) == a2)
    {
      v43 = *v41;
      if (!*v41)
      {
        goto LABEL_38;
      }

      v44 = *v37;
      if (*v37 == -1)
      {
        goto LABEL_119;
      }

      if (!v44)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC6F680);
      }

      v45 = *(v43 - 8);
      v46 = (v44 + ~(v44 << 32)) ^ ((v44 + ~(v44 << 32)) >> 22);
      v47 = 9 * ((v46 + ~(v46 << 13)) ^ ((v46 + ~(v46 << 13)) >> 8));
      v48 = (v47 ^ (v47 >> 15)) + ~((v47 ^ (v47 >> 15)) << 27);
      v49 = v45 & ((v48 >> 31) ^ v48);
      v50 = *(v43 + 8 * v49);
      if (v50 != v44)
      {
        v51 = 1;
        while (v50)
        {
          v49 = (v49 + v51) & v45;
          v50 = *(v43 + 8 * v49);
          ++v51;
          if (v50 == v44)
          {
            goto LABEL_45;
          }
        }

LABEL_38:
        v52 = *(v42 + 80);
        while (1)
        {
          v53 = *v52;
          if ((*v52 & 1) == 0)
          {
            break;
          }

          v54 = *v52;
          atomic_compare_exchange_strong_explicit(v52, &v54, v53 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v54 == v53)
          {
            goto LABEL_43;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v52);
LABEL_43:
        v55 = v52[43];
        if (!v55 || (pid = xpc_connection_get_pid(v55)) == 0)
        {
LABEL_44:
          v35 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v52, v36);
          goto LABEL_45;
        }

        v57 = pid;
        v58 = qword_1ED641350;
        if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
        {
          v61 = *v37;
          *buf = 134218496;
          *&buf[4] = v13;
          *&buf[12] = 2048;
          *&buf[14] = v61;
          v104 = 1024;
          LODWORD(v105) = v57;
          _os_log_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteData task (%llu) will start after process %llu (pid=%d) exits", buf, 0x1Cu);
        }

        v62 = *v37;
        if (*v37 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC6F6A0);
        }

        if (!v62)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC6F6C0);
        }

        v63 = *(v32 + 160);
        if (!v63)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v32 + 160), 0);
          v63 = *(v32 + 160);
          v62 = *v37;
        }

        v64 = *(v63 - 8);
        v65 = (v62 + ~(v62 << 32)) ^ ((v62 + ~(v62 << 32)) >> 22);
        v66 = 9 * ((v65 + ~(v65 << 13)) ^ ((v65 + ~(v65 << 13)) >> 8));
        v67 = (v66 ^ (v66 >> 15)) + ~((v66 ^ (v66 >> 15)) << 27);
        v68 = v64 & ((v67 >> 31) ^ v67);
        v69 = (v63 + 24 * v68);
        v70 = *v69;
        if (*v69)
        {
          v71 = 0;
          v72 = 1;
          while (v70 != v62)
          {
            if (v70 == -1)
            {
              v71 = v69;
            }

            v68 = (v68 + v72) & v64;
            v69 = (v63 + 24 * v68);
            v70 = *v69;
            ++v72;
            if (!*v69)
            {
              if (v71)
              {
                *v71 = 0;
                v71[1] = 0;
                v71[2] = 0;
                --*(*(v32 + 160) - 16);
                v62 = *v37;
                v69 = v71;
              }

              goto LABEL_64;
            }
          }

          goto LABEL_78;
        }

LABEL_64:
        *v69 = v62;
        v73 = *(v69 + 5);
        v74 = v69[1];
        if (v73)
        {
          v75 = 8 * v73;
          do
          {
            v76 = *v74;
            *v74 = 0;
            if (v76)
            {
              (*(*v76 + 8))(v76);
            }

            v74 = (v74 + 8);
            v75 -= 8;
          }

          while (v75);
          v74 = v69[1];
          v32 = v101;
        }

        if (v74)
        {
          v69[1] = 0;
          *(v69 + 4) = 0;
          WTF::fastFree(v74, v59);
        }

        *&v60 = 0;
        *buf = v60;
        v69[1] = 0;
        v69[2] = 0;
        WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v59);
        v77 = *(v32 + 160);
        if (v77)
        {
          v78 = *(v77 - 12) + 1;
        }

        else
        {
          v78 = 1;
        }

        *(v77 - 12) = v78;
        v79 = (*(v77 - 16) + v78);
        v80 = *(v77 - 4);
        if (v80 > 0x400)
        {
          if (v80 > 2 * v79)
          {
            goto LABEL_78;
          }
        }

        else if (3 * v80 > 4 * v79)
        {
LABEL_78:
          atomic_fetch_add(v100, 1u);
          v81 = *(v69 + 5);
          if (v81 == *(v69 + 4))
          {
            if (v81 + (v81 >> 1) <= v81 + 1)
            {
              v82 = v81 + 1;
            }

            else
            {
              v82 = v81 + (v81 >> 1);
            }

            if (v82 <= 0x10)
            {
              v83 = 16;
            }

            else
            {
              v83 = v82;
            }

            WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>((v69 + 1), v83);
            v81 = *(v69 + 5);
            v84 = v69[1];
          }

          else
          {
            v84 = v69[1];
          }

          v85 = (v84 + 8 * v81);
          v86 = WTF::fastMalloc(v81, 0x10);
          *v86 = &unk_1F1101720;
          v86[1] = v100;
          *v85 = v86;
          ++*(v69 + 5);
          v98 = 1;
          v41 = a4;
          goto LABEL_44;
        }

        v69 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v32 + 160), v69);
        goto LABEL_78;
      }
    }

    do
    {
LABEL_45:
      v37 = (v37 + 16);
    }

    while (v37 != v38 && (*v37 + 1) <= 1);
  }

  while (v37 != v40);
  if ((a3 & 0x4000) != 0)
  {
    *buf = a2;
    v35 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v32 + 240), buf);
    v88 = v98;
    if (!v35)
    {
      goto LABEL_104;
    }

    v87 = v35;
LABEL_98:
    v89 = *(v87 + 4) + 1;
    *(v87 + 4) = v89;
    v90 = *(v87 + 97);
    if (v90)
    {
      v91 = (v90 + 8);
      ++*(v90 + 8);
      v92 = WTF::fastMalloc(atomic_fetch_add(v100, 1u), 0x10);
      *v92 = &unk_1F1101748;
      v92[1] = v100;
      *buf = v92;
      HasControlledClients = WebCore::SWServer::addHandlerIfHasControlledClients();
      v94 = *buf;
      *buf = 0;
      if (v94)
      {
        (*(*v94 + 8))(v94);
      }

      v88 |= HasControlledClients;
      v35 = WTF::RefCounted<WebCore::SWServer>::deref(v91);
      v89 = *(v87 + 4);
    }

    v32 = v101;
    if (!v89)
    {
LABEL_119:
      __break(0xC471u);
      JUMPOUT(0x19DC6F660);
    }

    *(v87 + 4) = v89 - 1;
LABEL_104:
    if (v88)
    {
      goto LABEL_105;
    }

    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v100);
  }

  if ((v98 & 1) == 0)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v100);
  }

LABEL_105:
  WTF::RunLoop::currentSingleton(v35);
  v95 = WTF::fastMalloc(atomic_fetch_add((v32 + 144), 1u), 0x18);
  *v95 = &unk_1F1101770;
  v95[1] = v32;
  v95[2] = v13;
  *buf = v95;
  WTF::RunLoop::dispatchAfter();
  if (v102)
  {
    WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v102 + 40));
  }

  v96 = *buf;
  *buf = 0;
  if (v96)
  {
    (*(*v96 + 8))(v96);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v100);
}

atomic_uint *WebKit::NetworkProcess::deleteWebsiteDataForOrigin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = v62;
  v10 = *a5;
  *a5 = 0;
  v11 = WTF::fastMalloc(v9, 0x10);
  *v11 = &unk_1F1101928;
  v11[1] = v10;
  v13 = WTF::fastMalloc(v12, 0x10);
  *v13 = 1;
  v13[1] = v11;
  v14 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataForOrigin started to delete data for session %llu", buf, 0xCu);
  }

  *buf = a2;
  v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v17 = v15;
  if (v15)
  {
    ++*(v15 + 16);
  }

  if (a3)
  {
    *buf = a2;
    v18 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v18)
    {
      v19 = v18;
      ++*(v18 + 8);
      v20 = WTF::fastMalloc(atomic_fetch_add(v13, 1u), 0x10);
      *v20 = &unk_1F1101950;
      v20[1] = v13;
      *buf = v20;
      WebCore::NetworkStorageSession::deleteCookies();
      v21 = *buf;
      *buf = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      v22 = *(v19 + 8);
      if (!v22)
      {
        __break(0xC471u);
        goto LABEL_64;
      }

      *(v19 + 8) = v22 - 1;
    }
  }

  if ((a3 & 2) != 0 && a2 >= -1)
  {
    if (!v17)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC6FCF4);
    }

    v23 = *(v17 + 624);
    if (v23)
    {
      ++*(v23 + 8);
      v53 = 0;
      v54 = 0;
      v24 = WebCore::operator==();
      v50 = a2;
      if (v24)
      {
        v26 = *MEMORY[0x1E696EBA8];
        if (*MEMORY[0x1E696EBA8])
        {
          atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
        }

        v52 = v26;
      }

      else
      {
        if (*(a4 + 24))
        {
          if (*(a4 + 24) != 1)
          {
            mpark::throw_bad_variant_access(v24);
          }

          v27 = MEMORY[0x1E696EBA8];
        }

        else
        {
          v27 = (a4 + 8);
        }

        WebCore::ResourceRequestBase::partitionName(&v52, v27, v25);
      }

      v28 = WebCore::operator==();
      ++*(v23 + 8);
      *buf = v23;
      atomic_fetch_add(v13, 1u);
      buf[16] = v28;
      LOBYTE(v56) = 0;
      add_explicit = 255;
      v58 = -1;
      v30 = *(a4 + 56);
      if (*(a4 + 56))
      {
        if (v30 == 255)
        {
LABEL_29:
          v33 = v52;
          if (v52)
          {
            add_explicit = atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
          }

          v34 = v53;
          v35 = v54;
          v53 = 0;
          v54 = 0;
          v36 = WTF::fastMalloc(add_explicit, 0x58);
          *v36 = &unk_1F1101978;
          v36[1] = *buf;
          v36[2] = v13;
          *buf = 0uLL;
          *(v36 + 24) = v28;
          *(v36 + 32) = 0;
          *(v36 + 56) = -1;
          if (v30)
          {
            a2 = v50;
            if (v30 == 255)
            {
              goto LABEL_34;
            }

            *(v36 + 2) = v56;
          }

          else
          {
            v36[4] = v56;
            v37 = *(&v56 + 1);
            v56 = 0uLL;
            v36[5] = v37;
            *(v36 + 12) = v57;
            a2 = v50;
          }

          *(v36 + 56) = v30;
LABEL_34:
          v36[8] = v33;
          v36[9] = v34;
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v36[10] = v35;
          v51 = v36;
          WebKit::NetworkCache::Cache::traverse(v23, &v52, &v51);
          if (v51)
          {
            (*(*v51 + 8))(v51);
          }

          WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2::~$_2(buf, v38);
          v40 = v52;
          v52 = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v39);
          }

          WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v39);
          WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v23 + 8), v41);
          goto LABEL_40;
        }

        v56 = *(a4 + 32);
      }

      else
      {
        v31 = *(a4 + 32);
        if (v31)
        {
          atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
        }

        *&v56 = v31;
        v32 = *(a4 + 40);
        if (v32)
        {
          atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
        }

        *(&v56 + 1) = v32;
        add_explicit = *(a4 + 48);
        v57 = *(a4 + 48);
        v30 = *(a4 + 56);
      }

      v58 = v30;
      goto LABEL_29;
    }
  }

LABEL_40:
  if ((*&a3 & 0x8C0B0) != 0)
  {
    if (v17)
    {
      v42 = *(v17 + 1048);
      v43 = WTF::fastMalloc(atomic_fetch_add(v13, 1u), 0x10);
      *v43 = &unk_1F11019C8;
      v43[1] = v13;
      *buf = v43;
      WebKit::NetworkStorageManager::deleteData(v42, a3, a4, buf);
      v44 = *buf;
      *buf = 0;
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }
    }
  }

  if ((a3 & 0xC000) != 0 && a2 >= -1)
  {
    if (v17)
    {
      v45 = (WebKit::NetworkSession::ensureSWServer(v17, v16) + 8);
      ++*v45;
      v46 = WTF::fastMalloc(atomic_fetch_add(v13, 1u), 0x10);
      *v46 = &unk_1F11019F0;
      v46[1] = v13;
      *buf = v46;
      WebCore::SWServer::clear();
      v47 = *buf;
      *buf = 0;
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }

      WTF::RefCounted<WebCore::SWServer>::deref(v45);
      goto LABEL_51;
    }
  }

  else if (v17)
  {
LABEL_51:
    v48 = *(v17 + 16);
    if (v48)
    {
      *(v17 + 16) = v48 - 1;
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v13);
    }

    __break(0xC471u);
LABEL_64:
    JUMPOUT(0x19DC6FCD4);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v13);
}

uint64_t *WebKit::NetworkProcess::deleteWebsiteDataForOrigin(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_2::~$_2(uint64_t *a1, WTF::StringImpl *a2)
{
  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 8), a2);
  v4 = a1[7];
  a1[7] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  if (!*(a1 + 48))
  {
    v5 = a1[4];
    a1[4] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = a1[3];
    a1[3] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }
  }

  *(a1 + 48) = -1;
  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v7);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v8 + 8), v3);
  }

  return a1;
}

atomic_uint *WebKit::NetworkProcess::deleteWebsiteDataForOrigins(uint64_t a1, __CFString *a2, unsigned int a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v125 = *MEMORY[0x1E69E9840];
  v15 = v125;
  v16 = *a8;
  *a8 = 0;
  v17 = WTF::fastMalloc(v15, 0x10);
  *v17 = &unk_1F1101A18;
  v17[1] = v16;
  v19 = WTF::fastMalloc(v18, 0x10);
  *v19 = 1;
  v19[1] = v17;
  v20 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteWebsiteDataForOrigins started to delete data for session %llu", buf, 0xCu);
  }

  *buf = a2;
  v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), buf);
  v24 = v21;
  if (v21)
  {
    ++*(v21 + 4);
  }

  if (a3)
  {
    *buf = a2;
    v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v21)
    {
      v25 = v21;
      ++*(v21 + 2);
      v26 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
      *v26 = &unk_1F1101A40;
      v26[1] = v19;
      *buf = v26;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v21 = *buf;
      *buf = 0;
      if (v21)
      {
        v21 = (*(*v21 + 8))(v21);
      }

      v27 = *(v25 + 2);
      if (!v27)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC70960);
      }

      *(v25 + 2) = v27 - 1;
    }
  }

  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::deleteHSTSCacheForHostNames(a1, a2, a6);
  }

  v118 = a3;
  v115 = a5;
  v116 = a6;
  if ((a3 & 0x40000) != 0)
  {
    if (!v24)
    {
      v39 = 0;
      goto LABEL_74;
    }

    memset(buf, 0, sizeof(buf));
    v28 = a4[3];
    if (v28)
    {
      v29 = (v28 >> 29);
      if (v29)
      {
        __break(0xC471u);
        goto LABEL_159;
      }

      v30 = WTF::fastMalloc(v29, (8 * v28));
      *&buf[8] = v28;
      *buf = v30;
      v31 = a4[3];
      if (v31)
      {
        v32 = 0;
        v33 = 24;
        v34 = MEMORY[0x1E696EBA8];
        do
        {
          if (*(*a4 + v33))
          {
            v35 = v34;
            if (*(*a4 + v33) != 1)
            {
LABEL_127:
              mpark::throw_bad_variant_access(v30);
            }
          }

          else
          {
            v35 = (*a4 + v33 - 16);
          }

          v36 = *v35;
          if (v36)
          {
            atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
            v31 = a4[3];
          }

          v37 = v32 + 1;
          v30[v32] = v36;
          v33 += 32;
          v32 = v37;
        }

        while (v37 < v31);
        *&buf[12] = v37;
      }
    }

    (*(*v24 + 104))(v24, buf);
    v21 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v38);
  }

  v117 = a1;
  v39 = v24 != 0;
  if ((a3 & 0x20000) != 0)
  {
    if (v24)
    {
      v40 = a4[3];
      if (v40)
      {
        v41 = 32 * v40;
        v42 = (*a4 + 24);
        v43 = MEMORY[0x1E696EBA8];
        do
        {
          if (*v42)
          {
            v30 = v43;
            if (*v42 != 1)
            {
              goto LABEL_127;
            }
          }

          else
          {
            v30 = (v42 - 16);
          }

          WebCore::RegistrableDomain::uncheckedCreateFromHost(v30, buf);
          v44 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
          *v44 = &unk_1F1101A68;
          v44[1] = v19;
          v121 = v44;
          (*(**(v24 + 20) + 40))(*(v24 + 20), buf, &v121);
          v45 = v121;
          v121 = 0;
          if (v45)
          {
            (*(*v45 + 1))(v45);
          }

          v21 = *buf;
          *buf = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v21 = WTF::StringImpl::destroy(v21, v22);
          }

          v42 += 32;
          v41 -= 32;
        }

        while (v41);
      }
    }
  }

  if ((a3 & 0xC000) == 0)
  {
    goto LABEL_71;
  }

  if (a2 >= -1)
  {
    a1 = v117;
    if (v24)
    {
      v114 = (WebKit::NetworkSession::ensureSWServer(v24, v22) + 8);
      ++*v114;
      v46 = a4[3];
      if (v46)
      {
        v47 = 32 * v46;
        v48 = *a4;
        do
        {
          v49 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
          *v49 = &unk_1F1101A90;
          v49[1] = v19;
          *buf = v49;
          WebCore::SWServer::clear();
          v50 = *buf;
          *buf = 0;
          if (v50)
          {
            (*(*v50 + 8))(v50);
          }

          v51 = *(v24 + 135);
          buf[0] = 0;
          v124 = -1;
          LODWORD(v52) = *(v48 + 24);
          if (*(v48 + 24))
          {
            if (v52 == 255)
            {
              goto LABEL_57;
            }

            *buf = *v48;
          }

          else
          {
            v53 = *v48;
            if (*v48)
            {
              atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
            }

            *buf = v53;
            v52 = *(v48 + 8);
            if (v52)
            {
              atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
            }

            *&buf[8] = v52;
            v123 = *(v48 + 16);
            LOBYTE(v52) = *(v48 + 24);
          }

          v124 = v52;
LABEL_57:
          v54 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
          *v54 = &unk_1F1101AB8;
          v54[1] = v19;
          v121 = v54;
          WebKit::NetworkNotificationManager::removePushSubscriptionsForOrigin(v51, buf, &v121);
          v56 = v121;
          v121 = 0;
          if (v56)
          {
            (*(*v56 + 1))(v56);
          }

          if (!v124)
          {
            v57 = *&buf[8];
            *&buf[8] = 0;
            if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v57, v55);
            }

            v58 = *buf;
            *buf = 0;
            if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v58, v55);
            }
          }

          v48 += 32;
          v47 -= 32;
        }

        while (v47);
      }

      v21 = WTF::RefCounted<WebCore::SWServer>::deref(v114);
      v39 = 1;
      LOWORD(a3) = v118;
LABEL_71:
      a1 = v117;
      if ((a3 & 4) == 0)
      {
        goto LABEL_76;
      }

LABEL_75:
      v59 = WebCore::CrossOriginPreflightResultCache::singleton(v21);
      WebCore::CrossOriginPreflightResultCache::clear(v59);
      goto LABEL_76;
    }

LABEL_74:
    if ((a3 & 4) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  a1 = v117;
  if ((a3 & 4) != 0)
  {
    goto LABEL_75;
  }

LABEL_76:
  v60 = !v39;
  if ((a3 & 2) == 0)
  {
    v60 = 1;
  }

  if ((v60 & 1) == 0)
  {
    v61 = *(v24 + 78);
    if (v61)
    {
      ++*(v61 + 8);
      v62 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
      *v62 = &unk_1F1101AE0;
      v62[1] = v19;
      *buf = v62;
      WebKit::NetworkCache::Cache::deleteData(v61, a4, buf);
      v64 = *buf;
      *buf = 0;
      if (v64)
      {
        (*(*v64 + 8))(v64);
      }

      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v61 + 8), v63);
    }
  }

  if ((a3 & 0x2000) != 0)
  {
    *buf = a2;
    v65 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), buf);
    if (v65)
    {
      v66 = v65;
      v67 = *(v65 + 8) + 1;
      *(v65 + 8) = v67;
      v68 = a4[3];
      if (v68)
      {
        v69 = *a4;
        v70 = 32 * v68;
        do
        {
          WebCore::CredentialStorage::removeCredentialsWithOrigin((v66 + 112), v69);
          v69 = (v69 + 32);
          v70 -= 32;
        }

        while (v70);
        v67 = *(v66 + 8);
      }

      if (!v67)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC70980);
      }

      *(v66 + 8) = v67 - 1;
    }

    if (!v24)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v19);
    }

    (*(*v24 + 128))(v24, a4);
  }

  v71 = !v39;
  if ((a3 & 0x1000) == 0)
  {
    v71 = 1;
  }

  if ((v71 & 1) == 0)
  {
    v72 = *(a7 + 12);
    if (v72)
    {
      v73 = *a7;
      v74 = *a7 + 8 * v72;
      do
      {
        v75 = *(v24 + 9);
        if (v75)
        {
          while (1)
          {
            v76 = *v75;
            if ((*v75 & 1) == 0)
            {
              break;
            }

            v77 = *v75;
            atomic_compare_exchange_strong_explicit(v75, &v77, v76 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v77 == v76)
            {
              goto LABEL_101;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v75);
LABEL_101:
          v78 = *v73;
          if (*v73)
          {
            atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
          }

          v120 = v78;
          v79 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
          *v79 = &unk_1F1101B08;
          v79[1] = v19;
          *buf = v79;
          WebKit::WebResourceLoadStatisticsStore::removeDataForDomain(v75, &v120, buf, v80);
          if (*buf)
          {
            (*(**buf + 8))(*buf);
          }

          v82 = v120;
          v120 = 0;
          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v82, v81);
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v75, v81);
        }

        ++v73;
      }

      while (v73 != v74);
    }
  }

  if ((*&v118 & 0x8C0B0) != 0)
  {
    if (v24)
    {
      v83 = *(v24 + 131);
      v84 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
      *v84 = &unk_1F1101B30;
      v84[1] = v19;
      *buf = v84;
      WebKit::NetworkStorageManager::deleteData(v83, v118, a4, buf);
      v85 = *buf;
      *buf = 0;
      if (v85)
      {
        (*(*v85 + 8))(v85);
      }

      goto LABEL_117;
    }
  }

  else if (v24)
  {
LABEL_117:
    v121 = 0;
    v86 = a4[3];
    if (v86)
    {
      v87 = 32 * v86;
      v88 = (*a4 + 24);
      v89 = MEMORY[0x1E696EBA8];
      do
      {
        if (*v88)
        {
          v30 = v89;
          if (*v88 != 1)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v30 = (v88 - 16);
        }

        WebCore::RegistrableDomain::uncheckedCreateFromHost(v30, &v119);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v121, &v119, v90, buf);
        v92 = v119;
        v119 = 0;
        if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v92, v91);
        }

        v88 += 32;
        v87 -= 32;
      }

      while (v87);
    }

    v93 = *(v115 + 12);
    if (v93)
    {
      v94 = *v115;
      v95 = 8 * v93;
      do
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost(v94, &v119);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v121, &v119, v96, buf);
        v98 = v119;
        v119 = 0;
        if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v98, v97);
        }

        v94 = (v94 + 8);
        v95 -= 8;
      }

      while (v95);
    }

    v99 = *(v116 + 12);
    if (v99)
    {
      v100 = *v116;
      v101 = 8 * v99;
      do
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost(v100, &v119);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v121, &v119, v102, buf);
        v104 = v119;
        v119 = 0;
        if (v104 && atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v104, v103);
        }

        v100 = (v100 + 8);
        v101 -= 8;
      }

      while (v101);
    }

    v105 = *(a7 + 12);
    if (v105)
    {
      v106 = *a7;
      v107 = 8 * v105;
      do
      {
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v121, v106++, v23, buf);
        v107 -= 8;
      }

      while (v107);
    }

    v108 = v121;
    v121 = 0;
    *buf = v108;
    buf[8] = 1;
    v109 = WTF::fastMalloc(atomic_fetch_add(v19, 1u), 0x10);
    *v109 = &unk_1F1101B58;
    v109[1] = v19;
    v119 = v109;
    (*(*v24 + 224))(v24, 0, 0, buf, &v119);
    v111 = v119;
    v119 = 0;
    if (v111)
    {
      (*(*v111 + 8))(v111);
    }

    if (buf[8] == 1 && *buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v110);
    }

    if (v121)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v121, v110);
    }

    v112 = *(v24 + 4);
    if (v112)
    {
      *(v24 + 4) = v112 - 1;
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v19);
    }

    __break(0xC471u);
LABEL_159:
    JUMPOUT(0x19DC70940);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v19);
}

WTF::RunLoop *WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(uint64_t *a1, __CFString *a2, int a3, unsigned int *a4, uint64_t *a5)
{
  v149 = *MEMORY[0x1E69E9840];
  v10 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a4[3];
    v12 = a4[7];
    v13 = a4[11];
    *buf = 134218752;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    v146 = v12;
    v147 = 2048;
    v148 = v13;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains started to delete and restrict data for session %llu with candidate domains - %zu domainsToDeleteAllCookiesFor, %zu domainsToDeleteAllButHttpOnlyCookiesFor, %zu domainsToDeleteAllScriptWrittenStorageFor", buf, 0x2Au);
  }

  *buf = a2;
  v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 30, buf);
  v16 = v14;
  if (v14)
  {
    v15 = (*(v14 + 16) + 1);
    *(v14 + 16) = v15;
  }

  v17 = WTF::fastMalloc(v15, 0x18);
  v18 = *a5;
  *a5 = 0;
  v20 = WTF::fastMalloc(v19, 0x10);
  *v20 = &unk_1F1101B80;
  v20[1] = v18;
  *v17 = 1;
  v17[1] = v20;
  v17[2] = 0;
  v143 = 0;
  v144 = v17;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v141, (a4 + 8));
  if (a3)
  {
    *buf = a2;
    v22 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 31, buf);
    if (v22)
    {
      v23 = v22;
      ++*(v22 + 8);
      v140 = 0;
      v137 = 0;
      v135 = 0;
      v136 = 0;
      v134 = 0;
      WebCore::NetworkStorageSession::getHostnamesWithCookies();
      WebKit::filterForRegistrableDomains(buf, a4, &v140);
      v138 = *buf;
      v24 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v139 = v24;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v25);
      v133 = v17;
      v26 = WTF::fastMalloc(atomic_fetch_add(v17, 1u), 0x10);
      *v26 = &unk_1F1101BF8;
      v27 = v133;
      v133 = 0;
      v26[1] = v27;
      *buf = v26;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v28 = *buf;
      *buf = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v133);
      WebKit::filterForRegistrableDomains(buf, (a4 + 8), &v140);
      if (HIDWORD(v135))
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(v134, (v134 + 8 * HIDWORD(v135)));
      }

      v30 = v134;
      if (v134)
      {
        v134 = 0;
        LODWORD(v135) = 0;
        WTF::fastFree(v30, v29);
      }

      v134 = *buf;
      v31 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v135 = v31;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v29);
      v32 = v144;
      v33 = v144;
      atomic_fetch_add(v144, 1u);
      v133 = v33;
      v34 = WTF::fastMalloc(v32, 0x10);
      *v34 = &unk_1F1101C20;
      v35 = v133;
      v133 = 0;
      v34[1] = v35;
      *buf = v34;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v36 = *buf;
      *buf = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }

      WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v133);
      if (HIDWORD(v139))
      {
        v37 = v138;
        v38 = v144;
        v39 = 8 * HIDWORD(v139);
        do
        {
          WebCore::RegistrableDomain::uncheckedCreateFromHost(v37, &v133);
          WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v38 + 2, &v133, v40, buf);
          v42 = v133;
          v133 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v41);
          }

          v37 = (v37 + 8);
          v39 -= 8;
        }

        while (v39);
      }

      WebKit::filterForRegistrableDomains(buf, (a4 + 4), &v140);
      if (HIDWORD(v137))
      {
        WTF::VectorDestructor<true,WTF::String>::destruct(v136, (v136 + 8 * HIDWORD(v137)));
      }

      v44 = v136;
      if (v136)
      {
        v136 = 0;
        LODWORD(v137) = 0;
        WTF::fastFree(v44, v43);
      }

      v136 = *buf;
      v45 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v137 = v45;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v43);
      v46 = v144;
      v47 = v144;
      atomic_fetch_add(v144, 1u);
      v133 = v47;
      v48 = WTF::fastMalloc(v46, 0x10);
      *v48 = &unk_1F1101C48;
      v49 = v133;
      v133 = 0;
      v48[1] = v49;
      *buf = v48;
      WebCore::NetworkStorageSession::deleteCookiesForHostnames();
      v50 = *buf;
      *buf = 0;
      if (v50)
      {
        (*(*v50 + 8))(v50);
      }

      WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v133);
      if (HIDWORD(v137))
      {
        v51 = v136;
        v52 = v144;
        v53 = 8 * HIDWORD(v137);
        do
        {
          WebCore::RegistrableDomain::uncheckedCreateFromHost(v51, &v133);
          WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v52 + 2, &v133, v54, buf);
          v56 = v133;
          v133 = 0;
          if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v56, v55);
          }

          v51 = (v51 + 8);
          v53 -= 8;
        }

        while (v53);
      }

      v57 = qword_1ED641350;
      if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = HIDWORD(v139);
        *&buf[22] = 2048;
        v146 = HIDWORD(v135);
        v147 = 2048;
        v148 = HIDWORD(v137);
        _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_DEFAULT, "NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains deleted cookies for session %llu - %zu domainsToDeleteAllCookiesFor, %zu domainsToDeleteAllButHttpOnlyCookiesFor, %zu domainsToDeleteAllScriptWrittenStorageFor", buf, 0x2Au);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v134, v58);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v136, v59);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v138, v60);
      if (v140)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v140, v21);
      }

      v61 = *(v23 + 8);
      if (!v61)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC716F8);
      }

      *(v23 + 8) = v61 - 1;
    }
  }

  v138 = 0;
  v139 = 0;
  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::hostNamesWithHSTSCache(a1, a2, buf);
    v63 = *buf;
    *buf = 0;
    v64 = v143;
    v143 = v63;
    if (v64)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v64, v62);
      if (*buf)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v132);
      }
    }

    WebKit::filterForRegistrableDomains(buf, &v141, &v143);
    if (HIDWORD(v139))
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(v138, (v138 + 8 * HIDWORD(v139)));
    }

    v66 = v138;
    if (v138)
    {
      v138 = 0;
      LODWORD(v139) = 0;
      WTF::fastFree(v66, v65);
    }

    v138 = *buf;
    v67 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v139 = v67;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v65);
    if (HIDWORD(v139))
    {
      v68 = v138;
      v69 = v144;
      v70 = 8 * HIDWORD(v139);
      do
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost(v68, &v136);
        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v69 + 2, &v136, v71, buf);
        v73 = v136;
        v136 = 0;
        if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v73, v72);
        }

        v68 = (v68 + 8);
        v70 -= 8;
      }

      while (v70);
    }

    WebKit::NetworkProcess::deleteHSTSCacheForHostNames(a1, a2, &v138);
  }

  if ((a3 & 0x40000) != 0 && v16)
  {
    *buf = 0;
    *&buf[8] = 0;
    v74 = v142;
    if (v142)
    {
      v75 = (v142 >> 29);
      if (v75)
      {
        goto LABEL_121;
      }

      v76 = WTF::fastMalloc(v75, (8 * v142));
      *&buf[8] = v74;
      *buf = v76;
      v77 = v142;
      if (v142)
      {
        v78 = 0;
        do
        {
          v79 = *(v141 + 8 * v78);
          if (v79)
          {
            atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
            v77 = v142;
          }

          v80 = v78 + 1;
          v76[v78] = v79;
          v78 = v80;
        }

        while (v80 < v77);
        *&buf[12] = v80;
      }
    }

    (*(*v16 + 104))(v16, buf);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v81);
  }

  if ((a3 & 0x2000) != 0)
  {
    *buf = a2;
    v82 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(a1 + 31, buf);
    if (v82)
    {
      v83 = v82;
      ++*(v82 + 8);
      WebCore::CredentialStorage::originsWithCredentials(&v136, (v82 + 112));
      WebKit::filterForRegistrableDomains(buf, &v136, &v141, v144 + 2);
      if (*&buf[12])
      {
        v85 = *buf;
        v86 = 32 * *&buf[12];
        do
        {
          WebCore::CredentialStorage::removeCredentialsWithOrigin((v83 + 112), v85);
          v85 = (v85 + 32);
          v86 -= 32;
        }

        while (v86);
      }

      WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v84);
      if (v136)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v136, v87);
      }

      v88 = *(v83 + 8);
      if (!v88)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC71718);
      }

      *(v83 + 8) = v88 - 1;
    }

    if (!v16)
    {
      goto LABEL_99;
    }

    (*(*v16 + 120))(&v136, v16);
    WebKit::filterForRegistrableDomains(buf, &v136, &v141, v144 + 2);
    (*(*v16 + 128))(v16, buf);
    WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v89);
    if (v136)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v136, v21);
    }

    if ((a3 & 0xC000) != 0)
    {
      goto LABEL_79;
    }
  }

  else if ((a3 & 0xC000) != 0)
  {
    if (!v16)
    {
LABEL_99:
      v106 = a3;
      goto LABEL_100;
    }

LABEL_79:
    if (*(v16 + 768) == 1)
    {
      v90 = *(v16 + 94);
      if (v90)
      {
        if (*(v90 + 4))
        {
          v91 = (WebKit::NetworkSession::ensureSWServer(v16, v21) + 8);
          ++*v91;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(buf, &v141);
          v92 = v144;
          atomic_fetch_add(v144, 1u);
          *&buf[16] = v92;
          WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v16 + 2, v16);
          v93 = *(v16 + 1);
          atomic_fetch_add(v93, 1u);
          v146 = v93;
          v94 = WTF::fastMalloc(v93, 0x28);
          *v94 = &unk_1F1101C70;
          v94[1] = *buf;
          v95 = *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          v94[2] = v95;
          v94[3] = *&buf[16];
          v96 = v146;
          *&buf[16] = 0;
          v146 = 0;
          v94[4] = v96;
          v136 = v94;
          WebCore::SWServer::getOriginsWithRegistrations();
          v98 = v136;
          v136 = 0;
          if (v98)
          {
            (*(*v98 + 8))(v98);
          }

          v99 = v146;
          v146 = 0;
          if (v99 && atomic_fetch_add(v99, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v99);
            WTF::fastFree(v99, v97);
          }

          WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&buf[16]);
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v100);
          WTF::RefCounted<WebCore::SWServer>::deref(v91);
        }
      }
    }
  }

  if ((a3 & 2) != 0)
  {
    if (v16)
    {
      v101 = *(v16 + 78);
      if (v101)
      {
        ++*(v101 + 8);
        v102 = v144;
        v103 = WTF::fastMalloc(atomic_fetch_add(v144, 1u), 0x10);
        *v103 = &unk_1F1101CE8;
        v103[1] = v102;
        v136 = 0;
        *buf = v103;
        WebKit::NetworkCache::Cache::deleteDataForRegistrableDomains(v101, &v141, buf);
        v104 = *buf;
        *buf = 0;
        if (v104)
        {
          (*(*v104 + 8))(v104);
        }

        WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v136);
        WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v101 + 8), v105);
      }
    }
  }

  v106 = a3;
  if ((*&a3 & 0x8C0B0) != 0 && v16)
  {
    v107 = *(v16 + 131);
    v108 = v144;
    v109 = WTF::fastMalloc(atomic_fetch_add(v144, 1u), 0x10);
    *v109 = &unk_1F1101D10;
    v109[1] = v108;
    v136 = 0;
    *buf = v109;
    WebKit::NetworkStorageManager::deleteDataForRegistrableDomains(v107, v106, &v141, buf);
    v110 = *buf;
    *buf = 0;
    if (v110)
    {
      (*(*v110 + 8))(v110);
    }

    WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v136);
  }

LABEL_100:
  v111 = WebKit::WebsiteData::filter(v106, 1);
  if (v111 && v142)
  {
    v113 = v111;
    v114 = v144;
    v115 = WTF::fastMalloc(atomic_fetch_add(v144, 1u), 0x10);
    *v115 = &unk_1F1101D38;
    v115[1] = v114;
    *buf = 0;
    WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(buf);
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(&v134, a1);
    v116 = v134;
    v118 = WTF::fastMalloc(v117, 0x10);
    *v118 = &unk_1F1101D60;
    v118[1] = v115;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC716D8);
    }

    v119 = v118;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v122 = IPC::Encoder::operator new(0x238, v121);
    *v122 = 528;
    *(v122 + 68) = 0;
    *(v122 + 70) = 0;
    *(v122 + 69) = 0;
    *(v122 + 2) = 0;
    *(v122 + 3) = 0;
    *(v122 + 1) = 0;
    IPC::Encoder::encodeHeader(v122);
    v136 = v122;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v122, a2);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v122, v113);
    buf[0] = 2;
    IPC::Encoder::operator<<<unsigned char>(v122, buf);
    IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v122, &v141);
    *buf = v119;
    *&buf[8] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v116, &v136, buf, 0, 0);
    v123 = *buf;
    *buf = 0;
    if (v123)
    {
      (*(*v123 + 8))(v123);
    }

    v124 = v136;
    v136 = 0;
    if (v124)
    {
      IPC::Encoder::~Encoder(v124, v112);
      bmalloc::api::tzoneFree(v130, v131);
    }

    v125 = v134;
    v134 = 0;
    if (v125)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v125, v112);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v138, v112);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v141, v126);
  if (v143)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v143, v127);
  }

  result = WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(&v144);
  if (v16)
  {
    v129 = v16[4];
    if (v129)
    {
      v16[4] = v129 - 1;
      return result;
    }

LABEL_121:
    __break(0xC471u);
    JUMPOUT(0x19DC716B8);
  }

  return result;
}

WTF::StringImpl *WebKit::filterForRegistrableDomains(uint64_t *a1, uint64_t a2, void **a3)
{
  *a1 = 0;
  a1[1] = 0;
  result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a3);
  v7 = result;
  v9 = v8;
  if (*a3)
  {
    v10 = &(*a3)[*(*a3 - 1)];
  }

  else
  {
    v10 = 0;
  }

  if (v10 != result)
  {
    do
    {
      WebCore::RegistrableDomain::uncheckedCreateFromHost(v7, &v18);
      v19 = &v18;
      v13 = WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(a2, &v19, v11);
      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }

      if (v13 != -1)
      {
        v14 = *(a1 + 3);
        if (v14 == *(a1 + 2))
        {
          result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(a1, v7);
        }

        else
        {
          v15 = *a1;
          v16 = *v7;
          if (*v7)
          {
            atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
          }

          v17 = *(a1 + 3);
          *(v15 + 8 * v14) = v16;
          *(a1 + 3) = v17 + 1;
        }
      }

      do
      {
        v7 = (v7 + 8);
      }

      while (v7 != v9 && (*v7 + 1) <= 1);
    }

    while (v7 != v10);
  }

  return result;
}

WTF::StringImpl *WebKit::filterForRegistrableDomains(uint64_t a1, WebCore::SecurityOriginData **a2, uint64_t a3, WTF ***a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(a2);
  v9 = result;
  v11 = v10;
  if (*a2)
  {
    v12 = *a2 + 32 * *(*a2 - 1);
  }

  else
  {
    v12 = 0;
  }

  if (v12 != result)
  {
    v13 = MEMORY[0x1E696EBA8];
    do
    {
      if (v9[24])
      {
        v14 = v13;
        if (v9[24] != 1)
        {
          mpark::throw_bad_variant_access(v13);
        }
      }

      else
      {
        v14 = (v9 + 8);
      }

      WebCore::RegistrableDomain::uncheckedCreateFromHost(v14, &v20);
      v19[0] = &v20;
      if (WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::findIf<unsigned long WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::find<WebCore::RegistrableDomain>(WebCore::RegistrableDomain const&)::{lambda(WebCore::RegistrableDomain&)#1}>(a3, v19, v15) != -1)
      {
        v17 = *(a1 + 12);
        if (v17 == *(a1 + 8))
        {
          WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData const&>(a1, v9);
        }

        else
        {
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((*a1 + 32 * v17), v9);
          ++*(a1 + 12);
        }

        WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a4, &v20, v18, v19);
      }

      result = v20;
      v20 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v16);
      }

      do
      {
        v9 += 32;
        if (v9 == v11)
        {
          break;
        }

        result = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v9);
      }

      while (result);
    }

    while (v9 != v12);
  }

  return result;
}

WTF::RunLoop *WTF::Ref<WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WebKit::RegistrableDomainsToDeleteOrRestrictWebsiteDataFor &&,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore>,WTF::HashTraits<WebCore>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>>>::~Ref(WTF::RunLoop *this)
{
  v2 = *this;
  *this = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    WTF::RunLoop::mainSingleton(this);
    v9 = *(v2 + 8);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    v5 = WTF::fastMalloc(v4, 0x18);
    *v5 = &unk_1F1101BD0;
    *(v5 + 1) = v9;
    v10 = v5;
    WTF::RunLoop::dispatch();
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v7 = *(v2 + 16);
    if (v7)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v6);
    }

    v8 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    WTF::fastFree(v2, v6);
  }

  return this;
}

uint64_t WebKit::NetworkProcess::deleteCookiesForTesting(uint64_t *a1, __CFString *a2, unint64_t a3, int a4, uint64_t *a5)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (a4)
  {
    v8 = &v18;
  }

  else
  {
    v8 = &v19;
  }

  WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain&>(v8, a3);
  v9 = *a5;
  *a5 = 0;
  v11 = WTF::fastMalloc(v10, 0x10);
  *v11 = &unk_1F1101D88;
  v11[1] = v9;
  v17 = v11;
  WebKit::NetworkProcess::deleteAndRestrictWebsiteDataForRegistrableDomains(a1, a2, 1, &v18, &v17);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v12);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v13);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v14);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v15);
}

atomic_uint *WebKit::NetworkProcess::registrableDomainsWithWebsiteData(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v75 = *MEMORY[0x1E69E9840];
  *&v71 = a2;
  v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v71);
  v10 = v8;
  if (v8)
  {
    v9 = (*(v8 + 16) + 1);
    *(v8 + 16) = v9;
  }

  v11 = WTF::fastMalloc(v9, 0x38);
  v12 = *a4;
  *a4 = 0;
  v14 = WTF::fastMalloc(v13, 0x10);
  *v14 = &unk_1F1101DB0;
  v14[1] = v12;
  *v11 = 1;
  v11[1] = v14;
  *(v11 + 1) = 0u;
  v16 = v11 + 2;
  v11[6] = 0;
  *(v11 + 2) = 0u;
  if (a3)
  {
    *&v71 = a2;
    v17 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v71);
    if (v17)
    {
      v18 = v17;
      ++*(v17 + 8);
      WebCore::NetworkStorageSession::getHostnamesWithCookies();
      v19 = *(v18 + 8);
      if (!v19)
      {
        __break(0xC471u);
        goto LABEL_104;
      }

      *(v18 + 8) = v19 - 1;
    }
  }

  if ((a3 & 0x200) != 0)
  {
    WebKit::NetworkProcess::hostNamesWithHSTSCache(a1, a2, &v71);
    v28 = v71;
    *&v71 = 0;
    v29 = v11[5];
    v11[5] = v28;
    if (v29)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v15);
      if (v71)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v71, v15);
      }
    }
  }

  if ((a3 & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  *&v71 = a2;
  v30 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 248), &v71);
  if (!v30)
  {
    goto LABEL_59;
  }

  v31 = v30;
  ++*(v30 + 8);
  WebCore::CredentialStorage::originsWithCredentials(v65, (v30 + 112));
  v33 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(v65);
  v34 = v32;
  v35 = v65[0];
  if (v65[0])
  {
    v36 = (v65[0] + 32 * *(v65[0] - 1));
  }

  else
  {
    v36 = 0;
  }

  if (v36 != v33)
  {
    while (1)
    {
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(&v68, v33);
      LOBYTE(v71) = 0;
      v73 = -1;
      v38 = v70;
      if (!v70)
      {
        break;
      }

      if (v70 != 255)
      {
        v71 = v68;
LABEL_36:
        v73 = v38;
      }

      LODWORD(v74) = 0x2000;
      *(&v74 + 1) = 0;
      v41 = *(v11 + 7);
      if (v41 == *(v11 + 6))
      {
        WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>((v11 + 2), &v71);
        goto LABEL_43;
      }

      v42 = *v16 + 48 * v41;
      *v42 = 0;
      *(v42 + 24) = -1;
      if (v73)
      {
        if (v73 == 255)
        {
          goto LABEL_42;
        }

        *v42 = v71;
      }

      else
      {
        v43 = v71;
        *&v71 = 0;
        *v42 = v43;
        v44 = *(&v71 + 1);
        *(&v71 + 1) = 0;
        *(v42 + 8) = v44;
        *(v42 + 16) = v72;
      }

      *(v42 + 24) = v73;
LABEL_42:
      *(v42 + 32) = v74;
      ++*(v11 + 7);
LABEL_43:
      WebKit::WebsiteData::Entry::~Entry(&v71, v37);
      WebCore::SecurityOriginData::~SecurityOriginData(&v68);
      do
      {
        v33 = (v33 + 32);
      }

      while (v33 != v34 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v33));
      if (v33 == v36)
      {
        v35 = v65[0];
        goto LABEL_55;
      }
    }

    v39 = v68;
    if (v68)
    {
      atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
    }

    *&v71 = v39;
    v40 = *(&v68 + 1);
    if (*(&v68 + 1))
    {
      atomic_fetch_add_explicit(*(&v68 + 1), 2u, memory_order_relaxed);
    }

    *(&v71 + 1) = v40;
    v72 = v69;
    v38 = v70;
    goto LABEL_36;
  }

LABEL_55:
  if (v35)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v35, v32);
  }

  v48 = *(v31 + 8);
  if (!v48)
  {
    __break(0xC471u);
LABEL_104:
    JUMPOUT(0x19DC72328);
  }

  *(v31 + 8) = v48 - 1;
LABEL_59:
  if (!v10)
  {
    return WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v11);
  }

  (*(*v10 + 120))(&v61, v10);
  v49 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin(&v61);
  v50 = v15;
  v51 = v61;
  if (v61)
  {
    v52 = (v61 + 32 * *(v61 - 1));
  }

  else
  {
    v52 = 0;
  }

  if (v52 == v49)
  {
    goto LABEL_92;
  }

  do
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v65, v49);
    LOBYTE(v62) = 0;
    v64 = -1;
    LODWORD(v54) = v67;
    if (v67)
    {
      if (v67 == 255)
      {
        LOBYTE(v71) = 0;
        goto LABEL_75;
      }

      v62 = *v65;
    }

    else
    {
      v55 = v65[0];
      if (v65[0])
      {
        atomic_fetch_add_explicit(v65[0], 2u, memory_order_relaxed);
      }

      *&v62 = v55;
      v54 = v65[1];
      if (v65[1])
      {
        atomic_fetch_add_explicit(v65[1], 2u, memory_order_relaxed);
      }

      *(&v62 + 1) = v54;
      v63 = v66;
      LODWORD(v54) = v67;
    }

    v64 = v54;
    LOBYTE(v71) = 0;
    v73 = -1;
    if (!v54)
    {
      v56 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
      }

      *&v71 = v56;
      v54 = *(&v62 + 1);
      if (*(&v62 + 1))
      {
        atomic_fetch_add_explicit(*(&v62 + 1), 2u, memory_order_relaxed);
      }

      *(&v71 + 1) = v54;
      v72 = v63;
      LOBYTE(v54) = v64;
      goto LABEL_75;
    }

    if (v54 != 255)
    {
      v71 = v62;
LABEL_75:
      v73 = v54;
    }

    LODWORD(v74) = 0x2000;
    *(&v74 + 1) = 0;
    v57 = *(v11 + 7);
    if (v57 != *(v11 + 6))
    {
      v58 = *v16 + 48 * v57;
      *v58 = 0;
      *(v58 + 24) = -1;
      if (v73)
      {
        if (v73 == 255)
        {
          goto LABEL_81;
        }

        *v58 = v71;
      }

      else
      {
        v59 = v71;
        *&v71 = 0;
        *v58 = v59;
        v60 = *(&v71 + 1);
        *(&v71 + 1) = 0;
        *(v58 + 8) = v60;
        *(v58 + 16) = v72;
      }

      *(v58 + 24) = v73;
LABEL_81:
      *(v58 + 32) = v74;
      ++*(v11 + 7);
      goto LABEL_82;
    }

    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>((v11 + 2), &v71);
LABEL_82:
    WebKit::WebsiteData::Entry::~Entry(&v71, v53);
    WebCore::SecurityOriginData::~SecurityOriginData(&v62);
    WebCore::SecurityOriginData::~SecurityOriginData(v65);
    do
    {
      v49 = (v49 + 32);
    }

    while (v49 != v50 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v49));
  }

  while (v49 != v52);
  v51 = v61;
LABEL_92:
  if (v51)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v51, v15);
  }

LABEL_9:
  if ((a3 & 0x4000) != 0)
  {
    if (v10)
    {
      if (*(v10 + 768) == 1)
      {
        v20 = *(v10 + 94);
        if (v20)
        {
          if (*(v20 + 4))
          {
            v21 = (WebKit::NetworkSession::ensureSWServer(v10, v15) + 8);
            ++*v21;
            v22 = WTF::fastMalloc(atomic_fetch_add(v11, 1u), 0x10);
            *v22 = &unk_1F1101E28;
            v22[1] = v11;
            *&v71 = v22;
            WebCore::SWServer::getOriginsWithRegistrations();
            v23 = v71;
            *&v71 = 0;
            if (v23)
            {
              (*(*v23 + 8))(v23);
            }

            WTF::RefCounted<WebCore::SWServer>::deref(v21);
          }
        }
      }
    }
  }

  if ((a3 & 2) != 0)
  {
    if (!v10)
    {
      return WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v11);
    }

    v45 = *(v10 + 78);
    if (v45)
    {
      ++*(v45 + 8);
      v46 = WTF::fastMalloc(atomic_fetch_add(v11, 1u), 0x10);
      *v46 = &unk_1F1101E50;
      v46[1] = v11;
      *&v71 = v46;
      WebKit::NetworkCache::Cache::fetchData(v45, 0, &v71);
      if (v71)
      {
        (*(*v71 + 8))(v71);
      }

      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref((v45 + 8), v47);
    }

LABEL_19:
    v24 = *(v10 + 131);
    v25 = WTF::fastMalloc(atomic_fetch_add(v11, 1u), 0x10);
    *v25 = &unk_1F1101E78;
    v25[1] = v11;
    *&v71 = v25;
    WebKit::NetworkStorageManager::fetchData(v24, a3, 0, &v71);
    if (v71)
    {
      (*(*v71 + 8))(v71);
    }

    result = WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v11);
    v27 = *(v10 + 4);
    if (!v27)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC72348);
    }

    *(v10 + 4) = v27 - 1;
  }

  else
  {
    if (v10)
    {
      goto LABEL_19;
    }

    return WTF::ThreadSafeRefCounted<WebKit::NetworkProcess::registrableDomainsWithWebsiteData(PAL::SessionID,WTF::OptionSet<WebKit::WebsiteDataType>,WTF::CompletionHandler<void ()(WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)> &&)::CallbackAggregator,(WTF::DestructionThread)0>::deref(v11);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::closeITPDatabase(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = a2;
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v9);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    result = WebKit::NetworkSession::destroyResourceLoadStatistics(v4, a3);
    v7 = *(v5 + 16);
    if (v7)
    {
      *(v5 + 16) = v7 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8);
    return (*(*v8 + 8))(v8);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::downloadRequest(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, WebCore::SecurityOriginData *a5, __int16 a6, atomic_uint **a7)
{
  v7 = (a1 + 184);
  ++*(a1 + 184);
  result = WebKit::DownloadManager::startDownload(a1 + 184, a2, a3, a4, a5, a6, a7, 0, 0, 0, 0, 0, 0, 0);
  if (*v7)
  {
    --*v7;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::resumeDownload(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, atomic_uint **a6, uint64_t **a7, int a8, uint64_t a9, uint64_t a10)
{
  v10 = (a1 + 184);
  ++*(a1 + 184);
  result = WebKit::DownloadManager::resumeDownload((a1 + 184), a2, a3, a4, a5, a6, a7, a8, a9, a10);
  if (*v10)
  {
    --*v10;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkProcess::cancelDownload(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = (a1 + 184);
  ++*(a1 + 184);
  result = WebKit::DownloadManager::cancelDownload(a1 + 184, a2, a3);
  if (*v3)
  {
    --*v3;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

WTF::RefCountedBase *WebKit::NetworkProcess::dataTaskWithRequest(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = *a6;
  *a6 = 0;
  v22 = v13;
  WebCore::ResourceRequestBase::setHTTPBody();
  v14 = v22;
  v22 = 0;
  if (v14)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v14);
  }

  v22 = a3;
  v15 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v22);
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v17 = (*(v15 + 16) + 1);
  *(v15 + 16) = v17;
  v18 = *a7;
  *a7 = 0;
  v19 = WTF::fastMalloc(v17, 0x10);
  *v19 = &unk_1F1101EC8;
  v19[1] = v18;
  v22 = v19;
  (*(*v16 + 232))(v16, a2, a4, a5, &v22);
  result = v22;
  v22 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v21 = v16[4];
  if (!v21)
  {
LABEL_8:
    __break(0xC471u);
    JUMPOUT(0x19DC7270CLL);
  }

  v16[4] = v21 - 1;
  return result;
}

uint64_t WebKit::NetworkProcess::cancelDataTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = a3;
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((a1 + 240), &v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  ++v6[4];
  (*(*v6 + 240))(v6, a2);
  v8 = v7[4];
  if (v8)
  {
    v7[4] = v8 - 1;
LABEL_4:
    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9);
    return (*(*v9 + 8))(v9);
  }

  result = 290;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::NetworkProcess::setCacheModelSynchronouslyForTesting(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  WebKit::NetworkProcess::setCacheModel(a1, a2);
  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebKit::NetworkProcess::allowTLSCertificateChainForLocalPCMTesting(WebKit::NetworkProcess *this, SessionID a2, const CertificateInfo *a3)
{
  m_identifier = a2.m_identifier;
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>(this + 30, &m_identifier);
  if (result)
  {
    v5 = result;
    ++*(result + 16);
    result = (*(**(result + 160) + 152))(*(result + 160), a3);
    v6 = *(v5 + 16);
    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

atomic_ullong *WebKit::NetworkProcess::logDiagnosticMessage(WebKit::AuxiliaryProcess *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = a2;
  if (!a5 || (result = WTF::cryptographicallyRandomUnitInterval(this), v9 <= 0.05))
  {
    WebKit::AuxiliaryProcess::protectedParentProcessConnection(&v13, this);
    v11[0] = &v14;
    v11[1] = a3;
    v11[2] = a4;
    v12 = 0;
    IPC::Connection::send<Messages::NetworkProcessProxy::LogDiagnosticMessage>(v13, v11, 0, 0, 0);
    result = v13;
    v13 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result, v10);
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkProcessProxy::LogDiagnosticMessage>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 540;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::NetworkProcessProxy::LogDiagnosticMessage::encode<IPC::Encoder>(a2, v10);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}