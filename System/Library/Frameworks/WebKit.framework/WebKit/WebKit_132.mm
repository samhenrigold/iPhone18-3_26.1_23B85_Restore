WTF::StringImpl *WebKit::domainsToString(WTF::StringImpl **a1, uint64_t *a2, unsigned int a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      if (v15)
      {
        v6 = ", ";
      }

      else
      {
        v6 = "";
      }

      if (v15)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      v12[0] = v6;
      v12[1] = v7;
      WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String>(&v13, v12, a2++);
      v5 -= 8;
    }

    while (v5);
    v9 = v13;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  WTF::StringBuilder::shrinkToFit(&v13);
  WTF::StringBuilder::reifyString(&v13);
  v9 = v13;
  if (v13)
  {
LABEL_12:
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *a1 = v9;
  v10 = v14;
  v14 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldExemptFromWebsiteDataDeletion(WebKit::ResourceLoadStatisticsStore *this, WTF **a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (!*(*a2 + 1))
  {
    return 0;
  }

  if (MEMORY[0x19EB01EF0]())
  {
    return 0;
  }

  WebKit::ResourceLoadStatisticsStore::domainsExemptFromWebsiteDataDeletion(&v16, this);
  if (!v16)
  {
    return 0;
  }

  if (WTF::equal(*a2, 0, v5) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCF56BCLL);
  }

  v7 = v16;
  if (!v16)
  {
    return 0;
  }

  v8 = *(v16 - 2);
  v9 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v6) & v8;
  v10 = &v7[v9];
  if (WTF::equal(*v10, 0, v11))
  {
LABEL_14:
    v4 = 0;
  }

  else
  {
    v14 = 1;
    while (*v10 == -1 || (WTF::equalIgnoringASCIICase(*v10, *a2, v13) & 1) == 0)
    {
      v9 = (v9 + v14) & v8;
      v10 = &v7[v9];
      ++v14;
      if (WTF::equal(*v10, 0, v13))
      {
        goto LABEL_14;
      }
    }

    v4 = 1;
  }

  if (v16)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, v12);
  }

  return v4;
}

uint64_t WebKit::ResourceLoadStatisticsStore::domainsExemptFromWebsiteDataDeletion(WebKit::ResourceLoadStatisticsStore *this, uint64_t a2)
{
  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(this, (a2 + 304));
  v6 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a2 + 312), v4, v5);
  v8 = v6;
  v31 = v6;
  v32 = v9;
  v10 = *(a2 + 312);
  if (v10)
  {
    v11 = (v10 + 8 * *(v10 - 4));
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v6)
  {
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, v8, v7, v30);
      ++v31;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v31, v12, v13);
      v8 = v31;
    }

    while (v31 != v11);
  }

  WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(&v29, this);
  v16 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((a2 + 320), v14, v15);
  v19 = v16;
  v31 = v16;
  v32 = v17;
  v20 = *(a2 + 320);
  if (v20)
  {
    v21 = (v20 + 8 * *(v20 - 4));
  }

  else
  {
    v21 = 0;
  }

  if (v21 != v16)
  {
    do
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v29, v19, v18, v30);
      ++v31;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&v31, v22, v23);
      v19 = v31;
    }

    while (v31 != v21);
  }

  v24 = v29;
  v29 = 0;
  v25 = *this;
  *this = v24;
  if (v25)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v17);
    if (v29)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v28);
    }
  }

  result = *(a2 + 296);
  if (result && *(result + 4))
  {
    result = MEMORY[0x19EB01EF0]();
    if ((result & 1) == 0)
    {
      return WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this, (a2 + 296), v27, v30);
    }
  }

  return result;
}

uint64_t *WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(WebKit::ResourceLoadStatisticsStore *this)
{
  v119[4] = *MEMORY[0x1E69E9840];
  if ((_MergedGlobals_74 & 1) == 0)
  {
    v102[0] = "ObservedDomains";
    v102[1] = 16;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v99 = v107[0];
    v100 = 0;
    v101 = 0;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(v107, v102, &v99);
    v98[0] = "TopLevelDomains";
    v98[1] = 16;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v95 = v103;
    v96 = 0;
    v97 = 0;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v108, v98, &v95);
    v94[0] = "StorageAccessUnderTopFrameDomains";
    v94[1] = 34;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v2 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS StorageAccessUnderTopFrameDomains_domainID_topLevelDomainID on StorageAccessUnderTopFrameDomains(domainID, topLevelDomainID)", &v91);
    v3 = v91;
    v91 = 0;
    v92[0] = v2;
    v92[1] = v3;
    v93 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v109, v94, v92);
    v90[0] = "TopFrameUniqueRedirectsTo";
    v90[1] = 26;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameUniqueRedirectsTo_sourceDomainID_toDomainID on TopFrameUniqueRedirectsTo(sourceDomainID, toDomainID)", &v87);
    v5 = v87;
    v87 = 0;
    v88[0] = v4;
    v88[1] = v5;
    v89 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v110, v90, v88);
    v86[0] = "TopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement";
    v86[1] = 56;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement_sourceDomainID_toDomainID on TopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement(sourceDomainID, toDomainID)", &v83);
    v7 = v83;
    v83 = 0;
    v84[0] = v6;
    v84[1] = v7;
    v85 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v111, v86, v84);
    v82[0] = "TopFrameUniqueRedirectsFrom";
    v82[1] = 28;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v8 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameUniqueRedirectsFrom_targetDomainID_fromDomainID on TopFrameUniqueRedirectsFrom(targetDomainID, fromDomainID)", &v79);
    v9 = v79;
    v79 = 0;
    v80[0] = v8;
    v80[1] = v9;
    v81 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v112, v82, v80);
    v78[0] = "TopFrameLinkDecorationsFrom";
    v78[1] = 28;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v10 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameLinkDecorationsFrom_toDomainID_fromDomainID on TopFrameLinkDecorationsFrom(toDomainID, fromDomainID)", &v75);
    v11 = v75;
    v75 = 0;
    v76[0] = v10;
    v76[1] = v11;
    v77 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v113, v78, v76);
    v74[0] = "TopFrameLoadedThirdPartyScripts";
    v74[1] = 32;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v12 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS TopFrameLoadedThirdPartyScripts_topFrameDomainID_subresourceDomainID on TopFrameLoadedThirdPartyScripts(topFrameDomainID, subresourceDomainID)", &v71);
    v13 = v71;
    v71 = 0;
    v72[0] = v12;
    v72[1] = v13;
    v73 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v114, v74, v72);
    v70[0] = "SubframeUnderTopFrameDomains";
    v70[1] = 29;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v14 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubframeUnderTopFrameDomains_subFrameDomainID_topFrameDomainID on SubframeUnderTopFrameDomains(subFrameDomainID, topFrameDomainID)", &v67);
    v15 = v67;
    v67 = 0;
    v68[0] = v14;
    v68[1] = v15;
    v69 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v115, v70, v68);
    v66[0] = "SubresourceUnderTopFrameDomains";
    v66[1] = 32;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubresourceUnderTopFrameDomains_subresourceDomainID_topFrameDomainID on SubresourceUnderTopFrameDomains(subresourceDomainID, topFrameDomainID)", &v63);
    v17 = v63;
    v63 = 0;
    v64[0] = v16;
    v64[1] = v17;
    v65 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v116, v66, v64);
    v62[0] = "SubresourceUniqueRedirectsTo";
    v62[1] = 29;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubresourceUniqueRedirectsTo_subresourceDomainID_toDomainID on SubresourceUniqueRedirectsTo(subresourceDomainID, toDomainID)", &v59);
    v19 = v59;
    v59 = 0;
    v60[0] = v18;
    v60[1] = v19;
    v61 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v117, v62, v60);
    v58[0] = "SubresourceUniqueRedirectsFrom";
    v58[1] = 31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v20 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS SubresourceUniqueRedirectsFrom_subresourceDomainID_fromDomainID on SubresourceUniqueRedirectsFrom(subresourceDomainID, fromDomainID)", &v55);
    v21 = v55;
    v55 = 0;
    v56[0] = v20;
    v56[1] = v21;
    v57 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(&v118, v58, v56);
    v54[0] = "OperatingDates";
    v54[1] = 15;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v22 = v103;
    WebKit::DatabaseUtilities::stripIndexQueryToMatchStoredValue("CREATE UNIQUE INDEX IF NOT EXISTS OperatingDates_year_month_monthDay on OperatingDates(year, month, monthDay)", &v51);
    v23 = v51;
    v51 = 0;
    v52[0] = v22;
    v52[1] = v23;
    v53 = 1;
    WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::KeyValuePair<WTF::ASCIILiteral,std::pair<WTF::String,std::optional<WTF::String>>>(v119, v54, v52);
    WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(&v103, v107, 13);
    v25 = v103;
    v103 = 0;
    qword_1ED6425F0 = v25;
    v26 = v104;
    v104 = 0;
    qword_1ED6425F8 = v26;
    LODWORD(v25) = v105;
    v105 = 0;
    dword_1ED642600 = v25;
    byte_1ED642604 = v106;
    v27 = 48;
    v106 = 0;
    do
    {
      WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(&v107[v27], v24);
      v27 -= 4;
    }

    while (v27 != -4);
    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v52, v24);
    v29 = v51;
    v51 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v28);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v56, v28);
    v31 = v55;
    v55 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v30);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v60, v30);
    v33 = v59;
    v59 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v32);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v64, v32);
    v35 = v63;
    v63 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v34);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v68, v34);
    v37 = v67;
    v67 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v36);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v72, v36);
    v39 = v71;
    v71 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v38);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v76, v38);
    v41 = v75;
    v75 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v40);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v80, v40);
    v43 = v79;
    v79 = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v42);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v84, v42);
    v45 = v83;
    v83 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v44);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v88, v44);
    v47 = v87;
    v87 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v46);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(v92, v46);
    v49 = v91;
    v91 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v48);
    }

    std::pair<WTF::String,std::optional<WTF::String>>::~pair(&v95, v48);
    std::pair<WTF::String,std::optional<WTF::String>>::~pair(&v99, v50);
    _MergedGlobals_74 = 1;
  }

  return &qword_1ED6425F0;
}

uint64_t WTF::KeyValuePair<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>>::~KeyValuePair(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t std::pair<WTF::String,std::optional<WTF::String>>::~pair(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::checkForMissingTablesInSchema(WebKit::ResourceLoadStatisticsStore *this, WebKit::ResourceLoadStatisticsStore *a2)
{
  v21 = 0;
  v22 = 0;
  WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(a2);
  if (HIDWORD(qword_1ED6425F8))
  {
    if (qword_1ED6425F8)
    {
      v6 = 32 * qword_1ED6425F8;
      v7 = qword_1ED6425F0;
      while (!*v7)
      {
        v7 += 4;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v7 = qword_1ED6425F0;
    }

    v8 = qword_1ED6425F0 + 32 * qword_1ED6425F8;
    if (v7 != v8)
    {
LABEL_9:
      v9 = *v7;
      if (*v7)
      {
        v10 = *(v9 + 16);
        v11 = *(v9 + 8);
        v9 = *(v9 + 4);
        v12 = ((v10 >> 2) & 1) << 32;
      }

      else
      {
        v11 = 0;
        v12 = 0x100000000;
      }

      v2 = v9 | v2 & 0xFFFFFF0000000000 | v12;
      if (!WebKit::ResourceLoadStatisticsStore::tableExists(a2, v11, v2))
      {
        v13 = *v7;
        if (*v7)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        }

        v20 = v13;
        v14 = HIDWORD(v22);
        if (HIDWORD(v22) == v22)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String>(&v21, &v20);
        }

        else
        {
          v20 = 0;
          *(v21 + 8 * HIDWORD(v22)) = v13;
          HIDWORD(v22) = v14 + 1;
        }

        v15 = v20;
        v20 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v5);
        }
      }

      while (1)
      {
        v7 += 4;
        if (v7 == v8)
        {
          break;
        }

        if (*v7)
        {
          if (v7 != v8)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v16 = HIDWORD(v22);
      if (HIDWORD(v22))
      {
        *this = v21;
        v19 = v22;
        v21 = 0;
        v22 = 0;
        *(this + 2) = v19;
        *(this + 3) = v16;
        v17 = 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v17 = 0;
  *this = 0;
LABEL_25:
  *(this + 16) = v17;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v5);
}

BOOL WebKit::ResourceLoadStatisticsStore::tableExists(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 632), "tableExists", &v14);
  if (!v14)
  {
    v6 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v4 = 0;
      goto LABEL_4;
    }

    v7 = *(a1 + 664);
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    *buf = 134218755;
    v16 = a1;
    v17 = 2048;
    v18 = v7;
    v19 = 1024;
    v20 = Error;
    v21 = 2081;
    v22 = ErrorMsg;
    v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::tableExists: failed to prepare statement";
LABEL_10:
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
    goto LABEL_8;
  }

  if (WebCore::SQLiteStatement::bindText())
  {
    v6 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v11 = *(a1 + 664);
    v12 = WebCore::SQLiteDatabase::lastError((a1 + 16));
    v13 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    *buf = 134218755;
    v16 = a1;
    v17 = 2048;
    v18 = v11;
    v19 = 1024;
    v20 = v12;
    v21 = 2081;
    v22 = v13;
    v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::tableExists: failed to bind parameter";
    goto LABEL_10;
  }

  v4 = WebCore::SQLiteStatement::step(v14) == 100;
LABEL_4:
  MEMORY[0x19EB0CD50](&v14);
  return v4;
}

void WebKit::ResourceLoadStatisticsStore::deleteTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  WTF::makeString<WTF::ASCIILiteral,WTF::StringView>("DROP TABLE ", 12, a2, a3, buf);
  WebCore::SQLiteDatabase::prepareStatementSlow();
  v5 = *buf;
  *buf = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  if (v11 || WebCore::SQLiteStatement::step(v10) != 101)
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      *&buf[4] = a1;
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = Error;
      v17 = 2081;
      v18 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::deleteTable: failed to step statement", buf, 0x26u);
    }
  }

  if (!v11)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v10);
  }
}

BOOL WebKit::ResourceLoadStatisticsStore::missingUniqueIndices(WebKit::ResourceLoadStatisticsStore *this)
{
  v21 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  if (v12)
  {
    v5 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v6 = *(this + 83);
    *buf = 134218755;
    v14 = this;
    v15 = 2048;
    v16 = v6;
    v17 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v19 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v7 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::missingUniqueIndices: failed to prepare statement";
    goto LABEL_13;
  }

  v2 = WebCore::SQLiteStatement::step(v11);
  if (v2 == 100)
  {
    if (v12)
    {
      mpark::throw_bad_variant_access(v2);
    }

    v3 = WebCore::SQLiteStatement::columnInt(v11) < 13;
    goto LABEL_5;
  }

  v5 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v8 = *(this + 83);
    v9 = WebCore::SQLiteDatabase::lastError((this + 16));
    v10 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    *buf = 134218755;
    v14 = this;
    v15 = 2048;
    v16 = v8;
    v17 = 1024;
    Error = v9;
    v19 = 2081;
    ErrorMsg = v10;
    v7 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::missingUniqueIndices: failed to step statement";
LABEL_13:
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x26u);
  }

  v3 = 0;
LABEL_5:
  if (!v12)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v11);
  }

  return v3;
}

BOOL WebKit::ResourceLoadStatisticsStore::missingReferenceToObservedDomains(WebKit::ResourceLoadStatisticsStore *this)
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::DatabaseUtilities::currentTableAndIndexQueries(this, v9);
  v2 = v9[0];
  v9[0] = 0;
  std::pair<WTF::String,std::optional<WTF::String>>::~pair(v9, v3);
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  if (!v2)
  {
    return 0;
  }

  v6 = WTF::StringImpl::find() != -1;
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v5);
  }

  return v6;
}

uint64_t WebKit::ResourceLoadStatisticsStore::needsUpdatedSchema(WebKit::ResourceLoadStatisticsStore *this)
{
  if (WebKit::ResourceLoadStatisticsStore::missingReferenceToObservedDomains(this) || WebKit::ResourceLoadStatisticsStore::missingUniqueIndices(this))
  {
    return 1;
  }

  WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(this);
  return 0;
}

uint64_t WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(WebKit::ResourceLoadStatisticsStore *this)
{
  v35 = *MEMORY[0x1E69E9840];
  if (WebKit::ResourceLoadStatisticsStore::tableExists(this, "UnattributedPrivateClickMeasurement", 0x100000023) || (result = WebKit::ResourceLoadStatisticsStore::tableExists(this, "AttributedPrivateClickMeasurement", 0x100000021), result))
  {
    v26 = 0;
    v27 = 0;
    WebCore::SQLiteDatabase::prepareStatement();
    v3 = v25;
    if (v25)
    {
      v4 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        return WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v5);
      }

      v8 = *(this + 83);
      *buf = 134218755;
      *&buf[4] = this;
      v29 = 2048;
      v30 = v8;
      v31 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v33 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary: failed to prepare unattributedScopedStatement", buf, 0x26u);
    }

    else
    {
      while (1)
      {
        v6 = WebCore::SQLiteStatement::step(v24);
        if (v6 != 100)
        {
          break;
        }

        if (!v25)
        {
          WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v24, this, 0, buf);
          if (HIDWORD(v27) == v27)
          {
            WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PrivateClickMeasurement>(&v26, buf);
          }

          else
          {
            WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v26 + 312 * HIDWORD(v27), buf);
            ++HIDWORD(v27);
          }

          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v7);
          if (!v25)
          {
            continue;
          }
        }

LABEL_12:
        mpark::throw_bad_variant_access(v6);
      }
    }

    if (!v25)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v24);
    }

    if (v3)
    {
      return WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v5);
    }

    v22 = 0;
    v23 = 0;
    WebCore::SQLiteDatabase::prepareStatement();
    v9 = v25;
    if (v25)
    {
      v10 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v11);
        return WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v5);
      }

      v13 = *(this + 83);
      v14 = WebCore::SQLiteDatabase::lastError((this + 16));
      v15 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      *buf = 134218755;
      *&buf[4] = this;
      v29 = 2048;
      v30 = v13;
      v31 = 1024;
      Error = v14;
      v33 = 2081;
      ErrorMsg = v15;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary: failed to prepare attributedScopedStatement", buf, 0x26u);
    }

    else
    {
      while (1)
      {
        v6 = WebCore::SQLiteStatement::step(v24);
        if (v6 != 100)
        {
          break;
        }

        if (!v25)
        {
          WebKit::DatabaseUtilities::buildPrivateClickMeasurementFromDatabase(v24, this, 1, buf);
          if (HIDWORD(v23) == v23)
          {
            WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PrivateClickMeasurement>(&v22, buf);
          }

          else
          {
            WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v22 + 312 * HIDWORD(v23), buf);
            ++HIDWORD(v23);
          }

          WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(buf, v12);
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

    if (!v25)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v24);
    }

    if (v9)
    {
      goto LABEL_19;
    }

    if (!(HIDWORD(v27) | HIDWORD(v23)))
    {
LABEL_38:
      WebKit::DatabaseUtilities::beginTransactionIfNecessary(buf, this);
      WebKit::ResourceLoadStatisticsStore::deleteTable(this, "UnattributedPrivateClickMeasurement", 0x100000023);
      WebKit::ResourceLoadStatisticsStore::deleteTable(this, "AttributedPrivateClickMeasurement", 0x100000021);
      WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(buf);
      goto LABEL_19;
    }

    WTF::RunLoop::mainSingleton(v6);
    v16 = *(this + 14);
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
          goto LABEL_35;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_35:
      *buf = v16;
      WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v26, &buf[8]);
      WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(&v22, &Error);
      WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>(v24, buf, v19);
      WTF::RunLoop::dispatch();
      v21 = v24[0];
      v24[0] = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0::~$_0(buf, v20);
      goto LABEL_38;
    }

    result = 114;
    __break(0xC471u);
  }

  return result;
}

uint64_t **WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0,void>@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x30);
  v6 = *a2;
  *a2 = 0;
  *v5 = &unk_1F1104888;
  v5[1] = v6;
  v5[3] = 0;
  v5[2] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v5 + 2), (a2 + 8));
  v5[5] = 0;
  v5[4] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt((v5 + 4), (a2 + 24));
  *a1 = v5;
  return a1;
}

atomic_ullong **WebKit::ResourceLoadStatisticsStore::migrateDataToPCMDatabaseIfNecessary(void)::$_0::~$_0(atomic_ullong **a1, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  WTF::Vector<WebCore::PrivateClickMeasurement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), v3);
  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5, v4);
  }

  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::addMissingTablesIfNecessary(WebKit::ResourceLoadStatisticsStore *this)
{
  v30 = *MEMORY[0x1E69E9840];
  result = WebKit::ResourceLoadStatisticsStore::checkForMissingTablesInSchema(&v20, this);
  if (v22 == 1)
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v19, this);
    if (v21)
    {
      v4 = v20;
      v5 = 8 * v21;
      do
      {
        WebKit::ResourceLoadStatisticsStore::expectedTableAndIndexQueries(this);
        WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,std::pair<WTF::String,std::optional<WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::String,std::optional<WTF::String>>>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>(buf, v4, v6);
        v7 = *buf;
        *buf = 0;
        std::pair<WTF::String,std::optional<WTF::String>>::~pair(buf, v8);
        if (v7)
        {
          v9 = v7[1];
          v10 = ((v7[4] >> 2) & 1) << 32;
        }

        else
        {
          v9 = 0;
          v10 = 0x100000000;
        }

        v1 = v9 | v1 & 0xFFFFFF0000000000 | v10;
        if ((WebCore::SQLiteDatabase::executeCommandSlow() & 1) == 0)
        {
          v12 = qword_1ED641148;
          if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
          {
            v13 = *(this + 83);
            Error = WebCore::SQLiteDatabase::lastError((this + 16));
            ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
            *buf = 134218755;
            *&buf[4] = this;
            v24 = 2048;
            v25 = v13;
            v26 = 1024;
            v27 = Error;
            v28 = 2081;
            v29 = ErrorMsg;
            _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::addMissingTablesIfNecessary: failed to execute statement", buf, 0x26u);
          }
        }

        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v11);
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
    }

    if (!WebKit::ResourceLoadStatisticsStore::createUniqueIndices(this))
    {
      v16 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v18 = *(this + 83);
        *buf = 134218240;
        *&buf[4] = this;
        v24 = 2048;
        v25 = v18;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::addMissingTablesIfNecessary: failed to create unique indices", buf, 0x16u);
      }
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v19);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v17);
  }

  return result;
}

BOOL WebKit::ResourceLoadStatisticsStore::createUniqueIndices(WebKit::ResourceLoadStatisticsStore *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && WebCore::SQLiteDatabase::executeCommand() && (WebCore::SQLiteDatabase::executeCommand() & 1) != 0)
  {
    return 1;
  }

  v3 = qword_1ED641148;
  result = os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4 = *(this + 83);
    v5 = 134218755;
    v6 = this;
    v7 = 2048;
    v8 = v4;
    v9 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v11 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createUniqueIndices: failed to execute statement", &v5, 0x26u);
    return 0;
  }

  return result;
}

uint64_t WebKit::vectorEqualsArray<WTF::String,WTF::ASCIILiteral,12ul>(uint64_t result, uint64_t a2)
{
  if (*(result + 12) != 12)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  v4 = (a2 + 8);
  while (v3 < *(v2 + 12))
  {
    if (*v4)
    {
      v5 = *v4 - 1;
    }

    else
    {
      v5 = 0;
    }

    result = MEMORY[0x19EB01EF0](*(*v2 + 8 * v3), *(v4 - 1), v5);
    if (result)
    {
      v6 = v3 == 11;
    }

    else
    {
      v6 = 1;
    }

    ++v3;
    v4 += 2;
    if (v6)
    {
      return result;
    }
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::vectorEqualsArray<WTF::String,WTF::ASCIILiteral,13ul>(uint64_t result, uint64_t a2)
{
  if (*(result + 12) != 13)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  v4 = (a2 + 8);
  while (v3 < *(v2 + 12))
  {
    if (*v4)
    {
      v5 = *v4 - 1;
    }

    else
    {
      v5 = 0;
    }

    result = MEMORY[0x19EB01EF0](*(*v2 + 8 * v3), *(v4 - 1), v5);
    if (result)
    {
      v6 = v3 == 12;
    }

    else
    {
      v6 = 1;
    }

    ++v3;
    v4 += 2;
    if (v6)
    {
      return result;
    }
  }

  __break(0xC471u);
  return result;
}

void *WebKit::ResourceLoadStatisticsStore::interruptAllDatabases(WebKit::ResourceLoadStatisticsStore *this)
{
  if ((byte_1ED6425D2 & 1) == 0)
  {
    *&dword_1ED6425E8 = 0;
    qword_1ED6425E0 = 0;
    byte_1ED6425D2 = 1;
  }

  v16 = &qword_1ED6425E0;
  v17 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&qword_1ED6425E0);
  v18 = v1;
  v2 = qword_1ED6425E0;
  if (qword_1ED6425E0)
  {
    v3 = *(qword_1ED6425E0 - 4);
    v4 = qword_1ED6425E0 + 8 * v3;
    v19 = v4;
    v20 = v4;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v4 = 0;
    v3 = 0;
  }

  v11 = &qword_1ED6425E0;
  v12 = v4;
  v13 = v4;
  v14 = v4;
  v15 = v2 + 8 * v3;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v11);
  v6 = v17;
  v7 = v12;
  while (v6 != v7)
  {
    v8 = *(*v6 + 8);
    v9 = (v8 + 104);
    ++*(v8 + 104);
    if (*(v8 + 24))
    {
      WebCore::SQLiteDatabase::interrupt();
    }

    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref(v9);
    v10 = v6 + 1;
    v17 = v6 + 1;
    if (v6 + 1 != v18)
    {
      do
      {
        if ((*v10 + 1) > 1)
        {
          break;
        }

        ++v10;
      }

      while (v10 != v18);
      v17 = v10;
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v16);
    v6 = v17;
    ++*(v16 + 2);
  }

  return result;
}

BOOL WebKit::ResourceLoadStatisticsStore::createSchema(WebKit::ResourceLoadStatisticsStore *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v17 = *(this + 83);
      v18 = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v17;
      v22 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v24 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createObservedDomain";
      goto LABEL_44;
    }

    return 0;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v4 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v4;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopLevelDomains";
LABEL_44:
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, v5, &v18, 0x26u);
    return 0;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v6 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v6;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createStorageAccessUnderTopFrameDomains";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v7 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v7;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameUniqueRedirectsTo";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v8 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v8;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v9 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v9;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameUniqueRedirectsFrom";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v10 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v10;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameLinkDecorationsFrom";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v11 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createTopFrameLoadedThirdPartyScripts";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v12 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v12;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubframeUnderTopFrameDomains";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v13 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v13;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubresourceUnderTopFrameDomains";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v14 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v14;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubresourceUniqueRedirectsTo";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v15 = *(this + 83);
    v18 = 134218755;
    v19 = this;
    v20 = 2048;
    v21 = v15;
    v22 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    v24 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createSubresourceUniqueRedirectsFrom";
    goto LABEL_44;
  }

  if ((WebCore::SQLiteDatabase::executeCommand() & 1) == 0)
  {
    v3 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v16 = *(this + 83);
      v18 = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v16;
      v22 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v24 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      v5 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::createSchema: failed to execute statement createOperatingDates";
      goto LABEL_44;
    }

    return 0;
  }

  return WebKit::ResourceLoadStatisticsStore::createUniqueIndices(this);
}

void WebKit::ResourceLoadStatisticsStore::destroyStatements(WebKit::ResourceLoadStatisticsStore *this)
{
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    WebCore::SQLiteStatement::operator delete(v2);
  }

  v3 = *(this + 42);
  *(this + 42) = 0;
  if (v3)
  {
    WebCore::SQLiteStatement::operator delete(v3);
  }

  v4 = *(this + 43);
  *(this + 43) = 0;
  if (v4)
  {
    WebCore::SQLiteStatement::operator delete(v4);
  }

  v5 = *(this + 46);
  *(this + 46) = 0;
  if (v5)
  {
    WebCore::SQLiteStatement::operator delete(v5);
  }

  v6 = *(this + 47);
  *(this + 47) = 0;
  if (v6)
  {
    WebCore::SQLiteStatement::operator delete(v6);
  }

  v7 = *(this + 48);
  *(this + 48) = 0;
  if (v7)
  {
    WebCore::SQLiteStatement::operator delete(v7);
  }

  v8 = *(this + 50);
  *(this + 50) = 0;
  if (v8)
  {
    WebCore::SQLiteStatement::operator delete(v8);
  }

  v9 = *(this + 51);
  *(this + 51) = 0;
  if (v9)
  {
    WebCore::SQLiteStatement::operator delete(v9);
  }

  v10 = *(this + 49);
  *(this + 49) = 0;
  if (v10)
  {
    WebCore::SQLiteStatement::operator delete(v10);
  }

  v11 = *(this + 52);
  *(this + 52) = 0;
  if (v11)
  {
    WebCore::SQLiteStatement::operator delete(v11);
  }

  v12 = *(this + 53);
  *(this + 53) = 0;
  if (v12)
  {
    WebCore::SQLiteStatement::operator delete(v12);
  }

  v13 = *(this + 54);
  *(this + 54) = 0;
  if (v13)
  {
    WebCore::SQLiteStatement::operator delete(v13);
  }

  v14 = *(this + 59);
  *(this + 59) = 0;
  if (v14)
  {
    WebCore::SQLiteStatement::operator delete(v14);
  }

  v15 = *(this + 55);
  *(this + 55) = 0;
  if (v15)
  {
    WebCore::SQLiteStatement::operator delete(v15);
  }

  v16 = *(this + 56);
  *(this + 56) = 0;
  if (v16)
  {
    WebCore::SQLiteStatement::operator delete(v16);
  }

  v17 = *(this + 57);
  *(this + 57) = 0;
  if (v17)
  {
    WebCore::SQLiteStatement::operator delete(v17);
  }

  v18 = *(this + 58);
  *(this + 58) = 0;
  if (v18)
  {
    WebCore::SQLiteStatement::operator delete(v18);
  }

  v19 = *(this + 60);
  *(this + 60) = 0;
  if (v19)
  {
    WebCore::SQLiteStatement::operator delete(v19);
  }

  v20 = *(this + 62);
  *(this + 62) = 0;
  if (v20)
  {
    WebCore::SQLiteStatement::operator delete(v20);
  }

  v21 = *(this + 44);
  *(this + 44) = 0;
  if (v21)
  {
    WebCore::SQLiteStatement::operator delete(v21);
  }

  v22 = *(this + 45);
  *(this + 45) = 0;
  if (v22)
  {
    WebCore::SQLiteStatement::operator delete(v22);
  }

  v23 = *(this + 63);
  *(this + 63) = 0;
  if (v23)
  {
    WebCore::SQLiteStatement::operator delete(v23);
  }

  v24 = *(this + 64);
  *(this + 64) = 0;
  if (v24)
  {
    WebCore::SQLiteStatement::operator delete(v24);
  }

  v25 = *(this + 65);
  *(this + 65) = 0;
  if (v25)
  {
    WebCore::SQLiteStatement::operator delete(v25);
  }

  v26 = *(this + 66);
  *(this + 66) = 0;
  if (v26)
  {
    WebCore::SQLiteStatement::operator delete(v26);
  }

  v27 = *(this + 67);
  *(this + 67) = 0;
  if (v27)
  {
    WebCore::SQLiteStatement::operator delete(v27);
  }

  v28 = *(this + 68);
  *(this + 68) = 0;
  if (v28)
  {
    WebCore::SQLiteStatement::operator delete(v28);
  }

  v29 = *(this + 69);
  *(this + 69) = 0;
  if (v29)
  {
    WebCore::SQLiteStatement::operator delete(v29);
  }

  v30 = *(this + 70);
  *(this + 70) = 0;
  if (v30)
  {
    WebCore::SQLiteStatement::operator delete(v30);
  }

  v31 = *(this + 71);
  *(this + 71) = 0;
  if (v31)
  {
    WebCore::SQLiteStatement::operator delete(v31);
  }

  v32 = *(this + 72);
  *(this + 72) = 0;
  if (v32)
  {
    WebCore::SQLiteStatement::operator delete(v32);
  }

  v33 = *(this + 73);
  *(this + 73) = 0;
  if (v33)
  {
    WebCore::SQLiteStatement::operator delete(v33);
  }

  v34 = *(this + 74);
  *(this + 74) = 0;
  if (v34)
  {
    WebCore::SQLiteStatement::operator delete(v34);
  }

  v35 = *(this + 75);
  *(this + 75) = 0;
  if (v35)
  {
    WebCore::SQLiteStatement::operator delete(v35);
  }

  v36 = *(this + 76);
  *(this + 76) = 0;
  if (v36)
  {
    WebCore::SQLiteStatement::operator delete(v36);
  }

  v37 = *(this + 77);
  *(this + 77) = 0;
  if (v37)
  {
    WebCore::SQLiteStatement::operator delete(v37);
  }

  v38 = *(this + 78);
  *(this + 78) = 0;
  if (v38)
  {
    WebCore::SQLiteStatement::operator delete(v38);
  }

  v39 = *(this + 79);
  *(this + 79) = 0;
  if (v39)
  {
    WebCore::SQLiteStatement::operator delete(v39);
  }

  v40 = *(this + 61);
  *(this + 61) = 0;
  if (v40)
  {

    WebCore::SQLiteStatement::operator delete(v40);
  }
}

uint64_t WebKit::ResourceLoadStatisticsStore::insertObservedDomain(WebCore::SQLiteStatement **this, const WebCore::ResourceLoadStatistics *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!(WebKit::ResourceLoadStatisticsStore::domainID(this, a2) >> 32))
  {
    WebKit::DatabaseUtilities::scopedStatement(this, this + 42, "insertObservedDomain", &v17);
    if (!v17 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::bindDouble(v17, *(a2 + 1)) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindDouble(v17, *(a2 + 3)) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17) || WebCore::SQLiteStatement::bindInt(v17))
    {
      goto LABEL_20;
    }

    v4 = v17;
    if ((*(a2 + 80) & 1) == 0)
    {
      WebCore::SQLiteStatement::bindDouble(v17, 0.0);
    }

    if (WebCore::SQLiteStatement::bindInt(v4))
    {
LABEL_20:
      v8 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v10 = this[83];
      Error = WebCore::SQLiteDatabase::lastError((this + 2));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 1024;
      v23 = Error;
      v24 = 2081;
      v25 = ErrorMsg;
      v13 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertObservedDomain: failed to bind parameters";
    }

    else
    {
      if (WebCore::SQLiteStatement::step(v17) == 101)
      {
        v6 = 1;
        goto LABEL_22;
      }

      v8 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        v6 = 0;
LABEL_22:
        MEMORY[0x19EB0CD50](&v17);
        return v6;
      }

      v14 = this[83];
      v15 = WebCore::SQLiteDatabase::lastError((this + 2));
      v16 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218755;
      v19 = this;
      v20 = 2048;
      v21 = v14;
      v22 = 1024;
      v23 = v15;
      v24 = 2081;
      v25 = v16;
      v13 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertObservedDomain: failed to step statement";
    }

    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, v13, buf, 0x26u);
    goto LABEL_21;
  }

  v5 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v7 = this[83];
    *buf = 134218240;
    v19 = this;
    v20 = 2048;
    v21 = v7;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::insertObservedDomain: failed to find domain", buf, 0x16u);
  }

  return 0;
}

uint64_t WebKit::ResourceLoadStatisticsStore::domainID(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(this, this + 43, "domainID", &v16);
  if (!v16 || WebCore::SQLiteStatement::bindText())
  {
    v3 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v13 = this[83];
    Error = WebCore::SQLiteDatabase::lastError((this + 2));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
    *buf = 134218755;
    v18 = this;
    v19 = 2048;
    v20 = v13;
    v21 = 1024;
    v22 = Error;
    v23 = 2081;
    v24 = ErrorMsg;
    v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::domainID: failed to bind parameter";
LABEL_11:
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    goto LABEL_4;
  }

  if (WebCore::SQLiteStatement::step(v16) == 100)
  {
    v8 = WebCore::SQLiteStatement::columnInt(v16);
    v6 = v8 & 0xFFFFFF00;
    v4 = v8;
    v5 = 0x100000000;
    goto LABEL_5;
  }

  v3 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v9 = this[83];
    v10 = WebCore::SQLiteDatabase::lastError((this + 2));
    v11 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
    *buf = 134218755;
    v18 = this;
    v19 = 2048;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 2081;
    v24 = v11;
    v12 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::domainID: failed to step statement";
    goto LABEL_11;
  }

LABEL_4:
  v4 = 0;
  v5 = 0;
  v6 = 0;
LABEL_5:
  MEMORY[0x19EB0CD50](&v16);
  return v5 | v6 | v4;
}

BOOL WebKit::ResourceLoadStatisticsStore::relationshipExists(uint64_t a1, WebCore::SQLiteStatement **a2, uint64_t a3, uint64_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x100000000) == 0)
  {
    return 0;
  }

  if (*a2 && !WebCore::SQLiteStatement::bindInt(*a2) && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(*a2) == 100)
  {
    return WebCore::SQLiteStatement::columnInt(*a2) != 0;
  }

  v7 = qword_1ED641148;
  result = os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v8 = *(a1 + 664);
    v9 = 134218755;
    v10 = a1;
    v11 = 2048;
    v12 = v8;
    v13 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    v15 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::relationshipExists: failed to step statement", &v9, 0x26u);
    return 0;
  }

  return result;
}

void WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(uint64_t a1, atomic_uint **a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 344), "ensureResourceStatisticsForRegistrableDomain", v18);
  if (!*v18 || WebCore::SQLiteStatement::bindText())
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134219011;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      v24 = 1024;
      *v25 = Error;
      *&v25[4] = 2081;
      *&v25[6] = ErrorMsg;
      v26 = 2082;
      *&v27 = a3;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain: reason %{public}s, failed to bind parameter", buf, 0x30u);
    }

    goto LABEL_5;
  }

  if (WebCore::SQLiteStatement::step(*v18) == 100)
  {
    WebCore::SQLiteStatement::columnInt(*v18);
LABEL_5:
    MEMORY[0x19EB0CD50](v18);
    return;
  }

  MEMORY[0x19EB0CD50](v18);
  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *buf = v7;
  *&buf[8] = 0;
  buf[16] = 0;
  *v25 = 0xBFF0000000000000;
  v25[8] = 0;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v34 = 0;
  if ((WebKit::ResourceLoadStatisticsStore::insertObservedDomain(a1, buf) & 1) == 0)
  {
    v9 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 664);
      *v18 = 134218498;
      *&v18[4] = a1;
      v19 = 2048;
      v20 = v13;
      v21 = 2082;
      v22 = a3;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain: reason %{public}s, failed to insert observed domain", v18, 0x20u);
    }

    goto LABEL_15;
  }

  if (WebKit::ResourceLoadStatisticsStore::domainID(a1, a2) >> 32)
  {
LABEL_15:
    WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(buf, v8);
    return;
  }

  v14 = std::__throw_bad_optional_access[abi:sn200100]();
  WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(v14, v15, v16, v17);
}

void WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  memset(buf, 0, 20);
  buf[20] = 1;
  v7 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a3, a2, a3);
  v8 = v7;
  v71[0] = v7;
  v71[1] = v9;
  if (*a3)
  {
    v10 = *a3 + 8 * *(*a3 - 4);
  }

  else
  {
    v10 = 0;
  }

  if (v10 != v7)
  {
    do
    {
      WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, v8, "ensureAndMakeDomainList");
      if (v11)
      {
        v13 = *&buf[16];
        v14 = *v8;
        if (v14)
        {
          v15 = v14[1];
        }

        else
        {
          v15 = 0;
        }

        v16 = 2 * (*&buf[16] != 0);
        v17 = v15 + 2;
        if (v15 >= 0xFFFFFFFE)
        {
          v17 = -1;
        }

        v18 = __CFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          v19 = -1;
        }

        v18 = __CFADD__(*&buf[16], v19);
        v20 = *&buf[16] + v19;
        if (v18)
        {
          v21 = 0xFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        v22 = *&buf[8];
        if ((*&buf[8] || (v22 = *buf) != 0) && (*(v22 + 16) & 4) == 0 || v14 && (v14[4] & 4) == 0)
        {
          v23 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(buf);
          if (v23)
          {
            if (v13)
            {
              v24 = 2 * v16;
              v25 = ", ";
              v26 = v23;
              do
              {
                v27 = *v25++;
                *v26 = v27;
                v26 = (v26 + 2);
                v24 -= 2;
              }

              while (v24);
            }

            if (v11 <= v16)
            {
              goto LABEL_105;
            }

            v28 = (v23 + 2 * v16);
            *v28 = 34;
            v29 = (v28 + 1);
            v30 = v11 + ~v16;
            v73 = v14;
            v23 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v73, v29);
            v31 = v73;
            if (v73)
            {
              v31 = v73[1];
              if (v30 < v31)
              {
                goto LABEL_105;
              }
            }

            if (v30 == v31)
            {
              goto LABEL_105;
            }

            *&v29[2 * v31] = 34;
          }
        }

        else
        {
          v23 = MEMORY[0x19EB01170](buf, v21);
          if (v23)
          {
            if (v13)
            {
              *v23 = 8236;
            }

            if (v11 <= v16)
            {
              goto LABEL_105;
            }

            v32 = v23 + v16;
            *v32 = 34;
            WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v32 + 1, v11 + ~v16, v14, 34);
          }
        }
      }

      v71[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v71, v11, v12);
      v8 = v71[0];
    }

    while (v71[0] != v10);
    v34 = *buf;
    if (*buf)
    {
      goto LABEL_42;
    }
  }

  WTF::StringBuilder::shrinkToFit(buf);
  WTF::StringBuilder::reifyString(buf);
  v34 = *buf;
  if (*buf)
  {
LABEL_42:
    atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
  }

  v35 = *&buf[8];
  *&buf[8] = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v33);
  }

  v36 = *buf;
  *buf = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v33);
    if (v6)
    {
LABEL_49:
      v37 = *(v6 + 4);
      if (v34)
      {
        goto LABEL_50;
      }

LABEL_85:
      v38 = 0;
      goto LABEL_51;
    }
  }

  else if (v6)
  {
    goto LABEL_49;
  }

  v37 = 0;
  if (!v34)
  {
    goto LABEL_85;
  }

LABEL_50:
  v38 = *(v34 + 4);
  if (v38 < 0)
  {
    goto LABEL_107;
  }

LABEL_51:
  v39 = __OFADD__(v38, 3);
  v40 = v38 + 3;
  v41 = v39;
  if (v37 < 0)
  {
    goto LABEL_107;
  }

  if (v41)
  {
    goto LABEL_107;
  }

  v42 = (v37 + v40);
  if (__OFADD__(v37, v40))
  {
    goto LABEL_107;
  }

  if (v6 && (*(v6 + 16) & 4) == 0 || v34 && (*(v34 + 16) & 4) == 0)
  {
    if (v42 <= 0x7FFFFFEF)
    {
      WTF::tryFastCompactMalloc(buf, (2 * v42 + 20));
      v43 = *buf;
      if (*buf)
      {
        v44 = *buf + 20;
        **buf = 2;
        *(v43 + 4) = v42;
        *(v43 + 8) = v43 + 20;
        *(v43 + 16) = 0;
        v71[0] = v6;
        v23 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v71, (v43 + 20));
        v45 = v71[0];
        if (!v71[0] || (v45 = *(v71[0] + 4), v45 <= v42))
        {
          v46 = v42 - v45;
          v47 = (v44 + 2 * v45);
          *buf = v34;
          v23 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(buf, v47);
          v48 = *buf;
          if (!*buf || (v48 = *(*buf + 4), v46 >= v48))
          {
            v49 = &v47[2 * v48];
            *v49 = 2687008;
            *(v49 + 2) = 59;
            goto LABEL_75;
          }
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }
    }

LABEL_107:
    __break(0xC471u);
    return;
  }

  if ((v42 & 0x80000000) != 0)
  {
    goto LABEL_107;
  }

  WTF::tryFastCompactMalloc(buf, (v42 + 20));
  v43 = *buf;
  if (!*buf)
  {
    goto LABEL_107;
  }

  v50 = *buf + 20;
  **buf = 2;
  *(v43 + 4) = v42;
  *(v43 + 8) = v43 + 20;
  *(v43 + 16) = 4;
  v71[0] = v6;
  v23 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v71, (v43 + 20));
  v51 = v71[0];
  if (v71[0])
  {
    v51 = *(v71[0] + 4);
    if (v51 > v42)
    {
      goto LABEL_105;
    }
  }

  v52 = v42 - v51;
  v53 = v50 + v51;
  *buf = v34;
  v23 = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(buf, (v50 + v51));
  v54 = *buf;
  if (*buf)
  {
    v54 = *(*buf + 4);
    if (v52 < v54)
    {
      goto LABEL_105;
    }
  }

  v55 = v53 + v54;
  *(v55 + 2) = 59;
  *v55 = 10528;
LABEL_75:
  WebCore::SQLiteDatabase::prepareStatementSlow();
  if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v56);
    if (!v34)
    {
      goto LABEL_80;
    }
  }

  else if (!v34)
  {
    goto LABEL_80;
  }

  if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
LABEL_80:
    if (v6)
    {
      goto LABEL_81;
    }

    goto LABEL_87;
  }

  WTF::StringImpl::destroy(v34, v56);
  if (v6)
  {
LABEL_81:
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v56);
    }
  }

LABEL_87:
  if (v72 || WebCore::SQLiteStatement::bindInt(v71))
  {
    v57 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_90;
    }

    v67 = *(a1 + 664);
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    *buf = 134218755;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v67;
    v75 = 1024;
    v76 = Error;
    v77 = 2081;
    v78 = ErrorMsg;
    v63 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertDomainRelationshipList: failed to bind first parameter";
    goto LABEL_104;
  }

  v23 = *a2;
  if (!*a2)
  {
    goto LABEL_99;
  }

  v23 = WTF::StringImpl::find();
  if (v23 == -1)
  {
    goto LABEL_99;
  }

  if (v72)
  {
    goto LABEL_106;
  }

  v58 = *(a1 + 656);
  WTF::WallTime::now(v23);
  v23 = WebCore::SQLiteStatement::bindDouble(v71, v58 + v59);
  if (!v23)
  {
LABEL_99:
    if (!v72)
    {
      if (WebCore::SQLiteStatement::step(v71) == 101)
      {
        goto LABEL_90;
      }

      v57 = qword_1ED641148;
      if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }

      v64 = *(a1 + 664);
      v65 = WebCore::SQLiteDatabase::lastError((a1 + 16));
      v66 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v64;
      v75 = 1024;
      v76 = v65;
      v77 = 2081;
      v78 = v66;
      v63 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertDomainRelationshipList: failed to step statement";
      goto LABEL_104;
    }

LABEL_106:
    mpark::throw_bad_variant_access(v23);
  }

  v57 = qword_1ED641148;
  if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_90;
  }

  v60 = *(a1 + 664);
  v61 = WebCore::SQLiteDatabase::lastError((a1 + 16));
  v62 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
  *buf = 134218755;
  *&buf[4] = a1;
  *&buf[12] = 2048;
  *&buf[14] = v60;
  v75 = 1024;
  v76 = v61;
  v77 = 2081;
  v78 = v62;
  v63 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::insertDomainRelationshipList: failed to bind second parameter";
LABEL_104:
  _os_log_error_impl(&dword_19D52D000, v57, OS_LOG_TYPE_ERROR, v63, buf, 0x26u);
LABEL_90:
  if (!v72)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v71);
  }
}

_BYTE *WebKit::ResourceLoadStatisticsStore::insertDomainRelationships(WebKit::ResourceLoadStatisticsStore *this, const WebCore::ResourceLoadStatistics *a2)
{
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v28, this);
  v4 = WebKit::ResourceLoadStatisticsStore::domainID(this, a2);
  if (HIDWORD(v4))
  {
    v5 = v4;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v6 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 5, v5);
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v8 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 6, v5);
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v10 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 7, v5);
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v11);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v12 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 8, v5);
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v13);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v14 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 12, v5);
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v15);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 13, v5);
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v17);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 14, v5);
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v19);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v20 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 15, v5);
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v21);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v22 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 9, v5);
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v23);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v24 = v29;
    v27 = v29;
    WebKit::ResourceLoadStatisticsStore::insertDomainRelationshipList(this, &v27, a2 + 11, v5);
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v25);
    }
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v28);
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateLastSeen(uint64_t a1, uint64_t *a2, double a3)
{
  v19 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 400), "updateLastSeen", &v10);
  if (!v10 || WebCore::SQLiteStatement::bindDouble(v10, a3) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v10) != 101)
  {
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      v12 = a1;
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = Error;
      v17 = 2081;
      v18 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateLastSeen: failed to step statement", buf, 0x26u);
    }
  }

  return MEMORY[0x19EB0CD50](&v10);
}

uint64_t WebKit::ResourceLoadStatisticsStore::setUserInteraction(uint64_t a1, uint64_t *a2, int a3, double a4)
{
  v20 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 392), "setUserInteraction", &v11);
  if (!v11 || WebCore::SQLiteStatement::bindInt(v11) || WebCore::SQLiteStatement::bindDouble(v11, a4) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v11) != 101)
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      v13 = a1;
      v14 = 2048;
      v15 = v8;
      v16 = 1024;
      v17 = Error;
      v18 = 2081;
      v19 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setUserInteraction: failed to step statement", buf, 0x26u);
    }
  }

  return MEMORY[0x19EB0CD50](&v11);
}

_BYTE *WebKit::ResourceLoadStatisticsStore::setGrandfathered(WebCore::SQLiteStatement **this, atomic_uint **a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v12, this);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(this, a2, "setGrandfathered");
  if (v5)
  {
    WebKit::DatabaseUtilities::scopedStatement(this, this + 58, "setGrandfathered", &v11);
    if (!v11 || WebCore::SQLiteStatement::bindInt(v11) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v11) != 101)
    {
      v6 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v8 = this[83];
        Error = WebCore::SQLiteDatabase::lastError((this + 2));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
        *buf = 134218755;
        v14 = this;
        v15 = 2048;
        v16 = v8;
        v17 = 1024;
        v18 = Error;
        v19 = 2081;
        v20 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setGrandfathered: failed to step statement", buf, 0x26u);
      }
    }

    MEMORY[0x19EB0CD50](&v11);
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v12);
}

uint64_t WebKit::ResourceLoadStatisticsStore::setPrevalentResource(WebKit::ResourceLoadStatisticsStore *this, atomic_uint **a2)
{
  if ((*(this + 233) & 1) != 0 || (*(this + 723) & 1) != 0 || (result = MEMORY[0x19EB01EF0](*a2, "localhost", 9), (result & 1) == 0))
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v6, this);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(this, a2, "setPrevalentResource");
    if (v5)
    {
      WebKit::ResourceLoadStatisticsStore::setPrevalentResource(this, a2, 2);
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v6);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::setVeryPrevalentResource(WebKit::ResourceLoadStatisticsStore *this, atomic_uint **a2)
{
  if ((*(this + 233) & 1) != 0 || (*(this + 723) & 1) != 0 || (result = MEMORY[0x19EB01EF0](*a2, "localhost", 9), (result & 1) == 0))
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v6, this);
    WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(this, a2, "setVeryPrevalentResource");
    if (v5)
    {
      WebKit::ResourceLoadStatisticsStore::setPrevalentResource(this, a2, 4);
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v6);
  }

  return result;
}

_BYTE *WebKit::ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval(uint64_t a1, atomic_uint **a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v12, a1);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, a2, "setIsScheduledForAllScriptWrittenStorageRemoval");
  if (v5)
  {
    WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 480), "setIsScheduledForAllScriptWrittenStorageRemoval", &v11);
    if (!v11 || WebCore::SQLiteStatement::bindInt(v11) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v11) != 101)
    {
      v6 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        v14 = a1;
        v15 = 2048;
        v16 = v8;
        v17 = 1024;
        v18 = Error;
        v19 = 2081;
        v20 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval: failed to step statement", buf, 0x26u);
      }
    }

    MEMORY[0x19EB0CD50](&v11);
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v12);
}

_BYTE *WebKit::ResourceLoadStatisticsStore::mergeStatistic(WebCore::SQLiteStatement **this, const WebCore::ResourceLoadStatistics *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v33, this);
  WebKit::DatabaseUtilities::scopedStatement(this, this + 66, "mergeStatistic", &v32);
  if (v32 && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(v32) == 100)
  {
    v4 = v32;
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
    {
      v6 = this[83];
      *buf = 134217984;
      v38 = v6;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "ResourceLoadStatisticsStore::merge: sessionID=%llu", buf, 0xCu);
    }

    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v35, this);
    WebCore::SQLiteStatement::columnText(&v34, v4);
    WebCore::SQLiteStatement::columnDouble(v4);
    v8 = v7;
    WebCore::SQLiteStatement::columnDouble(v4);
    v10 = v9;
    v11 = WebCore::SQLiteStatement::columnInt(v4);
    v12 = WebCore::SQLiteStatement::columnInt(v4);
    v13 = WebCore::SQLiteStatement::columnInt(v4);
    v14 = WebCore::SQLiteStatement::columnInt(v4);
    v16 = WebCore::SQLiteStatement::columnInt(v4);
    v17 = *(a2 + 1);
    if (v8 < v17)
    {
      WebKit::ResourceLoadStatisticsStore::updateLastSeen(this, a2, v17);
    }

    v18 = *(a2 + 3);
    if (*(a2 + 16))
    {
      if (v10 >= v18)
      {
        v18 = v10;
      }

      v19 = this;
      v20 = a2;
      v21 = 1;
    }

    else
    {
      if (v18 != 0.0)
      {
        goto LABEL_18;
      }

      v18 = 0.0;
      v19 = this;
      v20 = a2;
      v21 = 0;
    }

    WebKit::ResourceLoadStatisticsStore::setUserInteraction(v19, v20, v21, v18);
LABEL_18:
    if (*(a2 + 32) == 1 && !v11)
    {
      WebKit::ResourceLoadStatisticsStore::setGrandfathered(this, a2, 1);
    }

    if (*(a2 + 128) == 1 && !v12)
    {
      WebKit::ResourceLoadStatisticsStore::setPrevalentResource(this, a2);
    }

    if (*(a2 + 129) == 1 && !v13)
    {
      WebKit::ResourceLoadStatisticsStore::setVeryPrevalentResource(this, a2);
    }

    if (*(a2 + 33) > v14)
    {
      WebKit::DatabaseUtilities::scopedStatement(this, this + 51, "updateDataRecordsRemoved", &v36);
      if (!v36 || WebCore::SQLiteStatement::bindInt(v36) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v36) != 101)
      {
        v24 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v29 = this[83];
          Error = WebCore::SQLiteDatabase::lastError((this + 2));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
          *buf = 134218755;
          v38 = this;
          v39 = 2048;
          v40 = v29;
          v41 = 1024;
          v42 = Error;
          v43 = 2081;
          v44 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateDataRecordsRemoved: failed to step statement", buf, 0x26u);
        }
      }

      MEMORY[0x19EB0CD50](&v36);
    }

    if (*(a2 + 80) == 1 && !v16)
    {
      WebKit::ResourceLoadStatisticsStore::setIsScheduledForAllScriptWrittenStorageRemoval(this, a2, 1);
    }

    v25 = v34;
    v34 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v15);
    }

    WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v35);
    goto LABEL_14;
  }

  v22 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v26 = this[83];
    v27 = WebCore::SQLiteDatabase::lastError((this + 2));
    v28 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
    *buf = 134218755;
    v38 = this;
    v39 = 2048;
    v40 = v26;
    v41 = 1024;
    v42 = v27;
    v43 = 2081;
    v44 = v28;
    _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::mergeStatistic: failed to step statement", buf, 0x26u);
  }

LABEL_14:
  MEMORY[0x19EB0CD50](&v32);
  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v33);
}

uint64_t WebKit::ResourceLoadStatisticsStore::getThirdPartyDataForSpecificFirstPartyDomains(WebKit::ResourceLoadStatisticsStore *this, uint64_t a2, const WebCore::RegistrableDomain *a3, const WebCore::RegistrableDomain *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::scopedStatement(a2, (a2 + 552), "getThirdPartyDataForSpecificFirstPartyDomains", &v44);
  if (!v44 || WebCore::SQLiteStatement::bindInt(v44) || WebCore::SQLiteStatement::bindInt(v44) || WebCore::SQLiteStatement::bindInt(v44))
  {
    v7 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a2 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a2 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a2 + 16));
      *buf = 134218755;
      *&buf[4] = a2;
      v47 = 2048;
      v48 = v9;
      v49 = 1024;
      v50 = Error;
      v51 = 2081;
      v52 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::getThirdPartyDataForSpecificFirstPartyDomains: failed to bind parameters", buf, 0x26u);
    }

    *this = 0;
    *(this + 1) = 0;
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    while (WebCore::SQLiteStatement::step(v44) == 100)
    {
      WebCore::SQLiteStatement::columnInt(*(a2 + 552));
      WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(buf, a2);
      WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v43, buf);
      v13 = *buf;
      *buf = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
      }

      v40 = v14;
      WebKit::DatabaseUtilities::scopedStatement(a2, (a2 + 560), "hasStorageAccess", buf);
      v15 = WebKit::ResourceLoadStatisticsStore::domainID(a2, a4);
      v16 = WebKit::ResourceLoadStatisticsStore::relationshipExists(a2, buf, v15, &v43);
      MEMORY[0x19EB0CD50](buf);
      v41 = v16;
      v17 = WebKit::ResourceLoadStatisticsStore::domainID(a2, a4);
      v18 = WebKit::ResourceLoadStatisticsStore::domainID(a2, &v43);
      v21 = -1.0;
      if (HIDWORD(v17) && HIDWORD(v18))
      {
        WebKit::DatabaseUtilities::scopedStatement(a2, (a2 + 568), "getMostRecentlyUpdatedTimestamp", &v45);
        if (!v45 || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45) || WebCore::SQLiteStatement::bindInt(v45))
        {
          v22 = qword_1ED641148;
          if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
          {
            v36 = *(a2 + 664);
            v37 = WebCore::SQLiteDatabase::lastError((a2 + 16));
            v38 = WebCore::SQLiteDatabase::lastErrorMsg((a2 + 16));
            *buf = 134218755;
            *&buf[4] = a2;
            v47 = 2048;
            v48 = v36;
            v49 = 1024;
            v50 = v37;
            v51 = 2081;
            v52 = v38;
            _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::getMostRecentlyUpdatedTimestamp: failed to step statement", buf, 0x26u);
          }
        }

        else if (WebCore::SQLiteStatement::step(v45) == 100)
        {
          WebCore::SQLiteStatement::columnDouble(v45);
          v21 = v39;
        }

        MEMORY[0x19EB0CD50](&v45);
      }

      v42 = v21;
      if (*(this + 3))
      {
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v25 = *this;
          if (WTF::equal(*(*this + v23), v40, v20))
          {
            if (*(v25 + v23 + 8) == v41)
            {
              break;
            }
          }

          ++v24;
          v26 = *(this + 3);
          v23 += 24;
          if (v24 >= v26)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v26 = 0;
LABEL_36:
        if (v26 == *(this + 2))
        {
          v27 = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this, v26 + 1, &v40);
          v28 = *(this + 3);
          v29 = *this;
          v30 = *v27;
          if (*v27)
          {
            atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
          }

          v31 = v29 + 24 * v28;
          *v31 = v30;
        }

        else
        {
          v32 = *this;
          v33 = v40;
          if (v40)
          {
            atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
          }

          v31 = v32 + 24 * v26;
          *v31 = v33;
          v27 = &v40;
        }

        *(v31 + 8) = *(v27 + 8);
        ++*(this + 3);
      }

      v34 = v40;
      v40 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v19);
      }

      v35 = v43;
      v43 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v19);
      }
    }
  }

  return MEMORY[0x19EB0CD50](&v44);
}

uint64_t *WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID@<X0>(uint64_t *__return_ptr a1@<X8>, WebCore::SQLiteStatement **this@<X0>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  *a1 = v5;
  WebKit::DatabaseUtilities::scopedStatement(this, this + 68, "getDomainStringFromDomainID", &v15);
  if (v15 && !WebCore::SQLiteStatement::bindInt(v15))
  {
    if (WebCore::SQLiteStatement::step(v15) == 100)
    {
      WebCore::SQLiteStatement::columnText(buf, this[68]);
      v9 = *buf;
      *buf = 0;
      *a1 = v9;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v8);
          v11 = *buf;
          *buf = 0;
          if (v11)
          {
            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v10);
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v12 = this[83];
      Error = WebCore::SQLiteDatabase::lastError((this + 2));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
      *buf = 134218755;
      *&buf[4] = this;
      v17 = 2048;
      v18 = v12;
      v19 = 1024;
      v20 = Error;
      v21 = 2081;
      v22 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::getDomainStringFromDomainID: failed to bind parameter", buf, 0x26u);
    }
  }

  return MEMORY[0x19EB0CD50](&v15);
}

void WebKit::ResourceLoadStatisticsStore::aggregatedThirdPartyData(WebKit::ResourceLoadStatisticsStore *this, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  WebCore::SQLiteDatabase::prepareStatement();
  if (v19 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::bindText())
  {
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a2 + 664);
      *buf = 134218755;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      *&buf[22] = 1024;
      Error = WebCore::SQLiteDatabase::lastError((a2 + 16));
      v22 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a2 + 16));
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::aggregatedThirdPartyData: failed to bind parameters", buf, 0x26u);
    }
  }

  else
  {
    while (1)
    {
      v4 = WebCore::SQLiteStatement::step(v18);
      if (v4 != 100)
      {
        break;
      }

      if (v19)
      {
        goto LABEL_8;
      }

      v4 = WebCore::SQLiteStatement::columnInt(v18);
      if (v4)
      {
        if (v19)
        {
LABEL_8:
          mpark::throw_bad_variant_access(v4);
        }

        v6 = WebCore::SQLiteStatement::columnInt(v18);
        WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(buf, a2);
        WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v17, buf);
        v8 = *buf;
        *buf = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v7);
        }

        v9 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        *buf = v9;
        WebKit::ResourceLoadStatisticsStore::getThirdPartyDataForSpecificFirstPartyDomains(&buf[8], a2, v6, &v17);
        v11 = *(this + 3);
        if (v11 == *(this + 2))
        {
          WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ITPThirdPartyData>(this, buf);
        }

        else
        {
          v12 = *this + 24 * v11;
          v13 = *buf;
          *buf = 0;
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          *v12 = v13;
          v14 = *&buf[8];
          *&buf[8] = 0;
          *(v12 + 8) = v14;
          LODWORD(v14) = *&buf[16];
          *&buf[16] = 0;
          *(v12 + 16) = v14;
          LODWORD(v14) = *&buf[20];
          *&buf[20] = 0;
          *(v12 + 20) = v14;
          ++*(this + 3);
        }

        WebKit::ITPThirdPartyData::~ITPThirdPartyData(buf, v10);
        v4 = v17;
        v17 = 0;
        if (v4)
        {
          if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v4 = WTF::StringImpl::destroy(v4, v15);
          }
        }
      }

      if (v19)
      {
        goto LABEL_8;
      }
    }
  }

  if (!v19)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v18);
  }
}

WTF::StringImpl *WebKit::buildList<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::StringImpl **a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  v5 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, a2, a3);
  v35[0] = v5;
  v35[1] = v6;
  if (*a2)
  {
    v7 = *a2 + 8 * *(*a2 - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != v5)
  {
    do
    {
      v8 = v38;
      v9 = *v5;
      if (*v5)
      {
        v10 = *(v9 + 4);
      }

      else
      {
        v10 = 0;
      }

      v11 = 2 * (v38 != 0);
      v12 = v10 + 2;
      if (v10 >= 0xFFFFFFFE)
      {
        v12 = -1;
      }

      v13 = __CFADD__(v11, v12);
      v14 = v11 + v12;
      if (v13)
      {
        v14 = -1;
      }

      v13 = __CFADD__(v38, v14);
      v15 = v38 + v14;
      if (v13)
      {
        v16 = 0xFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v37;
      if ((v37 || (v17 = v36) != 0) && (*(v17 + 16) & 4) == 0 || v9 && (*(v9 + 16) & 4) == 0)
      {
        result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v36);
        if (result)
        {
          if (v8)
          {
            v21 = 2 * v11;
            v22 = ", ";
            v23 = result;
            do
            {
              v24 = *v22++;
              *v23 = v24;
              v23 = (v23 + 2);
              v21 -= 2;
            }

            while (v21);
          }

          if (v19 <= v11)
          {
            goto LABEL_50;
          }

          v25 = (result + 2 * v11);
          *v25 = 34;
          v26 = (v25 + 1);
          v27 = v19 + ~v11;
          v40 = v9;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v40, v26);
          v28 = v40;
          if (v40)
          {
            v28 = *(v40 + 4);
            if (v27 < v28)
            {
              goto LABEL_50;
            }
          }

          if (v27 == v28)
          {
            goto LABEL_50;
          }

          *&v26[2 * v28] = 34;
        }
      }

      else
      {
        result = MEMORY[0x19EB01170](&v36, v16);
        if (result)
        {
          if (v8)
          {
            *result = 8236;
          }

          if (v19 <= v11 || (*(result + v11) = 34, v29 = result + v11 + 1, v30 = v19 + ~v11, v40 = v9, result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v40, v29), (v31 = v40) != 0) && (v31 = *(v40 + 4), v30 < v31) || v30 == v31)
          {
LABEL_50:
            __break(1u);
            return result;
          }

          v29[v31] = 34;
        }
      }

      v35[0] += 8;
      WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(v35, v19, v20);
      v5 = v35[0];
    }

    while (v35[0] != v7);
    v33 = v36;
    if (v36)
    {
      goto LABEL_42;
    }
  }

  WTF::StringBuilder::shrinkToFit(&v36);
  WTF::StringBuilder::reifyString(&v36);
  v33 = v36;
  if (v36)
  {
LABEL_42:
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  *a1 = v33;
  v34 = v37;
  v37 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v32);
  }

  result = v36;
  v36 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v32);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain(uint64_t a1, int a2, uint64_t ***a3, uint64_t a4)
{
  NonPrevalentDomainsThatRedirectedToThisDomain = a4;
  v40 = *MEMORY[0x1E69E9840];
  if (a4 < 0x32)
  {
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    WebCore::SQLiteDatabase::prepareStatement();
    if (v28 || (v9 = WebCore::SQLiteStatement::bindInt(v27), v9))
    {
      v10 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        v33 = a1;
        v34 = 2048;
        v35 = v19;
        v36 = 1024;
        v37 = Error;
        v38 = 2081;
        v39 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain: failed to bind parameter for findSubresources", buf, 0x26u);
      }

      NonPrevalentDomainsThatRedirectedToThisDomain = 0;
    }

    else
    {
      if (v28)
      {
LABEL_20:
        mpark::throw_bad_variant_access(v9);
      }

      NonPrevalentDomainsThatRedirectedToThisDomain = (NonPrevalentDomainsThatRedirectedToThisDomain + 1);
      while (1)
      {
        v9 = WebCore::SQLiteStatement::step(v27);
        if (v9 != 100)
        {
          break;
        }

        if (!v28)
        {
          v12 = WebCore::SQLiteStatement::columnInt(v27);
          *buf = v12;
          v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a3, v12, buf);
          if (v9)
          {
            *buf = v12;
            v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v29, v12, buf);
          }

          if (!v28)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      WebCore::SQLiteDatabase::prepareStatement();
      if (v26 || (v9 = WebCore::SQLiteStatement::bindInt(v25), v9))
      {
        v13 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 664);
          v23 = WebCore::SQLiteDatabase::lastError((a1 + 16));
          v24 = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
          *buf = 134218755;
          v33 = a1;
          v34 = 2048;
          v35 = v22;
          v36 = 1024;
          v37 = v23;
          v38 = 2081;
          v39 = v24;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain: failed to bind parameter for findTopFrames", buf, 0x26u);
        }

        NonPrevalentDomainsThatRedirectedToThisDomain = 0;
      }

      else
      {
        while (1)
        {
          if (v26)
          {
            goto LABEL_20;
          }

          v9 = WebCore::SQLiteStatement::step(v25);
          if (v9 != 100)
          {
            break;
          }

          if (v26)
          {
            goto LABEL_20;
          }

          v14 = WebCore::SQLiteStatement::columnInt(v25);
          *buf = v14;
          v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a3, v14, buf);
          if (v9)
          {
            *buf = v14;
            v9 = std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(&v29, v14, buf);
          }
        }

        v15 = v29;
        if (v31)
        {
          v16 = v29 == &v30;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          do
          {
            NonPrevalentDomainsThatRedirectedToThisDomain = WebKit::ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain(a1, *(v15 + 7), a3, NonPrevalentDomainsThatRedirectedToThisDomain);
            v17 = v15[1];
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v15[2];
                v16 = *v18 == v15;
                v15 = v18;
              }

              while (!v16);
            }

            v15 = v18;
          }

          while (v18 != &v30);
        }
      }

      if (!v26)
      {
        WebCore::SQLiteStatement::~SQLiteStatement(v25);
      }
    }

    if (!v28)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v27);
    }

    std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(v30);
  }

  else
  {
    v6 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 664);
      *buf = 134218496;
      v33 = a1;
      v34 = 2048;
      v35 = v7;
      v36 = 1024;
      v37 = 50;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain: hit %u recursive calls in redirect backtrace", buf, 0x1Cu);
    }
  }

  return NonPrevalentDomainsThatRedirectedToThisDomain;
}

WTF::StringImpl *WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>(WTF::StringImpl *result, WTF::StringImpl *a2, int *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCFB258);
  }

  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCFB278);
  }

  v8 = result;
  v9 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = 9 * ((v4 + ~(v4 << 15)) ^ ((v4 + ~(v4 << 15)) >> 10));
  v12 = (v11 ^ (v11 >> 6)) + ~((v11 ^ (v11 >> 6)) << 11);
  v13 = (v12 ^ HIWORD(v12)) & v10;
  v14 = (v9 + 40 * v13);
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == v4)
      {
        v24 = 0;
        v23 = v9 + 40 * *(v9 - 4);
        goto LABEL_24;
      }

      if (v15 == -1)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v10;
      v14 = (v9 + 40 * v13);
      v15 = *v14;
      ++v17;
    }

    while (*v14);
    if (v16)
    {
      *v16 = 0;
      *(v16 + 8) = 0u;
      *(v16 + 24) = 0u;
      --*(*a2 - 16);
      v4 = *a3;
      v14 = v16;
    }
  }

  *v14 = v4;
  v18 = *a4;
  *a4 = 0;
  v25 = *(a4 + 1);
  v26 = *(a4 + 6);
  result = *(v14 + 1);
  *(v14 + 1) = v18;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *(v14 + 1) = v25;
  *(v14 + 8) = v26;
  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v21 = (*(v19 - 16) + v20);
  v22 = *(v19 - 4);
  if (v22 > 0x400)
  {
    if (v22 <= 2 * v21)
    {
LABEL_20:
      result = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand(a2, v14);
      v14 = result;
      v19 = *a2;
      if (*a2)
      {
        LODWORD(v22) = *(v19 - 4);
      }

      else
      {
        LODWORD(v22) = 0;
      }
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_20;
  }

  v23 = v19 + 40 * v22;
  v24 = 1;
LABEL_24:
  *v8 = v14;
  *(v8 + 1) = v23;
  *(v8 + 16) = v24;
  return result;
}

WTF::StringImpl **WebKit::buildList<WTF::SizedIteratorRange<WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableKeysIterator<WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>,unsigned int,WebKit::ResourceLoadStatisticsStore::NotVeryPrevalentResources>>>(atomic_uint **a1, void *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v14 = 1;
  v3 = a2[1];
  v4 = a2[3];
  if (v3 != v4)
  {
    v8 = a2[2];
    do
    {
      if (v13)
      {
        v9 = ", ";
      }

      else
      {
        v9 = "";
      }

      if (v13)
      {
        v10 = 3;
      }

      else
      {
        v10 = 1;
      }

      v11 = *v3;
      v3 += 10;
      WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned int>(v12, v9, v10, v11);
      while (v3 != v8 && *v3 + 1 <= 1)
      {
        v3 += 10;
      }
    }

    while (v3 != v4);
  }

  v6 = *WTF::StringBuilder::toString(v12);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = v6;
  return WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(v12, v5);
}

uint64_t WebKit::ResourceLoadStatisticsStore::setPrevalentResource(WebCore::SQLiteStatement **this, const WebCore::RegistrableDomain *a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((*(this + 233) & 1) != 0 || (*(this + 723) & 1) != 0 || (result = MEMORY[0x19EB01EF0](*a2, "localhost", 9), (result & 1) == 0))
  {
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v30, this);
    v7 = WebKit::ResourceLoadStatisticsStore::domainID(this, a2);
    if (HIDWORD(v7))
    {
      v10 = v7;
      WebKit::DatabaseUtilities::scopedStatement(this, this + 52, "setPrevalentResource", &v29);
      if (!v29 || WebCore::SQLiteStatement::bindInt(v29) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v29) != 101)
      {
        v15 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          v16 = this[83];
          Error = WebCore::SQLiteDatabase::lastError((this + 2));
          ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
          *buf = 134218755;
          *&buf[4] = this;
          v35 = 2048;
          v36 = v16;
          v37 = 1024;
          v38 = Error;
          v39 = 2081;
          v40 = ErrorMsg;
          _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setPrevalentResource: failed at to step scopedUpdatePrevalentResourceStatement", buf, 0x26u);
        }
      }

      else
      {
        WebKit::DatabaseUtilities::scopedStatement(this, this + 54, "setPrevalentResource updateVeryPrevalentResource", &v28);
        if (a3 == 4 && (!v28 || WebCore::SQLiteStatement::bindInt(v28) || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v28) != 101))
        {
          v19 = qword_1ED641148;
          if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
          {
            v20 = this[83];
            v21 = WebCore::SQLiteDatabase::lastError((this + 2));
            v22 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
            *buf = 134218755;
            *&buf[4] = this;
            v35 = 2048;
            v36 = v20;
            v37 = 1024;
            v38 = v21;
            v39 = 2081;
            v40 = v22;
            _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setPrevalentResource: failed at to step scopedUpdateVeryPrevalentResourceStatement", buf, 0x26u);
          }
        }

        else
        {
          v27[0] = 0;
          v27[1] = 0;
          v26 = v27;
          WebKit::ResourceLoadStatisticsStore::recursivelyFindNonPrevalentDomainsThatRedirectedToThisDomain(this, v10, &v26, 0);
          WebKit::buildList<std::set<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>>(&v31, &v26);
          WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("UPDATE ObservedDomains SET isPrevalent = 1 WHERE domainID IN (", 63, &v31, 41, buf);
          WebCore::SQLiteDatabase::prepareStatementSlow();
          v12 = *buf;
          *buf = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v11);
          }

          v13 = v31;
          v31 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v11);
          }

          if (v33 || WebCore::SQLiteStatement::step(v32) != 101)
          {
            v14 = qword_1ED641148;
            if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
            {
              v23 = this[83];
              v24 = WebCore::SQLiteDatabase::lastError((this + 2));
              v25 = WebCore::SQLiteDatabase::lastErrorMsg((this + 2));
              *buf = 134218755;
              *&buf[4] = this;
              v35 = 2048;
              v36 = v23;
              v37 = 1024;
              v38 = v24;
              v39 = 2081;
              v40 = v25;
              _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::setDomainsAsPrevalent: failed to step statement", buf, 0x26u);
            }
          }

          if (!v33)
          {
            WebCore::SQLiteStatement::~SQLiteStatement(v32);
          }

          std::__tree<unsigned int,std::less<unsigned int>,WTF::FastAllocator<unsigned int>>::destroy(v27[0]);
        }

        MEMORY[0x19EB0CD50](&v28);
      }

      MEMORY[0x19EB0CD50](&v29);
    }

    else
    {
      v8 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v9 = this[83];
        *buf = 134218240;
        *&buf[4] = this;
        v35 = 2048;
        v36 = v9;
        _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu] - ResourceLoadStatisticsStore::setPrevalentResource: failed to find domain", buf, 0x16u);
      }
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v30);
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::cookieAccess(uint64_t a1, uint64_t *a2, atomic_uint **a3, unsigned __int8 a4)
{
  v25 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  if (!v16 && !WebCore::SQLiteStatement::bindText())
  {
    v10 = WebCore::SQLiteStatement::step(v15);
    if (v10 == 100)
    {
      if (v16 || (v10 = WebCore::SQLiteStatement::columnInt(v15), v16))
      {
        mpark::throw_bad_variant_access(v10);
      }

      v11 = v10 != 0;
      v12 = WebCore::SQLiteStatement::columnInt(v15) != 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(a1 + 720);
    if (!*(a1 + 720) || v13 == 3)
    {
      goto LABEL_18;
    }

    if (v13 == 4)
    {
      if (v11 | ((WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(a1, a3) & 1) == 0))
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
LABEL_18:
      if ((a4 | v12))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_6;
    }

    v8 = 1;
    goto LABEL_6;
  }

  v7 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 664);
    *buf = 134218755;
    v18 = a1;
    v19 = 2048;
    v20 = v14;
    v21 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
    v23 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::cookieAccess: failed to bind parameter", buf, 0x26u);
  }

  v8 = 0;
LABEL_6:
  if (!v16)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v15);
  }

  return v8;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grantStorageAccessInternal(uint64_t a1, WTF **a2, const WTF::StringImpl **a3, uint64_t a4, char a5, uint64_t a6, int a7, char a8, uint64_t **a9)
{
  v16 = WTF::equal(*a2, *a3, a3);
  if (v16)
  {
    v17 = *a9;
    *a9 = 0;
    (*(*v17 + 16))(v17, 1);
    v18 = *(*v17 + 8);

    return v18(v17);
  }

  else
  {
    if (a7)
    {
      v20 = WebKit::DatabaseUtilities::beginTransactionIfNecessary(&v36, a1);
      v21 = *(a1 + 656);
      WTF::WallTime::now(v20);
      WebKit::ResourceLoadStatisticsStore::setUserInteraction(a1, a2, 1, v21 + v22);
      v16 = WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(&v36);
    }

    WTF::RunLoop::mainSingleton(v16);
    WebCore::RegistrableDomain::isolatedCopy(&v36);
    WebCore::RegistrableDomain::isolatedCopy(&v37);
    *&v38 = a4;
    BYTE8(v38) = a5;
    v39 = a6;
    v23 = *(a1 + 112);
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
          goto LABEL_10;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v23);
LABEL_10:
      v40 = v23;
      v41 = a8;
      v26 = *a9;
      *a9 = 0;
      v42 = v26;
      v27 = WTF::fastMalloc(v26, 0x48);
      *v27 = &unk_1F1104A68;
      v27[1] = v36;
      v28 = v37;
      v36 = 0;
      v37 = 0;
      v27[2] = v28;
      v29 = v38;
      v27[5] = v39;
      *(v27 + 3) = v29;
      v27[6] = v40;
      *(v27 + 56) = v41;
      v30 = v42;
      v40 = 0;
      v42 = 0;
      v27[8] = v30;
      v43 = v27;
      WTF::RunLoop::dispatch();
      v32 = v43;
      v43 = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      v33 = v42;
      v42 = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      v34 = v40;
      v40 = 0;
      if (v34)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v34, v31);
      }

      v35 = v37;
      v37 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v31);
      }

      result = v36;
      v36 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v31);
      }
    }

    else
    {
      result = 114;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::grantStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessPromptWasShown,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::StorageAccessWasGranted)> &&)::$_1::~$_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v5, a2);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v6 + 32));
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, a2);
  }

  return a1;
}

WebKit::DatabaseUtilities *WebKit::ResourceLoadStatisticsStore::grandfatherDataForDomains(WebKit::DatabaseUtilities *result, uint64_t *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a2 && *(*a2 - 12))
  {
    v3 = result;
    WebKit::DatabaseUtilities::beginTransactionIfNecessary(v23, result);
    v6 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin(a2, v4, v5);
    v8 = v6;
    *buf = v6;
    *&buf[8] = v9;
    if (*a2)
    {
      v10 = *a2 + 8 * *(*a2 - 4);
    }

    else
    {
      v10 = 0;
    }

    if (v10 != v6)
    {
      do
      {
        WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(v3, v8, "grandfatherDataForDomains");
        *buf += 8;
        WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(buf, v11, v12);
        v8 = *buf;
      }

      while (*buf != v10);
    }

    WebKit::buildList<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v20, a2, v7);
    WTF::makeString<WTF::ASCIILiteral,WTF::String,char>("UPDATE ObservedDomains SET grandfathered = 1 WHERE registrableDomain IN (", 74, &v20, 41, buf);
    WebCore::SQLiteDatabase::prepareStatementSlow();
    v14 = *buf;
    *buf = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = v20;
    v20 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    if (v22 || WebCore::SQLiteStatement::step(v21) != 101)
    {
      v16 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v3 + 83);
        Error = WebCore::SQLiteDatabase::lastError((v3 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v3 + 16));
        *buf = 134218755;
        *&buf[4] = v3;
        *&buf[12] = 2048;
        *&buf[14] = v17;
        v25 = 1024;
        v26 = Error;
        v27 = 2081;
        v28 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::grandfatherDataForDomains: failed to step statement", buf, 0x26u);
      }
    }

    if (!v22)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v21);
    }

    return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v23);
  }

  return result;
}

BOOL WebKit::ResourceLoadStatisticsStore::isPrevalentResource(WebKit::ResourceLoadStatisticsStore *this, const WebCore::RegistrableDomain **a2)
{
  if (*(this + 233) & 1) == 0 && (*(this + 723) & 1) == 0 && (MEMORY[0x19EB01EF0](*a2, "localhost", 9))
  {
    return 0;
  }

  WebKit::DatabaseUtilities::scopedStatement(this, this + 53, "isPrevalentResource", &v6);
  v4 = WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(this, &v6, *a2) != 0;
  MEMORY[0x19EB0CD50](&v6);
  return v4;
}

uint64_t WebKit::ResourceLoadStatisticsStore::hasHadUserInteraction(uint64_t a1, atomic_uint **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v14, a1);
  WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 456), "hasHadUserInteraction", &v13);
  if (!v13 || WebCore::SQLiteStatement::bindText() || WebCore::SQLiteStatement::step(v13) != 100)
  {
    v8 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 664);
      Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
      *buf = 134218755;
      *&buf[4] = a1;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = Error;
      v20 = 2081;
      v21 = ErrorMsg;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::hasHadUserInteraction: failed to step statement", buf, 0x26u);
    }

    goto LABEL_10;
  }

  if (!WebCore::SQLiteStatement::columnInt(v13))
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = 1;
  WebCore::SQLiteStatement::columnDouble(v13);
  if (WebKit::ResourceLoadStatisticsStore::hasStatisticsExpired(a1, 0, v5))
  {
    v7 = WTF::fastMalloc(v6, 0x10);
    *v7 = &unk_1F1104AE0;
    *buf = v7;
    WebKit::ResourceLoadStatisticsStore::clearUserInteraction(a1, a2, buf);
    if (*buf)
    {
      (*(**buf + 8))(*buf);
    }

    goto LABEL_10;
  }

LABEL_11:
  MEMORY[0x19EB0CD50](&v13);
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v14);
  return v4;
}

_BYTE *WebKit::ResourceLoadStatisticsStore::clearUserInteraction(void *a1, atomic_uint **a2, uint64_t **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v17, a1);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, a2, "clearUserInteraction");
  if (v6)
  {
    WebKit::ResourceLoadStatisticsStore::setUserInteraction(a1, a2, 0, 0.0);
    WebCore::SQLiteDatabase::prepareStatement();
    if (v16)
    {
      goto LABEL_8;
    }

    v7 = WebCore::SQLiteStatement::bindInt(v15);
    if (v7)
    {
      goto LABEL_8;
    }

    if (v16)
    {
      mpark::throw_bad_variant_access(v7);
    }

    if (WebCore::SQLiteStatement::step(v15) != 101)
    {
LABEL_8:
      v9 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[83];
        Error = WebCore::SQLiteDatabase::lastError((a1 + 2));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 2));
        *buf = 134218755;
        v19 = a1;
        v20 = 2048;
        v21 = v12;
        v22 = 1024;
        v23 = Error;
        v24 = 2081;
        v25 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::clearUserInteraction: failed to step statement", buf, 0x26u);
      }

      v10 = *a3;
      *a3 = 0;
      (*(*v10 + 16))(v10);
      (*(*v10 + 8))(v10);
    }

    else
    {
      WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(a1, a3);
    }

    if (!v16)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v15);
    }
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8);
    (*(*v8 + 8))(v8);
  }

  return WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v17);
}

uint64_t WebKit::ResourceLoadStatisticsStore::hasStatisticsExpired(uint64_t a1, int a2, double a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v8 = *(a1 + 656);
      WTF::WallTime::now(a1);
      return v8 + v9 > a3 + 3600.0;
    }

    return 1;
  }

  if (a2)
  {
    if (*(a1 + 704) != 1)
    {
      goto LABEL_10;
    }

    v16 = WebKit::OperatingDate::fromWallTime(a1, a3);
    v17 = v11;
    v6 = WebKit::OperatingDate::secondsSinceEpoch(&v16);
    v7 = (a1 + 692);
  }

  else
  {
    if (*(a1 + 688) != 1)
    {
      goto LABEL_10;
    }

    v16 = WebKit::OperatingDate::fromWallTime(a1, a3);
    v17 = v5;
    v6 = WebKit::OperatingDate::secondsSinceEpoch(&v16);
    v7 = (a1 + 676);
  }

  if (v6 < WebKit::OperatingDate::secondsSinceEpoch(v7))
  {
    return 1;
  }

LABEL_10:
  if (*(a1 + 168) != 1)
  {
    return 0;
  }

  v12 = *(a1 + 656);
  WTF::WallTime::now(a1);
  if (*(a1 + 168))
  {
    return v12 + v13 > a3 + *(a1 + 160);
  }

  v14 = std::__throw_bad_optional_access[abi:sn200100]();
  return WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(v14, v15);
}

uint64_t *WebKit::ResourceLoadStatisticsStore::dumpResourceLoadStatistics(unint64_t a1, uint64_t *a2)
{
  v180 = *MEMORY[0x1E69E9840];
  if (*(a1 + 726) != 1)
  {
    WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 536), "dumpResourceLoadStatistics", &v168);
    if (v168)
    {
      v166 = 0;
      v167 = 0;
      while (WebCore::SQLiteStatement::step(v168) == 100)
      {
        WebCore::SQLiteStatement::columnText(buf, v168);
        LODWORD(v13) = HIDWORD(v167);
        if (HIDWORD(v167) == v167)
        {
          v16 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v166, HIDWORD(v167) + 1, buf);
          v13 = HIDWORD(v167);
          v17 = v166;
          v18 = *v16;
          *v16 = 0;
          v17[v13] = v18;
        }

        else
        {
          v14 = *buf;
          *buf = 0;
          v166[HIDWORD(v167)] = v14;
        }

        HIDWORD(v167) = v13 + 1;
        v15 = *buf;
        *buf = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v12);
        }
      }

      v153 = a2;
      *buf = WTF::codePointCompareLessThan;
      v19 = 126 - 2 * __clz(HIDWORD(v167));
      if (HIDWORD(v167))
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(WTF::String const&,WTF::String const&),WTF::String*,false>(v166, &v166[HIDWORD(v167)], buf, v20, 1);
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 1;
      WTF::StringBuilder::append();
      if (HIDWORD(v167))
      {
        v21 = v166;
        v22 = &v166[HIDWORD(v167)];
        v23 = "SELECT * FROM ObservedDomains WHERE registrableDomain = ?";
        v24 = &unk_1ED641000;
        v25 = "Registrable domain: ";
        v26 = "hadUserInteraction";
        do
        {
          WebKit::DatabaseUtilities::scopedStatement(a1, (a1 + 528), "resourceToString", &v156);
          if (v156 && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(v156) == 100)
          {
            *buf = v25;
            *&buf[8] = 21;
            LOBYTE(v172) = 10;
            WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(&v162, buf, v21, &v172);
            v27 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v162, v26, 19, v27);
            WTF::StringBuilder::append(&v162, 0xAu);
            WTF::StringBuilder::append();
            v28 = WebCore::SQLiteStatement::columnDouble(*(a1 + 528));
            WTF::WallTime::now(v28);
            WTF::StringBuilder::append();
            WTF::StringBuilder::append(&v162, 0xAu);
            v29 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v162, "grandfathered", 14, v29);
            WTF::StringBuilder::append(&v162, 0xAu);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "StorageAccessUnderTopFrameDomains", 34, v21);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "TopFrameUniqueRedirectsTo", 26, v21);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "TopFrameUniqueRedirectsFrom", 28, v21);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "TopFrameLinkDecorationsFrom", 28, v21);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "TopFrameLoadedThirdPartyScripts", 32, v21);
            WebCore::SQLiteStatement::columnInt(*(a1 + 528));
            *buf = "    DataRemovalFrequency: ";
            *&buf[8] = 27;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            LOBYTE(v170) = 10;
            WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(&v162, buf, &v172, &v170);
            v31 = v172;
            v172 = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v30);
            }

            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "SubframeUnderTopFrameDomains", 29, v21);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "SubresourceUnderTopFrameDomains", 32, v21);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "SubresourceUniqueRedirectsTo", 29, v21);
            WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(a1, &v162, "SubresourceUniqueRedirectsFrom", 31, v21);
            v32 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v162, "isPrevalentResource", 20, v32);
            WTF::StringBuilder::append(&v162, 0xAu);
            v33 = WebCore::SQLiteStatement::columnInt(*(a1 + 528)) != 0;
            WebKit::appendBoolean(&v162, "isVeryPrevalentResource", 24, v33);
            WTF::StringBuilder::append(&v162, 0xAu);
            v34 = WebCore::SQLiteStatement::columnInt(*(a1 + 528));
            v35 = v34;
            if ((v34 & 0x80000000) != 0)
            {
              v48 = -v34;
              v36 = 1;
              do
              {
                ++v36;
                v49 = v48 >= 0xA;
                v48 /= 0xAu;
              }

              while (v49);
            }

            else
            {
              v36 = 0;
              v37 = v34;
              do
              {
                ++v36;
                v38 = v37 > 9;
                v37 /= 0xAu;
              }

              while (v38);
            }

            v49 = __CFADD__(v36, 24);
            v50 = v36 + 24;
            if (v49)
            {
              v50 = -1;
            }

            if (__CFADD__(v164, v50))
            {
              v51 = 0xFFFFFFFFLL;
            }

            else
            {
              v51 = (v164 + v50);
            }

            v52 = v163;
            if ((v163 || (v52 = v162) != 0) && (*(v52 + 16) & 4) == 0)
            {
              v53 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v162);
              if (v53)
              {
                v55 = v54;
                v56 = 0;
                v57 = "    dataRecordsRemoved: ";
                do
                {
                  v58 = *v57++;
                  *(v53 + v56) = v58;
                  v56 += 2;
                }

                while (v56 != 48);
                if (v54 <= 0x17)
                {
                  goto LABEL_212;
                }

                v59 = (v53 + 48);
                v60 = v55 - 24;
                if ((v35 & 0x80000000) != 0)
                {
                  v70 = 0;
                  v71 = -v35;
                  v72 = -1;
                  do
                  {
                    if (v70 == -13)
                    {
                      goto LABEL_212;
                    }

                    v73 = v70;
                    v74 = v72;
                    buf[v70-- + 12] = (v71 % 0xA) | 0x30;
                    --v72;
                    v38 = v71 > 9;
                    v71 /= 0xAu;
                  }

                  while (v38);
                  if ((v70 + 12) < 0xD)
                  {
                    buf[v70 + 12] = 45;
                    while (v60)
                    {
                      *v59++ = buf[v74 + 12];
                      ++v74;
                      ++v73;
                      --v60;
                      if (v73 == 2)
                      {
                        goto LABEL_75;
                      }
                    }
                  }

                  goto LABEL_212;
                }

                WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v35, v59, v60);
              }
            }

            else
            {
              v61 = MEMORY[0x19EB01170](&v162, v51);
              if (v61)
              {
                qmemcpy(v61, "    dataRecordsRemoved: ", 24);
                if (v62 <= 0x17)
                {
                  goto LABEL_212;
                }

                v63 = v62 - 24;
                v64 = v61 + 24;
                if ((v35 & 0x80000000) != 0)
                {
                  v65 = 0;
                  v66 = -v35;
                  v67 = -1;
                  do
                  {
                    if (v65 == -13)
                    {
                      goto LABEL_212;
                    }

                    v68 = v65;
                    v69 = v67;
                    buf[v65-- + 12] = (v66 % 0xA) | 0x30;
                    --v67;
                    v38 = v66 > 9;
                    v66 /= 0xAu;
                  }

                  while (v38);
                  if ((v65 + 12) < 0xD)
                  {
                    buf[v65 + 12] = 45;
                    while (v63)
                    {
                      *v64++ = buf[v69++ + 12];
                      ++v68;
                      --v63;
                      if (v68 == 2)
                      {
                        goto LABEL_75;
                      }
                    }
                  }

LABEL_212:
                  __break(1u);
                }

                WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v35, v64, v63);
              }
            }

LABEL_75:
            WTF::StringBuilder::append(&v162, 0xAu);
          }

          else
          {
            v39 = *(v24 + 41);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = v23;
              v41 = *(a1 + 664);
              v42 = v26;
              v43 = v25;
              v44 = v22;
              v45 = v24;
              Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
              ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
              *buf = 134218755;
              *&buf[4] = a1;
              *&buf[12] = 2048;
              *&buf[14] = v41;
              v23 = v40;
              v176 = 1024;
              v177 = Error;
              v24 = v45;
              v22 = v44;
              v25 = v43;
              v26 = v42;
              v178 = 2081;
              v179 = ErrorMsg;
              _os_log_error_impl(&dword_19D52D000, v39, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::resourceToString: failed to step statement", buf, 0x26u);
            }
          }

          MEMORY[0x19EB0CD50](&v156);
          ++v21;
        }

        while (v21 != v22);
      }

      WebKit::ResourceLoadStatisticsStore::aggregatedThirdPartyData(&v160, a1);
      if (v161)
      {
        WTF::StringBuilder::append();
        if (v161)
        {
          v75 = v160;
          v154 = v160 + 24 * v161;
          while (1)
          {
            v76 = *v75;
            if (*v75)
            {
              atomic_fetch_add_explicit(v76, 2u, memory_order_relaxed);
            }

            v156 = v76;
            v77 = *(v75 + 20);
            v157 = 0;
            v158 = 0;
            v159 = v77;
            if (v77)
            {
              if (v77 >= 0xAAAAAAB)
              {
LABEL_213:
                __break(0xC471u);
                JUMPOUT(0x19DCFD898);
              }

              v78 = (3 * v77);
              v79 = 8 * v78;
              v80 = WTF::fastMalloc(v78, (8 * v78));
              v158 = v79 / 0x18;
              v157 = v80;
              v81 = *(v75 + 20);
              if (v81)
              {
                v82 = *(v75 + 8);
                v83 = v82 + 24 * v81;
                do
                {
                  v84 = *v82;
                  if (*v82)
                  {
                    atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                  }

                  *v80 = v84;
                  *(v80 + 1) = *(v82 + 8);
                  v80 += 3;
                  v82 += 24;
                }

                while (v82 != v83);
              }
            }

            v155 = v75;
            memset(buf, 0, 20);
            buf[20] = 1;
            v172 = "Third Party Registrable Domain: ";
            v173 = 33;
            v170 = "\n    {";
            v171 = 7;
            v85 = WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(buf, &v172, &v156, &v170);
            if (v159)
            {
              break;
            }

LABEL_161:
            WTF::StringBuilder::append(buf, 0x7Du);
            v130 = *buf;
            if (*buf || (WTF::StringBuilder::shrinkToFit(buf), WTF::StringBuilder::reifyString(buf), (v130 = *buf) != 0))
            {
              atomic_fetch_add_explicit(v130, 2u, memory_order_relaxed);
            }

            v131 = *&buf[8];
            *&buf[8] = 0;
            if (v131 && atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v131, v129);
            }

            v132 = *buf;
            *buf = 0;
            if (v132 && atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v132, v129);
            }

            if (v130)
            {
              v133 = *(v130 + 4);
            }

            else
            {
              v133 = 0;
            }

            v49 = __CFADD__(v133, 1);
            v134 = v133 + 1;
            if (v49)
            {
              v134 = -1;
            }

            if (__CFADD__(v164, v134))
            {
              v135 = 0xFFFFFFFFLL;
            }

            else
            {
              v135 = (v164 + v134);
            }

            v136 = v163;
            if ((v163 || (v136 = v162) != 0) && (*(v136 + 16) & 4) == 0 || v130 && (*(v130 + 16) & 4) == 0)
            {
              v137 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(&v162);
              if (v137)
              {
                v139 = v137;
                v140 = v138;
                *buf = v130;
                WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(buf, v137);
                v141 = *buf;
                if (*buf)
                {
                  v141 = *(*buf + 4);
                  if (v140 < v141)
                  {
                    goto LABEL_212;
                  }
                }

                if (v140 == v141)
                {
                  goto LABEL_212;
                }

                *&v139[2 * v141] = 10;
              }
            }

            else
            {
              v142 = MEMORY[0x19EB01170](&v162, v135);
              if (v142)
              {
                WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(v142, v138, v130, 10);
              }
            }

            if (v130 && atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v130, v138);
            }

            WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v157, v138);
            v144 = v156;
            v156 = 0;
            if (v144 && atomic_fetch_add_explicit(v144, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v144, v143);
            }

            v75 = v155 + 24;
            if (v155 + 24 == v154)
            {
              goto LABEL_199;
            }
          }

          v86 = v157;
          v87 = &v157[3 * v159];
          while (1)
          {
            v88 = *v86;
            if (*v86)
            {
              atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
              v89 = *(v86 + 8);
              v90 = *(v86 + 2);
              v172 = "{ ";
              v173 = 3;
              atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
              if (v89)
              {
                v91 = 49;
              }

              else
              {
                v91 = 48;
              }

              atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
            }

            else
            {
              v92 = *(v86 + 8);
              v90 = *(v86 + 2);
              v172 = "{ ";
              v173 = 3;
              if (v92)
              {
                v91 = 49;
              }

              else
              {
                v91 = 48;
              }
            }

            WTF::WallTime::now(v85);
            if (v94 - v90 >= 86400.0)
            {
              v95 = 48;
            }

            else
            {
              v95 = 49;
            }

            if (v88)
            {
              v96 = *(v88 + 4);
              if (v96 < 0)
              {
                goto LABEL_213;
              }
            }

            else
            {
              v96 = 0;
            }

            if (__OFADD__(v96, 24))
            {
              goto LABEL_213;
            }

            if (__OFADD__(v96 + 24, 22))
            {
              goto LABEL_213;
            }

            if (__OFADD__(v96 + 46, 1))
            {
              goto LABEL_213;
            }

            v97 = v96 + 49;
            if (__OFADD__(v96 + 47, 2))
            {
              goto LABEL_213;
            }

            v98 = __OFADD__(v96, v97);
            v99 = v96 + v97;
            if (v98)
            {
              goto LABEL_213;
            }

            v100 = v99 + 38;
            if (__OFADD__(v99, 38))
            {
              goto LABEL_213;
            }

            if (!v88 || (*(v88 + 16) & 4) != 0)
            {
              break;
            }

            if (v99 != -38)
            {
              if (v100 > 0x7FFFFFEF)
              {
                goto LABEL_213;
              }

              WTF::tryFastCompactMalloc(&v170, (2 * v100 + 20));
              v101 = v170;
              if (!v170)
              {
                goto LABEL_213;
              }

              *v170 = 2;
              *(v101 + 1) = v100;
              *(v101 + 1) = v101 + 20;
              *(v101 + 4) = 0;
              v102 = "Has been granted storage access under ";
              for (i = 20; i != 96; i += 2)
              {
                v104 = *v102++;
                *&v101[i] = v104;
              }

              if (v100 <= 0x25)
              {
                goto LABEL_212;
              }

              v105 = v100 - 38;
              v174 = v88;
              WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v174, v101 + 96);
              if (v174)
              {
                v106 = *(v174 + 4);
                if (v105 < v106)
                {
                  goto LABEL_212;
                }
              }

              else
              {
                v106 = 0;
              }

              v107 = &v101[2 * v106 + 96];
              *v107 = 2097210;
              v108 = v105 - v106;
              if (v105 - v106 <= 1)
              {
                goto LABEL_212;
              }

              if (v108 == 2)
              {
                goto LABEL_212;
              }

              v109 = 0;
              *(v107 + 4) = v91;
              v110 = "; Has been seen under ";
              do
              {
                v111 = *v110++;
                *&v101[2 * v106 + 102 + v109] = v111;
                v109 += 2;
              }

              while (v109 != 44);
              if (v108 - 3 <= 0x15)
              {
                goto LABEL_212;
              }

              v112 = v107 + 50;
              v113 = v108 - 25;
              v170 = v88;
              WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v170, (v107 + 50));
              v114 = v170;
              if (v170)
              {
                v114 = *(v170 + 1);
                if (v113 < v114)
                {
                  goto LABEL_212;
                }
              }

              v115 = 0;
              v116 = " in the last 24 hours: ";
              do
              {
                v117 = *v116++;
                *&v101[2 * v106 + 146 + 2 * v114 + v115] = v117;
                v115 += 2;
              }

              while (v115 != 46);
              if (v113 - v114 < 0x18)
              {
                goto LABEL_212;
              }

              *(v112 + 2 * v114 + 46) = v95;
              goto LABEL_142;
            }

            v127 = MEMORY[0x1E696EB88];
            atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
            v169 = v127;
LABEL_145:
            if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v88, v93);
            }

            if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v88, v93);
            }

LABEL_149:
            v170 = " },";
            v171 = 4;
            WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>(buf, &v172, &v169, &v170);
            v85 = v169;
            v169 = 0;
            if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v85 = WTF::StringImpl::destroy(v85, v128);
              if (v88)
              {
LABEL_152:
                if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v85 = WTF::StringImpl::destroy(v88, v128);
                }
              }
            }

            else if (v88)
            {
              goto LABEL_152;
            }

            v86 += 3;
            if (v86 == v87)
            {
              goto LABEL_161;
            }
          }

          if (v99 == -38)
          {
            v101 = MEMORY[0x1E696EB88];
            atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
          }

          else
          {
            if ((v100 & 0x80000000) != 0)
            {
              goto LABEL_213;
            }

            WTF::tryFastCompactMalloc(&v170, (v100 + 20));
            v101 = v170;
            if (!v170)
            {
              goto LABEL_213;
            }

            *v170 = 2;
            *(v101 + 1) = v100;
            *(v101 + 1) = v101 + 20;
            *(v101 + 4) = 4;
            qmemcpy(v101 + 20, "Has been granted storage access under ", 38);
            if (v100 <= 0x25)
            {
              goto LABEL_212;
            }

            v118 = v100 - 38;
            v174 = v88;
            WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v174, v101 + 58);
            if (v174)
            {
              v119 = *(v174 + 4);
              if (v118 < v119)
              {
                goto LABEL_212;
              }
            }

            else
            {
              v119 = 0;
            }

            v120 = v118 - v119;
            v121 = &v101[v119 + 58];
            *v121 = 8250;
            if (v120 <= 2)
            {
              goto LABEL_212;
            }

            v121[2] = v91;
            qmemcpy(v121 + 3, "; Has been seen under ", 22);
            if (v120 - 3 <= 0x15)
            {
              goto LABEL_212;
            }

            v122 = v120 - 25;
            v123 = v121 + 25;
            v170 = v88;
            WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v170, v121 + 25);
            v124 = v170;
            if (v170)
            {
              v124 = *(v170 + 1);
              if (v122 < v124)
              {
                goto LABEL_212;
              }
            }

            v125 = v122 - v124;
            v126 = &v124[v123];
            qmemcpy(v126, " in the last 24 hours: ", 23);
            if (v125 < 0x18)
            {
              goto LABEL_212;
            }

            v126[23] = v95;
          }

LABEL_142:
          v169 = v101;
          if (!v88)
          {
            goto LABEL_149;
          }

          goto LABEL_145;
        }
      }

LABEL_199:
      if (!v162)
      {
        WTF::StringBuilder::shrinkToFit(&v162);
        WTF::StringBuilder::reifyString(&v162);
      }

      v145 = *v153;
      *v153 = 0;
      (*(*v145 + 16))(v145, &v162);
      (*(*v145 + 8))(v145);
      WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v160, v146);
      v148 = v163;
      v163 = 0;
      if (v148 && atomic_fetch_add_explicit(v148, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v148, v147);
      }

      v149 = v162;
      v162 = 0;
      if (v149 && atomic_fetch_add_explicit(v149, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v149, v147);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v166, v147);
    }

    else
    {
      *buf = 0;
      v150 = *a2;
      *a2 = 0;
      (*(*v150 + 16))(v150, buf);
      (*(*v150 + 8))(v150);
      v152 = *buf;
      *buf = 0;
      if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v152, v151);
      }
    }

    return MEMORY[0x19EB0CD50](&v168);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 96), a1);
  v4 = *(a1 + 96);
  atomic_fetch_add(v4, 1u);
  v5 = *a2;
  *a2 = 0;
  v6 = *(a1 + 652);
  v7 = *(a1 + 648);
  if (v6 == v7)
  {
    v8 = v6 + (v6 >> 1);
    if (v8 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1 + 640, v9);
    v6 = *(a1 + 652);
  }

  v10 = *(a1 + 640);
  result = WTF::fastMalloc(v7, 0x18);
  *result = &unk_1F1104B08;
  result[1] = v4;
  result[2] = v5;
  *(v10 + 8 * v6) = result;
  ++*(a1 + 652);
  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::predicateValueForDomain(WebKit::ResourceLoadStatisticsStore *this, WebCore::SQLiteStatement **a2, const WebCore::RegistrableDomain *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a2 && !WebCore::SQLiteStatement::bindText() && WebCore::SQLiteStatement::step(*a2) == 100)
  {
    v5 = *a2;

    return WebCore::SQLiteStatement::columnInt(v5);
  }

  else
  {
    v7 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 83);
      v9 = 134218755;
      v10 = this;
      v11 = 2048;
      v12 = v8;
      v13 = 1024;
      Error = WebCore::SQLiteDatabase::lastError((this + 16));
      v15 = 2081;
      ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::predicateValueForDomain: failed to step statement", &v9, 0x26u);
    }

    return 0;
  }
}

uint64_t **WTF::Function<void ()(void)>::Function<WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>@<X0>(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x58);
  v6 = *a2;
  *a2 = 0;
  *v5 = &unk_1F1104B80;
  v5[1] = v6;
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5[2] = v7;
  v5[4] = 0;
  v5[3] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v5 + 3), (a2 + 16));
  v5[6] = 0;
  v5[5] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v5 + 5), (a2 + 32));
  v5[8] = 0;
  v5[7] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v5 + 7), (a2 + 48));
  v5[9] = 0;
  v8 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v5 + 9) = v8;
  *a1 = v5;
  return a1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::updateCookieBlocking(WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 48, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, v6);
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, v7);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  return a1;
}

WTF::StringImpl *WebKit::buildList<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(WTF::StringImpl **a1, unsigned int *a2, unsigned int a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      if (v15)
      {
        v6 = ", ";
      }

      else
      {
        v6 = "";
      }

      if (v15)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      v8 = *a2++;
      WTF::StringBuilder::append<WTF::ASCIILiteral,unsigned int>(&v13, v6, v7, v8);
      v5 -= 4;
    }

    while (v5);
    v10 = v13;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  WTF::StringBuilder::shrinkToFit(&v13);
  WTF::StringBuilder::reifyString(&v13);
  v10 = v13;
  if (v13)
  {
LABEL_12:
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *a1 = v10;
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

uint64_t WebKit::ResourceLoadStatisticsStore::hasHadUnexpiredRecentUserInteraction(void *a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) == 1)
  {
    v12[5] = v3;
    v12[6] = v4;
    if (WebKit::ResourceLoadStatisticsStore::hasStatisticsExpired(a1, a3, *(a2 + 16)))
    {
      if (!a3)
      {
        v9 = WTF::fastMalloc(v8, 0x10);
        *v9 = &unk_1F1104BF8;
        v12[0] = v9;
        WebKit::ResourceLoadStatisticsStore::clearUserInteraction(a1, (a2 + 8), v12);
        if (v12[0])
        {
          (*(*v12[0] + 8))(v12[0]);
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = *(a2 + 32);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldRemoveAllWebsiteDataFor(WebKit::ResourceLoadStatisticsStore *a1, uint64_t a2, int a3)
{
  if (WebKit::ResourceLoadStatisticsStore::isPrevalentResource(a1, (a2 + 8)))
  {
    hasHadUnexpiredRecentUserInteraction = WebKit::ResourceLoadStatisticsStore::hasHadUnexpiredRecentUserInteraction(a1, a2, 0);
    v7 = hasHadUnexpiredRecentUserInteraction ^ 1;
    if ((hasHadUnexpiredRecentUserInteraction & 1) == 0 && a3)
    {
      v7 = *(a2 + 33) ^ 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldRemoveAllButCookiesFor(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 722);
  v4 = v3 == 1;
  if (*(a2 + 34))
  {
    v4 = 0;
  }

  v5 = (a3 & *(a2 + 33));
  if (v3 == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v3 >= 2;
  if (v3 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 34) == 1;
  }

  if ((v4 | v5))
  {
    return 0;
  }

  else
  {
    return WebKit::ResourceLoadStatisticsStore::hasHadUnexpiredRecentUserInteraction(a1, a2, v9) ^ 1;
  }
}

uint64_t WebKit::ResourceLoadStatisticsStore::shouldEnforceSameSiteStrictFor(uint64_t a1, unint64_t a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 721) != 1 || a3 && (*(a2 + 33) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a2 + 36);
  if (*(a1 + 224) >= v5)
  {
    return 0;
  }

  v6 = WTF::fastMalloc(v5, 0x10);
  *v6 = &unk_1F1104C20;
  WebKit::DatabaseUtilities::beginTransactionIfNecessary(v16, a1);
  WebKit::ResourceLoadStatisticsStore::ensureResourceStatisticsForRegistrableDomain(a1, (a2 + 8), "clearTopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement");
  if (v7)
  {
    WebCore::SQLiteDatabase::prepareStatement();
    if (v15)
    {
      goto LABEL_10;
    }

    v8 = WebCore::SQLiteStatement::bindInt(v14);
    if (v8)
    {
      goto LABEL_10;
    }

    if (v15)
    {
      mpark::throw_bad_variant_access(v8);
    }

    if (WebCore::SQLiteStatement::step(v14) != 101)
    {
LABEL_10:
      v9 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        v18 = a1;
        v19 = 2048;
        v20 = v11;
        v21 = 1024;
        v22 = Error;
        v23 = 2081;
        v24 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::clearTopFrameUniqueRedirectsToSinceSameSiteStrictEnforcement: failed to step statement", buf, 0x26u);
      }
    }

    (*(*v6 + 16))(v6);
    (*(*v6 + 8))(v6);
    if (!v15)
    {
      WebCore::SQLiteStatement::~SQLiteStatement(v14);
    }
  }

  else
  {
    (*(*v6 + 16))(v6);
    (*(*v6 + 8))(v6);
  }

  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v16);
  return 1;
}

void WebKit::ResourceLoadStatisticsStore::appendSubStatisticList(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, WebCore::RegistrableDomain *a5)
{
  v7 = a3;
  v75 = *MEMORY[0x1E69E9840];
  if (a4 > 30)
  {
    if (a4 != 34)
    {
      if (a4 == 32)
      {
        if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6854646564616F4CLL || *(a3 + 2) != 0x7974726150647269 || *(a3 + 3) != 0x73747069726353)
        {
          v27 = *a3 == 0x756F736572627553 && *(a3 + 1) == 0x7265646E55656372;
          v28 = v27 && *(a3 + 2) == 0x656D617246706F54;
          if (!v28 || *(a3 + 3) != 0x736E69616D6F44)
          {
            goto LABEL_39;
          }
        }

        v16 = 91;
      }

      else
      {
        if (a4 != 31)
        {
          goto LABEL_39;
        }

        v36 = *a3 == 0x756F736572627553 && *(a3 + 1) == 0x7571696E55656372;
        v37 = v36 && *(a3 + 2) == 0x6365726964655265;
        if (!v37 || *(a3 + 23) != 0x6D6F7246737463)
        {
          goto LABEL_39;
        }

        v16 = 86;
      }

      goto LABEL_40;
    }

    if (!strcmp(a3, "StorageAccessUnderTopFrameDomains"))
    {
LABEL_28:
      v16 = 82;
      goto LABEL_40;
    }

LABEL_39:
    v16 = 1;
    goto LABEL_40;
  }

  if (a4 == 26)
  {
    if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6552657571696E55 || *(a3 + 2) != 0x5473746365726964 || *(a3 + 12) != 111)
    {
      goto LABEL_39;
    }

LABEL_97:
    v16 = 74;
    goto LABEL_40;
  }

  if (a4 != 28)
  {
    if (a4 == 29)
    {
      if (*a3 == 0x656D617266627553 && *(a3 + 1) == 0x706F547265646E55 && *(a3 + 2) == 0x6D6F44656D617246 && *(a3 + 21) == 0x736E69616D6F44)
      {
        v16 = 85;
        goto LABEL_40;
      }

      if (*a3 != 0x756F736572627553 || *(a3 + 1) != 0x7571696E55656372 || *(a3 + 2) != 0x6365726964655265 || *(a3 + 21) != 0x6F547374636572)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    goto LABEL_39;
  }

  if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6552657571696E55 || *(a3 + 2) != 0x4673746365726964 || *(a3 + 6) != 7171954)
  {
    if (*a3 != 0x656D617246706F54 || *(a3 + 1) != 0x6F6365446B6E694CLL || *(a3 + 2) != 0x46736E6F69746172 || *(a3 + 6) != 7171954)
    {
      goto LABEL_39;
    }

    goto LABEL_97;
  }

  v16 = 78;
LABEL_40:
  if (v16 < 2)
  {
    return;
  }

  WebCore::SQLiteDatabase::prepareStatement();
  if (v68)
  {
    goto LABEL_46;
  }

  WebCore::RegistrableDomain::uncheckedCreateFromHost(a5, buf);
  if (!(WebKit::ResourceLoadStatisticsStore::domainID(a1, buf) >> 32))
  {
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_158;
  }

  v21 = WebCore::SQLiteStatement::bindInt(v67);
  v22 = *buf;
  *buf = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v22 = WTF::StringImpl::destroy(v22, v20);
    if (v21)
    {
LABEL_46:
      v23 = qword_1ED641148;
      if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 664);
        Error = WebCore::SQLiteDatabase::lastError((a1 + 16));
        ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((a1 + 16));
        *buf = 134218755;
        *&buf[4] = a1;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        v71 = 1024;
        v72 = Error;
        v73 = 2081;
        v74 = ErrorMsg;
        _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::appendSubStatisticList: failed to bind parameter", buf, 0x26u);
      }

      goto LABEL_48;
    }
  }

  else if (v21)
  {
    goto LABEL_46;
  }

  if (v68)
  {
LABEL_152:
    mpark::throw_bad_variant_access(v22);
  }

  if (WebCore::SQLiteStatement::step(v67) == 100)
  {
    if (a4)
    {
      v42 = a4 - 1;
    }

    else
    {
      v42 = 0;
    }

    if (!(v42 >> 31))
    {
      v43 = *(a2 + 4);
      v44 = __CFADD__(v43, v42 + 6);
      v45 = v43 + v42 + 6;
      if (v44)
      {
        v46 = 0xFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      v47 = a2[1];
      if ((v47 || (v47 = *a2) != 0) && (*(v47 + 16) & 4) == 0)
      {
        v22 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a2);
        if (v22)
        {
          *v22 = 0x20002000200020;
          v22 += 8;
          if (v48 > 3)
          {
            v49 = (v22 + 2 * v42);
            if (v42 >= 0x40)
            {
              v50 = v22 + 2 * (v42 & 0x7FFFFFC0);
              v51 = 0uLL;
              do
              {
                v76.val[0] = *v7;
                v52 = *(v7 + 1);
                v77.val[0] = *(v7 + 2);
                v53 = *(v7 + 3);
                v7 += 64;
                v54 = v53;
                v77.val[1] = 0uLL;
                v78.val[0] = v52;
                v76.val[1] = 0uLL;
                v55 = v22;
                vst2q_s8(v55, v76);
                v55 += 32;
                v78.val[1] = 0uLL;
                vst2q_s8(v55, v78);
                v56 = (v22 + 64);
                vst2q_s8(v56, v77);
                v57 = (v22 + 96);
                vst2q_s8(v57, *(&v51 - 1));
                v22 += 128;
              }

              while (v22 != v50);
              v22 = v50;
            }

            while (v22 != v49)
            {
              v58 = *v7++;
              *v22 = v58;
              v22 += 2;
            }

            if (v48 - 4 >= v42)
            {
              *v49 = 655418;
              goto LABEL_144;
            }
          }

LABEL_159:
          __break(1u);
          return;
        }
      }

      else
      {
        v22 = MEMORY[0x19EB01170](a2, v46);
        if (v22)
        {
          *v22 = 538976288;
          if (v59 <= 3)
          {
            goto LABEL_159;
          }

          v60 = v59 - 4;
          v61 = (v22 + 4);
          if (v42)
          {
            if (v42 == 1)
            {
              *v61 = *v7;
            }

            else
            {
              v22 = memcpy((v22 + 4), v7, v42);
            }
          }

          if (v60 < v42)
          {
            goto LABEL_159;
          }

          *&v61[v42] = 2618;
        }
      }

LABEL_144:
      if (!v68)
      {
        WebCore::SQLiteStatement::columnInt(v67);
        WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(&v66, a1);
        *buf = "        ";
        *&buf[8] = 9;
        v69 = 10;
        v22 = WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(a2, buf, &v66, &v69);
        if (!v68)
        {
          while (1)
          {
            v22 = WebCore::SQLiteStatement::step(v67);
            if (v22 != 100)
            {
              break;
            }

            if (!v68)
            {
              WebCore::SQLiteStatement::columnInt(v67);
              WebKit::ResourceLoadStatisticsStore::getDomainStringFromDomainID(buf, a1);
              v64 = v66;
              v66 = *buf;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v63);
              }

              *buf = "        ";
              *&buf[8] = 9;
              v69 = 10;
              v22 = WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(a2, buf, &v66, &v69);
              if (!v68)
              {
                continue;
              }
            }

            goto LABEL_152;
          }

          v65 = v66;
          v66 = 0;
          if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v65, v62);
          }

          goto LABEL_48;
        }
      }

      goto LABEL_152;
    }

LABEL_158:
    __break(0xC471u);
    goto LABEL_159;
  }

LABEL_48:
  if (!v68)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v67);
  }
}

uint64_t WTF::StringBuilder::append<WTF::ASCIILiteral,WTF::String,char>(uint64_t *a1, void *a2, unint64_t *a3, char *a4)
{
  v4 = a2[1];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v10[0] = *a2;
  v10[1] = v6;
  if (v6 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v9 = *a3;
    v8 = *a4;
    return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(a1, v10, &v9, &v8);
  }

  return result;
}

uint64_t WebKit::appendBoolean(WTF::StringBuilder *a1, int8x16_t *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  if (a3)
  {
    v5 = a3 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
    goto LABEL_41;
  }

  if (a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(a1 + 1);
  if ((v8 || (v8 = *a1) != 0) && (*(v8 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!result)
    {
      return result;
    }

    *result = 0x20002000200020;
    result += 8;
    if (v10 > 3)
    {
      v11 = (result + 2 * v5);
      if (v5 >= 0x40)
      {
        v12 = result + 2 * (v5 & 0x7FFFFFC0);
        v13 = 0uLL;
        do
        {
          v31.val[0] = *a2;
          v14 = a2[1];
          v32.val[0] = a2[2];
          v15 = a2[3];
          a2 += 4;
          v16 = v15;
          v32.val[1] = 0uLL;
          v33.val[0] = v14;
          v31.val[1] = 0uLL;
          v17 = result;
          vst2q_s8(v17, v31);
          v17 += 32;
          v33.val[1] = 0uLL;
          vst2q_s8(v17, v33);
          v18 = (result + 64);
          vst2q_s8(v18, v32);
          v19 = (result + 96);
          vst2q_s8(v19, *(&v13 - 1));
          result += 128;
        }

        while (result != v12);
        result = v12;
      }

      v20 = v10 - 4;
      while (result != v11)
      {
        v21 = a2->u8[0];
        a2 = (a2 + 1);
        *result = v21;
        result += 2;
      }

      v25 = v20 >= v5;
      v26 = v20 - v5;
      if (v25)
      {
        *v11 = 2097210;
        if (v26 > 1)
        {
          v27 = v11 + 1;
          v28 = 2 * v7;
          do
          {
            v29 = *v4++;
            *v27++ = v29;
            v28 -= 2;
          }

          while (v28);
          return result;
        }
      }
    }

LABEL_41:
    __break(1u);
    return result;
  }

  result = MEMORY[0x19EB01170]();
  if (!result)
  {
    return result;
  }

  *result = 538976288;
  if (v22 <= 3)
  {
    goto LABEL_41;
  }

  v23 = v22 - 4;
  v24 = (result + 4);
  if (v5)
  {
    if (v5 == 1)
    {
      *v24 = a2->i8[0];
    }

    else
    {
      result = memcpy((result + 4), a2, v5);
    }
  }

  if (v23 < v5)
  {
    goto LABEL_41;
  }

  *&v24[v5] = 8250;
  if (v23 - v5 <= 1)
  {
    goto LABEL_41;
  }

  return memcpy(&v24[v5 + 2], v4, v7);
}

void WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(WebKit::ResourceLoadStatisticsStore *this)
{
  v28 = *MEMORY[0x1E69E9840];
  WebCore::SQLiteDatabase::prepareStatement();
  WebCore::SQLiteDatabase::prepareStatement();
  WebCore::SQLiteDatabase::prepareStatement();
  if (v22 || (v2 = WebCore::SQLiteStatement::step(v21), v2 != 100))
  {
    v6 = qword_1ED641148;
    if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v7 = *(this + 83);
    Error = WebCore::SQLiteDatabase::lastError((this + 16));
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    *buf = 134218755;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    v24 = 1024;
    v25 = Error;
    v26 = 2081;
    v27 = ErrorMsg;
    v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to step countOperatingDatesStatement";
    goto LABEL_20;
  }

  if (v22)
  {
    goto LABEL_25;
  }

  *(this + 168) = WebCore::SQLiteStatement::columnInt(v21);
  if (!v20)
  {
    v2 = WebCore::SQLiteStatement::step(v19);
    if (v2 == 100)
    {
      if (!v20)
      {
        v2 = WebCore::SQLiteStatement::columnInt(v19);
        if (!v20)
        {
          v3 = v2;
          v2 = WebCore::SQLiteStatement::columnInt(v19);
          if (!v20)
          {
            v4 = v2;
            v5 = WebCore::SQLiteStatement::columnInt(v19);
            *(this + 177) = v3;
            *(this + 178) = v4;
            *(this + 179) = v5;
            if (!v18)
            {
              *buf = this;
              *&buf[8] = v17;
              WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(void)::$_0::operator()<std::optional<WebKit::OperatingDate>,unsigned int>(buf, this + 692, 7);
              WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(void)::$_0::operator()<std::optional<WebKit::OperatingDate>,unsigned int>(buf, this + 676, 30);
              goto LABEL_11;
            }

            v6 = qword_1ED641148;
            if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
            {
              v14 = *(this + 83);
              v15 = WebCore::SQLiteDatabase::lastError((this + 16));
              v16 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
              *buf = 134218755;
              *&buf[4] = this;
              *&buf[12] = 2048;
              *&buf[14] = v14;
              v24 = 1024;
              v25 = v15;
              v26 = 2081;
              v27 = v16;
              v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to prepare getOperatingDateWindowStatement";
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }
      }

LABEL_25:
      mpark::throw_bad_variant_access(v2);
    }
  }

  v6 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v11 = *(this + 83);
    v12 = WebCore::SQLiteDatabase::lastError((this + 16));
    v13 = WebCore::SQLiteDatabase::lastErrorMsg((this + 16));
    *buf = 134218755;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    v24 = 1024;
    v25 = v12;
    v26 = 2081;
    v27 = v13;
    v10 = "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to step getMostRecentOperatingDateStatement";
LABEL_20:
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
  }

LABEL_11:
  if (!v18)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v17);
  }

  if (!v20)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v19);
  }

  if (!v22)
  {
    WebCore::SQLiteStatement::~SQLiteStatement(v21);
  }
}

void WebKit::ResourceLoadStatisticsStore::updateOperatingDatesParameters(void)::$_0::operator()<std::optional<WebKit::OperatingDate>,unsigned int>(void *a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*(*a1 + 672) <= (a3 - 1))
  {
    if (*(a2 + 12) == 1)
    {
      *(a2 + 12) = 0;
    }

    return;
  }

  v6 = a1[1];
  if (*(v6 + 24))
  {
    goto LABEL_20;
  }

  WebCore::SQLiteStatement::reset(v6);
  v6 = a1[1];
  if (*(v6 + 24))
  {
    goto LABEL_20;
  }

  if (WebCore::SQLiteStatement::bindInt(v6))
  {
    goto LABEL_8;
  }

  v6 = a1[1];
  if (*(v6 + 24))
  {
LABEL_20:
    mpark::throw_bad_variant_access(v6);
  }

  if (WebCore::SQLiteStatement::step(v6) == 100)
  {
    v6 = a1[1];
    if (!*(v6 + 24))
    {
      v9 = WebCore::SQLiteStatement::columnInt(v6);
      v6 = a1[1];
      if (!*(v6 + 24))
      {
        v10 = WebCore::SQLiteStatement::columnInt(v6);
        v6 = a1[1];
        if (!*(v6 + 24))
        {
          v11 = WebCore::SQLiteStatement::columnInt(v6);
          v12 = *(a2 + 12);
          *a2 = v9;
          *(a2 + 4) = v10;
          *(a2 + 8) = v11;
          if (v12 == 1)
          {
            v13 = qword_1ED641148;
            if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          else
          {
            *(a2 + 12) = 1;
            v13 = qword_1ED641148;
            if (!os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }
          }

          v14 = *(v4 + 664);
          v15 = 134218240;
          v16 = v14;
          v17 = 2048;
          v18 = WebKit::OperatingDate::secondsSinceEpoch(a2);
          _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "ResourceLoadStatisticsStore::updateOperatingDatesParameters: sessionID=%llu, memberOperatingDate: %lf", &v15, 0x16u);
          return;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v7 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    v8 = *(v4 + 664);
    v15 = 134218755;
    v16 = v4;
    v17 = 2048;
    v18 = v8;
    v19 = 1024;
    Error = WebCore::SQLiteDatabase::lastError((v4 + 16));
    v21 = 2081;
    ErrorMsg = WebCore::SQLiteDatabase::lastErrorMsg((v4 + 16));
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%p - [sessionID=%llu, error=%d, message=%{private}s] - ResourceLoadStatisticsStore::updateOperatingDatesParameters: failed to step getOperatingDateWindowStatement", &v15, 0x26u);
  }
}

uint64_t WebKit::operator<=>(WebKit::OperatingDate *a1, WebKit::OperatingDate *a2)
{
  v3 = WebKit::OperatingDate::secondsSinceEpoch(a1);
  v4 = WebKit::OperatingDate::secondsSinceEpoch(a2);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -127;
  }

  if (v3 > v4)
  {
    v5 = 1;
  }

  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setIsRunningTest(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4, a2);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  else
  {
    v7 = a2;
    v9 = *a3;
    *a3 = 0;
    v10 = WTF::fastMalloc(v3, 0x18);
    *v10 = &unk_1F1104C48;
    *(v10 + 8) = v7;
    v10[2] = v9;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v11 = v10;
      while (1)
      {
        v12 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v13 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v12)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
      v14 = WTF::fastMalloc(v12, 0x18);
      *v14 = &unk_1F11044F0;
      v14[1] = a1;
      v14[2] = v11;
      v15 = v14;
      WTF::SuspendableWorkQueue::dispatch();
      result = v15;
      if (v15)
      {
        return (*(*v15 + 8))(v15);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::postTask(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v5 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_4:
    v6 = *a2;
    *a2 = 0;
    v7 = WTF::fastMalloc(v4, 0x18);
    *v7 = &unk_1F11044F0;
    v7[1] = a1;
    v7[2] = v6;
    v9 = v7;
    WTF::SuspendableWorkQueue::dispatch();
    result = v9;
    if (v9)
    {
      return (*(*v9 + 8))(v9);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setShouldClassifyResourcesBeforeDataRecordsRemoval@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(a4, 0x18);
  *v7 = &unk_1F1104C70;
  *(v7 + 8) = v4;
  v7[2] = v6;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v8 = v7;
    while (1)
    {
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v11 = WTF::fastMalloc(v9, 0x18);
    *v11 = &unk_1F11044F0;
    v11[1] = a1;
    v11[2] = v8;
    v13 = v11;
    WTF::SuspendableWorkQueue::dispatch();
    result = v13;
    if (v13)
    {
      return (*(*v13 + 8))(v13);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  *a1 = 3;
  *(a1 + 8) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v10 = *(a2 + 8);
  atomic_fetch_add(v10, 1u);
  *(a1 + 16) = v10;
  v11 = WebKit::sharedStatisticsQueue((a1 + 24));
  *(a1 + 32) = 0;
  v12 = WTF::RunLoop::mainSingleton(v11);
  v13 = v12;
  while (1)
  {
    v14 = *(v12 + 8);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v20 = *(v12 + 8);
    atomic_compare_exchange_strong_explicit((v12 + 8), &v20, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v14)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v12 + 8));
LABEL_4:
  Statistics = WTF::RunLoop::Timer::Timer<WebKit::WebResourceLoadStatisticsStore>((a1 + 40), a1, v14);
  if (v13)
  {
    Statistics = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v13 + 8));
  }

  *(a1 + 88) = a5;
  *(a1 + 136) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v16 = WTF::RunLoop::mainSingleton(Statistics);
  if (WTF::RunLoop::isCurrent(v16))
  {
    if ((a5 & 1) == 0 && *a3 && *(*a3 + 4))
    {
      WTF::String::isolatedCopy();
      LOBYTE(v21) = a4;
      *(&v21 + 1) = *(a2 + 24);
      v17 = WTF::fastMalloc(*(&v21 + 1), 0x20);
      *v17 = &unk_1F1104CC0;
      v17[1] = 0;
      *(v17 + 1) = v21;
      v22 = v17;
      WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v22);
      v18 = v22;
      v22 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      WTF::RunLoop::TimerBase::start();
    }

    return a1;
  }

  else
  {
    result = 128;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WebKit::sharedStatisticsQueue@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  {
    v3 = a1;
    WTF::SuspendableWorkQueue::create();
    a1 = v3;
    WebKit::sharedStatisticsQueue(void)::queue = v4;
  }

  return WTF::Ref<WTF::SuspendableWorkQueue,WTF::RawPtrTraits<WTF::SuspendableWorkQueue>,WTF::DefaultRefDerefTraits<WTF::SuspendableWorkQueue>>::copyRef(&WebKit::sharedStatisticsQueue(void)::queue, a1);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::performDailyTasks(atomic_ullong *this)
{
  v2 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "WebResourceLoadStatisticsStore::performDailyTasks", v10, 2u);
  }

  v4 = WTF::fastMalloc(v3, 0x10);
  *v4 = &unk_1F1105300;
  if (*(this + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v5 = v4;
    while (1)
    {
      v6 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v7 = *this;
      atomic_compare_exchange_strong_explicit(this, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_7:
    v8 = WTF::fastMalloc(v6, 0x18);
    *v8 = &unk_1F11044F0;
    v8[1] = this;
    v8[2] = v5;
    v11 = v8;
    WTF::SuspendableWorkQueue::dispatch();
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WTF::RunLoop::Timer::Timer<WebKit::WebResourceLoadStatisticsStore>@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = WTF::fastMalloc(a4, 0x20);
  *v6 = &unk_1F1104C98;
  v6[1] = a3;
  v6[2] = WebKit::WebResourceLoadStatisticsStore::performDailyTasks;
  v6[3] = 0;
  result = WTF::RunLoop::TimerBase::TimerBase();
  *a1 = &unk_1F10E6DC8;
  a1[5] = v6;
  return result;
}

void WebKit::WebResourceLoadStatisticsStore::~WebResourceLoadStatisticsStore(WebKit::WebResourceLoadStatisticsStore *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0 || *(this + 4))
  {
    __break(0xC471u);
    JUMPOUT(0x19DCFF9FCLL);
  }

  v4 = *(this + 17);
  if (v4)
  {
    WTF::HashTable<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>>,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashMap<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue,WTF::DefaultHash<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::HashTraits<WebKit::WebResourceLoadStatisticsStore::StorageAccessRequestRecordValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  v5 = *(this + 15);
  if (v5)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(this + 14);
  if (v6)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  v7 = *(this + 13);
  if (v7)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v3);
  }

  v8 = *(this + 12);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v3);
  }

  WTF::RunLoop::Timer::~Timer((this + 40));
  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    WTF::RefCounted<WebKit::ResourceLoadStatisticsStore>::deref((v10 + 104));
  }

  v11 = *(this + 3);
  *(this + 3) = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v11 + 32));
  }

  v12 = *(this + 2);
  *(this + 2) = 0;
  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      WTF::fastFree(v12, v9);
    }
  }
}

uint64_t WebKit::WebResourceLoadStatisticsStore::create@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = WTF::fastMalloc(a5, 0x90);
  result = WebKit::WebResourceLoadStatisticsStore::WebResourceLoadStatisticsStore(v10, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

atomic_uint *WebKit::WebResourceLoadStatisticsStore::didDestroyNetworkSession@<X0>(WTF::RunLoop *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1104CE8;
  v5[1] = v4;
  v8 = WTF::fastMalloc(v6, 0x10);
  *v8 = 1;
  v8[1] = v5;
  v9 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    WTF::fastFree(v9, v7);
  }

  v10 = WTF::fastMalloc(atomic_fetch_add(v8, 1u), 0x10);
  *v10 = &unk_1F1104D10;
  v10[1] = v8;
  v12 = v10;
  WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(a1, &v12);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v8);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::destroyResourceLoadStatisticsStore(WTF::RunLoop *a1, uint64_t *a2)
{
  v4 = WTF::RunLoop::mainSingleton(a1);
  if (WTF::RunLoop::isCurrent(v4))
  {
    v5 = *(a1 + 88);
    if (v5 == 1)
    {
      v6 = *a2;
      *a2 = 0;
      (*(*v6 + 16))(v6);
      v7 = *(*v6 + 8);

      return v7(v6);
    }

    else
    {
      v9 = *a2;
      *a2 = 0;
      v10 = WTF::fastMalloc(v5, 0x10);
      *v10 = &unk_1F1104D38;
      v10[1] = v9;
      v11 = v10;
      WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v11);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    result = 192;
    __break(0xC471u);
  }

  return result;
}

uint64_t *WebKit::WebResourceLoadStatisticsStore::populateMemoryStoreFromDisk@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1104D60;
  v5[1] = v4;
  v7 = v5;
  WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t *WebKit::WebResourceLoadStatisticsStore::setResourceLoadStatisticsDebugMode(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4, a2);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  v7 = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v9[1];
    if (v10)
    {
      ++*(v10 + 16);
      v11 = *(v10 + 32);
      v22 = *(v10 + 24);
      v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 248), &v22);
      if (v12)
      {
        v13 = v12;
        ++*(v12 + 2);
        WebCore::NetworkStorageSession::setTrackingPreventionDebugLoggingEnabled(v12);
        v14 = *(v13 + 2);
        if (!v14)
        {
LABEL_22:
          __break(0xC471u);
          JUMPOUT(0x19DCFFFB0);
        }

        *(v13 + 2) = v14 - 1;
      }

      v15 = *(v10 + 16);
      if (!v15)
      {
        __break(0xC471u);
        JUMPOUT(0x19DCFFFD0);
      }

      v9 = (v15 - 1);
      *(v10 + 16) = v9;
    }
  }

  v16 = *a3;
  *a3 = 0;
  v17 = WTF::fastMalloc(v9, 0x18);
  *v17 = &unk_1F1104DD8;
  *(v17 + 8) = v7;
  v17[2] = v16;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_22;
  }

  v18 = v17;
  while (1)
  {
    v19 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v20 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
  v21 = WTF::fastMalloc(v19, 0x18);
  *v21 = &unk_1F11044F0;
  v21[1] = a1;
  v21[2] = v18;
  v22 = v21;
  WTF::SuspendableWorkQueue::dispatch();
  result = v22;
  v22 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setPrevalentResourceForDebugMode(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4, a2);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  else
  {
    WebCore::RegistrableDomain::isolatedCopy(v17);
    v8 = *a3;
    *a3 = 0;
    v17[1] = v8;
    v9 = WTF::fastMalloc(v8, 0x18);
    *v9 = &unk_1F1104E00;
    *(v9 + 1) = *v17;
    v17[0] = 0;
    v17[1] = 0;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v10 = v9;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_9;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F11044F0;
      v13[1] = a1;
      v13[2] = v10;
      v18 = v13;
      WTF::SuspendableWorkQueue::dispatch();
      v15 = v18;
      v18 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v16 = v17[1];
      v17[1] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      result = v17[0];
      v17[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::scheduleStatisticsAndDataRecordsProcessing@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1104E28;
  v5[1] = v4;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v6 = v5;
    while (1)
    {
      v7 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v8 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v9 = WTF::fastMalloc(v7, 0x18);
    *v9 = &unk_1F11044F0;
    v9[1] = a1;
    v9[2] = v6;
    v11 = v9;
    WTF::SuspendableWorkQueue::dispatch();
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::statisticsDatabaseHasAllTables@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1104E50;
  v5[1] = v4;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v6 = v5;
    while (1)
    {
      v7 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v8 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v9 = WTF::fastMalloc(v7, 0x18);
    *v9 = &unk_1F11044F0;
    v9[1] = a1;
    v9[2] = v6;
    v11 = v9;
    WTF::SuspendableWorkQueue::dispatch();
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(uint64_t a1, WebCore::NetworkStorageSession *a2, const WebCore::RegistrableDomain *a3, uint64_t a4, char a5, uint64_t a6, uint64_t **a7)
{
  v11 = *(a1 + 16);
  if (*(a1 + 88) != 1)
  {
    if (v11 && (v22 = *(v11 + 8)) != 0)
    {
      ++*(v22 + 16);
      v23 = *(v22 + 32);
      v46 = *(v22 + 24);
      v24 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v23 + 248), &v46);
      if (v24)
      {
        v25 = v24;
        ++*(v24 + 8);
        canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
        v27 = *(v25 + 8);
        if (!v27)
        {
          goto LABEL_42;
        }

        v28 = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
        *(v25 + 8) = v27 - 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v22 + 16);
      if (!v29)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD0089CLL);
      }

      *(v22 + 16) = v29 - 1;
    }

    else
    {
      v28 = 0;
    }

    WebCore::RegistrableDomain::isolatedCopy(&v46);
    WebCore::RegistrableDomain::isolatedCopy(&v47);
    *v48 = a4;
    v48[8] = a5;
    *&v48[16] = a6;
    v48[24] = v28;
    v30 = *a7;
    *a7 = 0;
    v49 = v30;
    v31 = WTF::fastMalloc(v30, 0x40);
    *v31 = &unk_1F1104F18;
    v31[1] = v46;
    v32 = v47;
    v46 = 0;
    v47 = 0;
    v31[2] = v32;
    v33 = *&v48[9];
    *(v31 + 3) = *v48;
    *(v31 + 33) = v33;
    v34 = v49;
    v49 = 0;
    v31[7] = v34;
    if (*(a1 + 88) != 1)
    {
      v35 = v31;
      while (1)
      {
        v36 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v37 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v37, v36 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v37 == v36)
        {
          goto LABEL_19;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
      v38 = WTF::fastMalloc(v36, 0x18);
      *v38 = &unk_1F11044F0;
      v38[1] = a1;
      v38[2] = v35;
      v50 = v38;
      WTF::SuspendableWorkQueue::dispatch();
      v40 = v50;
      v50 = 0;
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

      v41 = v49;
      v49 = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      v42 = v47;
      v47 = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v39);
      }

      result = v46;
      v46 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v39);
      }

      return result;
    }

LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x19DD0087CLL);
  }

  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      ++*(v12 + 16);
      v13 = *(v12 + 32);
      v46 = *(v12 + 24);
      v14 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v13 + 248), &v46);
      if (v14)
      {
        v15 = v14;
        ++*(v14 + 8);
        hasStorageAccess = WebCore::NetworkStorageSession::hasStorageAccess();
        v17 = *a7;
        *a7 = 0;
        (*(*v17 + 16))(v17, hasStorageAccess);
        result = (*(*v17 + 8))(v17);
        v19 = *(v15 + 8);
        if (!v19)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD008DCLL);
        }

        *(v15 + 8) = v19 - 1;
        v20 = *(v12 + 16);
        if (v20)
        {
          *(v12 + 16) = v20 - 1;
          return result;
        }

LABEL_40:
        __break(0xC471u);
        JUMPOUT(0x19DD008BCLL);
      }

      v43 = *(v12 + 16);
      if (!v43)
      {
        goto LABEL_40;
      }

      *(v12 + 16) = v43 - 1;
    }
  }

  v44 = *a7;
  *a7 = 0;
  (*(*v44 + 16))(v44, 0, a3);
  v45 = *(*v44 + 8);

  return v45(v44);
}

WTF::StringImpl *WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(uint64_t a1, WTF **a2, atomic_uint **a3, WTF::StringImpl *a4, WTF::StringImpl *a5, uint64_t a6, char a7, uint64_t *a8)
{
  if (!WTF::equal(*a2, *a3, a3))
  {
    v80 = a5;
    LOBYTE(v92) = 0;
    v95 = 0;
    v22 = *(a1 + 16);
    if (v22 && (v23 = *(v22 + 8)) != 0)
    {
      ++*(v23 + 16);
      v24 = *(v23 + 32);
      v81[0] = *(v23 + 24);
      v25 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v24 + 248), v81);
      if (v25)
      {
        v26 = v25;
        ++*(v25 + 8);
        canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
        WebCore::NetworkStorageSession::storageAccessQuirkForDomainPair();
        std::__optional_storage_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::OrganizationStorageAccessPromptQuirk,false>>(&v92, v81);
        if (v83 == 1)
        {
          WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v82, v27);
          if (v81[1])
          {
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v81[1], v28);
          }

          v29 = v81[0];
          v81[0] = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v28);
          }
        }

        v30 = *(v26 + 8);
        if (!v30)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD010D4);
        }

        *(v26 + 8) = v30 - 1;
      }

      else
      {
        canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = 0;
      }

      v31 = *(v23 + 16);
      if (!v31)
      {
        goto LABEL_105;
      }

      *(v23 + 16) = v31 - 1;
    }

    else
    {
      canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = 0;
    }

    if (*(a1 + 88) != 1)
    {
      *v88 = a1;
      while (1)
      {
        v48 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v49 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v49 == v48)
        {
          goto LABEL_47;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_47:
      *&v88[8] = a1;
      WebCore::RegistrableDomain::isolatedCopy(&v88[16]);
      WebCore::RegistrableDomain::isolatedCopy(&v88[24]);
      *v89 = a4;
      *&v89[8] = a5;
      *&v89[16] = a6;
      v89[24] = a7;
      std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v90, &v92);
      v50 = *a8;
      *a8 = 0;
      v91 = v50;
      WebCore::RegistrableDomain::isolatedCopy(v81);
      WebCore::RegistrableDomain::isolatedCopy(&v81[1]);
      v82[0] = a4;
      v82[1] = a5;
      LOBYTE(v83) = a7;
      BYTE1(v83) = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
      v51 = *&v88[16];
      *v84 = *v88;
      memset(&v88[8], 0, 24);
      *&v84[16] = v51;
      v85[0] = *v89;
      *(v85 + 9) = *&v89[9];
      std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v86, v90);
      v52 = v91;
      v91 = 0;
      v87 = v52;
      v53 = WTF::fastMalloc(v52, 0xA0);
      *v53 = &unk_1F1104FE0;
      v53[1] = v81[0];
      v53[2] = v81[1];
      v54 = *v82;
      *(v53 + 20) = v83;
      *(v53 + 3) = v54;
      *(v53 + 3) = *v84;
      v55 = *&v84[16];
      *v81 = 0u;
      *&v84[8] = 0u;
      v53[8] = v55;
      v56 = *&v84[24];
      *&v84[24] = 0;
      v53[9] = v56;
      v57 = v85[0];
      *(v53 + 89) = *(v85 + 9);
      *(v53 + 5) = v57;
      std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100]((v53 + 14), v86);
      v58 = v87;
      v87 = 0;
      v53[19] = v58;
      if (*(a1 + 88) == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD010F4);
      }

      while (1)
      {
        v59 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v60 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v60, v59 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v60 == v59)
        {
          goto LABEL_50;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_50:
      v61 = WTF::fastMalloc(v59, 0x18);
      *v61 = &unk_1F11044F0;
      v61[1] = a1;
      v61[2] = v53;
      v101 = v61;
      WTF::SuspendableWorkQueue::dispatch();
      v63 = v101;
      v101 = 0;
      if (v63)
      {
        (*(*v63 + 8))(v63);
      }

      WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v84, v62);
      v65 = v81[1];
      v81[1] = 0;
      if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v64);
      }

      v66 = v81[0];
      v81[0] = 0;
      if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, v64);
      }

      result = WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(v88, v64);
      goto LABEL_74;
    }

    *v88 = a4;
    v101 = a6;
    v32 = *(a1 + 16);
    if (!v32 || (v33 = *(v32 + 8)) == 0)
    {
      v68 = 0;
      v73 = 1;
      goto LABEL_86;
    }

    v78 = *(v32 + 8);
    ++*(v33 + 16);
    if (!*(a1 + 96))
    {
LABEL_32:
      if (canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction)
      {
        goto LABEL_33;
      }

      v73 = 0;
      v68 = v78;
LABEL_86:
      LOWORD(v81[0]) = 0;
      BYTE2(v81[0]) = a7;
      v74 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
      }

      v81[1] = v74;
      v75 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
      }

      v82[0] = v75;
      WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(a8, v81);
      v76 = v82[0];
      v82[0] = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v67);
      }

      result = v81[1];
      v81[1] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v67);
      }

      if ((v73 & 1) == 0)
      {
LABEL_72:
        v72 = *(v68 + 16);
        if (!v72)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD01114);
        }

        *(v68 + 16) = v72 - 1;
      }

LABEL_74:
      if (v95 == 1)
      {
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v94, v67);
        if (v93)
        {
          WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v93, v19);
        }

        result = v92;
        v92 = 0;
        if (result)
        {
          goto LABEL_78;
        }
      }

      return result;
    }

    if (WTF::equal(*a2, 0, v16))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01134);
    }

    if (*a2 != -1)
    {
      v35 = *(a1 + 96);
      if (v35)
      {
        v36 = *(v35 - 8);
        v37 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v34) & v36;
        v38 = (v35 + 8 * v37);
        if ((WTF::equal(*v38, 0, v39) & 1) == 0)
        {
          v77 = 1;
          while (*v38 == -1 || (WTF::equalIgnoringASCIICase(*v38, *a2, v40) & 1) == 0)
          {
            v37 = (v37 + v77) & v36;
            v38 = (v35 + 8 * v37);
            ++v77;
            if (WTF::equal(*v38, 0, v40))
            {
              goto LABEL_32;
            }
          }

LABEL_33:
          while (1)
          {
            add_explicit = *a1;
            if ((*a1 & 1) == 0)
            {
              break;
            }

            v42 = *a1;
            atomic_compare_exchange_strong_explicit(a1, &v42, add_explicit + 2, memory_order_relaxed, memory_order_relaxed);
            if (v42 == add_explicit)
            {
              goto LABEL_35;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_35:
          v43 = *a2;
          if (*a2)
          {
            add_explicit = atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
          }

          v44 = *a3;
          if (*a3)
          {
            add_explicit = atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
          }

          v45 = *a8;
          *a8 = 0;
          v46 = WTF::fastMalloc(add_explicit, 0x48);
          *v46 = &unk_1F11050A8;
          v46[1] = a1;
          v46[2] = a1;
          if (v43)
          {
            atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
          }

          v46[3] = v43;
          if (v44)
          {
            atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
            v46[4] = v44;
            v46[5] = a4;
            v46[6] = v80;
            *(v46 + 56) = a7;
            v46[8] = v45;
            v100 = v46;
            if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v47);
            }
          }

          else
          {
            v46[4] = 0;
            v46[5] = a4;
            v46[6] = v80;
            *(v46 + 56) = a7;
            v46[8] = v45;
            v100 = v46;
          }

          v68 = v78;
          if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v43, v47);
          }

          v69 = *(*(v78 + 32) + 40);
          if (v69)
          {
            while (1)
            {
              v70 = *v69;
              if ((*v69 & 1) == 0)
              {
                break;
              }

              v71 = *v69;
              atomic_compare_exchange_strong_explicit(v69, &v71, v70 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v71 == v70)
              {
                goto LABEL_68;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v69);
          }

LABEL_68:
          v81[0] = &v101;
          v81[1] = v88;
          v82[0] = a2;
          v82[1] = a3;
          v83 = &v92;
          IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>(v69, v81, &v100, &v92);
          if (v69)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v69, v67);
          }

          result = v100;
          if (v100)
          {
            result = (*(*v100 + 8))(v100);
          }

          goto LABEL_72;
        }
      }

      goto LABEL_32;
    }

LABEL_105:
    __break(0xC471u);
    JUMPOUT(0x19DD010B4);
  }

  v96 = 1;
  v97 = a7;
  v17 = *a3;
  *a3 = 0;
  v18 = *a2;
  *a2 = 0;
  v98 = v17;
  v99 = v18;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(a8, &v96);
  v20 = v99;
  v99 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  result = v98;
  v98 = 0;
  if (result)
  {
LABEL_78:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

WTF::StringImpl *WebCore::RegistrableDomain::isolatedCopy@<X0>(void *a2@<X8>)
{
  WTF::String::isolatedCopy();
  WebCore::RegistrableDomain::RegistrableDomain(a2, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF<WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WTF<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebCore::StorageAccessScope,WebCore::RegistrableDomain &&::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  if (*(a1 + 96) == 1)
  {
    WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
    v4 = *(a1 + 72);
    if (v4)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v4, a2);
    }

    v5 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v8, a2);
  }

  return a1;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setLoginStatus(uint64_t a1, WTF **a2, const WTF::StringImpl *a3, WebCore::LoginStatus *this, uint64_t *a5)
{
  if (a3 == 1)
  {
    if (*(this + 40) == 1 && (WebCore::LoginStatus::hasExpired(this) & 1) == 0)
    {
      v37 = *(this + 40);
      LOBYTE(v51[0]) = 0;
      v54 = 0;
      if (v37)
      {
        v38 = *this;
        v39 = *(this + 1);
        *this = 0;
        *(this + 1) = 0;
        *v51 = v38;
        v52 = v39;
        v53 = *(this + 4);
        v54 = 1;
        WebCore::LoginStatus::setTimeToLive();
        LOBYTE(v47[0]) = 0;
        v50 = 0;
        if (v51[0])
        {
          atomic_fetch_add_explicit(v51[0], 2u, memory_order_relaxed);
        }

        v47[0] = v51[0];
        if (v51[1])
        {
          atomic_fetch_add_explicit(v51[1], 2u, memory_order_relaxed);
        }

        v47[1] = v51[1];
        v48 = v52;
        v49 = v53;
        v50 = 1;
LABEL_6:
        if (WTF::equal(*a2, 0, a3) || *a2 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD017A4);
        }

        v10 = *(a1 + 120);
        if (v10 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand((a1 + 120), 0), (v10 = *(a1 + 120)) != 0))
        {
          v11 = *(v10 - 8);
        }

        else
        {
          v11 = 0;
        }

        v12 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v9) & v11;
        v13 = v10 + (v12 << 6);
        if ((WTF::equal(*v13, 0, v14) & 1) == 0)
        {
          v16 = 0;
          v17 = 1;
          do
          {
            if (*v13 == -1)
            {
              v16 = v13;
            }

            else if (WTF::equalIgnoringASCIICase(*v13, *a2, v15))
            {
              *(v13 + 8) = 1;
              std::__optional_storage_base<WebCore::LoginStatus,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::LoginStatus,false>>(v13 + 16, v47);
              goto LABEL_63;
            }

            v12 = (v12 + v17) & v11;
            v13 = v10 + (v12 << 6);
            ++v17;
          }

          while (!WTF::equal(*v13, 0, v15));
          if (v16)
          {
            *v16 = 0;
            *(v16 + 8) = 0;
            *(v16 + 16) = 0;
            *(v16 + 56) = 0;
            --*(*(a1 + 120) - 16);
            v13 = v16;
          }
        }

        WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v13, a2);
        v55 = 1;
        LOBYTE(v56[0]) = 0;
        v59 = 0;
        if (v50 == 1)
        {
          v18 = *v47;
          v47[0] = 0;
          v47[1] = 0;
          *v56 = v18;
          v57 = v48;
          v58 = v49;
          v59 = 1;
        }

        *(v13 + 8) = 1;
        std::__optional_storage_base<WebCore::LoginStatus,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::LoginStatus,false>>(v13 + 16, v56);
        if (v59 == 1)
        {
          v19 = v56[1];
          if (v56[1] && atomic_fetch_add_explicit(v56[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v40);
          }

          v20 = v56[0];
          if (v56[0] && atomic_fetch_add_explicit(v56[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v40);
          }
        }

        v21 = *(a1 + 120);
        if (v21)
        {
          v22 = *(v21 - 12) + 1;
        }

        else
        {
          v22 = 1;
        }

        *(v21 - 12) = v22;
        v35 = (*(v21 - 16) + v22);
        v36 = *(v21 - 4);
        if (v36 > 0x400)
        {
          if (v36 > 2 * v35)
          {
            goto LABEL_63;
          }
        }

        else if (3 * v36 > 4 * v35)
        {
LABEL_63:
          if (v50 == 1)
          {
            v41 = v47[1];
            if (v47[1] && atomic_fetch_add_explicit(v47[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v41, v40);
            }

            v42 = v47[0];
            v47[0] = 0;
            if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v40);
            }
          }

          if (v54 == 1)
          {
            v43 = v51[1];
            v51[1] = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v40);
            }

            v44 = v51[0];
            v51[0] = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v40);
            }
          }

          goto LABEL_77;
        }

        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand((a1 + 120), v13);
        goto LABEL_63;
      }
    }

    else
    {
      LOBYTE(v51[0]) = 0;
      v54 = 0;
    }

    LOBYTE(v47[0]) = 0;
    v50 = 0;
    goto LABEL_6;
  }

  v23 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>((a1 + 120), a2, a3);
  v25 = v23;
  v26 = *(a1 + 120);
  if (v26)
  {
    v27 = (v26 + (*(v26 - 4) << 6));
    if (v27 == v23)
    {
      goto LABEL_77;
    }
  }

  else
  {
    if (!v23)
    {
      goto LABEL_77;
    }

    v27 = 0;
  }

  if (v27 != v23)
  {
    v28 = *v23;
    *v25 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v24);
    }

    *v25 = -1;
    if (*(v25 + 56) == 1)
    {
      v29 = v25[3];
      v25[3] = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v24);
      }

      v30 = v25[2];
      v25[2] = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v24);
      }
    }

    v31 = *(a1 + 120);
    v32 = vadd_s32(*(v31 - 16), 0xFFFFFFFF00000001);
    *(v31 - 16) = v32;
    v33 = *(v31 - 4);
    if (6 * v32.i32[1] < v33 && v33 >= 9)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash((a1 + 120), v33 >> 1);
    }
  }

LABEL_77:
  v45 = *a5;
  *a5 = 0;
  (*(*v45 + 16))(v45);
  return (*(*v45 + 8))(v45);
}

uint64_t WebKit::WebResourceLoadStatisticsStore::isLoggedIn(uint64_t a1, WTF **a2, const WTF::StringImpl *a3, uint64_t a4)
{
  v6 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<std::pair<WebCore::IsLoggedIn,std::optional<WebCore::LoginStatus>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>((a1 + 120), a2, a3);
  v7 = *(a1 + 120);
  if (v7)
  {
    v7 += 8 * *(v7 - 1);
  }

  v8 = v7 != v6 && *(v6 + 8) == 1;
  v9 = *a3;
  *a3 = 0;
  (*(*v9 + 16))(v9, v8);
  v10 = *(*v9 + 8);

  return v10(v9);
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::NetworkProcessProxy::RequestStorageAccessConfirm,WTF::CompletionHandler<void ()(BOOL)>>@<X0>(os_unfair_lock_s *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(a4, 0x10);
  *v7 = &unk_1F1104FB8;
  v7[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_12;
  }

  v8 = v7;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v11 = IPC::Encoder::operator new(0x238, v10);
  *v11 = 555;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **(a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, *(a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, *(a2 + 24));
  v12 = *(a2 + 32);
  if ((*(v12 + 32) & 1) == 0)
  {
    v20 = 0;
    IPC::Encoder::operator<<<BOOL>(v11, &v20);
    goto LABEL_6;
  }

  v20 = 1;
  IPC::Encoder::operator<<<BOOL>(v11, &v20);
  if ((*(v12 + 32) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_12:
    result = 141;
    __break(0xC471u);
    return result;
  }

  IPC::ArgumentCoder<WebCore::OrganizationStorageAccessPromptQuirk,void>::encode(v11, v12);
LABEL_6:
  v18[0] = v8;
  v18[1] = IdentifierInternal;
  IPC::Connection::sendMessageWithAsyncReply(a1, &v19, v18, 0, 0);
  v14 = v18[0];
  v18[0] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(uint64_t result, WebCore::NetworkStorageSession *a2, uint64_t a3, const WebCore::RegistrableDomain *a4)
{
  v7 = *(result + 16);
  if (*(result + 88) == 1)
  {
    if (v7)
    {
      v8 = v7[1];
      if (v8)
      {
        ++*(v8 + 16);
        v9 = *(v8 + 32);
        v29 = *(v8 + 24);
        result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 248), &v29);
        if (result)
        {
          v10 = result;
          ++*(result + 8);
          result = WebCore::NetworkStorageSession::grantStorageAccess();
          v11 = *(v10 + 8);
          if (!v11)
          {
            __break(0xC471u);
            JUMPOUT(0x19DD01CFCLL);
          }

          *(v10 + 8) = v11 - 1;
        }

        v12 = *(v8 + 16);
        if (!v12)
        {
          __break(0xC471u);
          JUMPOUT(0x19DD01CBCLL);
        }

        *(v8 + 16) = v12 - 1;
      }
    }

    return result;
  }

  v13 = result;
  if (v7 && (v14 = v7[1]) != 0)
  {
    ++*(v14 + 16);
    v15 = *(v14 + 32);
    v29 = *(v14 + 24);
    v16 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 248), &v29);
    if (v16)
    {
      v17 = v16;
      ++*(v16 + 8);
      canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction = WebCore::NetworkStorageSession::canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction();
      v19 = *(v17 + 8);
      if (!v19)
      {
LABEL_30:
        __break(0xC471u);
        JUMPOUT(0x19DD01C9CLL);
      }

      v20 = canRequestStorageAccessForLoginOrCompatibilityPurposesWithoutPriorUserInteraction;
      *(v17 + 8) = v19 - 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v14 + 16);
    if (!v21)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01CDCLL);
    }

    v7 = (v21 - 1);
    *(v14 + 16) = v7;
  }

  else
  {
    v20 = 0;
  }

  v22 = *a2;
  *a2 = 0;
  v23 = *a4;
  *a4 = 0;
  v24 = WTF::fastMalloc(v7, 0x28);
  *v24 = &unk_1F11050D0;
  v24[1] = v22;
  v24[2] = a3;
  v24[3] = v23;
  *(v24 + 32) = v20;
  if (*(v13 + 88) == 1)
  {
    goto LABEL_30;
  }

  v25 = v24;
  while (1)
  {
    v26 = *v13;
    if ((*v13 & 1) == 0)
    {
      break;
    }

    v27 = *v13;
    atomic_compare_exchange_strong_explicit(v13, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v27 == v26)
    {
      goto LABEL_20;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v13);
LABEL_20:
  v28 = WTF::fastMalloc(v26, 0x18);
  *v28 = &unk_1F11044F0;
  v28[1] = v13;
  v28[2] = v25;
  v29 = v28;
  WTF::SuspendableWorkQueue::dispatch();
  result = v29;
  v29 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::storageAccessWasGrantedValueForFrame(uint64_t a1, WTF::StringImpl *a2, atomic_uint *this)
{
  if (this)
  {
    atomic_fetch_add_explicit(this, 2u, memory_order_relaxed);
  }

  v6 = *(a1 + 136);
  if (!v6)
  {
LABEL_28:
    v16 = 1;
    if (!this)
    {
      return v16;
    }

    goto LABEL_29;
  }

  if (a2)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01ED4);
    }
  }

  else
  {
    if (WTF::equal(this, 0, this))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD01EB4);
    }

    v6 = *(a1 + 136);
    if (!v6)
    {
      goto LABEL_28;
    }
  }

  v7 = *(v6 - 8);
  v8 = WTF::PairHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>::hash(a2, this);
  for (i = 0; ; v8 = i + v11)
  {
    v11 = v8 & v7;
    v12 = v6 + 40 * (v8 & v7);
    v13 = *v12;
    if (!*v12)
    {
      if (WTF::equal(*(v12 + 8), 0, v9))
      {
        v15 = *(a1 + 136);
        if (!v15)
        {
          goto LABEL_28;
        }

        v12 = v15 + 40 * *(v15 - 4);
        goto LABEL_33;
      }

      v13 = *v12;
    }

    v14 = v13 != -1 && v13 == a2;
    if (v14 && (WTF::equalIgnoringASCIICase(*(v12 + 8), this, v9) & 1) != 0)
    {
      break;
    }

    ++i;
  }

  v15 = *(a1 + 136);
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_33:
  v15 += 40 * *(v15 - 4);
LABEL_21:
  if (v15 == v12)
  {
    goto LABEL_28;
  }

  if (*(v12 + 24) < *(v12 + 32))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (this)
  {
LABEL_29:
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(this, a2);
    }
  }

  return v16;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setThirdPartyCookieBlockingMode(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++*(v5 + 16);
      v6 = *(v5 + 32);
      v12 = *(v5 + 24);
      result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 248), &v12);
      if (result)
      {
        v7 = result;
        ++*(result + 8);
        result = WebCore::NetworkStorageSession::setThirdPartyCookieBlockingMode();
        v8 = *(v7 + 8);
        if (!v8)
        {
          goto LABEL_12;
        }

        *(v7 + 8) = v8 - 1;
      }

      v9 = *(v5 + 16);
      if (v9)
      {
        *(v5 + 16) = v9 - 1;
        goto LABEL_8;
      }

LABEL_12:
      __break(0xC471u);
      JUMPOUT(0x19DD02024);
    }
  }

LABEL_8:
  v10 = *(v3 + 88);
  if ((v10 & 1) == 0)
  {
    v11 = WTF::fastMalloc(v10, 0x10);
    *v11 = &unk_1F1105198;
    *(v11 + 8) = v2;
    v12 = v11;
    WebKit::WebResourceLoadStatisticsStore::postTask(v3, &v12);
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unsigned __int8 *WebKit::WebResourceLoadStatisticsStore::setSameSiteStrictEnforcementEnabled(unsigned __int8 *result, unint64_t a2)
{
  v4 = result[88];
  if ((v4 & 1) == 0)
  {
    v8[3] = v2;
    v8[4] = v3;
    v5 = a2;
    v6 = result;
    v7 = WTF::fastMalloc(v4, 0x10);
    *v7 = &unk_1F11051C0;
    *(v7 + 8) = v5;
    v8[0] = v7;
    WebKit::WebResourceLoadStatisticsStore::postTask(v6, v8);
    result = v8[0];
    v8[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t *WebKit::WebResourceLoadStatisticsStore::setFirstPartyWebsiteDataRemovalMode(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4, a2);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  else
  {
    v7 = a2;
    v9 = *a3;
    *a3 = 0;
    v10 = WTF::fastMalloc(v3, 0x18);
    *v10 = &unk_1F11051E8;
    *(v10 + 8) = v7;
    v10[2] = v9;
    v11 = v10;
    WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl **WebKit::WebResourceLoadStatisticsStore::setPersistedDomains(WTF::StringImpl **result, uint64_t *a2, const WTF::StringImpl *a3)
{
  if ((result[11] & 1) == 0 && *a2 && *(*a2 - 12))
  {
    v12[3] = v3;
    v12[4] = v4;
    v5 = result;
    WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, &v11, a2, a3);
    v7 = WTF::fastMalloc(v6, 0x10);
    v8 = v11;
    v11 = 0;
    *v7 = &unk_1F1105238;
    v7[1] = v8;
    v12[0] = v7;
    WebKit::WebResourceLoadStatisticsStore::postTask(v5, v12);
    v10 = v12[0];
    v12[0] = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    result = v11;
    if (v11)
    {
      return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v9);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if ((*(a1 + 88) & 1) != 0 || !*a2 || !*(*a2 + 4) || MEMORY[0x19EB01EF0]())
  {
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4, a2);
    v5 = *(*v4 + 8);

    return v5(v4);
  }

  else
  {
    v8 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebResourceLoadStatisticsStore::setStandaloneApplicationDomain() called with non-empty domain.", &v13, 2u);
    }

    WebCore::RegistrableDomain::isolatedCopy(&v13);
    v9 = *a3;
    *a3 = 0;
    *(&v13 + 1) = v9;
    v10 = WTF::fastMalloc(v9, 0x18);
    *v10 = &unk_1F1105260;
    *(v10 + 1) = v13;
    v13 = 0uLL;
    v14 = v10;
    WebKit::WebResourceLoadStatisticsStore::postTask(a1, &v14);
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    return WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(&v13, v11);
  }
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setStandaloneApplicationDomain(WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

WTF::StringImpl **WebKit::WebResourceLoadStatisticsStore::setAppBoundDomains(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  if ((*(a1 + 88) & 1) != 0 || !*a2 || !*(*a2 - 12))
  {
    v22 = *a3;
    *a3 = 0;
    (*(*v22 + 16))(v22, a2);
    v23 = *(*v22 + 8);

    return v23(v22);
  }

  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, &v24, a2, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5[1];
    if (v6)
    {
      ++*(v6 + 16);
      v7 = *(v6 + 32);
      v25 = *(v6 + 24);
      v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 248), &v25);
      if (v8)
      {
        v9 = v8;
        ++*(v8 + 8);
        WebCore::NetworkStorageSession::setAppBoundDomains();
        WebCore::NetworkStorageSession::setThirdPartyCookieBlockingMode();
        v10 = *(v9 + 8);
        if (!v10)
        {
LABEL_26:
          __break(0xC471u);
          JUMPOUT(0x19DD02770);
        }

        *(v9 + 8) = v10 - 1;
      }

      v11 = *(v6 + 16);
      if (!v11)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD02790);
      }

      v5 = (v11 - 1);
      *(v6 + 16) = v5;
    }
  }

  v12 = v24;
  v24 = 0;
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(v5, 0x18);
  *v14 = &unk_1F11052B0;
  v14[1] = v12;
  v14[2] = v13;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_26;
  }

  v15 = v14;
  while (1)
  {
    v16 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v17 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
  v18 = WTF::fastMalloc(v16, 0x18);
  *v18 = &unk_1F11044F0;
  v18[1] = a1;
  v18[2] = v15;
  v25 = v18;
  WTF::SuspendableWorkQueue::dispatch();
  v20 = v25;
  v25 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  result = v24;
  if (v24)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v19);
  }

  return result;
}

WTF::StringImpl **WebKit::WebResourceLoadStatisticsStore::setManagedDomains(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  if ((*(a1 + 88) & 1) != 0 || !*a2 || !*(*a2 - 12))
  {
    v22 = *a3;
    *a3 = 0;
    (*(*v22 + 16))(v22, a2);
    v23 = *(*v22 + 8);

    return v23(v22);
  }

  WTF::CrossThreadCopierBase<false,false,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>::copy(a2, &v24, a2, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5[1];
    if (v6)
    {
      ++*(v6 + 16);
      v7 = *(v6 + 32);
      v25 = *(v6 + 24);
      v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 248), &v25);
      if (v8)
      {
        v9 = v8;
        ++*(v8 + 8);
        WebCore::NetworkStorageSession::setManagedDomains();
        WebCore::NetworkStorageSession::setThirdPartyCookieBlockingMode();
        v10 = *(v9 + 8);
        if (!v10)
        {
LABEL_26:
          __break(0xC471u);
          JUMPOUT(0x19DD02A18);
        }

        *(v9 + 8) = v10 - 1;
      }

      v11 = *(v6 + 16);
      if (!v11)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD02A38);
      }

      v5 = (v11 - 1);
      *(v6 + 16) = v5;
    }
  }

  v12 = v24;
  v24 = 0;
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(v5, 0x18);
  *v14 = &unk_1F11052D8;
  v14[1] = v12;
  v14[2] = v13;
  if (*(a1 + 88) == 1)
  {
    goto LABEL_26;
  }

  v15 = v14;
  while (1)
  {
    v16 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v17 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
  v18 = WTF::fastMalloc(v16, 0x18);
  *v18 = &unk_1F11044F0;
  v18[1] = a1;
  v18[2] = v15;
  v25 = v18;
  WTF::SuspendableWorkQueue::dispatch();
  v20 = v25;
  v25 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  result = v24;
  if (v24)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v19);
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::logFrameNavigation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, double a8)
{
  WebCore::RegistrableDomain::isolatedCopy(&v28);
  WebCore::RegistrableDomain::isolatedCopy(&v29);
  WebCore::RegistrableDomain::isolatedCopy(&v30);
  LOBYTE(v31) = a5;
  BYTE1(v31) = a6;
  *(&v31 + 1) = a8;
  v32 = a7;
  v14 = WTF::fastMalloc(v13, 0x38);
  v15 = v28;
  *v14 = &unk_1F1105328;
  v14[1] = v15;
  v16 = v29;
  v28 = 0;
  v29 = 0;
  v14[2] = v16;
  v17 = v30;
  v30 = 0;
  v14[3] = v17;
  v18 = v31;
  *(v14 + 48) = v32;
  *(v14 + 2) = v18;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v19 = v14;
    while (1)
    {
      v20 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v21 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v22 = WTF::fastMalloc(v20, 0x18);
    *v22 = &unk_1F11044F0;
    v22[1] = a1;
    v22[2] = v19;
    v33 = v22;
    WTF::SuspendableWorkQueue::dispatch();
    v24 = v33;
    v33 = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v30;
    v30 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }

    v26 = v29;
    v29 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v23);
    }

    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v23);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::logUserInteraction(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 88) == 1)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 96), a2, a3, v16);
    v5 = *a3;
    *a3 = 0;
    (*(*v5 + 16))(v5);
    return (*(*v5 + 8))(v5);
  }

  else
  {
    WebCore::RegistrableDomain::isolatedCopy(v16);
    v7 = *a3;
    *a3 = 0;
    v16[1] = v7;
    v8 = WTF::fastMalloc(v7, 0x18);
    *v8 = &unk_1F1105350;
    *(v8 + 1) = *v16;
    v16[0] = 0;
    v16[1] = 0;
    if (*(a1 + 88) == 1)
    {
      result = 176;
      __break(0xC471u);
    }

    else
    {
      v9 = v8;
      while (1)
      {
        v10 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v11 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_7;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
      v12 = WTF::fastMalloc(v10, 0x18);
      *v12 = &unk_1F11044F0;
      v12[1] = a1;
      v12[2] = v9;
      v15 = v12;
      WTF::SuspendableWorkQueue::dispatch();
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      v14 = v16[1];
      v16[1] = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      result = v16[0];
      v16[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::logCrossSiteLoadWithLinkDecoration(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t **a5)
{
  WebCore::RegistrableDomain::isolatedCopy(&v22);
  WebCore::RegistrableDomain::isolatedCopy(&v23);
  v24 = a4;
  v8 = *a5;
  *a5 = 0;
  v25 = v8;
  v9 = WTF::fastMalloc(v8, 0x28);
  v10 = v22;
  *v9 = &unk_1F11053A0;
  v9[1] = v10;
  v11 = v23;
  v22 = 0;
  v23 = 0;
  v9[2] = v11;
  *(v9 + 24) = v24;
  v12 = v25;
  v25 = 0;
  v9[4] = v12;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v13 = v9;
    while (1)
    {
      v14 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v15 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v16 = WTF::fastMalloc(v14, 0x18);
    *v16 = &unk_1F11044F0;
    v16[1] = a1;
    v16[2] = v13;
    v26 = v16;
    WTF::SuspendableWorkQueue::dispatch();
    v18 = v26;
    v26 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v23;
    v23 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    result = v22;
    v22 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::clearUserInteraction(uint64_t a1, WTF **a2, WTF::StringImpl **a3)
{
  if (*(a1 + 88) == 1)
  {
    v5 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::RegistrableDomain>,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>((a1 + 96), a2, a3);
    v6 = v5;
    v7 = *(a1 + 96);
    if (v7)
    {
      v8 = (v7 + 8 * *(v7 - 4));
      if (v8 == v5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!v5)
      {
LABEL_21:
        v19 = *a3;
        *a3 = 0;
        (*(*v19 + 16))(v19, v6);
        v20 = *(*v19 + 8);

        return v20(v19);
      }

      v8 = 0;
    }

    if (v8 != v5)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::remove((a1 + 96), v5);
    }

    goto LABEL_21;
  }

  WebCore::RegistrableDomain::isolatedCopy(v21);
  v9 = *a3;
  *a3 = 0;
  v21[1] = v9;
  v10 = WTF::fastMalloc(v9, 0x18);
  *v10 = &unk_1F11053C8;
  *(v10 + 1) = *v21;
  v21[0] = 0;
  v21[1] = 0;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v11 = v10;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v14 = WTF::fastMalloc(v12, 0x18);
    *v14 = &unk_1F11044F0;
    v14[1] = a1;
    v14[2] = v11;
    v22 = v14;
    WTF::SuspendableWorkQueue::dispatch();
    v16 = v22;
    v22 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v21[1];
    v21[1] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    result = v21[0];
    v21[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

uint64_t WebKit::WebResourceLoadStatisticsStore::setTimeAdvanceForTesting@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v6 = *a2;
  *a2 = 0;
  v7 = WTF::fastMalloc(a3, 0x18);
  *v7 = &unk_1F1105418;
  *(v7 + 1) = a4;
  v7[2] = v6;
  if (*(a1 + 88) == 1)
  {
    result = 176;
    __break(0xC471u);
  }

  else
  {
    v8 = v7;
    while (1)
    {
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v11 = WTF::fastMalloc(v9, 0x18);
    *v11 = &unk_1F11044F0;
    v11[1] = a1;
    v11[2] = v8;
    v13 = v11;
    WTF::SuspendableWorkQueue::dispatch();
    result = v13;
    if (v13)
    {
      return (*(*v13 + 8))(v13);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebResourceLoadStatisticsStore::hasHadUserInteraction(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (*(a1 + 88) == 1)
  {
    if (!*(a1 + 96))
    {
      goto LABEL_29;
    }

    if (WTF::equal(*a2, 0, a3))
    {
      __break(0xC471u);
      JUMPOUT(0x19DD036F8);
    }

    if (*a2 != -1)
    {
      v7 = *(a1 + 96);
      if (v7)
      {
        v8 = *(v7 - 8);
        v9 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v6) & v8;
        v10 = (v7 + 8 * v9);
        if ((WTF::equal(*v10, 0, v11) & 1) == 0)
        {
          v13 = 1;
          while (*v10 == -1 || (WTF::equalIgnoringASCIICase(*v10, *a2, v12) & 1) == 0)
          {
            v9 = (v9 + v13) & v8;
            v10 = (v7 + 8 * v9);
            v14 = WTF::equal(*v10, 0, v12);
            v15 = 0;
            ++v13;
            if (v14)
            {
              goto LABEL_25;
            }
          }

          v15 = 1;
          goto LABEL_25;
        }
      }

LABEL_29:
      v15 = 0;
LABEL_25:
      v26 = *a3;
      *a3 = 0;
      (*(*v26 + 16))(v26, v15);
      v27 = *(*v26 + 8);

      return v27(v26);
    }

    __break(0xC471u);
LABEL_33:
    JUMPOUT(0x19DD036D8);
  }

  WebCore::RegistrableDomain::isolatedCopy(v28);
  v16 = *a3;
  *a3 = 0;
  v28[1] = v16;
  v17 = WTF::fastMalloc(v16, 0x18);
  *v17 = &unk_1F1105440;
  *(v17 + 1) = *v28;
  v28[0] = 0;
  v28[1] = 0;
  if (*(a1 + 88) == 1)
  {
    __break(0xC471u);
    goto LABEL_33;
  }

  v18 = v17;
  while (1)
  {
    v19 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v20 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
  v21 = WTF::fastMalloc(v19, 0x18);
  *v21 = &unk_1F11044F0;
  v21[1] = a1;
  v21[2] = v18;
  v29 = v21;
  WTF::SuspendableWorkQueue::dispatch();
  v23 = v29;
  v29 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = v28[1];
  v28[1] = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  result = v28[0];
  v28[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v22);
  }

  return result;
}