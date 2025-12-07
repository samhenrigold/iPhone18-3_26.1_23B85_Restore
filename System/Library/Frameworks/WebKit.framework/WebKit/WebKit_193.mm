uint64_t WebKit::RemoteMediaPlayerManager::initialize(uint64_t result, uint64_t a2)
{
  if (*(a2 + 412))
  {
    v3 = WebKit::RemoteMediaPlayerManager::typeCache(result, 0);
    atomic_fetch_add(v3, 1u);
    result = WebKit::RemoteMediaPlayerMIMETypeCache::isEmpty(v3);
    if (result)
    {
      result = WebKit::RemoteMediaPlayerMIMETypeCache::addSupportedTypes(v3, a2 + 400, v4);
    }

    if (atomic_load(v3))
    {
      atomic_fetch_add(v3, 0xFFFFFFFF);
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

void WebKit::RemoteMediaPlayerManager::createRemoteMediaPlayer(uint64_t **a1, uint64_t **a2, WTF::StringImpl **this, char a4)
{
  v107[2] = *MEMORY[0x1E69E9840];
  v95 = 0;
  LOBYTE(v96[0]) = 0;
  v97 = 0;
  v98[0] = 0;
  v98[16] = 0;
  v99[0] = 0;
  v99[16] = 0;
  v100[0] = 0;
  v100[16] = 0;
  v93[0] = 0;
  v93[1] = 0;
  v92 = 0;
  LOBYTE(v94[0]) = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  memset(v104, 0, 25);
  v106 = 0;
  memset(v107, 0, 13);
  v105 = 0;
  WebCore::MediaPlayer::referrer(v91, this);
  WebCore::MediaPlayer::userAgent(v89, this);
  v91[1] = v89[0];
  WebCore::MediaPlayer::sourceApplicationIdentifier(v89, this);
  v91[2] = v89[0];
  WebCore::MediaPlayer::mediaPlayerNetworkInterfaceName(v89, this);
  v91[3] = v89[0];
  v8 = this[1];
  if (v8)
  {
    v9 = *(v8 + 1);
    if (v9)
    {
      (*(*v9 + 584))(v89);
      v8 = v89[0];
    }

    else
    {
      v8 = 0;
    }
  }

  v92 = v8;
  v10 = WebCore::MediaPlayer::mediaContentTypesRequiringHardwareSupport(this);
  WTF::Vector<WebCore::ContentType,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v93, v10);
  BYTE2(v107[1]) = WebCore::MediaPlayer::renderingCanBeAccelerated(this);
  WebCore::MediaPlayer::preferredAudioCharacteristics(v89, this);
  if (HIDWORD(v102))
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(v102, (v102 + 8 * HIDWORD(v102)));
  }

  v12 = v102;
  if (v102)
  {
    *&v102 = 0;
    DWORD2(v102) = 0;
    WTF::fastFree(v12, v11);
  }

  *&v102 = v89[0];
  v13 = v89[1];
  v89[0] = 0;
  v89[1] = 0;
  *(&v102 + 1) = v13;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v89, v11);
  v107[0] = WebCore::MediaPlayer::mediaPlayerLogIdentifier(this);
  v14 = this[1];
  if (!v14 || (v15 = *(v14 + 1)) == 0)
  {
    __break(0xC471u);
    goto LABEL_84;
  }

  LOBYTE(v107[1]) = (*(*v15 + 328))(v15);
  v16 = this[1];
  if (!v16 || (v17 = *(v16 + 1)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2A088CLL);
  }

  BYTE1(v107[1]) = (*(*v17 + 264))(v17);
  WebCore::MediaPlayer::outOfBandTrackSources(&v85, this);
  if (!v87)
  {
    LODWORD(v24) = 0;
    v23 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  if (v87 >= 0x6666667)
  {
    __break(0xC471u);
LABEL_84:
    JUMPOUT(0x19E2A086CLL);
  }

  v20 = 40 * v87;
  v21 = WTF::fastMalloc((5 * v87), (40 * v87));
  v22 = v21;
  v23 = v20 / 0x28;
  if (v87)
  {
    v24 = 0;
    v25 = v21 + 2;
    do
    {
      v26 = *(v85 + v24);
      v27 = *(v26 + 16);
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      v28 = *(v26 + 24);
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v29 = *(v26 + 32);
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      }

      v30 = *(v26 + 48);
      v31 = *(v26 + 40);
      *(v25 - 2) = v27;
      *(v25 - 1) = v28;
      *v25 = v29;
      v25[1] = v31;
      *(v25 + 16) = v30;
      ++v24;
      v25 += 5;
    }

    while (v24 < v87);
    HIDWORD(v89[1]) = v24;
  }

  else
  {
    LODWORD(v24) = 0;
  }

LABEL_27:
  if (HIDWORD(v103))
  {
    WTF::VectorTypeOperations<WebCore::PlatformTextTrackData>::destruct(v103, (v103 + 40 * HIDWORD(v103)));
  }

  v32 = v103;
  if (v103)
  {
    *&v103 = 0;
    DWORD2(v103) = 0;
    WTF::fastFree(v32, v18);
  }

  *&v19 = 0;
  *v89 = v19;
  *&v103 = v22;
  *(&v103 + 1) = __PAIR64__(v24, v23);
  WTF::Vector<WebCore::PlatformTextTrackData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v89, v18);
  if (v87)
  {
    v34 = v85;
    v35 = 8 * v87;
    do
    {
      v36 = *v34;
      *v34 = 0;
      if (v36)
      {
        if (v36[2] == 1)
        {
          (*(*v36 + 8))(v36);
        }

        else
        {
          --v36[2];
        }
      }

      v34 = (v34 + 8);
      v35 -= 8;
    }

    while (v35);
  }

  v37 = v85;
  if (v85)
  {
    v85 = 0;
    v86 = 0;
    WTF::fastFree(v37, v33);
  }

  WebCore::MediaPlayer::documentSecurityOrigin(v89, this);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v104, v89);
  v105 = this[25];
  WebCore::MediaPlayer::videoLayerSize(this);
  v106 = __PAIR64__(v39, v38);
  v40 = WebCore::MediaPlayer::allowedMediaContainerTypes(this);
  std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(v94, v40, v41);
  v42 = WebCore::MediaPlayer::allowedMediaCodecTypes(this);
  std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(v96, v42, v43);
  v44 = WebCore::MediaPlayer::allowedMediaVideoCodecIDs(this);
  std::__optional_storage_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(v98, v44);
  v45 = WebCore::MediaPlayer::allowedMediaAudioCodecIDs(this);
  std::__optional_storage_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(v99, v45);
  v46 = WebCore::MediaPlayer::allowedMediaCaptionFormatTypes(this);
  std::__optional_storage_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(v100, v46);
  v47 = this[1];
  if (!v47 || (v48 = *(v47 + 1)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2A08ACLL);
  }

  *&v101 = (*(*v48 + 272))(v48);
  *(&v101 + 1) = v49;
  BYTE4(v107[1]) = WebCore::MediaPlayer::canShowWhileLocked(this);
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  v51 = this[1];
  if (!v51 || (v52 = IdentifierInternal, (v53 = *(v51 + 1)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2A08CCLL);
  }

  v54 = (*(*v53 + 656))(v53);
  v56 = *(WebKit::RemoteMediaPlayerManager::gpuProcessConnection(a2, v55) + 32);
  v58 = IPC::Encoder::operator new(0x238, v57);
  *v58 = 1394;
  *(v58 + 68) = 0;
  *(v58 + 70) = 0;
  *(v58 + 69) = 0;
  *(v58 + 2) = 0;
  *(v58 + 3) = 0;
  *(v58 + 1) = 0;
  IPC::Encoder::encodeHeader(v58);
  v85 = v58;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v58, v52);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v58, v54);
  v88 = a4;
  IPC::Encoder::operator<<<unsigned char>(v58, &v88);
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerProxyConfiguration,void>::encode(v58, v91);
  IPC::Connection::sendMessageImpl(v56, &v85, 0, 0);
  v61 = v85;
  v85 = 0;
  if (v61)
  {
    IPC::Encoder::~Encoder(v61, v59);
    bmalloc::api::tzoneFree(v83, v84);
  }

  v62 = WTF::fastMalloc(v60, 0x3B0);
  WebKit::MediaPlayerPrivateRemote::MediaPlayerPrivateRemote(v62, this, a4, v52, a2);
  if (v52 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2A08ECLL);
  }

  if (!v52)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2A090CLL);
  }

  v64 = a2[2];
  if (!v64)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2 + 2, 0);
    v64 = a2[2];
  }

  v65 = *(v64 - 2);
  v66 = (v52 + ~(v52 << 32)) ^ ((v52 + ~(v52 << 32)) >> 22);
  v67 = 9 * ((v66 + ~(v66 << 13)) ^ ((v66 + ~(v66 << 13)) >> 8));
  v68 = (v67 ^ (v67 >> 15)) + ~((v67 ^ (v67 >> 15)) << 27);
  v69 = v65 & ((v68 >> 31) ^ v68);
  v70 = &v64[3 * v69];
  v71 = *v70;
  if (!*v70)
  {
LABEL_59:
    *v70 = v52;
    v74 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::controlBlock(v62 + 6, v64);
    v75 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v74);
    v76 = v70[2];
    v70[2] = v75;
    if (v76)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v76, v63);
    }

    v70[1] = v62;
    v77 = a2[2];
    if (v77)
    {
      v78 = *(v77 - 3) + 1;
    }

    else
    {
      v78 = 1;
    }

    *(v77 - 3) = v78;
    v79 = (*(v77 - 4) + v78);
    v80 = *(v77 - 1);
    if (v80 > 0x400)
    {
      if (v80 > 2 * v79)
      {
        goto LABEL_67;
      }
    }

    else if (3 * v80 > 4 * v79)
    {
      goto LABEL_67;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2 + 2, v70);
    goto LABEL_67;
  }

  v72 = 0;
  v73 = 1;
  while (v71 != v52)
  {
    if (v71 == -1)
    {
      v72 = v70;
    }

    v69 = (v69 + v73) & v65;
    v70 = &v64[3 * v69];
    v71 = *v70;
    ++v73;
    if (!*v70)
    {
      if (v72)
      {
        *v72 = 0;
        v72[1] = 0;
        v72[2] = 0;
        v64 = a2[2];
        --*(v64 - 4);
        v70 = v72;
      }

      goto LABEL_59;
    }
  }

LABEL_67:
  *a1 = v62;
  if (!v90)
  {
    v81 = v89[1];
    v89[1] = 0;
    if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v81, v63);
    }

    v82 = v89[0];
    v89[0] = 0;
    if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v82, v63);
    }
  }

  WebKit::RemoteMediaPlayerProxyConfiguration::~RemoteMediaPlayerProxyConfiguration(v91);
}

uint64_t WebKit::RemoteMediaPlayerManager::gpuProcessConnection(WebKit::RemoteMediaPlayerManager *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v23, v3, *(this + 3));
    v4 = v23;
    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v23 = 0;
  }

  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5);
  v8 = v6;
  while (1)
  {
    v9 = v6[3];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = v6[3];
    atomic_compare_exchange_strong_explicit(v6 + 3, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[3]);
LABEL_12:
  v11 = v23;
  v23 = v8;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v11 + 24), v7);
  }

  WTF::ThreadSafeWeakPtr<WebKit::GPUProcessConnection,WTF::NoTaggingTraits<WebKit::GPUProcessConnection>>::operator=<WebKit::GPUProcessConnection>(this + 3, &v23);
  {
    v13 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v22 = WebKit::WebProcess::operator new(0x370, v12);
    v13 = WebKit::WebProcess::WebProcess(v22);
    WebKit::WebProcess::singleton(void)::process = v13;
  }

  v14 = WebKit::WebProcess::ensureGPUProcessConnection(v13);
  v16 = v14;
  while (1)
  {
    v17 = v14[3];
    if ((v17 & 1) == 0)
    {
      break;
    }

    v18 = v14[3];
    atomic_compare_exchange_strong_explicit(v14 + 3, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v17)
    {
      goto LABEL_21;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(v14[3]);
LABEL_21:
  v19 = v23;
  v23 = v16;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v19 + 24), v15);
    v16 = v23;
  }

  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v16 + 184), this);
  v4 = v23;
LABEL_24:
  v23 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), a2);
  return v4;
}

uint64_t WebKit::RemoteMediaPlayerManager::deleteRemoteMediaPlayer(uint64_t **a1, uint64_t a2)
{
  v10 = a2;
  v3 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1 + 2, &v10);
  v4 = v3;
  v5 = a1[2];
  if (v5)
  {
    v6 = &v5[3 * *(v5 - 1)];
    if (v6 == v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v6 = 0;
  }

  if (v6 != v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1 + 2, v3);
  }

LABEL_8:
  v7 = *(WebKit::RemoteMediaPlayerManager::gpuProcessConnection(a1, v4) + 32);
  v9 = &v10;
  return IPC::Connection::send<Messages::RemoteMediaPlayerManagerProxy::DeleteMediaPlayer>(v7, &v9, 0, 0, 0);
}

uint64_t IPC::Connection::send<Messages::RemoteMediaPlayerManagerProxy::DeleteMediaPlayer>(uint64_t *a1, void **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 1395;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
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

unint64_t WebKit::RemoteMediaPlayerManager::findRemotePlayerId(WebKit::RemoteMediaPlayerManager *this, atomic_ullong *a2)
{
  v4 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 2);
  v5 = v4;
  v7 = v6;
  v8 = *(this + 2);
  if (v8)
  {
    v9 = (v8 + 24 * *(v8 - 4));
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v4)
  {
    do
    {
      v10 = *v5;
      v11 = v5[2];
      if (v11 && (v12 = v5[1], (v13 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v11)) != 0))
      {
        v14 = v13;
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v19, v13, v12);
        v16 = v19;
        v19 = 0;
        if (v16)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v16 + 6, v15);
        }

        if (v16 == a2)
        {
          v17 = v10 & 0xFFFFFFFFFFFFFF00;
          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v15);
          return v10 | v17;
        }

        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v15);
      }

      else if (!a2)
      {
        v17 = v10 & 0xFFFFFFFFFFFFFF00;
        return v10 | v17;
      }

      do
      {
        v5 += 3;
      }

      while (v5 != v7 && (*v5 + 1) <= 1);
    }

    while (v5 != v9);
  }

  v17 = 0;
  LOBYTE(v10) = 0;
  return v10 | v17;
}

uint64_t WebKit::RemoteMediaPlayerManager::supportsTypeAndCodecs(uint64_t a1, char a2, const WebCore::MediaEngineSupportParameters *a3)
{
  if ((*(a3 + 57) & 1) != 0 || !WebCore::contentTypeMeetsContainerAndCodecTypeRequirements())
  {
    return 0;
  }

  v6 = WebKit::RemoteMediaPlayerManager::typeCache(a1, a2);

  return WebKit::RemoteMediaPlayerMIMETypeCache::supportsTypeAndCodecs(v6, a3, v7);
}

atomic_ullong *WebKit::RemoteMediaPlayerManager::didReceivePlayerMessage(atomic_ullong *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15[3] = v3;
    v15[4] = v4;
    v12 = v5;
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,WTF::NoTaggingTraits<WebKit::MediaPlayerPrivateRemote>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 16, &v12, &v13);
    this = v14;
    if (v14)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v15, v14, v13);
      v9 = v14;
      v14 = 0;
      if (v9)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, v8);
      }

      this = v15[0];
      if (v15[0])
      {
        this = WebKit::MediaPlayerPrivateRemote::didReceiveMessage(v15[0], a2, a3);
        v11 = v15[0];
        v15[0] = 0;
        if (v11)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v11 + 6, v10);
        }
      }
    }
  }

  return this;
}

atomic_uchar *WebKit::RemoteMediaPlayerManager::setUseGPUProcess@<X0>(atomic_ullong *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::controlBlock(this + 1, a3);
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  if (v3)
  {
    v8 = WTF::fastMalloc(v6, 0x18);
    *v8 = &unk_1F1129210;
    v8[1] = this;
    v8[2] = v7;
    v7 = 0;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  WebCore::RemoteMediaPlayerSupport::setRegisterRemotePlayerCallback();
  result = v11;
  if (v11)
  {
    result = (*(*v11 + 8))(v11);
  }

  if (v3)
  {
    WebCore::SampleBufferDisplayLayer::setCreator();
    result = WebCore::MediaPlayerPrivateMediaStreamAVFObjC::setNativeImageCreator();
  }

  if (v7)
  {
    return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v9);
  }

  return result;
}

uint64_t *WebKit::RemoteMediaPlayerManager::protectedGPUProcessConnection@<X0>(uint64_t **__return_ptr a1@<X8>, WebKit::RemoteMediaPlayerManager *this@<X0>, void *a3@<X1>)
{
  result = WebKit::RemoteMediaPlayerManager::gpuProcessConnection(this, a3);
  v5 = result;
  while (1)
  {
    v6 = result[3];
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = result[3];
    atomic_compare_exchange_strong_explicit(result + 3, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(result[3]);
LABEL_6:
  *a1 = v5;
  return result;
}

atomic_uchar *WebKit::RemoteMediaPlayerManager::gpuProcessConnectionDidClose(WebKit::RemoteMediaPlayerManager *this, WebKit::GPUProcessConnection *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  *(this + 3) = 0;
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 2);
  v6 = result;
  v7 = v5;
  v8 = *(this + 2);
  if (!v8)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v9 = (v8 + 24 * *(v8 - 4));
  v10 = *(v8 - 12);
  if (!v10)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (v10 >> 28)
  {
    __break(0xC471u);
    return result;
  }

  result = WTF::fastMalloc(v10, (16 * v10));
  v11 = result;
LABEL_9:
  if (v6 != v9)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v13;
      v15 = *(v6 + 1);
      result = *(v6 + 2);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result);
      }

      v16 = (v11 + 16 * v12);
      *v16 = v15;
      v16[1] = result;
      do
      {
        v6 += 24;
      }

      while (v6 != v7 && (*v6 + 1) <= 1);
      ++v12;
      v13 = v14 + 1;
    }

    while (v6 != v9);
    if (v12)
    {
      v17 = 16 * v14;
      v18 = (v11 + 8);
      do
      {
        if (*v18)
        {
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v25, *v18, *(v18 - 1));
          if (v25)
          {
            v19 = *(v25 + 176);
            if (v19)
            {
              WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v24, v19, *(v25 + 168));
              v19 = v24;
            }

            else
            {
              v24 = 0;
            }

            WebCore::MediaPlayer::reloadAndResumePlaybackIfNeeded(v19);
            v20 = v24;
            v24 = 0;
            if (v20)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v20, v5);
            }

            v21 = v25;
            v25 = 0;
            if (v21)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref((v21 + 48), v5);
            }
          }
        }

        v18 += 2;
        v17 -= 16;
      }

      while (v17);
      v22 = 16 * v14;
      v23 = (v11 + 8);
      do
      {
        result = *v23;
        *v23 = 0;
        if (result)
        {
          result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v5);
        }

        v23 += 2;
        v22 -= 16;
      }

      while (v22);
    }
  }

  if (v11)
  {
    return WTF::fastFree(v11, v5);
  }

  return result;
}

void WebKit::RemoteMediaResourceProxy::~RemoteMediaResourceProxy(WebKit::RemoteMediaResourceProxy *this, void *a2)
{
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, a2);
  }
}

{
  WebKit::RemoteMediaResourceProxy::~RemoteMediaResourceProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteMediaResourceProxy::responseReceived(void *a1, uint64_t a2, WebCore::ResourceResponseBase *a3, uint64_t *a4)
{
  v7 = a1[2];
  v8 = a1 + 5;
  v9 = a1[4];
  if (v9)
  {
    v10 = 0;
    v11 = a1[3];
    atomic_compare_exchange_strong_explicit(v9, &v10, 1u, memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      v26 = v9;
      MEMORY[0x19EB01E30]();
      v9 = v26;
    }

    if (*(v9 + 24))
    {
      ++*(v9 + 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = 1;
    atomic_compare_exchange_strong_explicit(v9, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != 1)
    {
      WTF::Lock::unlockSlow(v9);
    }
  }

  else
  {
    v11 = 0;
  }

  v27[0] = (**v11)(v11, a2);
  v13 = *a4;
  *a4 = 0;
  v15 = WTF::fastMalloc(v14, 0x10);
  *v15 = &unk_1F1129298;
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
    v19 = IPC::Encoder::operator new(0x238, v18);
    *v19 = 1469;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = 0;
    IPC::Encoder::encodeHeader(v19);
    v29 = v19;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, *v8);
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v19, a3);
    IPC::Encoder::operator<<<BOOL &>(v19, v27);
    v28[0] = v16;
    v28[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v7, &v29, v28, 0, 0);
    v21 = v28[0];
    v28[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v29;
    v29 = 0;
    if (v22)
    {
      IPC::Encoder::~Encoder(v22, v20);
      bmalloc::api::tzoneFree(v24, v25);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v11 + 8), v20);
  }

  return result;
}

uint64_t WebKit::RemoteMediaResourceProxy::redirectReceived@<X0>(uint64_t a1@<X0>, WebCore::ResourceRequest *a3@<X2>, WebCore::ResourceResponseBase *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *a5;
  *a5 = 0;
  v11 = WTF::fastMalloc(a6, 0x10);
  *v11 = &unk_1F11292C0;
  v11[1] = v10;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v12 = v11;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v15 = IPC::Encoder::operator new(0x238, v14);
    *v15 = 1468;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = 0;
    IPC::Encoder::encodeHeader(v15);
    v22 = v15;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, *(a1 + 40));
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v15, a3);
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(v15, a4);
    v21[0] = v12;
    v21[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v9, &v22, v21, 0, 0);
    v17 = v21[0];
    v21[0] = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    result = v22;
    v22 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v16);
      return bmalloc::api::tzoneFree(v19, v20);
    }
  }

  return result;
}

IPC::Encoder *WebKit::RemoteMediaResourceProxy::dataSent(WebKit::RemoteMediaResourceProxy *this, WebCore::PlatformMediaResource *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(this + 2);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1465;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v13 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(this + 5));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a4);
  IPC::Connection::sendMessageImpl(v7, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

uint64_t WebKit::RemoteMediaResourceProxy::dataReceived(WebKit::RemoteMediaResourceProxy *this, WebCore::PlatformMediaResource *a2, const WebCore::SharedBuffer *a3)
{
  v4 = *(this + 2);
  v17 = *(a3 + 7);
  v18 = a3;
  v19 = 0;
  v5 = WTF::fastMalloc(atomic_fetch_add(a3 + 2, 1u), 0x10);
  *v5 = &unk_1F11292E8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v6 = v5;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 1464;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    IPC::Encoder::encodeHeader(v9);
    v21 = v9;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(this + 5));
    IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v9, &v17);
    v20[0] = v6;
    v20[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v21, v20, 0, 0);
    v11 = v20[0];
    v20[0] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v21;
    v21 = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v10);
      bmalloc::api::tzoneFree(v15, v16);
    }

    v13 = v19;
    v19 = 0;
    if (v13)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v13);
    }

    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (result + 8));
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::RemoteMediaResourceProxy::accessControlCheckFailed(WebKit::RemoteMediaResourceProxy *this, WebCore::PlatformMediaResource *a2, const WebCore::ResourceError *a3)
{
  v5 = *(this + 2);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1463;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(this + 5));
  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v6, a3);
  IPC::Connection::sendMessageImpl(v5, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::RemoteMediaResourceProxy::loadFailed(WebKit::RemoteMediaResourceProxy *this, WebCore::PlatformMediaResource *a2, const WebCore::ResourceError *a3)
{
  v3 = *(this + 2);
  v5[0] = (this + 40);
  v5[1] = a3;
  return IPC::Connection::send<Messages::RemoteMediaResourceManager::LoadFailed>(v3, v5, 0, 0, 0);
}

IPC::Encoder *WebKit::RemoteMediaResourceProxy::loadFinished(WebKit::RemoteMediaResourceProxy *this, WebCore::PlatformMediaResource *a2, const WebCore::NetworkLoadMetrics *a3)
{
  v5 = *(this + 2);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1467;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *(this + 5));
  IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::encode(v6, a3);
  IPC::Connection::sendMessageImpl(v5, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

uint64_t WebKit::RemoteRemoteCommandListener::RemoteRemoteCommandListener(uint64_t a1)
{
  WebCore::RemoteCommandListener::RemoteCommandListener();
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 72) = 0;
  *(a1 + 80) = 3;
  *a1 = &unk_1F1128828;
  *(a1 + 48) = IdentifierInternal;
  *(a1 + 56) = &unk_1F1128880;
  *(a1 + 64) = &unk_1F11288C8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  WebKit::RemoteRemoteCommandListener::ensureGPUProcessConnection(a1, v3);
  return a1;
}

uint64_t WebKit::RemoteRemoteCommandListener::ensureGPUProcessConnection(WebKit::RemoteRemoteCommandListener *this, void *a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v22, v3, *(this + 13));
    v4 = v22;
    if (v22)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = 0;
  }

  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  v6 = WebKit::WebProcess::ensureGPUProcessConnection(v5);
  v8 = v6;
  while (1)
  {
    v9 = v6[3];
    if ((v9 & 1) == 0)
    {
      break;
    }

    v10 = v6[3];
    atomic_compare_exchange_strong_explicit(v6 + 3, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[3]);
LABEL_12:
  v11 = v22;
  v22 = v8;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v11 + 24), v7);
  }

  WTF::ThreadSafeWeakPtr<WebKit::GPUProcessConnection,WTF::NoTaggingTraits<WebKit::GPUProcessConnection>>::operator=<WebKit::GPUProcessConnection>(this + 13, &v22);
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v22 + 184), (this + 56));
  v12 = *(this + 6);
  v24[0] = 110;
  v24[1] = v12;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v22 + 48), v24, this + 64, v23);
  v13 = *(v22 + 32);
  v14 = *(this + 6);
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 41;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = 0;
  IPC::Encoder::encodeHeader(v16);
  v23[0] = v16;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v14);
  IPC::Connection::sendMessageImpl(v13, v23, 0, 0);
  v17 = v23[0];
  v23[0] = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, a2);
    bmalloc::api::tzoneFree(v19, v20);
  }

  v4 = v22;
LABEL_17:
  v22 = 0;
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), a2);
  return v4;
}

void WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener(WebKit::RemoteRemoteCommandListener *this, void *a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v10, v3, *(this + 13));
    if (v10)
    {
      IPC::MessageReceiverMap::removeMessageReceiver(v10 + 40, 0x6Eu, *(this + 6));
      v4 = *(v10 + 32);
      v8 = *(this + 6);
      v9 = &v8;
      IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseRemoteCommandListener>(v4, &v9, 0, 0, 0);
      v5 = v10;
      v10 = 0;
      if (v5)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v5 + 24), a2);
      }
    }

    v6 = *(this + 14);
    *(this + 14) = 0;
    if (v6)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
    }
  }

  v7 = *(this + 11);
  if (v7)
  {
    WTF::fastFree((v7 - 16), a2);
  }

  *(this + 8) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 9, a2);
  WebCore::RemoteCommandListener::~RemoteCommandListener(this);
}

{
  WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener(this, a2);

  WTF::fastFree(v2, v3);
}

uint64_t IPC::Connection::send<Messages::GPUConnectionToWebProcess::ReleaseRemoteCommandListener>(uint64_t *a1, void **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 50;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
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

void non-virtual thunk toWebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener(WebKit::RemoteRemoteCommandListener *this, void *a2)
{
  WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener((this - 56), a2);
}

{
  WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener((this - 64), a2);
}

{
  WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener((this - 56), a2);

  WTF::fastFree(v2, v3);
}

{
  WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener((this - 64), a2);

  WTF::fastFree(v2, v3);
}

atomic_uchar *WebKit::RemoteRemoteCommandListener::gpuProcessConnectionDidClose(WebKit::RemoteRemoteCommandListener *this, WebKit::GPUProcessConnection *a2)
{
  IPC::MessageReceiverMap::removeMessageReceiver(a2 + 40, 0x6Eu, *(this + 6));
  result = *(this + 14);
  *(this + 14) = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v3);
  }

  *(this + 13) = 0;
  return result;
}

WTF *WebKit::RemoteRemoteCommandListener::updateSupportedCommands(WebKit::RemoteRemoteCommandListener *this)
{
  v2 = WebCore::RemoteCommandListener::supportedCommands(this);
  v4 = v2;
  v5 = *(this + 11);
  v6 = *v2;
  if (v5)
  {
    v7 = *(v5 - 12);
    if (v6)
    {
      if (v7 != *(v6 - 3))
      {
        goto LABEL_30;
      }

      if (v7)
      {
        v8 = *(v6 - 1);
        v9 = *v2;
        if (v8)
        {
          v10 = *(v6 - 1);
          v9 = *v2;
          while (*v9 >= 0xFEu)
          {
            ++v9;
            if (!--v10)
            {
              goto LABEL_27;
            }
          }
        }

        v11 = v6 + v8;
        if (v9 != v11)
        {
          while (1)
          {
            v12 = *v9;
            if (v12 == 254 || v12 == 255)
            {
              goto LABEL_100;
            }

            v13 = *(v5 - 8);
            v14 = 9 * ((~(v12 << 15) + v12) ^ ((~(v12 << 15) + v12) >> 10));
            LODWORD(v15) = v13 & (((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) ^ (((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) >> 16));
            v16 = *(v5 + v15);
            if (v16 != v12)
            {
              break;
            }

LABEL_22:
            if (++v9 != v11)
            {
              while (*v9 >= 0xFEu)
              {
                if (++v9 == v11)
                {
                  v9 = v11;
                  break;
                }
              }

              if (v9 != v11)
              {
                continue;
              }
            }

            goto LABEL_27;
          }

          v17 = 1;
          while (v16 != 255)
          {
            v15 = (v15 + v17) & v13;
            v16 = *(v5 + v15);
            ++v17;
            if (v16 == v12)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_29;
        }
      }
    }

    else if (v7)
    {
      goto LABEL_31;
    }
  }

  else if (v6 && *(v6 - 3))
  {
LABEL_30:
    v20 = *(v6 - 3);
    if (!v20)
    {
      goto LABEL_31;
    }

    v22 = *(v6 - 3);
    v23 = v22;
    if (v20 == 1)
    {
      goto LABEL_35;
    }

    v24 = __clz(v20 - 1);
    if (!v24)
    {
      __break(1u);
LABEL_100:
      __break(0xC471u);
      JUMPOUT(0x19E2A2328);
    }

    v22 = (1 << -v24);
    v23 = v22;
    if (v20 <= 0x400)
    {
LABEL_35:
      if (3 * v22 > 4 * v20)
      {
        goto LABEL_37;
      }
    }

    else if (v22 > 2 * v20)
    {
LABEL_37:
      if (v23 > 0x400)
      {
        v25 = 0.416666667;
      }

      else
      {
        v25 = 0.604166667;
      }

      if (v23 * v25 <= v20)
      {
        v23 = (2 * v23);
      }

      if (v23 <= 8)
      {
        v26 = 8;
      }

      else
      {
        v26 = v23;
      }

      v27 = WTF::fastMalloc(v23, (v26 + 16));
      v21 = v27 + 2;
      memset(v27 + 2, 255, v26);
      LODWORD(v28) = v26 - 1;
      *(v27 + 2) = v26 - 1;
      *(v27 + 3) = v26;
      *v27 = 0;
      *(v27 + 1) = v20;
      v29 = *v4;
      if (*v4)
      {
        v30 = *(v29 - 1);
        v31 = v29 + v30;
        if (*(v29 - 3))
        {
          if (!v30)
          {
            v33 = 0;
            v32 = *v4;
            goto LABEL_57;
          }

          v32 = *v4;
          while (*v32 >= 0xFEu)
          {
            ++v32;
            if (!--v30)
            {
              v32 = v31;
              break;
            }
          }

LABEL_54:
          if (!v29)
          {
            goto LABEL_58;
          }

          v33 = *(v29 - 1);
LABEL_57:
          v29 = (v29 + v33);
LABEL_58:
          if (v32 != v29)
          {
            if (v27 == -16)
            {
              v28 = 0;
            }

            else
            {
              v28 = v28;
            }

            do
            {
              v34 = 0;
              v35 = *v32;
              v36 = 9 * ((~(v35 << 15) + v35) ^ ((~(v35 << 15) + v35) >> 10));
              v37 = ((v36 ^ (v36 >> 6)) + ~((v36 ^ (v36 >> 6)) << 11)) ^ (((v36 ^ (v36 >> 6)) + ~((v36 ^ (v36 >> 6)) << 11)) >> 16);
              do
              {
                v38 = v37 & v28;
                v39 = *(v21 + (v37 & v28));
                v37 = ++v34 + (v37 & v28);
              }

              while (v39 != 255);
              *(v21 + v38) = v35;
              if (++v32 != v31)
              {
                while (*v32 >= 0xFEu)
                {
                  if (++v32 == v31)
                  {
                    v32 = v31;
                    break;
                  }
                }
              }
            }

            while (v32 != v29);
          }

          goto LABEL_69;
        }
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      v32 = v31;
      v31 = v29 + v30;
      goto LABEL_54;
    }

    v23 = (2 * v23);
    goto LABEL_37;
  }

LABEL_27:
  v18 = *(this + 96);
  result = WebCore::RemoteCommandListener::supportsSeeking(this);
  if (v18 == result)
  {
    return result;
  }

  v6 = *v4;
LABEL_29:
  if (v6)
  {
    goto LABEL_30;
  }

LABEL_31:
  v21 = 0;
LABEL_69:
  v40 = *(this + 11);
  *(this + 11) = v21;
  if (v40)
  {
    WTF::fastFree((v40 - 16), v3);
  }

  *(this + 96) = WebCore::RemoteCommandListener::supportsSeeking(this);
  v43 = *(WebKit::RemoteRemoteCommandListener::ensureGPUProcessConnection(this, v41) + 32);
  v64 = 0;
  v65 = 0;
  v44 = *v4;
  if (*v4)
  {
    v45 = *(v44 - 3);
    if (v45)
    {
      v46 = WTF::fastMalloc(v44, *(v44 - 3));
      LODWORD(v65) = v45;
      v64 = v46;
      v47 = *v4;
      if (*v4)
      {
        if (*(v47 - 3))
        {
          v48 = *(v47 - 1);
          if (v48)
          {
            v49 = *(v47 - 1);
            v50 = *v4;
            while (*v50 >= 0xFEu)
            {
              ++v50;
              if (!--v49)
              {
                goto LABEL_89;
              }
            }
          }

          else
          {
            v50 = *v4;
          }

          v51 = v47 + v48;
          if (v50 != v51)
          {
            v52 = 0;
            do
            {
              v53 = *v50++;
              *(v46 + v52++) = v53;
              if (v50 == v51)
              {
                break;
              }

              while (*v50 >= 0xFEu)
              {
                if (++v50 == v51)
                {
                  v50 = v51;
                  break;
                }
              }
            }

            while (v50 != v51);
            HIDWORD(v65) = v52;
          }
        }
      }
    }
  }

LABEL_89:
  v54 = *(this + 96);
  v66 = &v64;
  v67[0] = v54;
  v55 = *(this + 6);
  v56 = IPC::Encoder::operator new(0x238, v42);
  *v56 = 1524;
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  *(v56 + 1) = v55;
  *(v56 + 68) = 0;
  *(v56 + 70) = 0;
  *(v56 + 69) = 0;
  IPC::Encoder::encodeHeader(v56);
  v68 = v56;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, HIDWORD(v65));
  v57 = HIDWORD(v65);
  if (HIDWORD(v65))
  {
    v58 = v64;
    do
    {
      v59 = *v58;
      v58 = (v58 + 1);
      v69 = v59;
      IPC::Encoder::operator<<<unsigned char>(v56, &v69);
      --v57;
    }

    while (v57);
  }

  IPC::Encoder::operator<<<BOOL &>(v56, v67);
  IPC::Connection::sendMessageImpl(v43, &v68, 0, 0);
  v61 = v68;
  v68 = 0;
  if (v61)
  {
    IPC::Encoder::~Encoder(v61, v60);
    bmalloc::api::tzoneFree(v62, v63);
  }

  result = v64;
  if (v64)
  {
    v64 = 0;
    LODWORD(v65) = 0;
    return WTF::fastFree(result, v60);
  }

  return result;
}

atomic_ullong *WebKit::RemoteVideoCodecFactory::createDecoder(WebKit::LibWebRTCCodecs *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  WebKit::LibWebRTCCodecs::initializeIfNeeded(a1);
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v25 = WebKit::WebProcess::operator new(0x370, v8);
    v9 = WebKit::WebProcess::WebProcess(v25);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = WebKit::WebProcess::libWebRTCCodecs(v9, v8);
  v11 = (v10 + 8);
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_8:
  v14 = WebKit::LibWebRTCCodecs::videoCodecTypeFromWebCodec(v10, a1);
  if ((v14 & 0x100) != 0)
  {
    v16 = v14;
    v18 = *(a2 + 16);
    v17 = *(a2 + 24);
    v26 = v17;
    v19 = *(a2 + 12);
    if (v19)
    {
      v20 = WTF::fastMalloc(v17, *(a2 + 12));
      memcpy(v20, *a2, *(a2 + 12));
    }

    else
    {
      v20 = 0;
    }

    v21 = *a3;
    *a3 = 0;
    v22 = *a4;
    *a4 = 0;
    v23 = WTF::fastMalloc(v17, 0x38);
    *v23 = &unk_1F1129310;
    v23[1] = v18;
    v23[2] = v26;
    v23[3] = v20;
    *(v23 + 8) = v19;
    *(v23 + 9) = v19;
    v23[5] = v21;
    v23[6] = v22;
    v27 = v23;
    WebKit::LibWebRTCCodecs::createDecoderInternal(v10, v16, a1, &v27);
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }

  else
  {
    WebCore::VideoDecoder::createLocalDecoder();
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v11, v15);
}

void WebKit::RemoteVideoCodecFactory::createEncoder(WebKit::LibWebRTCCodecs *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  WebKit::LibWebRTCCodecs::initializeIfNeeded(a1);
  v11 = &qword_1ED643000;
  {
    goto LABEL_69;
  }

  v12 = WebKit::WebProcess::singleton(void)::process;
  while (1)
  {
    WebKit::WebProcess::protectedLibWebRTCCodecs(v12, v10, &v55);
    v13 = v55;
    v14 = WebKit::LibWebRTCCodecs::videoEncoderTypeFromWebCodec(v55, a1);
    if (v13)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v13 + 1, v10);
    }

    if ((v14 & 0x100) == 0)
    {

      MEMORY[0x1EEE54F78](a1, a2, a3, a4, a5);
      return;
    }

    v56[0] = 0;
    v56[1] = 0;
    v16 = v56;
    v55 = v56;
    if (v14)
    {
      break;
    }

    v26 = *a1;
    if (!*a1)
    {
      break;
    }

    v27 = *(v26 + 8);
    v28 = *(v26 + 4);
    if ((*(v26 + 16) & 4) != 0)
    {
      if (v28)
      {
        v35 = 16;
        if (v28 < 0x10)
        {
          v35 = v28;
        }

        v36 = v35;
        v37 = v27;
        do
        {
          if (*v37 == 46)
          {
            goto LABEL_33;
          }

          ++v37;
          --v36;
        }

        while (v36);
        if (v28 >= 0x11)
        {
          v50 = v27;
          v37 = memchr(&v27->i8[v35], 46, v28 - v35);
          v27 = v50;
          if (v37)
          {
LABEL_33:
            v38 = v37 - v27;
            goto LABEL_43;
          }
        }
      }

      break;
    }

    if (!v28)
    {
      break;
    }

    v29 = v27 + 2 * v28;
    if (v28 > 0x1F)
    {
      v30.i64[0] = 0x2E002E002E002ELL;
      v30.i64[1] = 0x2E002E002E002ELL;
      v31 = v27;
      while (1)
      {
        v32 = v31 + 1;
        if (&v31[1] > v29)
        {
          break;
        }

        v33 = vceqq_s16(*v31, v30);
        LOWORD(v15) = vmaxvq_u16(v33);
        ++v31;
        if (v15)
        {
          v34 = &v32[-1];
LABEL_40:
          v40 = (v34 + 2 * vminvq_u16(vornq_s8(xmmword_19E703C80, v33)));
          goto LABEL_41;
        }
      }

      if (v31 < v29)
      {
        v34 = v29 - 16;
        v41.i64[0] = 0x2E002E002E002ELL;
        v41.i64[1] = 0x2E002E002E002ELL;
        v33 = vceqq_s16(*(v29 - 16), v41);
        v41.i16[0] = vmaxvq_u16(v33);
        if (v41.i32[0])
        {
          goto LABEL_40;
        }
      }

      break;
    }

    v39 = 2 * v28;
    v40 = v27;
    while (*v40 != 46)
    {
      v40 += 2;
      v39 -= 2;
      if (!v39)
      {
        goto LABEL_10;
      }
    }

LABEL_41:
    if (v40 == v29)
    {
      break;
    }

    v38 = (v40 - v27) >> 1;
LABEL_43:
    if (v38 == -1 || v38 == v28)
    {
      break;
    }

    if (v38 < v28)
    {
      v11 = (v38 + 1);
      v42 = v28 - (v38 + 1);
      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:sn200100]();
      }

      v10 = (v11 + v27);
      if (v42 > 0x16)
      {
        operator new();
      }

      HIBYTE(v54) = v28 - (v38 + 1);
      v43 = (v53 + v42);
      if (v53 > v10 || v43 <= v10)
      {
        if (v28 != v11)
        {
          v44 = (v53 + v42);
          memmove(v53, v10, v42);
          v43 = v44;
        }

        *v43 = 0;
        std::string::basic_string[abi:sn200100]<0>(__p, "profile-level-id");
        v45 = v56[0];
        if (!v56[0])
        {
          goto LABEL_60;
        }

        while (1)
        {
          while (1)
          {
            v46 = v45;
            if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v45 + 32) & 0x80) == 0)
            {
              break;
            }

            v45 = *v46;
            v16 = v46;
            if (!*v46)
            {
              goto LABEL_60;
            }
          }

          if ((std::operator<=>[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v46 + 4, __p) & 0x80) == 0)
          {
            break;
          }

          v16 = v46 + 8;
          v45 = *(v46 + 1);
          if (!v45)
          {
            goto LABEL_60;
          }
        }

        v47 = *v16;
        if (!*v16)
        {
LABEL_60:
          operator new();
        }

        if (*(v47 + 79) < 0)
        {
          operator delete(*(v47 + 56));
        }

        *(v47 + 56) = *v53;
        *(v47 + 72) = v54;
        HIBYTE(v54) = 0;
        LOBYTE(v53[0]) = 0;
        v11 = &qword_1ED643000;
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(v53[0]);
          }
        }

        break;
      }
    }

    __break(1u);
LABEL_69:
    v48 = WebKit::WebProcess::operator new(0x370, v10);
    v12 = WebKit::WebProcess::WebProcess(v48);
    WebKit::WebProcess::singleton(void)::process = v12;
    *(v11 + 2024) = 1;
  }

LABEL_10:
  if (*(v11 + 2024) == 1)
  {
    v17 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v49 = WebKit::WebProcess::operator new(0x370, v10);
    v17 = WebKit::WebProcess::WebProcess(v49);
    WebKit::WebProcess::singleton(void)::process = v17;
    *(v11 + 2024) = 1;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v17, v10, v53);
  v18 = v53[0];
  v19 = *a3;
  *a3 = 0;
  v20 = *a4;
  *a4 = 0;
  v21 = *a5;
  *a5 = 0;
  v23 = WTF::fastMalloc(v22, 0x20);
  *v23 = &unk_1F1129338;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v21;
  __p[0] = v23;
  WebKit::LibWebRTCCodecs::createEncoderAndWaitUntilInitialized(v18, v14, a1, &v55, a2, __p, v24);
  if (__p[0])
  {
    (*(*__p[0] + 8))(__p[0]);
  }

  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v18 + 1, v25);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v55, v56[0]);
}

void WebKit::RemoteVideoDecoder::~RemoteVideoDecoder(WebKit::LibWebRTCCodecs::Decoder **this, void *a2)
{
  *this = &unk_1F1128910;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v3, a2, &v8);
  v4 = v8;
  WebKit::LibWebRTCCodecs::releaseDecoder(v8, this[2]);
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4 + 1, v5);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoDecoderCallbacks,(WTF::DestructionThread)0>::deref(v6, v5);
  }

  MEMORY[0x1EEE54F70](this);
}

{
  WebKit::RemoteVideoDecoder::~RemoteVideoDecoder(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::RemoteVideoDecoder::decode@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 40);
  if (v7 == 1)
  {
    v8 = *(a1 + 24);
    v9 = a2[3];
    v10 = a2[4];
    v11 = *(v8 + 32);
    if (v11)
    {
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      v7 = v12.u32[0];
      if (v12.u32[0] > 1uLL)
      {
        v3 = a2[3];
        if (v11 <= v9)
        {
          v3 = v9 % v11;
        }
      }

      else
      {
        v3 = (v11 - 1) & v9;
      }

      v13 = *(*(v8 + 24) + 8 * v3);
      if (v13)
      {
        for (i = *v13; i; i = *i)
        {
          v15 = i[1];
          if (v15 == v9)
          {
            if (i[2] == v9)
            {
              i[3] = v10;
              goto LABEL_74;
            }
          }

          else
          {
            if (v12.u32[0] > 1uLL)
            {
              if (v15 >= v11)
              {
                v15 %= v11;
              }
            }

            else
            {
              v15 &= v11 - 1;
            }

            if (v15 != v3)
            {
              break;
            }
          }
        }
      }
    }

    v16 = WTF::fastMalloc(v7, 0x20);
    *v16 = 0;
    v16[1] = v9;
    v16[2] = v9;
    v16[3] = v10;
    v17 = (*(v8 + 48) + 1);
    v18 = *(v8 + 56);
    if (v11 && (v18 * v11) >= v17)
    {
LABEL_64:
      v35 = *(v8 + 24);
      v36 = *(v35 + 8 * v3);
      if (v36)
      {
        *v16 = *v36;
      }

      else
      {
        *v16 = *(v8 + 40);
        *(v8 + 40) = v16;
        *(v35 + 8 * v3) = v8 + 40;
        if (!*v16)
        {
LABEL_73:
          ++*(v8 + 48);
          goto LABEL_74;
        }

        v37 = *(*v16 + 8);
        if ((v11 & (v11 - 1)) != 0)
        {
          if (v37 >= v11)
          {
            v37 %= v11;
          }
        }

        else
        {
          v37 &= v11 - 1;
        }

        v36 = (*(v8 + 24) + 8 * v37);
      }

      *v36 = v16;
      goto LABEL_73;
    }

    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      prime = v21;
    }

    else
    {
      prime = v20;
    }

    v23 = *&prime - 1;
    if (*&prime == 1)
    {
      prime = 2;
    }

    else if ((*&prime & v23) != 0)
    {
      prime = std::__next_prime(*&prime);
    }

    v11 = *(v8 + 32);
    if (*&prime > v11)
    {
      goto LABEL_31;
    }

    if (*&prime < v11)
    {
      v30 = vcvtps_u32_f32(*(v8 + 48) / *(v8 + 56));
      if (v11 < 3 || (v31 = vcnt_s8(v11), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
      {
        v30 = std::__next_prime(v30);
      }

      else
      {
        v23 = 1 << -__clz(v30 - 1);
        if (v30 >= 2)
        {
          v30 = v23;
        }
      }

      if (*&prime <= v30)
      {
        prime = v30;
      }

      if (*&prime >= v11)
      {
        v11 = *(v8 + 32);
      }

      else
      {
        if (prime)
        {
LABEL_31:
          v24 = WTF::fastMalloc(v23, (8 * *&prime));
          v25 = *(v8 + 24);
          *(v8 + 24) = v24;
          if (v25)
          {
            WTF::fastFree(v25, a2);
          }

          v26 = 0;
          *(v8 + 32) = prime;
          do
          {
            *(*(v8 + 24) + 8 * v26++) = 0;
          }

          while (*&prime != v26);
          v27 = *(v8 + 40);
          if (v27)
          {
            v28 = v27[1];
            v29 = vcnt_s8(prime);
            v29.i16[0] = vaddlv_u8(v29);
            if (v29.u32[0] > 1uLL)
            {
              if (v28 >= *&prime)
              {
                v28 %= *&prime;
              }
            }

            else
            {
              v28 &= *&prime - 1;
            }

            *(*(v8 + 24) + 8 * v28) = v8 + 40;
            v32 = *v27;
            if (*v27)
            {
              do
              {
                v33 = v32[1];
                if (v29.u32[0] > 1uLL)
                {
                  if (v33 >= *&prime)
                  {
                    v33 %= *&prime;
                  }
                }

                else
                {
                  v33 &= *&prime - 1;
                }

                if (v33 != v28)
                {
                  v34 = *(v8 + 24);
                  if (!*(v34 + 8 * v33))
                  {
                    *(v34 + 8 * v33) = v27;
                    goto LABEL_55;
                  }

                  *v27 = *v32;
                  *v32 = **(v34 + 8 * v33);
                  **(v34 + 8 * v33) = v32;
                  v32 = v27;
                }

                v33 = v28;
LABEL_55:
                v27 = v32;
                v32 = *v32;
                v28 = v33;
              }

              while (v32);
            }
          }

          v11 = prime;
          goto LABEL_59;
        }

        v45 = *(v8 + 24);
        *(v8 + 24) = 0;
        if (v45)
        {
          WTF::fastFree(v45, a2);
        }

        v11 = 0;
        *(v8 + 32) = 0;
      }
    }

LABEL_59:
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v11 <= v9)
      {
        v3 = v9 % v11;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v3 = (v11 - 1) & v9;
    }

    goto LABEL_64;
  }

LABEL_74:
  {
    v38 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v46 = WebKit::WebProcess::operator new(0x370, a2);
    v38 = WebKit::WebProcess::WebProcess(v46);
    WebKit::WebProcess::singleton(void)::process = v38;
  }

  v39 = WebKit::WebProcess::libWebRTCCodecs(v38, a2);
  v40 = (v39 + 8);
  while (1)
  {
    v41 = *v40;
    if ((*v40 & 1) == 0)
    {
      break;
    }

    v42 = *v40;
    atomic_compare_exchange_strong_explicit(v40, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v42 == v41)
    {
      goto LABEL_81;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v40);
LABEL_81:
  WebKit::LibWebRTCCodecs::decodeFrame(v39, *(a1 + 16), a2[3], *a2, a2[1], a3);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v40, v43);
}

atomic_ullong *WebKit::RemoteVideoDecoder::flush@<X0>(WebKit::LibWebRTCCodecs::Decoder **this@<X0>, void *a2@<X1>, unsigned int **a3@<X8>)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v5, a2, &v10);
  v6 = v10;
  result = WebKit::LibWebRTCCodecs::flushDecoder(v10, this[2], a3);
  if (v6)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6 + 1, v8);
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WebCore::VideoDecoder::DecodedFrame,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 32);
  if (v3 != 255)
  {
    v4 = *a1;
    *a1 = 0;
    if (v3)
    {
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    else if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4, a2);
    }
  }

  *(a1 + 32) = -1;
  return a1;
}

void WebKit::RemoteVideoEncoder::~RemoteVideoEncoder(WebKit::LibWebRTCCodecs::Encoder **this, void *a2)
{
  *this = &unk_1F1128950;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v7);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v3, a2, &v8);
  v4 = v8;
  WebKit::LibWebRTCCodecs::releaseEncoder(v8, this[2]);
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4 + 1, v5);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoEncoderCallbacks,(WTF::DestructionThread)0>::deref(v6, v5);
  }
}

{
  WebKit::RemoteVideoEncoder::~RemoteVideoEncoder(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::RemoteVideoEncoder::encode@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v15 = WebKit::WebProcess::operator new(0x370, a2);
    v8 = WebKit::WebProcess::WebProcess(v15);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  v9 = WebKit::WebProcess::libWebRTCCodecs(v8, a2);
  v10 = v9 + 1;
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
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_8:
  WebKit::LibWebRTCCodecs::encodeFrame(a4, v9, *(a1 + 16), *a2, a2[1], a2[2], a2[3], v4);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v9 + 1, v13);
}

WTF **WebKit::RemoteVideoEncoder::setRates@<X0>(WebKit::LibWebRTCCodecs::Encoder **this@<X0>, unint64_t a2@<X1>, double a3@<D0>, atomic_uint **a4@<X8>)
{
  v7 = a2 / 0x3E8;
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    v8 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v8, a2, &v13);
  v9 = v13;
  result = WebKit::LibWebRTCCodecs::setEncodeRates(a4, v13, this[2], v7, a3);
  if (v9)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v9 + 1, v11);
  }

  return result;
}

atomic_ullong *WebKit::RemoteVideoEncoder::flush@<X0>(WebKit::LibWebRTCCodecs::Encoder **this@<X0>, void *a2@<X1>, unsigned int **a3@<X8>)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::protectedLibWebRTCCodecs(v5, a2, &v10);
  v6 = v10;
  result = WebKit::LibWebRTCCodecs::flushEncoder(v10, this[2], a3);
  if (v6)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6 + 1, v8);
  }

  return result;
}

uint64_t WebKit::RemoteVideoFrameProxy::properties@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(a3 + 24);
  *(a4 + 16) = *(a3 + 16);
  *(a4 + 24) = v6;
  *(a4 + 28) = BYTE4(v6);
  *(a4 + 32) = *(a3 + 32);
  *(a4 + 34) = *(a3 + 34);
  v7 = (*(*a3 + 16))(a3);
  v8 = SHIDWORD(v7);
  v9 = 0x7FFFFFFFLL;
  v10 = 0x80000000;
  if (v7 > -2147500000.0)
  {
    v10 = v7;
  }

  if (v7 < 2147500000.0)
  {
    v9 = v10;
  }

  if (v8 >= 2147500000.0)
  {
    v11 = 0x7FFFFFFF00000000;
  }

  else if (v8 <= -2147500000.0)
  {
    v11 = 0x8000000000000000;
  }

  else
  {
    v11 = v8 << 32;
  }

  *(a4 + 36) = v11 | v9;
  result = (*(*a3 + 24))(a3);
  *(a4 + 44) = result;
  *(a4 + 48) = *(a3 + 36);
  return result;
}

uint64_t WebKit::RemoteVideoFrameProxy::operator new(WebKit::RemoteVideoFrameProxy *this, void *a2)
{
  if (this == 136 && WebKit::RemoteVideoFrameProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteVideoFrameProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteVideoFrameProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteVideoFrameProxy::RemoteVideoFrameProxy(uint64_t a1, atomic_ullong *a2, atomic_uint *a3, uint64_t a4)
{
  v8 = WebCore::VideoFrame::VideoFrame();
  *v8 = &unk_1F1128998;
  v8[6] = 0;
  while (1)
  {
    v9 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v10 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_6:
  *(a1 + 56) = a2;
  v11 = *(a4 + 8);
  *(a1 + 64) = *a4;
  *(a1 + 72) = 0;
  *(a1 + 80) = v11;
  *(a1 + 88) = 1;
  *(a1 + 96) = *(a4 + 36);
  *(a1 + 104) = *(a4 + 44);
  atomic_fetch_add(a3, 1u);
  *(a1 + 112) = a3;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void WebKit::RemoteVideoFrameProxy::~RemoteVideoFrameProxy(WebKit::RemoteVideoFrameProxy *this, void *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    if ((*(this + 88) & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = *(this + 8);
    v5 = *(this + 10);
    *(this + 10) = v5 + 1;
    v14[0] = v4;
    v14[1] = v5;
    v14[2] = atomic_exchange(this + 9, 0);
    v6 = IPC::Encoder::operator new(0x238, a2);
    *v6 = 1677;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    IPC::Encoder::encodeHeader(v6);
    v15 = v6;
    IPC::ArgumentCoder<IPC::ObjectIdentifierWriteReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v6, v14);
    IPC::Connection::sendMessageImpl(v3, &v15, 1, 0);
    v7 = v15;
    v15 = 0;
    if (v7)
    {
      IPC::Encoder::~Encoder(v7, a2);
      bmalloc::api::tzoneFree(v12, v13);
    }
  }

  v8 = *(this + 16);
  *(this + 16) = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v9, a2);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10, a2);
  }

  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 8))(v11, a2);
    }
  }
}

{
  WebKit::RemoteVideoFrameProxy::~RemoteVideoFrameProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::RemoteVideoFrameProxy::pixelBuffer(WebKit::RemoteVideoFrameProxy *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  do
  {
    v4 = this;
    this = *(this + 6);
  }

  while (this);
  v5 = 0;
  atomic_compare_exchange_strong_explicit(v4 + 120, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    this = MEMORY[0x19EB01E30](v4 + 120, a2, a3, a4);
  }

  v6 = *(v4 + 16);
  if (!v6)
  {
    v7 = *(v4 + 14);
    if (!v7)
    {
LABEL_37:
      WebCore::createBlackPixelBuffer(&cf, *(v4 + 24));
      v31 = cf;
      cf = 0;
      v32 = *(v4 + 16);
      *(v4 + 16) = v31;
      if (v32)
      {
        CFRelease(v32);
        v33 = cf;
        cf = 0;
        if (v33)
        {
          CFRelease(v33);
        }
      }

      v6 = *(v4 + 16);
      goto LABEL_41;
    }

    *(v4 + 14) = 0;
    isMainRunLoop = WTF::isMainRunLoop(this);
    v10 = &dword_1EB01E000;
    {
      v11 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v45 = WebKit::WebProcess::operator new(0x370, v8);
      v11 = WebKit::WebProcess::WebProcess(v45);
      WebKit::WebProcess::singleton(void)::process = v11;
    }

    v12 = *(v11 + 804);
    if ((v12 & 1) != 0 || isMainRunLoop != 1)
    {
      v51[0] = v4;
      LOWORD(v49) = 0;
      BYTE2(v49) = 0;
      v22 = WTF::fastMalloc(atomic_fetch_add(v4 + 2, 1u), 0x18);
      *v22 = &unk_1F11293D8;
      v22[1] = v51;
      v22[2] = &v49;
      cf = v22;
      WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getVideoFrameBuffer(*(v7 + 8), v4, v12 ^ 1, &cf);
      v23 = cf;
      cf = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      cf = 0x7FF0000000000000;
      v53 = 0;
      WTF::BinarySemaphore::waitUntil();
      v24 = v51[0];
      v51[0] = 0;
      if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v24 + 2);
        (*(*v24 + 8))(v24);
      }

      goto LABEL_36;
    }

    v13 = *(v4 + 6);
    v14 = *(v4 + 7);
    if (v13)
    {
      if (*(v13 + 88))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = v4;
      if (*(v4 + 88))
      {
LABEL_12:
        atomic_fetch_add(v13 + 9, 1uLL);
        v15 = *(v13 + 10);
        v10 = *(v13 + 8);
        WTF::ApproximateTime::now(v11);
        v17 = v16 + 10.0;
        IPC::Connection::createSyncMessageEncoder(0x1020, 0, v51);
        v18 = v51[0];
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51[0], v10);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, v15);
        v19 = IPC::Connection::sendSyncMessage(&v49, v14, v51[1], v51, 0, v17);
        if (v50)
        {
          if (v50 != 1)
          {
            mpark::throw_bad_variant_access(v19);
          }

          v14 = v49;
          v21 = 1;
LABEL_30:
          v29 = v51[0];
          v51[0] = 0;
          if (v29)
          {
            IPC::Encoder::~Encoder(v29, v20);
            bmalloc::api::tzoneFree(v36, v37);
            if (v21)
            {
              goto LABEL_36;
            }
          }

          else if (v21)
          {
            goto LABEL_36;
          }

          v30 = *(v4 + 16);
          *(v4 + 16) = v10;
          if (v30)
          {
            CFRelease(v30);
          }

          if (v14)
          {
            IPC::Decoder::~Decoder(v14);
            bmalloc::api::tzoneFree(v40, v41);
          }

LABEL_36:
          WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v7, v20);
          v6 = *(v4 + 16);
          if (v6)
          {
            goto LABEL_41;
          }

          goto LABEL_37;
        }

        v14 = v49;
        v49 = 0;
        if (*(v14 + 50) == 3194)
        {
          v25 = 11;
          goto LABEL_22;
        }

LABEL_25:
        IPC::ArgumentCoder<WTF::RetainPtr<__CVBuffer *>,void>::decode(v14, &cf);
        if (v53)
        {
          v21 = 0;
          v10 = cf;
          goto LABEL_27;
        }

        v42 = *v14;
        v43 = *(v14 + 8);
        *v14 = 0;
        *(v14 + 8) = 0;
        v44 = *(v14 + 24);
        if (v44 && v43)
        {
          (*(*v44 + 16))(v44, v42);
          v46 = *v14;
          v47 = *(v14 + 8);
          v48 = *(v14 + 24);
          v25 = 14;
          *v14 = 0;
          *(v14 + 8) = 0;
          if (!v48 || !v47)
          {
            goto LABEL_22;
          }

          (*(*v48 + 16))(v48, v46);
        }

        else
        {
          *v14 = 0;
          *(v14 + 8) = 0;
        }

        v25 = 14;
LABEL_22:
        IPC::Decoder::~Decoder(v14);
        bmalloc::api::tzoneFree(v26, v27);
        v21 = 1;
        v14 = v25;
LABEL_27:
        if (!v50)
        {
          v28 = v49;
          v49 = 0;
          if (v28)
          {
            IPC::Decoder::~Decoder(v28);
            bmalloc::api::tzoneFree(v38, v39);
          }
        }

        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_41:
  v34 = 1;
  atomic_compare_exchange_strong_explicit(v4 + 120, &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != 1)
  {
    WTF::Lock::unlockSlow((v4 + 120));
  }

  return v6;
}

uint64_t WebKit::RemoteVideoFrameProxy::clone@<X0>(atomic_uint *this@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  WebKit::RemoteVideoFrameProxy::operator new(0x88, a2);
  result = WebCore::VideoFrame::VideoFrame();
  *result = &unk_1F1128998;
  atomic_fetch_add(this + 2, 1u);
  *(result + 48) = this;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 88) = 0;
  *(result + 96) = *(this + 12);
  *(result + 104) = this[26];
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *a3 = result;
  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a1 + 8), a3);
  v6 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  v8 = WTF::fastMalloc(v7, 0x20);
  *v8 = &unk_1F1129400;
  v8[1] = v4;
  v8[2] = a1;
  v8[3] = v6;
  v10 = v8;
  WebCore::SourceBufferPrivate::ensureOnDispatcher();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::operator new(WebKit::SourceBufferPrivateRemote *this, void *a2)
{
  if (this == 472 && WebKit::SourceBufferPrivateRemote::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::SourceBufferPrivateRemote::s_heapRef, a2);
  }

  else
  {
    return WebKit::SourceBufferPrivateRemote::operatorNewSlow(this);
  }
}

uint64_t WebKit::SourceBufferPrivateRemote::SourceBufferPrivateRemote(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  WebCore::SourceBufferPrivate::SourceBufferPrivate();
  *a1 = &unk_1F11289F8;
  *(a1 + 384) = a2;
  v9 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock((a2 + 24), v8);
  *(a1 + 392) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v9);
  v11 = WTF::fastMalloc(v10, 0x20);
  *v11 = &unk_1F10F2E38;
  v11[1] = 3;
  v11[2] = a1;
  v12 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a1 + 8), 3);
  v11[3] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v12);
  *(a1 + 400) = v11;
  *(a1 + 408) = a3;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 10000000;
  *(a1 + 444) = 1;
  *(a1 + 448) = 0;
  v13 = a4[29];
  atomic_fetch_add(v13 + 2, 1u);
  v14 = a4[30];
  v15 = a4[31] + 1;
  a4[31] = v15;
  *(a1 + 456) = v13;
  *(a1 + 464) = v14 & 0xFFFFFFFFFFFF0000 | v15;
  atomic_fetch_add(v13 + 2, 1u);
  v16 = *(a1 + 464);
  v21[0] = "SourceBufferPrivateRemote";
  v21[1] = 26;
  v21[2] = "SourceBufferPrivateRemote";
  v21[3] = v16;
  v17 = WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v13, &WebKit2LogMedia, 0, v21);
  if (v17)
  {
    v17 = WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v21);
  }

  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 2);
    v17 = (*(*v13 + 8))(v13);
  }

  v18 = *(a2 + 32);
  v19 = WebKit::MediaSourcePrivateRemote::queueSingleton(v17);
  IPC::Connection::addWorkQueueMessageReceiver(v18, 0x8E, v19, *(a1 + 400), *(a1 + 408));
  return a1;
}

void WebKit::SourceBufferPrivateRemote::~SourceBufferPrivateRemote(WebKit::SourceBufferPrivateRemote *this)
{
  v2 = *(this + 57);
  atomic_fetch_add(v2 + 2, 1u);
  v3 = *(this + 58);
  v10[0] = "SourceBufferPrivateRemote";
  v10[1] = 26;
  v10[2] = "~SourceBufferPrivateRemote";
  v10[3] = v3;
  if (WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier>(v2, &WebKit2LogMedia, 0, v10))
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier>(&WebKit2LogMedia, 0, v10);
  }

  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  v5 = *(this + 49);
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v10, v5, *(this + 48));
    if (v10[0])
    {
      IPC::Connection::removeWorkQueueMessageReceiver(*(v10[0] + 32), 0x8Eu, *(this + 51));
      v6 = v10[0];
      v10[0] = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v6 + 24), v4);
      }
    }
  }

  v7 = *(this + 57);
  *(this + 57) = 0;
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7 + 2);
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 50);
  *(this + 50) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 49);
  *(this + 49) = 0;
  if (v9)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, v4);
  }

  WebCore::SourceBufferPrivate::~SourceBufferPrivate(this);
}

{
  WebKit::SourceBufferPrivateRemote::~SourceBufferPrivateRemote(this);

  bmalloc::api::tzoneFree(v1, v2);
}

atomic_uint **WebKit::SourceBufferPrivateRemote::append@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X8>)
{
  v6 = *(a1 + 32);
  while (1)
  {
    v7 = *(a1 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(a1 + 8);
    atomic_compare_exchange_strong_explicit((a1 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a1 + 8));
LABEL_6:
  v9 = *a2;
  *a2 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v17[2] = "append";
  v17[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v25, 0, v17, "append");
  v11 = v25;
  if (v25)
  {
    add = atomic_fetch_add(v25 + 2, 1u);
    v12 = v25;
  }

  else
  {
    v12 = 0;
  }

  v25 = 0;
  v19 = v26;
  v20 = v27;
  v22 = a1;
  v13 = WTF::fastMalloc(add, 0x48);
  v18 = 0;
  *v13 = &unk_1F1128DC0;
  v13[1] = v12;
  v14 = v20;
  *(v13 + 1) = v19;
  *(v13 + 2) = v14;
  v13[6] = a1;
  v13[7] = a1;
  v13[8] = v9;
  v24 = v13;
  (*(*v6 + 16))(v6, &v24);
  v15 = v24;
  v24 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v23 = 0;
  v21 = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v18);
  *a3 = v11;
  return WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v25);
}

uint64_t *WebKit::SourceBufferPrivateRemote::abort@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1129428;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::resetParserState@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1129450;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

WTF::Lock *WebKit::SourceBufferPrivateRemote::appendInternal@<X0>(uint64_t *a1@<X8>)
{
  v3 = 4;
  v2[0] = 0;
  v2[1] = 0;
  v2[2] = "appendInternal";
  v2[3] = 0;
  return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(v2, a1, &v3);
}

uint64_t *WebKit::SourceBufferPrivateRemote::removedFromMediaSource@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1129478;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setActive(WebKit::SourceBufferPrivateRemote *this, unint64_t a2)
{
  v2 = a2;
  atomic_store(1u, this + 448);
  v4 = WTF::fastMalloc(this + 56, 0x10);
  *v4 = &unk_1F11294A0;
  *(v4 + 8) = v2;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::canSwitchToType(WebKit::SourceBufferPrivateRemote *this, const WebCore::ContentType *a2)
{
  LOBYTE(v8) = 0;
  WTF::String::isolatedCopy();
  *&v6 = this;
  *(&v6 + 1) = &v8;
  v3 = WTF::fastMalloc(&v8, 0x20);
  *v3 = &unk_1F11294C8;
  v3[1] = v5;
  *(v3 + 1) = v6;
  v7 = v3;
  WTF::callOnMainRunLoopAndWait();
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v8;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setMediaSourceEnded@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F11294F0;
  *(v5 + 8) = v3;
  v9 = v5;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v9, v6);
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setMode@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1129518;
  *(v5 + 8) = v3;
  v9 = v5;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(a1, &v9, v6);
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

atomic_uint **WebKit::SourceBufferPrivateRemote::removeCodedFrames@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, const WTF::MediaTime *a2@<X1>, const WTF::MediaTime *a3@<X2>, const WTF::MediaTime *a4@<X3>, atomic_uint **a5@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = *(this + 4);
  while (1)
  {
    v11 = *(this + 1);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v13 = *a2;
  v23[3] = 0;
  v24[0] = v13;
  *(v24 + 5) = *(a2 + 5);
  *(&v35 + 3) = *a3;
  *(&v35 + 1) = *(a3 + 5);
  *(&v34 + 3) = *a4;
  *(&v34 + 1) = *(a4 + 5);
  v23[0] = 0;
  v23[1] = 0;
  v23[2] = "removeCodedFrames";
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v31, 0, v23, "removeCodedFrames");
  v14 = v31;
  if (v31)
  {
    atomic_fetch_add(v31 + 2, 1u);
    v15 = v31;
  }

  else
  {
    v15 = 0;
  }

  v31 = 0;
  v26 = v32;
  v27 = v33;
  *v29 = this;
  *&v29[8] = v24[0];
  *&v29[13] = *(v24 + 5);
  *&v29[21] = v35;
  *&v29[37] = v34;
  v16 = WTF::fastMalloc(*(v24 + 5), 0x70);
  v25 = 0;
  *v16 = &unk_1F1128F10;
  v16[1] = v15;
  v17 = v27;
  *(v16 + 1) = v26;
  *(v16 + 2) = v17;
  v16[6] = this;
  v18 = *&v29[45];
  v19 = *&v29[32];
  v20 = *v29;
  *(v16 + 9) = *&v29[16];
  *(v16 + 11) = v19;
  *(v16 + 101) = v18;
  *(v16 + 7) = v20;
  v30 = v16;
  (*(*v10 + 16))(v10, &v30);
  v21 = v30;
  v30 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v28 = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v25);
  *a5 = v14;
  return WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v31);
}

uint64_t *WebKit::SourceBufferPrivateRemote::evictCodedFrames(atomic_uchar *this, WTF::String *a2, const WTF::MediaTime *a3)
{
  v13 = a2;
  if (WebKit::SourceBufferPrivateRemote::canAppend(this, a2))
  {
    result = WebKit::SourceBufferPrivateRemote::isBufferFullFor(this, a2);
    if (result)
    {
      *&v10 = *a3;
      *(&v10 + 5) = *(a3 + 5);
      v8 = WTF::fastMalloc(*(&v10 + 5), 0x20);
      *v8 = &unk_1F1129540;
      v8[1] = a2;
      v8[2] = v10;
      *(v8 + 21) = *(&v10 + 5);
      v12 = v8;
      WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v12, *(&v10 + 5));
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      return 0;
    }
  }

  else
  {
    v9 = WTF::fastMalloc(v6, 0x20);
    *v9 = &unk_1F1129568;
    v9[1] = this;
    v9[2] = &v13;
    v9[3] = a3;
    v11 = v9;
    WTF::callOnMainRunLoopAndWait();
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    return WebKit::SourceBufferPrivateRemote::isBufferFullFor(this, v13);
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::canAppend(atomic_uchar *this, unint64_t a2)
{
  v3 = 0;
  v4 = this + 425;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(this + 425, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 425, a2);
  }

  canAppend = WebCore::SourceBufferPrivate::canAppend(this);
  atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(v4);
  }

  return canAppend;
}

uint64_t *WebKit::SourceBufferPrivateRemote::isBufferFullFor(atomic_uchar *this, WTF::String *a2)
{
  v2 = this;
  v3 = 0;
  v67[1] = *MEMORY[0x1E69E9840];
  v4 = this + 425;
  atomic_compare_exchange_strong_explicit(this + 425, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this + 425);
  }

  v46 = v4;
  v5 = *(v2 + 57);
  atomic_fetch_add((v5 + 8), 1u);
  v6 = *(v2 + 58);
  v48[0] = "SourceBufferPrivateRemote";
  v48[1] = 26;
  v48[2] = "isBufferFullFor";
  v48[3] = v6;
  v7 = MEMORY[0x1E696EBD0];
  while (1)
  {
    v8 = *v7;
    if (v8)
    {
      break;
    }

    v9 = *v7;
    atomic_compare_exchange_strong_explicit(v7, &v9, v8 | 1, memory_order_acquire, memory_order_acquire);
    if (v9 == v8)
    {
      v10 = WTF::Logger::messageHandlerObservers(this);
      v11 = *(v10 + 12);
      if (v11)
      {
        v12 = *v10;
        v13 = *v10 + 8 * v11;
        do
        {
          v14 = *v12;
          *buf = 0;
          WTF::Logger::LogSiteIdentifier::toString(&buf[8], v48);
          v60 = 0;
          WTF::String::String(&v61, "requiredSize:");
          v62 = 0;
          WTF::String::number(&v63, a2);
          v64 = 0;
          WTF::String::String(&v65, " evictionData:");
          v66 = 0;
          WTF::makeString<WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral>(v67, *(v2 + 5), *(v2 + 6), *(v2 + 7), *(v2 + 8));
          WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v49, buf, 5uLL);
          (*(*v14 + 16))(v14, &WebKit2LogMedia, 0, v49);
          WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v49, v15);
          for (i = 72; i != -8; i -= 16)
          {
            v18 = *&buf[i];
            *&buf[i] = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v16);
            }
          }

          ++v12;
        }

        while (v12 != v13);
      }

      v19 = 1;
      atomic_compare_exchange_strong_explicit(v7, &v19, 0, memory_order_release, memory_order_relaxed);
      if (v19 != 1)
      {
        WTF::Lock::unlockSlow(MEMORY[0x1E696EBD0]);
      }

      if ((*(v5 + 12) & 1) == 0)
      {
        goto LABEL_58;
      }

      WTF::Logger::LogSiteIdentifier::toString(&v54, v48);
      WTF::String::String(&v53, "requiredSize:");
      WTF::String::number(&v52, a2);
      WTF::String::String(&v51, " evictionData:");
      WTF::makeString<WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral>(&v50, *(v2 + 5), *(v2 + 6), *(v2 + 7), *(v2 + 8));
      v49[0] = v53;
      v58 = v52;
      *buf = v54;
      v20 = v50;
      v56 = v50;
      v57 = v51;
      result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v49, &v58, &v57, &v56, &v55);
      if (!v55)
      {
        __break(0xC471u);
        return result;
      }

      v50 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v22);
      }

      v23 = v51;
      v51 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }

      v24 = v52;
      v52 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v22);
      }

      v25 = v53;
      v53 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v22);
      }

      v26 = v54;
      v54 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v22);
      }

      v27 = qword_1ED640D38;
      v28 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        WTF::String::utf8();
        v30 = v49[0] ? v49[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v30;
        _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v28 = v49[0];
        v49[0] = 0;
        if (v28)
        {
          if (*v28 == 1)
          {
            v28 = WTF::fastFree(v28, v29);
          }

          else
          {
            --*v28;
          }
        }
      }

      if (WebKit2LogMedia)
      {
        v31 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v32 = *v31;
          if (v32)
          {
            break;
          }

          v33 = *v31;
          atomic_compare_exchange_strong_explicit(v31, &v33, v32 | 1, memory_order_acquire, memory_order_acquire);
          if (v33 == v32)
          {
            v34 = WTF::Logger::observers(v28);
            v35 = *(v34 + 12);
            if (v35)
            {
              v36 = *v34;
              v37 = *v34 + 8 * v35;
              do
              {
                v38 = *v36;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], v48);
                v60 = 0;
                WTF::String::String(&v61, "requiredSize:");
                v62 = 0;
                WTF::String::number(&v63, a2);
                v64 = 0;
                WTF::String::String(&v65, " evictionData:");
                v66 = 0;
                WTF::makeString<WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral,unsigned long long,WTF::ASCIILiteral>(v67, *(v2 + 5), *(v2 + 6), *(v2 + 7), *(v2 + 8));
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v49, buf, 5uLL);
                (*(*v38 + 16))(v38, &WebKit2LogMedia, 0, v49);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v49, v39);
                for (j = 72; j != -8; j -= 16)
                {
                  v41 = *&buf[j];
                  *&buf[j] = 0;
                  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v41, v29);
                  }
                }

                ++v36;
              }

              while (v36 != v37);
            }

            v42 = 1;
            atomic_compare_exchange_strong_explicit(v31, &v42, 0, memory_order_release, memory_order_relaxed);
            if (v42 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v43 = v55;
      v55 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v29);
      }

      break;
    }
  }

  if (!v5)
  {
    goto LABEL_60;
  }

LABEL_58:
  if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v5 + 8));
    (*(*v5 + 8))(v5);
  }

LABEL_60:
  isBufferFullFor = WebCore::SourceBufferPrivate::isBufferFullFor(v2);
  v45 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 425, &v45, 0, memory_order_release, memory_order_relaxed);
  if (v45 != 1)
  {
    WTF::Lock::unlockSlow(v46);
  }

  return isBufferFullFor;
}

uint64_t *WebKit::SourceBufferPrivateRemote::addTrackBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1129590;
  v5[1] = a2;
  v9 = v5;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(a1, &v9, v6);
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::resetTrackBuffers@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F11295B8;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::clearTrackBuffers(atomic_uchar *this, unint64_t a2)
{
  v5 = 0;
  v3 = this + 425;
  v4 = 1;
  atomic_compare_exchange_strong_explicit(this + 425, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](this + 425, a2);
  }

  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  v6 = WTF::fastMalloc(v5, 0x10);
  *v6 = &unk_1F11295E0;
  v10 = v6;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v10, v7);
  result = v10;
  if (v10)
  {
    v9 = *(*v10 + 8);

    return v9();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setAllTrackBuffersNeedRandomAccess@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1129608;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setGroupStartTimestamp(WebKit::SourceBufferPrivateRemote *this, const WTF::MediaTime *a2)
{
  *&v7 = *a2;
  *(&v7 + 5) = *(a2 + 5);
  v3 = WTF::fastMalloc(*(&v7 + 5), 0x18);
  *v3 = &unk_1F1129630;
  *(v3 + 1) = v7;
  v8 = v3;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v4);
  result = v8;
  if (v8)
  {
    v6 = *(*v8 + 8);

    return v6();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setGroupStartTimestampToEndTimestamp@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1129658;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setShouldGenerateTimestamps@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1129680;
  *(v5 + 8) = v3;
  v9 = v5;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v9, v6);
  result = v9;
  if (v9)
  {
    v8 = *(*v9 + 8);

    return v8();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::reenqueueMediaIfNeeded(WebKit::SourceBufferPrivateRemote *this, const WTF::MediaTime *a2)
{
  *&v7 = *a2;
  *(&v7 + 5) = *(a2 + 5);
  v3 = WTF::fastMalloc(*(&v7 + 5), 0x18);
  *v3 = &unk_1F11296A8;
  *(v3 + 1) = v7;
  v8 = v3;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v4);
  result = v8;
  if (v8)
  {
    v6 = *(*v8 + 8);

    return v6();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::resetTimestampOffsetInTrackBuffers@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F11296D0;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::startChangingType@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F11296F8;
  v8 = v4;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v5);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::timestampOffset(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 425;
  v4 = 1;
  atomic_compare_exchange_strong_explicit(this + 425, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 425);
  }

  result = *(this + 54);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    v6 = result;
    WTF::Lock::unlockSlow(v3);
    return v6;
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setTimestampOffset(WebKit::SourceBufferPrivateRemote *this, const WTF::MediaTime *a2)
{
  v4 = 0;
  v5 = this + 425;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(this + 425, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 425);
  }

  v7 = *a2;
  *(this + 437) = *(a2 + 5);
  *(this + 54) = v7;
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    WTF::Lock::unlockSlow(v5);
  }

  *&v12 = *a2;
  *(&v12 + 5) = *(a2 + 5);
  v8 = WTF::fastMalloc(*(&v12 + 5), 0x18);
  *v8 = &unk_1F1129720;
  *(v8 + 1) = v12;
  v13 = v8;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v13, v9);
  result = v13;
  if (v13)
  {
    v11 = *(*v13 + 8);

    return v11();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setAppendWindowStart(WebKit::SourceBufferPrivateRemote *this, const WTF::MediaTime *a2)
{
  *&v7 = *a2;
  *(&v7 + 5) = *(a2 + 5);
  v3 = WTF::fastMalloc(*(&v7 + 5), 0x18);
  *v3 = &unk_1F1129748;
  *(v3 + 1) = v7;
  v8 = v3;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v4);
  result = v8;
  if (v8)
  {
    v6 = *(*v8 + 8);

    return v6();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::setAppendWindowEnd(WebKit::SourceBufferPrivateRemote *this, const WTF::MediaTime *a2)
{
  *&v7 = *a2;
  *(&v7 + 5) = *(a2 + 5);
  v3 = WTF::fastMalloc(*(&v7 + 5), 0x18);
  *v3 = &unk_1F1129770;
  *(v3 + 1) = v7;
  v8 = v3;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v4);
  result = v8;
  if (v8)
  {
    v6 = *(*v8 + 8);

    return v6();
  }

  return result;
}

atomic_uint **WebKit::SourceBufferPrivateRemote::setMaximumBufferSize@<X0>(atomic_uchar *this@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = 0;
  v7 = this + 425;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this + 425, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](this + 425);
  }

  *(this + 7) = a2;
  atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(v7);
  }

  v15 = 0;
  v16 = 0;
  *&v17 = "setMaximumBufferSize";
  *(&v17 + 1) = 0;
  WTF::NativePromiseProducer<void,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v20, 0, &v15, "setMaximumBufferSize");
  v9 = v20;
  if (v20)
  {
    atomic_fetch_add(v20 + 2, 1u);
    v10 = v20;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v9;
  v15 = a2;
  v20 = 0;
  v17 = v21;
  v18 = v22;
  v11 = WTF::fastMalloc(v9, 0x38);
  *v11 = &unk_1F1129798;
  v11[1] = a2;
  v16 = 0;
  v11[2] = v10;
  v12 = v18;
  *(v11 + 3) = v17;
  *(v11 + 5) = v12;
  v19 = v11;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v19, v13);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(&v16);
  return WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(&v20);
}

atomic_uint **WebKit::SourceBufferPrivateRemote::computeSeekTime@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, const WebCore::SeekTarget *a2@<X1>, atomic_uint **a3@<X8>)
{
  v6 = *(this + 4);
  while (1)
  {
    v7 = *(this + 1);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v9 = *(a2 + 1);
  v21 = *a2;
  v22 = v9;
  v23 = *(a2 + 2);
  v20[0] = 0;
  v20[1] = 0;
  v20[2] = "computeSeekTime";
  v20[3] = 0;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v30, 0, v20, "computeSeekTime");
  v11 = v30;
  if (v30)
  {
    add = atomic_fetch_add(v30 + 2, 1u);
    v12 = v30;
  }

  else
  {
    v12 = 0;
  }

  v30 = 0;
  v25 = v31;
  v26 = v32;
  *v28 = this;
  *&v28[8] = v21;
  *&v28[24] = v22;
  *&v28[40] = v23;
  v13 = WTF::fastMalloc(add, 0x70);
  v24 = 0;
  *v13 = &unk_1F1128F88;
  v13[1] = v12;
  v14 = v26;
  *(v13 + 1) = v25;
  *(v13 + 2) = v14;
  v13[6] = this;
  v15 = *&v28[48];
  v16 = *&v28[32];
  v17 = *v28;
  *(v13 + 9) = *&v28[16];
  *(v13 + 11) = v16;
  v13[13] = v15;
  *(v13 + 7) = v17;
  v29 = v13;
  (*(*v6 + 16))(v6, &v29);
  v18 = v29;
  v29 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v27 = 0;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v24);
  *a3 = v11;
  return WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v30);
}

uint64_t *WebKit::SourceBufferPrivateRemote::seekToTime(WebKit::SourceBufferPrivateRemote *this, const WTF::MediaTime *a2)
{
  *&v7 = *a2;
  *(&v7 + 5) = *(a2 + 5);
  v3 = WTF::fastMalloc(*(&v7 + 5), 0x18);
  *v3 = &unk_1F1129838;
  *(v3 + 1) = v7;
  v8 = v3;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(this, &v8, v4);
  result = v8;
  if (v8)
  {
    v6 = *(*v8 + 8);

    return v6();
  }

  return result;
}

uint64_t *WebKit::SourceBufferPrivateRemote::updateTrackIds@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = WTF::fastMalloc(a3, 0x18);
  *v6 = &unk_1F1129860;
  v6[1] = v4;
  v6[2] = v5;
  v10 = v6;
  WebKit::SourceBufferPrivateRemote::ensureWeakOnDispatcher(a1, &v10, v7);
  result = v10;
  if (v10)
  {
    v9 = *(*v10 + 8);

    return v9();
  }

  return result;
}

atomic_uint **WebKit::SourceBufferPrivateRemote::bufferedSamplesForTrackId@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v6 = *(this + 4);
  while (1)
  {
    v7 = *(this + 1);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v16[0] = 0;
  v16[1] = 0;
  v16[2] = "bufferedSamplesForTrackId";
  v16[3] = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v23, v16, "bufferedSamplesForTrackId");
  v10 = v23;
  if (v23)
  {
    add = atomic_fetch_add(v23 + 2, 1u);
    v11 = v23;
  }

  else
  {
    v11 = 0;
  }

  v23 = 0;
  v18 = v24;
  v19 = v25;
  *&v21 = this;
  *(&v21 + 1) = a2;
  v12 = WTF::fastMalloc(add, 0x48);
  v17 = 0;
  *v12 = &unk_1F1129028;
  v12[1] = v11;
  v13 = v19;
  *(v12 + 1) = v18;
  *(v12 + 2) = v13;
  v12[6] = this;
  *(v12 + 7) = v21;
  v22 = v12;
  (*(*v6 + 16))(v6, &v22);
  v14 = v22;
  v22 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v20 = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v17);
  *a3 = v10;
  return WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v23);
}

atomic_uint **WebKit::SourceBufferPrivateRemote::enqueuedSamplesForTrackID@<X0>(WebKit::SourceBufferPrivateRemote *this@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v6 = *(this + 4);
  while (1)
  {
    v7 = *(this + 1);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_6:
  v16[0] = 0;
  v16[1] = 0;
  v16[2] = "enqueuedSamplesForTrackID";
  v16[3] = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v23, v16, "enqueuedSamplesForTrackID");
  v10 = v23;
  if (v23)
  {
    add = atomic_fetch_add(v23 + 2, 1u);
    v11 = v23;
  }

  else
  {
    v11 = 0;
  }

  v23 = 0;
  v18 = v24;
  v19 = v25;
  *&v21 = this;
  *(&v21 + 1) = a2;
  v12 = WTF::fastMalloc(add, 0x48);
  v17 = 0;
  *v12 = &unk_1F11290A0;
  v12[1] = v11;
  v13 = v19;
  *(v12 + 1) = v18;
  *(v12 + 2) = v13;
  v12[6] = this;
  *(v12 + 7) = v21;
  v22 = v12;
  (*(*v6 + 16))(v6, &v22);
  v14 = v22;
  v22 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v20 = 0;
  WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v17);
  *a3 = v10;
  return WTF::NativePromiseProducer<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v23);
}

atomic_uchar *WebKit::SourceBufferPrivateRemote::MessageReceiver::client@<X0>(WebKit::SourceBufferPrivateRemote::MessageReceiver *this@<X0>, uint64_t *a2@<X8>)
{
  result = *(this + 3);
  if (!result)
  {
    goto LABEL_6;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v8, result, *(this + 2));
  result = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  result = WebCore::SourceBufferPrivate::client(a2, v8);
  v6 = *a2;
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref(v7 + 1, v5);
  }

  if (!v6)
  {
LABEL_6:
    *a2 = 0;
  }

  return result;
}

double WebKit::SourceBufferPrivateRemote::MessageReceiver::takeOwnershipOfMemory(WebKit::MediaSourcePrivateRemote *a1, uint64_t a2)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);

  WebCore::SharedMemoryHandle::takeOwnershipOfMemory();
  return result;
}

atomic_ullong *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidReceiveInitializationSegment(WebKit::MediaSourcePrivateRemote *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  v6 = *(a1 + 3);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v31, v6, *(a1 + 2));
  }

  else
  {
    v31 = 0;
  }

  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(a1, &v30);
  if (v30 && (WebKit::SourceBufferPrivateRemote::player(&v29, v31), v29))
  {
    v7 = v30;
    WebKit::SourceBufferPrivateRemote::MessageReceiver::createInitializationSegment(v23, v29, a2);
    v8 = (*(*v7 + 16))(&v27, v7, v23);
    v9 = v27;
    v10 = WebKit::MediaSourcePrivateRemote::queueSingleton(v8);
    v20 = 0uLL;
    v21 = "sourceBufferPrivateDidReceiveInitializationSegment";
    v22 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> &&)>>(v9, v10 + 24, a3, &v20, v28);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v28);
    v12 = v27;
    v27 = 0;
    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12 + 2);
      (*(*v12 + 16))(v12);
    }

    WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v11);
    WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v13);
    result = WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v14);
    if (v29)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v29 + 6, v16);
    }
  }

  else
  {
    v23[0] = 259;
    v17 = *a3;
    *a3 = 0;
    (*(*v17 + 16))(v17, v23);
    result = (*(*v17 + 8))(v17);
  }

  v18 = v30;
  v30 = 0;
  if (v18)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v18 + 8), v16);
  }

  v19 = v31;
  v31 = 0;
  if (v19)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v19 + 8), v16);
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::player(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(a2 + 24);
  if (!v4 || (this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v9, v4, *(a2 + 16)), (v5 = v9) == 0))
  {
    *v3 = 0;
    return this;
  }

  (*(*v9 + 16))(&v8, v9);
  if (v8)
  {
    if ((*(*v8 + 32))(v8) != 11)
    {
      this = 254;
      __break(0xC471u);
      return this;
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  *v3 = v7;
  v8 = 0;
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v5 + 8), v6);
}

uint64_t WebKit::SourceBufferPrivateRemote::MessageReceiver::createInitializationSegment(uint64_t a1, atomic_uchar *a2, uint64_t a3)
{
  *(&v6 + 1) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = *a3;
  *(a1 + 5) = *(a3 + 5);
  v7 = *(a3 + 28);
  if (!v7)
  {
    v10 = 0;
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v8 = (v7 >> 28);
  if (v8)
  {
    __break(0xC471u);
    goto LABEL_29;
  }

  v9 = WTF::fastMalloc(v8, (16 * v7));
  v10 = v9;
  v11 = *(a3 + 28);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(a3 + 16);
  v13 = &v12[3 * v11];
  v14 = (v9 + 1);
  v15 = ((8 * v11 - 8) >> 3);
  v16 = v15 + 1;
  do
  {
    WebKit::RemoteMediaDescription::create(&v45, v12, v15);
    v17 = v45;
    WebKit::MediaPlayerPrivateRemote::audioTrackPrivateRemote(a2, v12[2], &v46);
    v15 = v46;
    *(v14 - 1) = v17;
    *v14 = v15;
    v12 += 3;
    v14 += 2;
  }

  while (v12 != v13);
LABEL_9:
  *&v6 = 0;
  v45 = v6;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  *(a1 + 28) = v16;
  WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, a2);
  v20 = *(a3 + 44);
  if (v20)
  {
    v21 = (v20 >> 28);
    if (v21)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2A6980);
    }

    v22 = WTF::fastMalloc(v21, (16 * v20));
    v23 = v22;
    v24 = *(a3 + 44);
    if (v24)
    {
      v25 = *(a3 + 32);
      v26 = &v25[3 * v24];
      v27 = (v22 + 1);
      v28 = ((8 * v24 - 8) >> 3);
      v29 = v28 + 1;
      do
      {
        WebKit::RemoteMediaDescription::create(&v45, v25, v28);
        v30 = v45;
        WebKit::MediaPlayerPrivateRemote::videoTrackPrivateRemote(a2, v25[2], &v46);
        v28 = v46;
        *(v27 - 1) = v30;
        *v27 = v28;
        v25 += 3;
        v27 += 2;
      }

      while (v25 != v26);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
    v23 = 0;
  }

  *&v19 = 0;
  v45 = v19;
  *(a1 + 32) = v23;
  *(a1 + 40) = v20;
  *(a1 + 44) = v29;
  WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v18);
  v33 = *(a3 + 60);
  if (!v33)
  {
    v42 = 0;
    v36 = 0;
    goto LABEL_25;
  }

  v34 = (v33 >> 28);
  if (v34)
  {
    __break(0xC471u);
LABEL_29:
    JUMPOUT(0x19E2A6978);
  }

  v35 = WTF::fastMalloc(v34, (16 * v33));
  v36 = v35;
  v37 = *(a3 + 60);
  if (v37)
  {
    v38 = *(a3 + 48);
    v39 = &v38[3 * v37];
    v40 = (v35 + 1);
    v41 = ((8 * v37 - 8) >> 3);
    v42 = v41 + 1;
    do
    {
      WebKit::RemoteMediaDescription::create(&v45, v38, v41);
      v43 = v45;
      WebKit::MediaPlayerPrivateRemote::textTrackPrivateRemote(a2, v38[2], &v46);
      v41 = v46;
      *(v40 - 1) = v43;
      *v40 = v41;
      v38 += 3;
      v40 += 2;
    }

    while (v38 != v39);
  }

  else
  {
    v42 = 0;
  }

LABEL_25:
  *&v32 = 0;
  v45 = v32;
  *(a1 + 48) = v36;
  *(a1 + 56) = v33;
  *(a1 + 60) = v42;
  return WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v31);
}

atomic_ullong *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateEvictionDataChanged(WebKit::MediaSourcePrivateRemote *a1, _OWORD *a2)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  v4 = *(a1 + 3);
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v16, v4, *(a1 + 2));
    if (v16)
    {
      v6 = 0;
      v7 = (v16 + 425);
      v8 = 1;
      atomic_compare_exchange_strong_explicit((v16 + 425), &v6, 1u, memory_order_acquire, memory_order_acquire);
      if (v6)
      {
        v15 = v7;
        MEMORY[0x19EB01E30]();
        v8 = 1;
        v7 = v15;
      }

      v9 = v16;
      v10 = a2[1];
      *(v16 + 40) = *a2;
      *(v9 + 56) = v10;
      atomic_compare_exchange_strong_explicit(v7, &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != 1)
      {
        WTF::Lock::unlockSlow(v7);
      }

      v11 = v16;
      v16 = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v11 + 8), v5);
      }
    }
  }

  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(a1, &v16);
  result = v16;
  if (v16)
  {
    result = (*(*v16 + 64))(v16, a2);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v14 + 8), v13);
    }
  }

  return result;
}

atomic_ullong *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateHighestPresentationTimestampChanged(WebKit::SourceBufferPrivateRemote::MessageReceiver *this, const WTF::MediaTime *a2)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(this);
  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(this, &v7);
  result = v7;
  if (v7)
  {
    result = (*(*v7 + 5))(v7, a2);
    v6 = v7;
    v7 = 0;
    if (v6)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6 + 1, v5);
    }
  }

  return result;
}

unsigned int *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDurationChanged(WebKit::MediaSourcePrivateRemote *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(a1, &v17);
  if (v17)
  {
    v5 = (*(*v17 + 32))(&v15);
    v6 = v15;
    v7 = WebKit::MediaSourcePrivateRemote::queueSingleton(v5);
    v12 = 0uLL;
    v13 = "sourceBufferPrivateDurationChanged";
    v14 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(void)>>(v6, v7 + 24, a3, &v12, v16);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v16);
    result = v15;
    v15 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
    }
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

unsigned int *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateBufferedChanged(WebKit::MediaSourcePrivateRemote *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(a1, &v17);
  if (v17)
  {
    v5 = (*(*v17 + 24))(&v15);
    v6 = v15;
    v7 = WebKit::MediaSourcePrivateRemote::queueSingleton(v5);
    v12 = 0uLL;
    v13 = "sourceBufferPrivateBufferedChanged";
    v14 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(void)>>(v6, v7 + 24, a3, &v12, v16);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v16);
    result = v15;
    v15 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
    }
  }

  else
  {
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11);
    return (*(*v11 + 8))(v11);
  }

  return result;
}

atomic_ullong *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidDropSample(WebKit::SourceBufferPrivateRemote::MessageReceiver *this)
{
  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(this, &v4);
  result = v4;
  if (v4)
  {
    result = (*(*v4 + 6))(v4);
    v3 = v4;
    v4 = 0;
    if (v3)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v3 + 1, v2);
    }
  }

  return result;
}

atomic_ullong *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidReceiveRenderingError(WebKit::SourceBufferPrivateRemote::MessageReceiver *this, uint64_t a2)
{
  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(this, &v6);
  result = v6;
  if (v6)
  {
    result = (*(*v6 + 7))(v6, a2);
    v5 = v6;
    v6 = 0;
    if (v5)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v5 + 1, v4);
    }
  }

  return result;
}

atomic_ullong *WebKit::SourceBufferPrivateRemote::MessageReceiver::sourceBufferPrivateDidAttach(WebKit::MediaSourcePrivateRemote *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::MediaSourcePrivateRemote::queueSingleton(a1);
  v6 = *(a1 + 3);
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v31, v6, *(a1 + 2));
  }

  else
  {
    v31 = 0;
  }

  WebKit::SourceBufferPrivateRemote::MessageReceiver::client(a1, &v30);
  if (v30 && (WebKit::SourceBufferPrivateRemote::player(&v29, v31), v29))
  {
    v7 = v30;
    WebKit::SourceBufferPrivateRemote::MessageReceiver::createInitializationSegment(v23, v29, a2);
    v8 = (*(*v7 + 72))(&v27, v7, v23);
    v9 = v27;
    v10 = WebKit::MediaSourcePrivateRemote::queueSingleton(v8);
    v20 = 0uLL;
    v21 = "sourceBufferPrivateDidAttach";
    v22 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::whenSettled<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> &&)>>(v9, v10 + 24, a3, &v20, v28);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v28);
    v12 = v27;
    v27 = 0;
    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12 + 2);
      (*(*v12 + 16))(v12);
    }

    WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v11);
    WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v13);
    result = WTF::Vector<WebCore::SourceBufferPrivateClient::InitializationSegment::AudioTrackInformation,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v14);
    if (v29)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::MediaPlayerPrivateRemote,(WTF::DestructionThread)1>::deref(v29 + 6, v16);
    }
  }

  else
  {
    v23[0] = 259;
    v17 = *a3;
    *a3 = 0;
    (*(*v17 + 16))(v17, v23);
    result = (*(*v17 + 8))(v17);
  }

  v18 = v30;
  v30 = 0;
  if (v18)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v18 + 8), v16);
  }

  v19 = v31;
  v31 = 0;
  if (v19)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v19 + 8), v16);
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::memoryPressure(WebKit::SourceBufferPrivateRemote *this, const WTF::MediaTime *a2)
{
  while (1)
  {
    v4 = *(this + 1);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  *&v8 = *a2;
  *(&v8 + 5) = *(a2 + 5);
  v6 = WTF::fastMalloc(*(&v8 + 5), 0x28);
  *v6 = &unk_1F11298F8;
  v6[1] = this;
  v6[2] = this;
  v6[3] = v8;
  *(v6 + 29) = *(&v8 + 5);
  v9 = v6;
  WebCore::SourceBufferPrivate::ensureOnDispatcher();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::minimumUpcomingPresentationTimeForTrackID(WebKit::SourceBufferPrivateRemote *this, uint64_t a2)
{
  v7 = a2;
  v8 = *WTF::MediaTime::invalidTime(this);
  v4 = WTF::fastMalloc(v3, 0x20);
  *v4 = &unk_1F1129920;
  v4[1] = this;
  v4[2] = &v7;
  v4[3] = &v8;
  v6 = v4;
  WTF::callOnMainRunLoopAndWait();
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v8;
}

uint64_t WebKit::SourceBufferPrivateRemote::setMaximumQueueDepthForTrackID(WebKit::SourceBufferPrivateRemote *this, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v6 = *(this + 1);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(this + 1);
    atomic_compare_exchange_strong_explicit(this + 1, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  v8 = WTF::fastMalloc(v6, 0x28);
  *v8 = &unk_1F1129948;
  v8[1] = this;
  v8[2] = this;
  v8[3] = a2;
  v8[4] = a3;
  v10 = v8;
  WebCore::SourceBufferPrivate::ensureOnDispatcher();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::detach(WebKit::SourceBufferPrivateRemote *this, unint64_t a2)
{
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
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  v5 = WTF::fastMalloc(v3, 0x18);
  *v5 = &unk_1F1129970;
  v5[1] = this;
  v5[2] = this;
  v7 = v5;
  WebCore::SourceBufferPrivate::ensureOnDispatcher();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::SourceBufferPrivateRemote::attach(WebKit::SourceBufferPrivateRemote *this, unint64_t a2)
{
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
      goto LABEL_5;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 1));
LABEL_5:
  v5 = WTF::fastMalloc(v3, 0x18);
  *v5 = &unk_1F1129998;
  v5[1] = this;
  v5[2] = this;
  v7 = v5;
  WebCore::SourceBufferPrivate::ensureOnDispatcher();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::TextTrackPrivateRemote(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a4 + 52);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = v7;
  *a1 = &unk_1F1128C38;
  *(a1 + 8) = 3;
  *(a1 + 64) = a2;
  v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock((a2 + 24), v7);
  v9 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = v9;
  *(a1 + 96) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = *WTF::MediaTime::zeroTime(v9);
  *(a1 + 128) = *a4;
  *(a1 + 136) = a3;
  *(a1 + 144) = 6;
  *(a1 + 148) = 1;
  *(a1 + 150) = 0;
  WebKit::TextTrackPrivateRemote::updateConfiguration(a1, a4, v10);
  return a1;
}

WTF::StringImpl *WebKit::TextTrackPrivateRemote::updateConfiguration(uint64_t a1, unint64_t a2, const WTF::StringImpl *a3)
{
  v5 = *a2;
  v6 = *(a1 + 128);
  if (*a2 != v6)
  {
    *(a1 + 128) = v5;
    v7 = WTF::fastMalloc(v6, 0x10);
    *v7 = &unk_1F11299C0;
    v7[1] = v5;
    v27 = v7;
    WebCore::TrackPrivateBase::notifyClients();
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }

  v8 = (a1 + 80);
  if ((WTF::equal(*(a2 + 8), *(a1 + 80), a3) & 1) == 0)
  {
    v11 = *v8;
    if (*v8)
    {
      v12 = *(v11 + 1) == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(a2 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      v11 = *v8;
    }

    *v8 = v13;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
      if (v12)
      {
        goto LABEL_17;
      }
    }

    else if (v12)
    {
      goto LABEL_17;
    }

    WTF::String::isolatedCopy();
    v15 = WTF::fastMalloc(v14, 0x10);
    *v15 = &unk_1F11299E8;
    v28 = v15;
    v15[1] = v26;
    WebCore::TrackPrivateBase::notifyClients();
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v26 = 0;
  }

LABEL_17:
  v16 = (a1 + 88);
  if (WTF::equal(*(a2 + 16), *(a1 + 88), v10))
  {
    goto LABEL_30;
  }

  v18 = *v16;
  if (*v16)
  {
    v19 = *(v18 + 1) == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    v18 = *v16;
  }

  *v16 = v20;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
    if (v19)
    {
      goto LABEL_30;
    }
  }

  else if (v19)
  {
    goto LABEL_30;
  }

  WTF::String::isolatedCopy();
  v22 = WTF::fastMalloc(v21, 0x10);
  *v22 = &unk_1F1129A10;
  v29 = v22;
  v22[1] = v26;
  WebCore::TrackPrivateBase::notifyClients();
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

LABEL_30:
  *(a1 + 96) = *(a2 + 48);
  v23 = *(a2 + 24);
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  result = *(a1 + 104);
  *(a1 + 104) = v23;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v17);
  }

  v25 = *(a2 + 32);
  *(a1 + 117) = *(a2 + 37);
  *(a1 + 112) = v25;
  *(a1 + 144) = *(a2 + 53);
  *(a1 + 148) = *(a2 + 57);
  *(a1 + 149) = *(a2 + 58);
  return result;
}

atomic_ullong *WebKit::TextTrackPrivateRemote::setMode(uint64_t a1, int a2)
{
  result = *(a1 + 72);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v13, result, *(a1 + 64));
    v6 = v13;
    if (v13)
    {
      if (*(a1 + 57) == a2)
      {
        v13 = 0;
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v6 + 24), v5);
      }

      v7 = *(v13 + 32);
      v8 = *(a1 + 128);
      v9 = *(a1 + 136);
      v10 = IPC::Encoder::operator new(0x238, v5);
      *v10 = 1458;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *(v10 + 1) = v9;
      *(v10 + 68) = 0;
      *(v10 + 70) = 0;
      *(v10 + 69) = 0;
      IPC::Encoder::encodeHeader(v10);
      v14 = v10;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, v8);
      v15 = a2;
      IPC::Encoder::operator<<<unsigned char>(v10, &v15);
      IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
      result = v14;
      v14 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v5);
        result = bmalloc::api::tzoneFree(v11, v12);
      }

      *(a1 + 57) = a2;
      v6 = v13;
      v13 = 0;
      if (v6)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v6 + 24), v5);
      }
    }
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::addGenericCue(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = (**a2 + 1);
  **a2 = v3;
  v4 = WTF::fastMalloc(v3, 0x10);
  *v4 = &unk_1F1129A38;
  v4[1] = v2;
  v6 = v4;
  WebCore::TrackPrivateBase::notifyClients();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::updateGenericCue(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = (**a2 + 1);
  **a2 = v3;
  v4 = WTF::fastMalloc(v3, 0x10);
  *v4 = &unk_1F1129A60;
  v4[1] = v2;
  v6 = v4;
  WebCore::TrackPrivateBase::notifyClients();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::removeGenericCue(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = (**a2 + 1);
  **a2 = v3;
  v4 = WTF::fastMalloc(v3, 0x10);
  *v4 = &unk_1F1129A88;
  v4[1] = v2;
  v6 = v4;
  WebCore::TrackPrivateBase::notifyClients();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::parseWebVTTFileHeader@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1129AB0;
  v4[1] = a2;
  v6 = v4;
  WebCore::TrackPrivateBase::notifyMainThreadClient();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::parseWebVTTCueData@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = WTF::fastMalloc(a4, 0x10);
  *v4 = &unk_1F1129AD8;
  v4[1] = v7;
  v6 = v4;
  WebCore::TrackPrivateBase::notifyMainThreadClient();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::parseWebVTTCueDataStruct@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1129B00;
  v4[1] = a2;
  v6 = v4;
  WebCore::TrackPrivateBase::notifyMainThreadClient();
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::addDataCue@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11[0] = a4;
  v11[1] = a5;
  v8 = WTF::fastMalloc(a6, 0x20);
  *v8 = &unk_1F1129B28;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = v11;
  v10 = v8;
  WebCore::TrackPrivateBase::notifyMainThreadClient();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::addDataCueWithType@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = WTF::fastMalloc(a6, 0x28);
  *v10 = &unk_1F1129B50;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v12 = v10;
  WebCore::TrackPrivateBase::notifyMainThreadClient();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::updateDataCue@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = WTF::fastMalloc(a5, 0x20);
  *v8 = &unk_1F1129B78;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v10 = v8;
  WebCore::TrackPrivateBase::notifyMainThreadClient();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::TextTrackPrivateRemote::removeDataCue@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = WTF::fastMalloc(a5, 0x20);
  *v8 = &unk_1F1129BA0;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v10 = v8;
  WebCore::TrackPrivateBase::notifyMainThreadClient();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

uint64_t WebKit::VideoTrackPrivateRemote::VideoTrackPrivateRemote(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + 16) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *a1 = &unk_1F1128D18;
  *(a1 + 8) = 3;
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock((a2 + 24), 3);
  v8 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  *(a1 + 168) = v8;
  *(a1 + 176) = 6;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = -1;
  *(a1 + 208) = *WTF::MediaTime::zeroTime(v8);
  *(a1 + 224) = *a4;
  *(a1 + 232) = a3;
  WebKit::VideoTrackPrivateRemote::updateConfiguration(a1, a4, v9);
  return a1;
}

unsigned __int8 *WebKit::VideoTrackPrivateRemote::updateConfiguration(uint64_t a1, unint64_t a2, const WTF::StringImpl *a3)
{
  v5 = *a2;
  v6 = *(a1 + 224);
  if (*a2 != v6)
  {
    *(a1 + 224) = v5;
    v7 = WTF::fastMalloc(v6, 0x10);
    *v7 = &unk_1F1129BC8;
    v7[1] = v5;
    v43 = v7;
    WebCore::TrackPrivateBase::notifyClients();
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }
  }

  v8 = (a1 + 184);
  if ((WTF::equal(*(a2 + 8), *(a1 + 184), a3) & 1) == 0)
  {
    v11 = *v8;
    if (*v8)
    {
      v12 = *(v11 + 1) == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(a2 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      v11 = *v8;
    }

    *v8 = v13;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
      if (v12)
      {
        goto LABEL_18;
      }
    }

    else if (v12)
    {
      goto LABEL_18;
    }

    if (WebCore::TrackPrivateBase::hasClients(a1))
    {
      WTF::String::isolatedCopy();
      v15 = WTF::fastMalloc(v14, 0x10);
      *v15 = &unk_1F1129BF0;
      v44 = v15;
      v15[1] = v41;
      WebCore::TrackPrivateBase::notifyClients();
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }

      v41 = 0;
    }
  }

LABEL_18:
  v16 = (a1 + 192);
  if (WTF::equal(*(a2 + 16), *(a1 + 192), v10))
  {
    goto LABEL_32;
  }

  v19 = *v16;
  if (*v16)
  {
    v20 = *(v19 + 1) == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(a2 + 16);
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    v19 = *v16;
  }

  *v16 = v21;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
    if (v20)
    {
      goto LABEL_32;
    }
  }

  else if (v20)
  {
    goto LABEL_32;
  }

  if (WebCore::TrackPrivateBase::hasClients(a1))
  {
    WTF::String::isolatedCopy();
    v23 = WTF::fastMalloc(v22, 0x10);
    *v23 = &unk_1F1129C18;
    v45 = v23;
    v23[1] = v41;
    WebCore::TrackPrivateBase::notifyClients();
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }
  }

LABEL_32:
  *(a1 + 200) = *(a2 + 40);
  v24 = *(a2 + 24);
  *(a1 + 213) = *(a2 + 29);
  *(a1 + 208) = v24;
  *(a1 + 176) = *(a2 + 45);
  if ((WebCore::operator==(a2 + 48, a1 + 64, v18) & 1) == 0)
  {
    v26 = *(a2 + 48);
    *(a2 + 48) = 0;
    v27 = *(a1 + 64);
    *(a1 + 64) = v26;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    v28 = *(a2 + 56);
    v29 = *(a2 + 72);
    v30 = *(a2 + 88);
    *(a1 + 117) = *(a2 + 101);
    *(a1 + 104) = v30;
    *(a1 + 88) = v29;
    *(a1 + 72) = v28;
    if (*(a1 + 144) == *(a2 + 128))
    {
      if (*(a1 + 144))
      {
        *(a1 + 128) = *(a2 + 112);
        v31 = *(a2 + 120);
        *(a2 + 120) = 0;
        v32 = *(a1 + 136);
        *(a1 + 136) = v31;
        if (v32)
        {
          if (*v32 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v32;
          }
        }
      }
    }

    else if (*(a1 + 144))
    {
      v33 = *(a1 + 136);
      *(a1 + 136) = 0;
      if (v33)
      {
        if (*v33 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v33;
        }
      }

      *(a1 + 144) = 0;
    }

    else
    {
      *(a1 + 128) = *(a2 + 112);
      v34 = *(a2 + 120);
      *(a2 + 120) = 0;
      *(a1 + 136) = v34;
      *(a1 + 144) = 1;
    }

    v35 = *(a1 + 64);
    if (v35)
    {
      atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
    }

    v46 = *(a1 + 72);
    v47 = *(a1 + 88);
    *v48 = *(a1 + 104);
    v36 = *(a1 + 117);
    *&v48[13] = v36;
    v37 = *(a1 + 144);
    if (v37 == 1)
    {
      v38 = *(a1 + 128);
      v16 = *(a1 + 136);
      if (v16)
      {
        v36 = (*v16 + 1);
        *v16 = v36;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = WTF::fastMalloc(v36, 0x60);
    *v39 = &unk_1F11291E8;
    v39[1] = v35;
    *(v39 + 1) = v46;
    *(v39 + 2) = v47;
    *(v39 + 3) = *v48;
    *(v39 + 61) = *&v48[13];
    *(v39 + 72) = 0;
    *(v39 + 88) = 0;
    if (v37)
    {
      *(v39 + 72) = v38;
      v39[10] = v16;
      *(v39 + 88) = 1;
      v16 = 0;
    }

    v42 = v39;
    WebCore::TrackPrivateBase::notifyClients();
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    if (v16 && v37)
    {
      if (*v16 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v16;
      }
    }
  }

  return WebCore::VideoTrackPrivate::setSelected(a1, *(a2 + 44));
}

atomic_uchar *WebKit::VideoTrackPrivateRemote::setSelected(WebKit::VideoTrackPrivateRemote *this, unint64_t a2)
{
  result = *(this + 21);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v17, result, *(this + 20));
    if (v17)
    {
      if ((*(*this + 128))(this) != a2)
      {
        v6 = *(v17 + 32);
        v7 = *(this + 28);
        v8 = *(this + 29);
        v16[0] = a2;
        v9 = IPC::Encoder::operator new(0x238, v5);
        *v9 = 1462;
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        *(v9 + 1) = v8;
        *(v9 + 68) = 0;
        *(v9 + 70) = 0;
        *(v9 + 69) = 0;
        IPC::Encoder::encodeHeader(v9);
        v18 = v9;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v7);
        IPC::Encoder::operator<<<BOOL &>(v9, v16);
        IPC::Connection::sendMessageImpl(v6, &v18, 0, 0);
        v11 = v18;
        v18 = 0;
        if (v11)
        {
          IPC::Encoder::~Encoder(v11, v10);
          bmalloc::api::tzoneFree(v14, v15);
        }
      }

      result = WebCore::VideoTrackPrivate::setSelected(this, a2);
      v13 = v17;
      v17 = 0;
      if (v13)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v13 + 24), v12);
      }
    }
  }

  return result;
}

unsigned __int8 *WebCore::VideoTrackPrivate::setSelected(unsigned __int8 *this, unint64_t a2)
{
  v2 = this[56];
  if (v2 != a2)
  {
    v3 = a2;
    v4 = this;
    this[56] = a2;
    v5 = WTF::fastMalloc(v2, 0x10);
    *v5 = &unk_1F11291C0;
    *(v5 + 8) = v3;
    v6 = v5;
    WebCore::TrackPrivateBase::notifyClients();
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    this = *(v4 + 19);
    if (this)
    {
      return (*(*this + 16))(this, v4, v4[56]);
    }
  }

  return this;
}

uint64_t WebKit::RemoteMediaPlayerManager::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

uint64_t WebKit::RemoteMediaPlayerManager::weakRefCount(WebKit::RemoteMediaPlayerManager *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    return 0;
  }

  v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::controlBlock(this + 1, v2);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v3);
}

uint64_t WebKit::RemoteRemoteCommandListener::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 80);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 80);
    atomic_compare_exchange_strong_explicit((this + 80), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 80));
}

uint64_t non-virtual thunk toWebKit::RemoteRemoteCommandListener::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 24);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 24);
    atomic_compare_exchange_strong_explicit((this + 24), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 24));
}

{
  while (1)
  {
    v1 = *(this + 16);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 16);
    atomic_compare_exchange_strong_explicit((this + 16), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 16));
}

atomic_ullong *non-virtual thunk toWebKit::RemoteRemoteCommandListener::deref(atomic_ullong *this, void *a2)
{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>::deref(this + 3, a2);
}

{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>::deref(this + 2, a2);
}

void WebKit::TextTrackPrivateRemote::~TextTrackPrivateRemote(WebKit::TextTrackPrivateRemote *this, WTF::StringImpl *a2)
{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);
}

{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);

  bmalloc::api::tzoneFree(v7, v8);
}

WTF::StringImpl *WebKit::TextTrackPrivateRemote::label@<X0>(WTF::StringImpl **a2@<X8>)
{
  result = WTF::String::isolatedCopy();
  v4 = v6;
  if (v6)
  {
    if ((*(v6 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      v4 = v7;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::TextTrackPrivateRemote::language@<X0>(WTF::StringImpl **a2@<X8>)
{
  result = WTF::String::isolatedCopy();
  v4 = v6;
  if (v6)
  {
    if ((*(v6 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      v4 = v7;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void WebCore::InbandTextTrackPrivate::trackUID(uint64_t a1@<X8>)
{
  v1 = *MEMORY[0x1E696EB98];
  if (*MEMORY[0x1E696EB98])
  {
    atomic_fetch_add_explicit(v1, 2u, memory_order_relaxed);
  }

  *a1 = v1;
  *(a1 + 8) = 1;
}

WTF::StringImpl *WebKit::TextTrackPrivateRemote::inBandMetadataTrackDispatchType@<X0>(WTF::StringImpl **a2@<X8>)
{
  result = WTF::String::isolatedCopy();
  v4 = v6;
  if (v6)
  {
    if ((*(v6 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      v4 = v7;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void WebKit::VideoTrackPrivateRemote::~VideoTrackPrivateRemote(WebKit::VideoTrackPrivateRemote *this, WTF::StringImpl *a2)
{
  WebKit::VideoTrackPrivateRemote::~VideoTrackPrivateRemote(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  *this = &unk_1F1128D18;
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 23);
  *(this + 23) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 21);
  *(this + 21) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  *this = &unk_1F1129118;
  v6 = *(this + 19);
  *(this + 19) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  if (*(this + 144) == 1)
  {
    v7 = *(this + 17);
    *(this + 17) = 0;
    if (v7)
    {
      if (*v7 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v7;
      }
    }
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WebCore::TrackPrivateBase::~TrackPrivateBase(this, a2);
}

WTF::StringImpl *WebKit::VideoTrackPrivateRemote::label@<X0>(WTF::StringImpl **a2@<X8>)
{
  result = WTF::String::isolatedCopy();
  v4 = v6;
  if (v6)
  {
    if ((*(v6 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      v4 = v7;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::VideoTrackPrivateRemote::language@<X0>(WTF::StringImpl **a2@<X8>)
{
  result = WTF::String::isolatedCopy();
  v4 = v6;
  if (v6)
  {
    if ((*(v6 + 16) & 0x10) == 0)
    {
      WTF::AtomStringImpl::addSlowCase();
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }

      v4 = v7;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t WebKit::RemoteMediaPlayerMIMETypeCache::operator new(WebKit::RemoteMediaPlayerMIMETypeCache *this, void *a2)
{
  if (this == 64 && WebKit::RemoteMediaPlayerMIMETypeCache::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteMediaPlayerMIMETypeCache::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteMediaPlayerMIMETypeCache::operatorNewSlow(this);
  }
}

double WebKit::RemoteMediaPlayerMIMETypeCache::operator delete(WebKit::RemoteMediaPlayerMIMETypeCache *a1, WTF::StringImpl *a2)
{
  WebKit::RemoteMediaPlayerMIMETypeCache::~RemoteMediaPlayerMIMETypeCache(a1, a2);
  if (atomic_load(v2))
  {
    result = 0.0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

void WebKit::RemoteMediaPlayerMIMETypeCache::~RemoteMediaPlayerMIMETypeCache(WebKit::RemoteMediaPlayerMIMETypeCache *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  if (*(this + 40) == 1)
  {
    v4 = *(this + 4);
    if (v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::FileSystemStorageManagerLock>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::FileSystemStorageManagerLock,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::FileSystemStorageManagerLock>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
    }
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }
}

uint64_t std::__optional_storage_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false> const&>(uint64_t result, unint64_t a2)
{
  v3 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (a2 != result && *(result + 16))
    {
      v4 = *(result + 12);
      v5 = *(a2 + 12);
      if (v4 <= v5)
      {
        if (v5 > *(result + 8))
        {
          WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(result, 0);
          result = WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v3, *(a2 + 12));
          v4 = *(v3 + 12);
        }
      }

      else
      {
        *(result + 12) = v5;
        v4 = v5;
      }

      if (v4)
      {
        result = memmove(*v3, *a2, 4 * v4);
        v4 = *(v3 + 12);
      }

      v6 = *(a2 + 12);
      if (v4 != v6)
      {
        v7 = (*v3 + 4 * v4);
        v8 = (*a2 + 4 * v4);
        v9 = 4 * v6 - 4 * v4;
        do
        {
          v10 = *v8++;
          *v7++ = v10;
          v9 -= 4;
        }

        while (v9);
        v4 = *(a2 + 12);
      }

      *(v3 + 12) = v4;
    }
  }

  else if (*(result + 16))
  {
    result = *result;
    if (*v3)
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }

    *(v3 + 16) = 0;
  }

  else
  {
    result = WTF::Vector<WebCore::FourCC,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(result, a2);
    *(v3 + 16) = 1;
  }

  return result;
}

WTF **WebKit::RemoteMediaPlayerManager::setUseGPUProcess(BOOL)::$_0::__invoke<WebCore::SampleBufferDisplayLayerClient>@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::ensureProtectedGPUProcessConnection(&v12, v5);
  v6 = v12;
  v8 = WebKit::GPUProcessConnection::sampleBufferDisplayLayerManager(v12, v7);
  result = WebKit::SampleBufferDisplayLayerManager::createLayer(v8, a1, a3);
  if (v6)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6 + 3, v10);
  }

  return result;
}

WTF **WebKit::RemoteMediaPlayerManager::setUseGPUProcess(BOOL)::$_1::__invoke<WebCore::VideoFrame const>@<X0>(const WebCore::VideoFrame *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::WebProcess::ensureProtectedGPUProcessConnection(&v12, v5);
  v6 = v12;
  v8 = WebKit::GPUProcessConnection::videoFrameObjectHeapProxy(v12, v7);
  result = WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getNativeImage(a3, v8[1], a1);
  if (v6)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6 + 3, v10);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote6appendEONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsIS7_EENS_21DefaultRefDerefTraitsIS7_EEEEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F1128DC0;
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v4 + 8), a2);
  }

  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote6appendEONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsIS7_EENS_21DefaultRefDerefTraitsIS7_EEEEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F1128DC0;
  v3 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v4 + 8), a2);
  }

  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));

  return WTF::fastFree(a1, v5);
}

unsigned int *_ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote6appendEONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsIS7_EENS_21DefaultRefDerefTraitsIS7_EEEEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEE4callEv(uint64_t a1)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(v2 + 392);
  if (!v3)
  {
    v78 = 0;
LABEL_62:
    LOBYTE(v82) = 4;
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = "operator()";
    *&buf[24] = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(buf, &v86, &v82);
    goto LABEL_63;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v78, v3, *(v2 + 384));
  if (!v78)
  {
    goto LABEL_62;
  }

  v4 = atomic_load((v2 + 424));
  if (v4)
  {
    goto LABEL_62;
  }

  v5 = *(a1 + 64);
  v6 = *(v5 + 56);
  *(a1 + 64) = 0;
  v75 = v6;
  v76 = v5;
  v77 = 0;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v79, *(v2 + 392), *(v2 + 384));
  v7 = *(v79 + 32);
  v8 = *(v2 + 408);
  v80 = 0uLL;
  *&v81 = "sendWithPromisedReply";
  *(&v81 + 1) = 0;
  v9 = WTF::fastMalloc("sendWithPromisedReply", 0x90);
  *(v9 + 2) = 1;
  *v9 = &unk_1F1128DE8;
  v10 = v81;
  *(v9 + 1) = v80;
  *(v9 + 2) = v10;
  *(v9 + 48) = 0;
  v11 = (v9 + 6);
  *(v9 + 88) = 0;
  v9[12] = (v9 + 14);
  v9[13] = 1;
  v9[15] = 0;
  v9[16] = 0;
  *(v9 + 68) = 0;
  v12 = WTF::NativePromiseBase::logChannel(v9);
  if (*v12)
  {
    v13 = v12;
    if (v12[16] >= 4u)
    {
      WTF::String::String(&v86, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v85, v9);
      *buf = v86;
      v82 = v85;
      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, &v82, &v87);
      if (!v87)
      {
        goto LABEL_102;
      }

      v15 = v85;
      v85 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }

      v16 = v86;
      v86 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }

      v74 = v8;
      v17 = *(v13 + 4);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        WTF::String::utf8();
        v20 = v82 ? v82 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v20;
        _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v18 = v82;
        v82 = 0;
        if (v18)
        {
          if (*v18 == 1)
          {
            v18 = WTF::fastFree(v18, v19);
          }

          else
          {
            --*v18;
          }
        }
      }

      if (*v13 && v13[16] >= 4u)
      {
        v21 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v22 = *v21;
          if (v22)
          {
            break;
          }

          v23 = *v21;
          atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
          if (v23 == v22)
          {
            v73 = v7;
            v24 = WTF::Logger::observers(v18);
            v25 = *(v24 + 12);
            if (v25)
            {
              v26 = *v24;
              v27 = *v24 + 8 * v25;
              do
              {
                v28 = *v26;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                *&buf[16] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&buf[24], v9);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v82, buf, 2uLL);
                (*(*v28 + 16))(v28, v13, 4, &v82);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v82, v29);
                for (i = 24; i != -8; i -= 16)
                {
                  v31 = *&buf[i];
                  *&buf[i] = 0;
                  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v31, v19);
                  }
                }

                ++v26;
              }

              while (v26 != v27);
            }

            v32 = 1;
            atomic_compare_exchange_strong_explicit(v21, &v32, 0, memory_order_release, memory_order_relaxed);
            v11 = (v9 + 6);
            v7 = v73;
            if (v32 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v12 = v87;
      v87 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v12 = WTF::StringImpl::destroy(v12, v19);
      }

      v8 = v74;
    }
  }

  v33 = 0;
  v82 = v9;
  v83 = v80;
  v84 = v81;
  atomic_fetch_add(v9 + 2, 1u);
  atomic_compare_exchange_strong_explicit(v9 + 48, &v33, 1u, memory_order_acquire, memory_order_acquire);
  if (v33)
  {
    v12 = MEMORY[0x19EB01E30](v11);
  }

  v34 = WTF::NativePromiseBase::logChannel(v12);
  if (*v34 && v34[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v34, &v80, " runSynchronouslyOnTarget ", v9);
  }

  atomic_store(0, v9 + 137);
  v35 = 1;
  atomic_compare_exchange_strong_explicit(v9 + 48, &v35, 0, memory_order_release, memory_order_relaxed);
  if (v35 != 1)
  {
    WTF::Lock::unlockSlow(v11);
  }

  if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    (*(*v9 + 16))(v9);
  }

  v36 = v82;
  if (v82)
  {
    atomic_fetch_add(v82 + 2, 1u);
    v37 = v82;
  }

  else
  {
    v37 = 0;
  }

  v82 = 0;
  *&buf[8] = v83;
  *&buf[24] = v84;
  v38 = WTF::fastMalloc(&v82, 0x30);
  *v38 = &unk_1F1128E10;
  v38[1] = v37;
  *buf = 0;
  v39 = *&buf[24];
  *(v38 + 1) = *&buf[8];
  *(v38 + 2) = v39;
  *&v80 = v38;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_102:
    __break(0xC471u);
    JUMPOUT(0x19E2A9E9CLL);
  }

  *(&v80 + 1) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromiseProducer(buf);
  v41 = IPC::Encoder::operator new(0x238, v40);
  *v41 = 1634;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = v8;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  *buf = v41;
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v41, &v75);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v7, buf, &v80, 0, 0);
  v43 = *buf;
  *buf = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v71, v72);
  }

  v44 = v80;
  *&v80 = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromiseProducer(&v82);
  v46 = v79;
  v79 = 0;
  if (v46)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v46 + 3, v45);
  }

  v47 = *(v2 + 32);
  v48 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v2 + 8), v46);
  v49 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v48);
  v80 = 0uLL;
  v51 = WTF::fastMalloc(v50, 0x50);
  while (1)
  {
    v52 = *(v47 + 8);
    if ((v52 & 1) == 0)
    {
      break;
    }

    v53 = *(v47 + 8);
    atomic_compare_exchange_strong_explicit((v47 + 8), &v53, v52 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v53 == v52)
    {
      goto LABEL_70;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v47 + 8));
LABEL_70:
  v57 = WTF::fastMalloc(v52, 0x18);
  *v57 = &unk_1F1128E88;
  v57[1] = v2;
  v57[2] = v49;
  *(v51 + 2) = 1;
  v51[2] = v47;
  *(v51 + 3) = v80;
  v51[5] = "operator()";
  v51[6] = 0;
  *(v51 + 28) = 0;
  *v51 = &unk_1F1128EB0;
  v51[8] = 0;
  v51[9] = v57;
  atomic_fetch_add(v36 + 2, 1u);
  *buf = v36;
  *&buf[8] = v51;
  *&buf[16] = v80;
  *&buf[32] = "operator()";
  v89 = 0;
  v82 = 0;
  *&v83 = 0;
  *(&v83 + 1) = "<completion promise>";
  *&v84 = 0;
  v58 = WTF::fastMalloc("<completion promise>", 0x28);
  v87 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(v58, 0, &v82, v59);
  v60 = *v87;
  if (*v87)
  {
    atomic_fetch_add(v60 + 2, 1u);
    v51 = *&buf[8];
    v86 = v60;
    if (!*&buf[8])
    {
      WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::setCompletionPromise(0, &v87);
      goto LABEL_74;
    }
  }

  else
  {
    v86 = 0;
  }

  atomic_fetch_add(v51 + 2, 1u);
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::setCompletionPromise(v51, &v87);
  if (atomic_fetch_add(v51 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v51 + 2);
    (*(*v51 + 8))(v51);
  }

LABEL_74:
  v61 = *&buf[8];
  *&buf[8] = 0;
  v82 = v61;
  WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::maybeSettle(*buf, &v82, &buf[16]);
  v62 = v82;
  v82 = 0;
  if (v62 && atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v62 + 2);
    (*(*v62 + 8))(v62);
  }

  if (v87)
  {
    v63 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v87);
    WTF::fastFree(v63, v64);
  }

  v65 = *&buf[8];
  if (*&buf[8])
  {
    *&buf[8] = 0;
    v82 = v65;
    WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::maybeSettle(*buf, &v82, &buf[16]);
    v66 = v82;
    v82 = 0;
    if (v66 && atomic_fetch_add(v66 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v66 + 2);
      (*(*v66 + 8))(v66);
    }

    v67 = *&buf[8];
    *&buf[8] = 0;
    if (v67 && atomic_fetch_add(v67 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v67 + 2);
      (*(*v67 + 8))(v67);
    }
  }

  v68 = *buf;
  *buf = 0;
  if (v68 && atomic_fetch_add(v68 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v68 + 2);
    (*(*v68 + 16))(v68);
    if (v36)
    {
LABEL_89:
      if (atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v36 + 2);
        (*(*v36 + 16))(v36);
      }
    }
  }

  else if (v36)
  {
    goto LABEL_89;
  }

  v69 = v77;
  v77 = 0;
  if (v69)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v69);
  }

  v70 = v76;
  v76 = 0;
  if (v70 && atomic_fetch_add(v70 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v70 + 2);
    (*(*v70 + 8))(v70);
  }

LABEL_63:
  v55 = v78;
  v78 = 0;
  if (v55)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v55 + 24), v54);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = "invokeAsync proxy";
  *&buf[24] = 0;
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::chainTo(v86, a1 + 8, buf);
  result = v86;
  v86 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 16))(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 6);
  atomic_compare_exchange_strong_explicit(result + 48, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 6);
  }

  v4 = *(v1 + 33);
  if (v4)
  {
    v5 = v1[15];
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::assertIsDead(v5);
      v5 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

atomic_uint **WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add((v1 + 8), 1u);
    result = WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add((v1 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v1 + 8));
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t *WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromise(uint64_t a1)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v32, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v31, a1);
    *buf = v32;
    v30[0] = v31;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v30, &v33);
    if (!v33)
    {
      __break(0xC471u);
      return result;
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }

    v8 = v32;
    v32 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = *(v4 + 4);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      WTF::String::utf8();
      v12 = v30[0] ? v30[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v12;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v10 = v30[0];
      v30[0] = 0;
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

    if (*v4 && v4[16] >= 4u)
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
            v19 = *v16 + 8 * v17;
            do
            {
              v20 = *v18;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v35 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v30, buf, 2uLL);
              (*(*v20 + 16))(v20, v4, 4, v30);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v21);
              for (i = 24; i != -8; i -= 16)
              {
                v23 = *&buf[i];
                *&buf[i] = 0;
                if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v23, v11);
                }
              }

              ++v18;
            }

            while (v18 != v19);
          }

          v24 = 1;
          atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
          if (v24 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v25 = v33;
    v33 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v11);
    }
  }

  WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 120, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v27);
  v28 = *(a1 + 88);
  if (v28 >= 2 && v28 != 255)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  *(a1 + 88) = -1;
  return a1;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
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

atomic_uint **WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::Append,WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>>(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1128E10;
  WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::Append,WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>>(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1128E10;
  WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::Append,WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>>(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = v49;
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(v4, 0x10);
  *v6 = &unk_1F1128E60;
  v6[1] = v5;
  v37[3] = 0;
  v38 = v6;
  v37[0] = 0;
  v37[1] = 0;
  v37[2] = "operator()";
  v7 = *(a1 + 8);
  v8 = 1;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v9 = 0;
  atomic_fetch_add((v7 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v7 + 48), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    v6 = MEMORY[0x19EB01E30](v7 + 48);
  }

  v10 = *(v7 + 88);
  v11 = 1;
  atomic_compare_exchange_strong_explicit((v7 + 48), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    v6 = WTF::Lock::unlockSlow((v7 + 48));
  }

  if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v7 + 8));
    v6 = (*(*v7 + 16))(v7);
  }

  v12 = *(a1 + 8);
  if (v10)
  {
    if (v12)
    {
      atomic_fetch_add(v12 + 2, 1u);
      v8 = 0;
    }

LABEL_12:
    v13 = WTF::NativePromiseBase::logChannel(v6);
    if (*v13)
    {
      v14 = v13;
      if (v13[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v42, v37);
        WTF::String::String(&v41, " ignored already resolved or rejected ");
        WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v40, v12);
        WTF::makeString<WTF::String,WTF::String,WTF::String>(&v42, &v41, &v40, &v43);
        v16 = v40;
        v40 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }

        v17 = v41;
        v41 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v15);
        }

        v18 = v42;
        v42 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v15);
        }

        v19 = *(v14 + 4);
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          WTF::String::utf8();
          v22 = v39[0] ? v39[0] + 16 : 0;
          *buf = 136446210;
          v45 = v22;
          _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v20 = v39[0];
          v39[0] = 0;
          if (v20)
          {
            if (*v20 == 1)
            {
              v20 = WTF::fastFree(v20, v21);
            }

            else
            {
              --*v20;
            }
          }
        }

        if (*v14 && v14[16] >= 4u)
        {
          v23 = MEMORY[0x1E696EBC0];
          while (1)
          {
            v24 = *v23;
            if (v24)
            {
              break;
            }

            v25 = *v23;
            atomic_compare_exchange_strong_explicit(v23, &v25, v24 | 1, memory_order_acquire, memory_order_acquire);
            if (v25 == v24)
            {
              v26 = WTF::Logger::observers(v20);
              v27 = *(v26 + 12);
              if (v27)
              {
                v28 = *v26;
                v29 = *v26 + 8 * v27;
                do
                {
                  v30 = *v28;
                  *buf = 0;
                  WTF::Logger::LogSiteIdentifier::toString((&v45 + 4), v37);
                  v46 = 0;
                  WTF::String::String(v47, " ignored already resolved or rejected ");
                  v47[2] = 0;
                  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v48, v12);
                  WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v39, buf, 3uLL);
                  (*(*v30 + 16))(v30, v14, 4, v39);
                  WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v31);
                  for (i = 40; i != -8; i -= 16)
                  {
                    v33 = *&buf[i];
                    *&buf[i] = 0;
                    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v33, v21);
                    }
                  }

                  ++v28;
                }

                while (v28 != v29);
              }

              v34 = 1;
              atomic_compare_exchange_strong_explicit(v23, &v34, 0, memory_order_release, memory_order_relaxed);
              if (v34 != 1)
              {
                WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
              }

              break;
            }
          }
        }

        v35 = v43;
        v43 = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v21);
        }
      }
    }

    if ((v8 & 1) == 0 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_53:
      atomic_store(1u, v12 + 2);
      (*(*v12 + 16))(v12);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v12)
  {
    atomic_fetch_add(v12 + 2, 1u);
    WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::settleWithFunction(v12, &v38, v37);
    if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) != 1)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::settleWithFunction(0, &v38, v37);
LABEL_54:
  result = v38;
  if (v38)
  {
    return (*(*v38 + 8))(v38);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v48[2] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 48);
  v37 = v7;
  v38 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v8;
    WTF::Logger::LogSiteIdentifier::toString(&v42, a3);
    WTF::String::String(&v41, " settling ");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v40, a1);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v42, &v41, &v40, &v43);
    v12 = v40;
    v40 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v41;
    v41 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v42;
    v42 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = *(v10 + 4);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      WTF::String::utf8();
      v18 = v39[0] ? v39[0] + 16 : 0;
      *buf = 136446210;
      v45 = v18;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v16 = v39[0];
      v39[0] = 0;
      if (v16)
      {
        if (*v16 == 1)
        {
          v16 = WTF::fastFree(v16, v17);
        }

        else
        {
          --*v16;
        }
      }
    }

    if (*v10 && v10[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v45 + 4), a3);
              v46 = 0;
              WTF::String::String(v47, " settling ");
              v47[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v48, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v39, buf, 3uLL);
              (*(*v26 + 16))(v26, v10, 4, v39);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v27);
              for (i = 40; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v17);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v31 = v43;
    v43 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v17);
    }
  }

  v32 = *(a1 + 88);
  if (v32 >= 2 && v32 != 255)
  {
    v33 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }
  }

  v34 = *a2;
  *a2 = 0;
  *(a1 + 56) = v34;
  *(a1 + 88) = 2;
  result = WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::dispatchAll(a1, &v37);
  v36 = v38;
  if (v38 == 1)
  {
    result = v37;
    atomic_compare_exchange_strong_explicit(v37, &v36, 0, memory_order_release, memory_order_relaxed);
    if (v36 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v29[0] = &v29[2];
  v29[1] = 1;
  __dst = &v24;
  v23 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 96));
  v4 = *(a1 + 108);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 96), (*(a1 + 96) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 96), v29);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v5);
  *&v6 = 0;
  v7 = *(a1 + 120);
  v19 = v7;
  v8 = *(a1 + 132);
  v20 = *(a1 + 128);
  v21 = v8;
  *v29 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::Vector<WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v9);
  if (HIDWORD(v23))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v23);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = v7 + 40 * v8;
    do
    {
      v15 = *v7;
      *v7 = 0;
      v29[0] = v15;
      v16 = *(v7 + 24);
      *&v29[1] = *(v7 + 8);
      *&v29[3] = v16;
      if (v15)
      {
        atomic_fetch_add(v15 + 2, 1u);
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Storage>(v15, (a1 + 56), &v25);
        if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15 + 2);
          (*(*v15 + 16))(v15);
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = "<chained promise>";
        v28 = 0;
        WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Storage>(0, (a1 + 56), &v25);
      }

      WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromiseProducer(v29);
      v7 += 40;
    }

    while (v7 != v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v17);
}

atomic_uchar *WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 137)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16[0] = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, v16, (v5 + 24));
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v15, a2);
        v13 = v15;
        (*(*v15 + 16))(v16, v15);
        (*(*v5 + 24))(v5, a2, v16);
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::takeResult(v16, a2);
        (*(*v5 + 24))(v5, a2, v16);
      }

      v14 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    v8 = WTF::fastMalloc(atomic_fetch_add((a2 + 8), 1u), 0x18);
    *v8 = &unk_1F1128E38;
    v8[1] = v5;
    v8[2] = a2;
    v16[0] = v8;
    (*(*v7 + 16))(v7, v16);
    result = v16[0];
    v16[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

mpark *WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 88) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = 0;
  *(v3 + 24) = -1;
  v6 = *(a2 + 80);
  if (v6 != 255)
  {
    if (*(a2 + 80))
    {
      *v3 = *(a2 + 56);
    }

    else
    {
      *v3 = *(a2 + 56);
      *(v3 + 8) = *(a2 + 64);
    }

    *(v3 + 24) = v6;
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1128E38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1128E38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11[0] = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v10, v8);
      v9 = v10;
      (*(*v10 + 16))(v11, v10);
      (*(*v7 + 24))(v7, v8, v11);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::takeResult(v11, v8);
      return (*(*v7 + 24))(v7, v8, v11);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Storage>(uint64_t a1, unsigned __int16 *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v26 = v7;
  v27 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " settling chained promise ", a1);
  }

  v10 = *(a1 + 88);
  v11 = *(a2 + 32);
  if (v10 != 255 || v11 != 255)
  {
    switch(v11)
    {
      case 255:
        if (v10 >= 2 && v10 != 255)
        {
          v12 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }
        }

        v13 = -1;
        goto LABEL_48;
      case 2:
        if (v10 >= 2 && v10 != 255)
        {
          if (v10 == 2)
          {
            v15 = *a2;
            *a2 = 0;
            v16 = *(a1 + 56);
            *(a1 + 56) = v15;
            if (v16)
            {
              (*(*v16 + 8))(v16);
            }

            goto LABEL_49;
          }

          v20 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }
        }

        v21 = *a2;
        *a2 = 0;
        *(a1 + 56) = v21;
        v13 = 2;
LABEL_48:
        *(a1 + 88) = v13;
        goto LABEL_49;
      case 1:
        if (*(a1 + 88) && v10 != 255)
        {
          if (v10 == 1)
          {
            if (*(a2 + 24) == 255)
            {
              if (*(a1 + 80) == 255)
              {
                goto LABEL_49;
              }

              v24 = -1;
            }

            else
            {
              if (!*(a2 + 24))
              {
                v14 = *a2;
                v28 = *(a2 + 4);
                if (*(a1 + 80))
                {
                  *(a1 + 56) = v14;
                  *(a1 + 64) = v28;
                  *(a1 + 80) = 0;
                }

                else
                {
                  if (*(a1 + 57) == v14 >> 8)
                  {
                    if ((v14 & 0x100) != 0)
                    {
                      *(a1 + 56) = v14;
                    }
                  }

                  else if ((v14 & 0x100) != 0)
                  {
                    *(a1 + 56) = v14;
                    *(a1 + 57) = 1;
                  }

                  else if (*(a1 + 57))
                  {
                    *(a1 + 57) = 0;
                  }

                  *(a1 + 64) = v28;
                  *(a1 + 69) = *(&v28 + 5);
                }

                goto LABEL_49;
              }

              v25 = *(a1 + 80);
              *(a1 + 56) = *a2;
              if (v25 == 1)
              {
                goto LABEL_49;
              }

              v24 = 1;
            }

            *(a1 + 80) = v24;
            goto LABEL_49;
          }

          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        *(a1 + 88) = -1;
        *(a1 + 56) = 0;
        *(a1 + 80) = -1;
        v19 = *(a2 + 24);
        if (v19 != 255)
        {
          if (*(a2 + 24))
          {
            *(a1 + 56) = *a2;
          }

          else
          {
            *(a1 + 56) = *a2;
            *(a1 + 64) = *(a2 + 4);
            LOBYTE(v19) = *(a2 + 24);
          }

          *(a1 + 80) = v19;
        }

        v13 = 1;
        goto LABEL_48;
    }

    if (*(a1 + 88))
    {
      if (v10 != 1 && v10 != 255)
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      *(a1 + 88) = 0;
    }
  }

LABEL_49:
  result = WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::dispatchAll(a1, &v26);
  v23 = v27;
  if (v27 == 1)
  {
    result = v26;
    atomic_compare_exchange_strong_explicit(v26, &v23, 0, memory_order_release, memory_order_relaxed);
    if (v23 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::Append,WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>>(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1128E60;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::Append,WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>>(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1128E60;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::RemoteSourceBufferProxy::Append,WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>>(WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error>>::call@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (*v3)
    {
      IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::decode<IPC::Decoder>(result[1], &v11);
      if (v12)
      {
        do
        {
          result = IPC::Decoder::decode<WTF::MediaTime>(v3, &v13);
          if (v14 != 1)
          {
            break;
          }

          if (v12)
          {
            v5 = v13;
            *a2 = v11;
            *(a2 + 8) = v5;
            *(a2 + 24) = 0;
            return result;
          }

          __break(1u);
LABEL_22:
          (*(*result + 16))(result, v4);
        }

        while ((v12 & 1) != 0);
      }

      else
      {
        v4 = *v3;
        v6 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        result = *(v3 + 3);
        if (result)
        {
          v7 = v6 == 0;
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          goto LABEL_22;
        }
      }

      v8 = *v3;
      v9 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      result = *(v3 + 3);
      if (result)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        result = (*(*result + 16))(result, v8);
      }
    }

    *a2 = 14;
  }

  else
  {
    *a2 = 1;
  }

  *(a2 + 24) = 1;
  return result;
}

atomic_uint **WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__15tupleIJNSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEENS_9MediaTimeEEEEN3IPC5ErrorELj0EE11whenSettledIZZN6WebKit25SourceBufferPrivateRemote6appendEONS_3RefINS8_12SharedBufferENS_12RawPtrTraitsISK_EENS_21DefaultRefDerefTraitsISK_EEEEEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherEST_RKNS_6Logger17LogSiteIdentifierEEUlONS7_ISC_SE_EEE_NSJ_INS2_IvS9_Lj0EEENSL_IS15_EENSN_IS15_EEEEJS13_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F1128E88;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__15tupleIJNSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEENS_9MediaTimeEEEEN3IPC5ErrorELj0EE11whenSettledIZZN6WebKit25SourceBufferPrivateRemote6appendEONS_3RefINS8_12SharedBufferENS_12RawPtrTraitsISK_EENS_21DefaultRefDerefTraitsISK_EEEEEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherEST_RKNS_6Logger17LogSiteIdentifierEEUlONS7_ISC_SE_EEE_NSJ_INS2_IvS9_Lj0EEENSL_IS15_EENSN_IS15_EEEEJS13_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F1128E88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__15tupleIJNSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEENS_9MediaTimeEEEEN3IPC5ErrorELj0EE11whenSettledIZZN6WebKit25SourceBufferPrivateRemote6appendEONS_3RefINS8_12SharedBufferENS_12RawPtrTraitsISK_EENS_21DefaultRefDerefTraitsISK_EEEEEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherEST_RKNS_6Logger17LogSiteIdentifierEEUlONS7_ISC_SE_EEE_NSJ_INS2_IvS9_Lj0EEENSL_IS15_EENSN_IS15_EEEEJS13_EE4callES13_@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 24))
  {
    LOBYTE(v24) = 4;
    v21 = 0uLL;
    v22 = "operator()";
    v23 = 0;
    return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v21, a3, &v24);
  }

  if (*(a1 + 2))
  {
    a1 = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v21, *(a1 + 2), *(a1 + 1));
    if (v21)
    {
      v7 = 0;
      v8 = (v21 + 425);
      atomic_compare_exchange_strong_explicit((v21 + 425), &v7, 1u, memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        a1 = MEMORY[0x19EB01E30](v8);
      }

      if (*(a2 + 24))
      {
LABEL_26:
        mpark::throw_bad_variant_access(a1);
      }

      v9 = v21 + 432;
      v10 = *(a2 + 13);
      *(v21 + 432) = *(a2 + 8);
      *(v9 + 5) = v10;
      v11 = 1;
      atomic_compare_exchange_strong_explicit(v8, &v11, 0, memory_order_release, memory_order_relaxed);
      if (v11 != 1)
      {
        a1 = WTF::Lock::unlockSlow(v8);
      }

      v12 = v21;
      *&v21 = 0;
      if (v12)
      {
        a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v12 + 8), v6);
      }
    }
  }

  if (*(a2 + 24))
  {
    goto LABEL_26;
  }

  v21 = 0uLL;
  v22 = "operator()";
  v23 = 0;
  v13 = WTF::fastMalloc("operator()", 0x78);
  v14 = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::NativePromise(v13, &v21);
  v15 = 0;
  *a3 = v14;
  v16 = (v14 + 48);
  v24 = v16;
  v25 = 1;
  atomic_compare_exchange_strong_explicit(v16, &v15, 1u, memory_order_acquire, memory_order_acquire);
  if (v15)
  {
    v16 = MEMORY[0x19EB01E30]();
  }

  v17 = WTF::NativePromiseBase::logChannel(v16);
  if (*v17 && v17[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v17, 4u, &v21, " settling ", v13);
  }

  v18 = *(v13 + 64);
  if (v18 >= 2 && v18 != 255)
  {
    v19 = v13[7];
    v13[7] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  *(v13 + 64) = -1;
  *(v13 + 28) = *a2;
  v20 = 1;
  *(v13 + 64) = 1;
  result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::dispatchAll(v13, &v24);
  if (v25 == 1)
  {
    result = v24;
    atomic_compare_exchange_strong_explicit(v24, &v20, 0, memory_order_release, memory_order_relaxed);
    if (v20 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F1128EB0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F1128EE0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F1128EB0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F1128EE0;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 24);
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6;
    if (v5)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    v43 = v9;
    WTF::String::String(&v52, v9);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v48, a2);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v12 = v45;
    v45 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v46;
    v46 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v47;
    v47 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = v48;
    v48 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v49;
    v49 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v11);
    }

    v17 = v50;
    v50 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v11);
    }

    v18 = v51;
    v51 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    v19 = v52;
    v52 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
    }

    v20 = *(v8 + 4);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      WTF::String::utf8();
      v23 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v21 = v44[0];
      v44[0] = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          v21 = WTF::fastFree(v21, v22);
        }

        else
        {
          --*v21;
        }
      }
    }

    if (*v8 && v8[16] >= 4u)
    {
      v24 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v25 = *v24;
        if (v25)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 | 1, memory_order_acquire, memory_order_acquire);
        if (v26 == v25)
        {
          v27 = WTF::Logger::observers(v21);
          v28 = *(v27 + 12);
          if (v28)
          {
            v29 = *v27;
            v30 = *v27 + 8 * v28;
            do
            {
              v31 = *v29;
              *buf = 0;
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v61, a2);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v31 + 16))(v31, v8, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v32);
              for (i = 120; i != -8; i -= 16)
              {
                v34 = *&buf[i];
                *&buf[i] = 0;
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v22);
                }
              }

              ++v29;
            }

            while (v29 != v30);
          }

          v35 = 1;
          atomic_compare_exchange_strong_explicit(v24, &v35, 0, memory_order_release, memory_order_relaxed);
          if (v35 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v36 = v53;
    v53 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v22);
    }
  }

  v37 = 0;
  v38 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v37, 1u, memory_order_acquire, memory_order_acquire);
  if (v37)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v39 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(v44);
  if (v39)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::chainTo(v44[0], v39, buf);
  }

  v40 = v44[0];
  v44[0] = 0;
  if (v40 && atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v40 + 2);
    (*(*v40 + 16))(v40);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
    v41 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v39);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = 0;
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = (a1 + 48);
  v42 = v6;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v6 = MEMORY[0x19EB01E30]();
  }

  *(a1 + 136) = 1;
  result = WTF::NativePromiseBase::logChannel(v6);
  if (*result)
  {
    v8 = *(result + 16) >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = result;
    WTF::Logger::LogSiteIdentifier::toString(&v52, a3);
    WTF::String::String(&v51, " invoking maybeSettle() [");
    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v50, a1);
    WTF::String::String(&v49, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v47, " isNothing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v11 = v45;
    v45 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v46;
    v46 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v47;
    v47 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v48;
    v48 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v49;
    v49 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }

    v16 = v50;
    v50 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v51;
    v51 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v52;
    v52 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
    }

    v19 = *(v9 + 4);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      v55 = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v20 = v44[0];
      v44[0] = 0;
      if (v20)
      {
        if (*v20 == 1)
        {
          v20 = WTF::fastFree(v20, v21);
        }

        else
        {
          --*v20;
        }
      }
    }

    if (*v9 && *(v9 + 16) >= 4u)
    {
      v23 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v24 = *v23;
        if (v24)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 | 1, memory_order_acquire, memory_order_acquire);
        if (v25 == v24)
        {
          v40 = a2;
          v26 = WTF::Logger::observers(v20);
          v27 = *(v26 + 12);
          if (v27)
          {
            v28 = *v26;
            v29 = *v26 + 8 * v27;
            do
            {
              v30 = *v28;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v55 + 4), a3);
              v56 = 0;
              WTF::String::String(v57, " invoking maybeSettle() [");
              v57[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v58, a1);
              v59 = 0;
              WTF::String::String(v60, " callback:");
              v60[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v60[6] = 0;
              WTF::String::String(v61, " isNothing:");
              v61[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v61[6] = 0;
              WTF::String::String(v62, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v30 + 16))(v30, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v31);
              for (i = 120; i != -8; i -= 16)
              {
                v33 = *&buf[i];
                *&buf[i] = 0;
                if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v21);
                }
              }

              ++v28;
            }

            while (v28 != v29);
          }

          v34 = 1;
          atomic_compare_exchange_strong_explicit(v23, &v34, 0, memory_order_release, memory_order_relaxed);
          a2 = v40;
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v53;
    v53 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v21);
    }
  }

  if (*(a1 + 88))
  {
    result = WTF::NativePromise<std::tuple<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::MediaTime>,IPC::Error,0u>::ThenCallbackBase::dispatch(*a2, a1, &v42);
  }

  else
  {
    v35 = *(a1 + 108);
    if (v35 == *(a1 + 104))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((a1 + 96), v35 + 1, a2);
      v35 = *(a1 + 108);
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *result;
      *result = 0;
    }

    else
    {
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *a2;
      *a2 = 0;
    }

    *(v37 + 8 * v35) = v38;
    *(a1 + 108) = v36;
  }

  v39 = v43;
  if (v43 == 1)
  {
    result = v42;
    atomic_compare_exchange_strong_explicit(v42, &v39, 0, memory_order_release, memory_order_relaxed);
    if (v39 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote17removeCodedFramesERKNS_9MediaTimeES7_S7_E3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F1128F10;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8), a2);
  }

  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote17removeCodedFramesERKNS_9MediaTimeES7_S7_E3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F1128F10;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8), a2);
  }

  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote17removeCodedFramesERKNS_9MediaTimeES7_S7_E3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEE4callEv(uint64_t *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 392);
  if (!v3)
  {
    v23 = 0;
LABEL_14:
    LOBYTE(v26) = 4;
    v29 = 0;
    *&v30 = 0;
    *(&v30 + 1) = "operator()";
    *&v31 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v29, &v22, &v26);
    goto LABEL_15;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v23, v3, *(v2 + 384));
  if (!v23)
  {
    goto LABEL_14;
  }

  v4 = atomic_load((v2 + 424));
  if (v4)
  {
    goto LABEL_14;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v24, *(v2 + 392), *(v2 + 384));
  v5 = *(v24 + 32);
  v6 = *(v2 + 408);
  v29 = 0;
  *&v30 = 0;
  *(&v30 + 1) = "sendWithPromisedReply";
  *&v31 = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v26, 0, &v29, "sendWithPromisedReply");
  v7 = v26;
  if (v26)
  {
    atomic_fetch_add(v26 + 2, 1u);
    v8 = v26;
  }

  else
  {
    v8 = 0;
  }

  v22 = v7;
  v26 = 0;
  v30 = v27;
  v31 = v28;
  v9 = WTF::fastMalloc(v7, 0x30);
  *v9 = &unk_1F1128F38;
  v9[1] = v8;
  v29 = 0;
  v10 = v31;
  *(v9 + 1) = v30;
  *(v9 + 2) = v10;
  v25[0] = v9;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  v25[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v29);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 1644;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v6;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v29 = v12;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v12, a1 + 8);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v12, a1 + 10);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v12, a1 + 12);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v5, &v29, v25, 0, 0);
  v14 = v29;
  v29 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v13);
    bmalloc::api::tzoneFree(v20, v21);
  }

  v15 = v25[0];
  v25[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v26);
  v17 = v24;
  v24 = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v17 + 24), v16);
  }

LABEL_15:
  v18 = v23;
  v23 = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v18 + 24), v16);
  }

  v29 = 0;
  *&v30 = 0;
  *(&v30 + 1) = "invokeAsync proxy";
  *&v31 = 0;
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::chainTo(v22, (a1 + 1), &v29);
  result = v22;
  v22 = 0;
  if (result)
  {
    if (atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (result + 8));
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::RemoveCodedFrames,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1128F38;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::RemoveCodedFrames,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F1128F38;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::RemoveCodedFrames,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(a4, 0x10);
  *v6 = &unk_1F1128F60;
  v6[1] = v5;
  v9 = v6;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = "operator()";
  v8[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v9, v8);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::RemoveCodedFrames,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F1128F60;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::RemoveCodedFrames,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F1128F60;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::RemoteSourceBufferProxy::RemoveCodedFrames,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 && *v2)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = 260;
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote15computeSeekTimeERKN7WebCore10SeekTargetEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED1Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F1128F88;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8), a2);
  }

  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote15computeSeekTimeERKN7WebCore10SeekTargetEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED0Ev(uint64_t a1, unint64_t a2)
{
  *a1 = &unk_1F1128F88;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v3 + 8), a2);
  }

  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));

  return WTF::fastFree(a1, v4);
}

unsigned int *_ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit25SourceBufferPrivateRemote15computeSeekTimeERKN7WebCore10SeekTargetEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEE4callEv(uint64_t a1)
{
  v1 = a1;
  v89[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(v2 + 392);
  if (!v3)
  {
    v79 = 0;
LABEL_14:
    LOBYTE(v68) = 4;
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = "operator()";
    *&v82 = 0;
    v16 = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(buf, &v67, &v68);
    goto LABEL_15;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v79, v3, *(v2 + 384));
  if (!v79)
  {
    goto LABEL_14;
  }

  v4 = atomic_load((v2 + 424));
  if (v4)
  {
    goto LABEL_14;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v80, *(v2 + 392), *(v2 + 384));
  v5 = *(v80 + 4);
  v6 = *(v2 + 408);
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = "sendWithPromisedReply";
  *&v82 = 0;
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v68, 0, buf, "sendWithPromisedReply");
  v7 = v68;
  if (v68)
  {
    atomic_fetch_add(v68 + 2, 1u);
    v8 = v68;
  }

  else
  {
    v8 = 0;
  }

  v67 = v7;
  v68 = 0;
  *&buf[8] = v69;
  v82 = v70;
  v9 = WTF::fastMalloc(v7, 0x30);
  *v9 = &unk_1F1128FB0;
  v9[1] = v8;
  *buf = 0;
  v10 = v82;
  *(v9 + 1) = *&buf[8];
  *(v9 + 2) = v10;
  v71[0] = v9;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
LABEL_97:
    JUMPOUT(0x19E2AD9A0);
  }

  v71[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(buf);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 1639;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v6;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  *buf = v12;
  IPC::ArgumentCoder<WebCore::SeekTarget,void>::encode(v12, (v1 + 64));
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v5, buf, v71, 0, 0);
  v14 = *buf;
  *buf = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v13);
    bmalloc::api::tzoneFree(v64, v65);
  }

  v15 = v71[0];
  v71[0] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v68);
  v18 = v80;
  v80 = 0;
  if (v18)
  {
    v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v18 + 3, v17);
  }

LABEL_15:
  v19 = v79;
  v79 = 0;
  if (v19)
  {
    v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v19 + 3, v17);
  }

  v20 = 0;
  v21 = v67;
  v68 = 0;
  *&v69 = 0;
  *(&v69 + 1) = "invokeAsync proxy";
  *&v70 = 0;
  v22 = (v67 + 6);
  atomic_compare_exchange_strong_explicit(v67 + 48, &v20, 1u, memory_order_acquire, memory_order_acquire);
  if (v20)
  {
    v16 = MEMORY[0x19EB01E30](v22);
  }

  *(v21 + 128) = 1;
  v23 = *(v1 + 8);
  if (v23)
  {
    atomic_fetch_add(v23 + 2, 1u);
  }

  v24 = WTF::NativePromiseBase::logChannel(v16);
  if (!*v24)
  {
    goto LABEL_72;
  }

  v25 = v24;
  if (v24[16] < 4u)
  {
    goto LABEL_72;
  }

  WTF::Logger::LogSiteIdentifier::toString(&v79, &v68);
  WTF::String::String(&v78, " invoking chainTo() [");
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v21, &v77);
  WTF::String::String(&v76, " chainedPromise:");
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v23, &v75);
  WTF::String::String(&v74, " isNothing:");
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v72, "]");
  WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v79, &v78, &v77, &v76, &v75, &v74, &v73, &v72, &v80);
  if (!v80)
  {
    __break(0xC471u);
    goto LABEL_97;
  }

  v27 = v72;
  v72 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v28 = v73;
  v73 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  v29 = v74;
  v74 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v26);
  }

  v30 = v75;
  v75 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v26);
  }

  v31 = v76;
  v76 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v26);
  }

  v32 = v77;
  v77 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  v33 = v78;
  v78 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v26);
  }

  v34 = v79;
  v79 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v26);
  }

  v35 = *(v25 + 4);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v36)
  {
    WTF::String::utf8();
    v38 = v71[0] ? v71[0] + 16 : 0;
    *buf = 136446210;
    *&buf[4] = v38;
    _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v36 = v71[0];
    v71[0] = 0;
    if (v36)
    {
      if (*v36 == 1)
      {
        v36 = WTF::fastFree(v36, v37);
      }

      else
      {
        --*v36;
      }
    }
  }

  if (*v25 && v25[16] >= 4u)
  {
    v39 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v40 = *v39;
      if (v40)
      {
        break;
      }

      v41 = *v39;
      atomic_compare_exchange_strong_explicit(v39, &v41, v40 | 1, memory_order_acquire, memory_order_acquire);
      if (v41 == v40)
      {
        v66 = v1;
        v42 = WTF::Logger::observers(v36);
        v43 = *(v42 + 12);
        if (v43)
        {
          v44 = *v42;
          v45 = *v42 + 8 * v43;
          do
          {
            v46 = *v44;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v68);
            *&buf[16] = 0;
            WTF::String::String(&v82, " invoking chainTo() [");
            DWORD2(v82) = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v21, &v83);
            v84 = 0;
            WTF::String::String(v85, " chainedPromise:");
            v85[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v23, &v86);
            v87 = 0;
            WTF::String::String(v88, " isNothing:");
            v88[2] = 0;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v88[6] = 0;
            WTF::String::String(v89, "]");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v71, buf, 8uLL);
            (*(*v46 + 16))(v46, v25, 4, v71);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v71, v47);
            for (i = 120; i != -8; i -= 16)
            {
              v49 = *&buf[i];
              *&buf[i] = 0;
              if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v49, v37);
              }
            }

            ++v44;
          }

          while (v44 != v45);
        }

        v50 = 1;
        atomic_compare_exchange_strong_explicit(v39, &v50, 0, memory_order_release, memory_order_relaxed);
        v1 = v66;
        if (v50 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  v51 = v80;
  v80 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v37);
    if (!v23)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

LABEL_72:
  if (!v23)
  {
    goto LABEL_75;
  }

LABEL_73:
  if (atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23 + 2);
    (*(*v23 + 16))(v23);
  }

LABEL_75:
  v52 = atomic_load((v21 + 129));
  v53 = *(v1 + 8);
  if (v53)
  {
    atomic_fetch_add((v53 + 8), 1u);
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::setDispatchMode(v53, v52, &v68);
    if (atomic_fetch_add((v53 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v53 + 8));
      (*(*v53 + 16))(v53);
    }
  }

  else
  {
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::setDispatchMode(0, v52, &v68);
  }

  if (*(v21 + 80))
  {
    WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::settleChainedPromise(v21, v1 + 8);
  }

  else
  {
    v54 = *(v21 + 124);
    if (v54 == *(v21 + 120))
    {
      v55 = WTF::Vector<WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v21 + 112), v54 + 1, v1 + 8);
      v56 = *(v21 + 112) + 40 * *(v21 + 124);
      v57 = *v55;
      *v55 = 0;
      *v56 = v57;
      v58 = *(v55 + 24);
      *(v56 + 8) = *(v55 + 8);
      *(v56 + 24) = v58;
    }

    else
    {
      v59 = *(v21 + 112) + 40 * v54;
      v60 = *(v1 + 8);
      *(v1 + 8) = 0;
      *v59 = v60;
      v61 = *(v1 + 16);
      *(v59 + 24) = *(v1 + 32);
      *(v59 + 8) = v61;
    }

    ++*(v21 + 124);
  }

  v62 = 1;
  atomic_compare_exchange_strong_explicit(v22, &v62, 0, memory_order_release, memory_order_relaxed);
  if (v62 != 1)
  {
    WTF::Lock::unlockSlow(v22);
  }

  result = v67;
  v67 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 16))(result);
    }
  }

  return result;
}