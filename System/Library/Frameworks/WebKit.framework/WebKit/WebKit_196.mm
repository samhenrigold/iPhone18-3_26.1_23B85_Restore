uint64_t *WTF::HashTable<int,WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>>,WTF::IntHash<int>,WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<int,WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>>,WTF::IntHash<int>,WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<int,WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,WTF::RetainPtr<CGImage *>>>,WTF::IntHash<int>,WTF::HashMap<int,WTF::RetainPtr<CGImage *>,WTF::IntHash<int>,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::HashTraits<WTF::RetainPtr<CGImage *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<int>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = *a1;
  if (*a1)
  {
    v7 = *(v5 - 4);
    v8 = *(v5 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  result = WTF::fastMalloc((16 * a2), (16 * a2 + 16));
  if (v3)
  {
    v11 = v3;
    v12 = result + 3;
    do
    {
      *(v12 - 2) = 0x7FFFFFFF;
      *v12 = 0;
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  *a1 = (result + 2);
  *(result + 2) = v3 - 1;
  *(result + 3) = v3;
  *result = 0;
  *(result + 1) = v8;
  if (v7)
  {
    v13 = 0;
    v14 = a3;
    do
    {
      v15 = (v5 + 16 * v13);
      v16 = *v15;
      if (*v15 != 2147483646)
      {
        if (v16 == 0x7FFFFFFF)
        {
          v17 = *(v15 + 1);
          *(v15 + 1) = 0;
          if (v17)
          {
            v18 = v14;
            CFRelease(v17);
            v14 = v18;
          }
        }

        else
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = 0;
          v22 = 9 * ((v16 + ~(v16 << 15)) ^ ((v16 + ~(v16 << 15)) >> 10));
          v23 = ((v22 ^ (v22 >> 6)) + ~((v22 ^ (v22 >> 6)) << 11)) ^ (((v22 ^ (v22 >> 6)) + ~((v22 ^ (v22 >> 6)) << 11)) >> 16);
          do
          {
            v24 = v23 & v20;
            v23 = ++v21 + v24;
          }

          while (*(v19 + 16 * v24) != 0x7FFFFFFF);
          v25 = v19 + 16 * v24;
          v26 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v26)
          {
            v29 = v14;
            CFRelease(v26);
            v14 = v29;
          }

          *v25 = *v15;
          v27 = *(v15 + 1);
          *(v15 + 1) = 0;
          *(v25 + 8) = v27;
          v28 = *(v15 + 1);
          *(v15 + 1) = 0;
          if (v28)
          {
            v30 = v14;
            CFRelease(v28);
            v14 = v30;
          }
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else if (!v5)
  {
    return result;
  }

  return WTF::fastFree((v5 - 16), v10);
}

uint64_t IPC::Decoder::decode<WebCore::ImageDecoderFrameInfo>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ImageDecoderFrameInfo,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,unsigned long long,WebCore::IntSize,BOOL,std::optional<WTF::Vector<WebCore::ImageDecoderFrameInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 24) = 0;
  v4 = a1 + 24;
  *(v4 - 8) = v3;
  *(v4 + 16) = 0;
  if (*(a2 + 40) == 1)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, (a2 + 24));
    *(a1 + 40) = 1;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteImageDecoderAVFManager::setUseGPUProcess(BOOL)::$_0,WTF::RefPtr<WebCore::ImageDecoder,WTF::RawPtrTraits<WebCore::ImageDecoder>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoder>>,WebCore::FragmentedSharedBuffer &,WTF::String const&,WebCore::AlphaOption,WebCore::GammaAndColorProfileOption>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112A3B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteImageDecoderAVFManager::setUseGPUProcess(BOOL)::$_0,WTF::RefPtr<WebCore::ImageDecoder,WTF::RawPtrTraits<WebCore::ImageDecoder>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoder>>,WebCore::FragmentedSharedBuffer &,WTF::String const&,WebCore::AlphaOption,WebCore::GammaAndColorProfileOption>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A3B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteImageDecoderAVFManager::setUseGPUProcess(BOOL)::$_0,WTF::RefPtr<WebCore::ImageDecoder,WTF::RawPtrTraits<WebCore::ImageDecoder>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoder>>,WebCore::FragmentedSharedBuffer &,WTF::String const&,WebCore::AlphaOption,WebCore::GammaAndColorProfileOption>::call(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = result[2];
  if (!v7 || (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v74, v7, result[1]), (v10 = v74) == 0))
  {
    v18 = 0;
    goto LABEL_77;
  }

  v11 = &dword_1EB01E000;
  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v24 = WebKit::WebProcess::operator new(0x370, v9);
    v12 = WebKit::WebProcess::WebProcess(v24);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  if (*(v12 + 864) == 1)
  {
    v13 = *(WebKit::RemoteImageDecoderAVFManager::ensureGPUProcessConnection(v10, v9) + 32);
    v75 = *(a2 + 56);
    v76 = a2;
    atomic_fetch_add((a2 + 8), 1u);
    v77 = 0;
    IPC::Connection::createSyncMessageEncoder(0x1007, 0, v80);
    v14 = v80[0];
    IPC::ArgumentCoder<IPC::SharedBufferReference,void>::encode(v80[0], &v75);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, a3);
    v15 = IPC::Connection::sendSyncMessage(&v78, v13, v80[1], v80, 0, INFINITY);
    if (v79)
    {
      if (v79 != 1)
      {
        mpark::throw_bad_variant_access(v15);
      }

      v16 = v78;
      v17 = 1;
      goto LABEL_34;
    }

    v16 = v78;
    v78 = 0;
    if (*(v16 + 50) == 3194)
    {
      v19 = 11;
      goto LABEL_30;
    }

    v20 = *(v16 + 8);
    v21 = *(v16 + 16);
    v9 = *v16;
    if (v20 <= &v21[-*v16])
    {
      *v16 = 0;
      *(v16 + 8) = 0;
      v25 = *(v16 + 24);
      if (v25)
      {
        if (v20)
        {
          (*(*v25 + 16))(v25);
          v20 = *(v16 + 8);
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      *(v16 + 16) = v21 + 1;
      if (v21)
      {
        v22 = *v21;
        if (v22 < 2)
        {
          if (!v22)
          {
            v11 = 0;
            v4 = 0;
            v17 = 0;
            goto LABEL_31;
          }

          v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v16);
          if (v9)
          {
            v11 = v23;
            v17 = 0;
            v4 = 1;
LABEL_31:
            if (!v79)
            {
              v33 = v78;
              v78 = 0;
              if (v33)
              {
                IPC::Decoder::~Decoder(v33);
                bmalloc::api::tzoneFree(v67, v68);
              }
            }

LABEL_34:
            v34 = v80[0];
            v80[0] = 0;
            if (v34)
            {
              IPC::Encoder::~Encoder(v34, v9);
              bmalloc::api::tzoneFree(v65, v66);
            }

            v35 = v77;
            v77 = 0;
            if (v35)
            {
              WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v35);
            }

            v36 = v76;
            v76 = 0;
            if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v36 + 2);
              (*(*v36 + 8))(v36);
            }

            v18 = 0;
            if (v17)
            {
              v37 = 0;
            }

            else
            {
              v37 = v11;
            }

            if (((v17 == 0) & v4) != 1)
            {
              goto LABEL_72;
            }

            v18 = WebCore::ImageDecoder::operatorNewSlow(0x90);
            v38 = WebCore::ImageDecoder::ImageDecoder(v18);
            v38[2] = 0;
            *v38 = &unk_1F1129DE0;
            v40 = WebKit::RemoteImageDecoderAVFManager::ensureGPUProcessConnection(v10, v39);
            *(v18 + 24) = v40;
            v42 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock((v40 + 24), v41);
            *(v18 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v42);
            *(v18 + 40) = v10;
            v44 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::controlBlock(v10 + 3, v43);
            *(v18 + 48) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v44);
            *(v18 + 56) = v11;
            v46 = *a3;
            if (*a3)
            {
              atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
            }

            *(v18 + 64) = v46;
            WebCore::UTIFromMIMEType((v18 + 72), a3, v45);
            *(v18 + 80) = 0;
            *(v18 + 136) = 0;
            *(v18 + 140) = 0;
            *(v18 + 88) = 0u;
            *(v18 + 104) = 0u;
            *(v18 + 113) = 0u;
            if (v11 == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x19E2C8404);
            }

            if (!v11)
            {
              __break(0xC471u);
              JUMPOUT(0x19E2C8424);
            }

            v47 = *(v10 + 4);
            if (!v47)
            {
              WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v10 + 4, 0);
              v47 = *(v10 + 4);
            }

            v48 = *(v47 - 8);
            v49 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
            v50 = 9 * ((v49 + ~(v49 << 13)) ^ ((v49 + ~(v49 << 13)) >> 8));
            v51 = (v50 ^ (v50 >> 15)) + ~((v50 ^ (v50 >> 15)) << 27);
            v52 = v48 & ((v51 >> 31) ^ v51);
            v53 = (v47 + 16 * v52);
            v54 = *v53;
            if (*v53)
            {
              v55 = 0;
              v56 = 1;
              while (v54 != v37)
              {
                if (v54 == -1)
                {
                  v55 = v53;
                }

                v52 = (v52 + v56) & v48;
                v53 = (v47 + 16 * v52);
                v54 = *v53;
                ++v56;
                if (!*v53)
                {
                  if (v55)
                  {
                    *v55 = 0;
                    v55[1] = 0;
                    --*(*(v10 + 4) - 16);
                    v53 = v55;
                  }

                  goto LABEL_59;
                }
              }

              goto LABEL_72;
            }

LABEL_59:
            *v53 = v37;
            if (!*(v18 + 16))
            {
              v57 = WTF::fastCompactMalloc(0x10);
              *v57 = 1;
              *(v57 + 8) = v18;
              v58 = *(v18 + 16);
              *(v18 + 16) = v57;
              if (v58)
              {
                if (atomic_fetch_add(v58, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v58);
                  WTF::fastFree(v58, v9);
                }
              }
            }

            v59 = *(v18 + 16);
            atomic_fetch_add(v59, 1u);
            v60 = v53[1];
            v53[1] = v59;
            if (v60 && atomic_fetch_add(v60, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v60);
              WTF::fastFree(v60, v9);
            }

            v61 = *(v10 + 4);
            if (v61)
            {
              v62 = *(v61 - 12) + 1;
            }

            else
            {
              v62 = 1;
            }

            *(v61 - 12) = v62;
            v63 = (*(v61 - 16) + v62);
            v64 = *(v61 - 4);
            if (v64 > 0x400)
            {
              if (v64 > 2 * v63)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v64 *= 3;
              if (v64 > 4 * v63)
              {
LABEL_72:
                if (!v17 && v16)
                {
                  IPC::Decoder::~Decoder(v16);
                  bmalloc::api::tzoneFree(v69, v70);
                }

                goto LABEL_75;
              }
            }

            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebCore::IDBServer::UniqueIDBDatabaseConnection,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v10 + 4, v64);
            goto LABEL_72;
          }

LABEL_28:
          v28 = *v16;
          v29 = *(v16 + 8);
          *v16 = 0;
          *(v16 + 8) = 0;
          v30 = *(v16 + 24);
          if (v30 && v29)
          {
            (*(*v30 + 16))(v30, v28);
            v71 = *v16;
            v72 = *(v16 + 8);
            v73 = *(v16 + 24);
            v19 = 14;
            *v16 = 0;
            *(v16 + 8) = 0;
            if (!v73 || !v72)
            {
              goto LABEL_30;
            }

            (*(*v73 + 16))(v73, v71);
          }

          v19 = 14;
LABEL_30:
          IPC::Decoder::~Decoder(v16);
          bmalloc::api::tzoneFree(v31, v32);
          v17 = 1;
          v16 = v19;
          goto LABEL_31;
        }

        goto LABEL_27;
      }
    }

    *v16 = 0;
    *(v16 + 8) = 0;
    v26 = *(v16 + 24);
    if (v26)
    {
      if (v20)
      {
        (*(*v26 + 16))(v26);
        v9 = *v16;
        v20 = *(v16 + 8);
        goto LABEL_27;
      }
    }

    else
    {
      v20 = 0;
    }

    v9 = 0;
LABEL_27:
    *v16 = 0;
    *(v16 + 8) = 0;
    v27 = *(v16 + 24);
    if (v27 && v20)
    {
      (*(*v27 + 16))(v27, v9);
    }

    goto LABEL_28;
  }

  v18 = 0;
LABEL_75:
  if (v74)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::deref(v74 + 3, v9);
  }

LABEL_77:
  *a4 = v18;
}

uint64_t WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 80 * v3;
    v5 = *a1 + 32;
    do
    {
      WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer(v5, a2);
      v6 = *(v5 - 24);
      if (v6)
      {
        *(v5 - 24) = 0;
        *(v5 - 16) = 0;
        WTF::fastFree(v6, a2);
      }

      v5 += 80;
      v4 -= 80;
    }

    while (v4);
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

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::setHasAV1HardwareDecoder(BOOL)::$_0,void,WebCore::Page &>::call(int a1, WebCore::Page *this)
{
  v2 = *(this + 15);
  v3 = *(v2 + 736);
  if ((~v3 & 0x4080000000000000) != 0)
  {
    *(v2 + 736) = v3 | 0x4080000000000000;
    return WebCore::Page::settingsDidChange(this);
  }

  return result;
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::LibWebRTCCodecs::initializeIfNeeded(void)::$_0 &&>>@<X0>(uint64_t *a2@<X8>)
{
  v2 = WTF::fastMalloc(a2, 0x10);
  *v2 = &unk_1F112A400;
  v5 = v2;
  WTF::callOnMainRunLoopAndWait();
  result = v5;
  if (v5)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::initializeIfNeeded(void)::$_0::operator() const(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v6 = WebKit::WebProcess::operator new(0x370, a2);
    v2 = WebKit::WebProcess::WebProcess(v6);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  WebKit::WebProcess::ensureProtectedGPUProcessConnection(&v7, v2);
  v3 = v7;
  result = WebKit::GPUProcessConnection::waitForDidInitialize(v7);
  if (v3 || result)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v3 + 3, v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112A428;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(WTF::Function<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A428;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionAndDispatchToThread(WTF::Function<void ()(void)> &&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit((v3 + 49), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](v3 + 49, a2);
  }

  WebKit::LibWebRTCCodecs::ensureGPUProcessConnectionOnMainThreadWithLock(v3, a2);
  *&v5 = 0;
  v6 = *(v3 + 72);
  v13 = v6;
  v7 = *(v3 + 84);
  v14 = *(v3 + 80);
  v15 = v7;
  v12 = v5;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  if (v7)
  {
    v8 = 8 * v7;
    do
    {
      (*(**(v3 + 88) + 48))(*(v3 + 88), v6);
      v6 += 8;
      v8 -= 8;
    }

    while (v8);
  }

  WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v4);
  result = WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v9);
  v11 = 1;
  atomic_compare_exchange_strong_explicit((v3 + 49), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    return WTF::Lock::unlockSlow((v3 + 49));
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2C8904);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createDecoderInternal(WebCore::VideoCodecType,WTF::String const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Decoder *)> &&)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A478;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100]((a1 + 24), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
  }

  return a1;
}

{
  *a1 = &unk_1F112A478;
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100]((a1 + 24), 0);
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
  }

  return WTF::fastFree(a1, v3);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createDecoderInternal(WebCore::VideoCodecType,WTF::String const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Decoder *)> &&)::$_0,void>::call(void *a1, unint64_t a2)
{
  v3 = 0;
  v4 = a1[1];
  atomic_compare_exchange_strong_explicit((v4 + 49), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](v4 + 49, a2);
  }

  v5 = a1[3];
  v6 = *(v4 + 56);
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
  }

LABEL_8:
  v9 = *(v4 + 126);
  v10 = *(v4 + 128);
  v11 = a1[3];
  v12 = a1[4];
  v13 = *v11;
  a1[4] = 0;
  v14 = WTF::fastMalloc(v11, 0x18);
  *v14 = &unk_1F112A518;
  v14[1] = v13;
  v14[2] = v12;
  v40 = v14;
  WebKit::createRemoteDecoder(v5, v6, v9, v10, &v40);
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6, v15);
  v17 = a1[3];
  v18 = *(v4 + 56);
  if (v18)
  {
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
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
  }

LABEL_15:
  v40 = v18;
  WebKit::LibWebRTCCodecs::setDecoderConnection(v4, v17, &v40, v16);
  result = v40;
  if (v40)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v40, v21);
  }

  v23 = *a1[3];
  if (v23 == -1 || !v23)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2C8D74);
  }

  v24 = *(v4 + 24);
  if (!v24)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 24));
    v24 = *(v4 + 24);
  }

  v25 = *(v24 - 8);
  v26 = (v23 + ~(v23 << 32)) ^ ((v23 + ~(v23 << 32)) >> 22);
  v27 = 9 * ((v26 + ~(v26 << 13)) ^ ((v26 + ~(v26 << 13)) >> 8));
  v28 = (v27 ^ (v27 >> 15)) + ~((v27 ^ (v27 >> 15)) << 27);
  v29 = v25 & ((v28 >> 31) ^ v28);
  v30 = (v24 + 16 * v29);
  v31 = *v30;
  if (!*v30)
  {
LABEL_29:
    *v30 = v23;
    v34 = a1[3];
    a1[3] = 0;
    v40 = 0;
    std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](v30 + 1, v34);
    result = std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](&v40, 0);
    v35 = *(v4 + 24);
    if (v35)
    {
      v36 = *(v35 - 12) + 1;
    }

    else
    {
      v36 = 1;
    }

    *(v35 - 12) = v36;
    v37 = (*(v35 - 16) + v36);
    v38 = *(v35 - 4);
    if (v38 > 0x400)
    {
      if (v38 > 2 * v37)
      {
        goto LABEL_35;
      }
    }

    else if (3 * v38 > 4 * v37)
    {
      goto LABEL_35;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 24));
    goto LABEL_35;
  }

  v32 = 0;
  v33 = 1;
  while (v31 != v23)
  {
    if (v31 == -1)
    {
      v32 = v30;
    }

    v29 = (v29 + v33) & v25;
    v30 = (v24 + 16 * v29);
    v31 = *v30;
    ++v33;
    if (!*v30)
    {
      if (v32)
      {
        *v32 = 0;
        v32[1] = 0;
        --*(*(v4 + 24) - 16);
        v30 = v32;
      }

      goto LABEL_29;
    }
  }

LABEL_35:
  v39 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 49), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {

    return WTF::Lock::unlockSlow((v4 + 49));
  }

  return result;
}

uint64_t WebKit::createRemoteDecoder(uint64_t a1, os_unfair_lock *a2, char a3, char a4, uint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  v26 = a3;
  v27[0] = a4;
  {
    v10 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v25 = WebKit::WebProcess::operator new(0x370, a2);
    v10 = WebKit::WebProcess::WebProcess(v25);
    WebKit::WebProcess::singleton(void)::process = v10;
  }

  v11 = *(WebKit::WebProcess::libWebRTCCodecs(v10, a2) + 11);
  v12 = *a5;
  *a5 = 0;
  v14 = WTF::fastMalloc(v13, 0x10);
  *v14 = &unk_1F112A4A0;
  v14[1] = v12;
  while (1)
  {
    v15 = *(v11 + 32);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(v11 + 32);
    atomic_compare_exchange_strong_explicit((v11 + 32), &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v15)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v11 + 32));
LABEL_8:
  v17 = WTF::fastMalloc(v15, 0x18);
  *v17 = &unk_1F112A4C8;
  v17[1] = v14;
  v17[2] = v11 + 24;
  v29[0] = v17;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v29[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v19 = IPC::Encoder::operator new(0x238, v18);
    *v19 = 123;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = 0;
    IPC::Encoder::encodeHeader(v19);
    v28 = v19;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, *a1);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v19, v8);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, v9);
    IPC::Encoder::operator<<<BOOL &>(v19, &v26);
    IPC::Encoder::operator<<<BOOL &>(v19, v27);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(a2, &v28, v29, 0, 0);
    v21 = v28;
    v28 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v20);
      bmalloc::api::tzoneFree(v23, v24);
    }

    result = v29[0];
    v29[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112A4A0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112A4A0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<BOOL>>(a3);
  }

  v4 = *(**(a1 + 8) + 16);

  return v4();
}

void *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A4C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v2 + 8));
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A4C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::call@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  if (a2)
  {
    while (1)
    {
      a4 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v8 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v8, a4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == a4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
  }

LABEL_6:
  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(a4, 0x20);
  *v11 = &unk_1F112A4F0;
  v11[1] = a2;
  v11[2] = v9;
  v11[3] = v10;
  v13 = v11;
  (*(*v7 + 16))(v7, &v13);
  result = v13;
  v13 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1}::operator()(WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A4F0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 24), 0);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v2);
  }

  return a1;
}

{
  *a1 = &unk_1F112A4F0;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 24), 0);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v2);
  }

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateDecoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1}::operator()(WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>)::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[1];
  a1[2] = 0;
  (*(*v2 + 16))(v2, v3, v1);
  v4 = *(*v2 + 8);

  return v4(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createDecoderInternal(WebCore::VideoCodecType,WTF::String const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Decoder *)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A518;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createDecoderInternal(WebCore::VideoCodecType,WTF::String const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Decoder *)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A518;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createDecoderInternal(WebCore::VideoCodecType,WTF::String const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Decoder *)> &&)::$_0::operator()(void)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, void *a2)
{
  if (a2)
  {
    {
      v3 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v12 = WebKit::WebProcess::operator new(0x370, a2);
      v3 = WebKit::WebProcess::WebProcess(v12);
      WebKit::WebProcess::singleton(void)::process = v3;
    }

    v4 = WebKit::WebProcess::libWebRTCCodecs(v3, a2);
    v5 = (v4 + 8);
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_12:
    v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4 + 3, (a1 + 8));
    (*(**(a1 + 16) + 16))(*(a1 + 16), v10);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4 + 1, v11);
  }

  else
  {
    v8 = *(**(a1 + 16) + 16);

    return v8();
  }
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = (v2 << (6 * *(v1 - 12) >= (2 * v2)));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = v2 - 1;
  result[3] = v2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = v12 + 16 * v19;
          std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100]((v21 + 8), 0);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](v10 + 1, 0);
        }

        else
        {
          std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](v10 + 1, 0);
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::releaseDecoder(WebKit::LibWebRTCCodecs::Decoder &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112A540;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::releaseDecoder(WebKit::LibWebRTCCodecs::Decoder &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A540;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

bmalloc::api **WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::releaseDecoder(WebKit::LibWebRTCCodecs::Decoder &)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = (v1 + 24);
  v2 = *(v1 + 24);
  if (!v2)
  {
    goto LABEL_11;
  }

  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (v4 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2C9C04);
  }

  v6 = *(v2 - 8);
  v7 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v2 + 16 * v10);
  if (v11 != v4)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v2 + 16 * v10);
      ++v12;
      if (v11 == v4)
      {
        goto LABEL_10;
      }
    }

    v10 = *(v2 - 4);
  }

LABEL_10:
  if (v10 != *(v2 - 4))
  {
    v13 = (v2 + 16 * v10);
    v15 = v13[1];
    ++v13;
    v14 = v15;
    *v13 = 0;
    v29 = v15;
    *(v2 + 16 * v10) = -1;
    std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](v13, 0);
    v16 = *v3;
    v17 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
    *(v16 - 16) = v17;
    v18 = *(v16 - 4);
    if (6 * v17.i32[1] < v18 && v18 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoDecoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v18 >> 1);
    }

    if (v14)
    {
      v20 = 0;
      atomic_compare_exchange_strong_explicit((v1 + 49), &v20, 1u, memory_order_acquire, memory_order_acquire);
      if (v20)
      {
        MEMORY[0x19EB01E30](v1 + 49);
      }

      v21 = *(v29 + 6);
      if (v21)
      {
        while (1)
        {
          v22 = *v21;
          if ((*v21 & 1) == 0)
          {
            break;
          }

          v23 = *v21;
          atomic_compare_exchange_strong_explicit(v21, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v23 == v22)
          {
            goto LABEL_26;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v21);
LABEL_26:
        v28 = v5;
        IPC::Connection::send<Messages::LibWebRTCCodecsProxy::ReleaseDecoder>(v21, &v28);
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v21, v24);
      }

      else
      {
        v28 = v5;
        IPC::Connection::send<Messages::LibWebRTCCodecsProxy::ReleaseDecoder>(0, &v28);
      }

      v25 = *(v1 + 40);
      if ((!v25 || !*(v25 - 12)) && (!*v3 || !*(*v3 - 12)))
      {
        atomic_store(0, (v1 + 48));
      }

      v26 = 1;
      atomic_compare_exchange_strong_explicit((v1 + 49), &v26, 0, memory_order_release, memory_order_relaxed);
      if (v26 != 1)
      {
        WTF::Lock::unlockSlow((v1 + 49));
      }
    }
  }

  else
  {
LABEL_11:
    v29 = 0;
  }

  return std::unique_ptr<WebKit::LibWebRTCCodecs::Decoder>::reset[abi:sn200100](&v29, 0);
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCCodecsProxy::ReleaseDecoder>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 130;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushDecoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A568;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushDecoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112A568;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushDecoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(a4, 0x10);
  *v6 = &unk_1F112A590;
  v6[1] = v5;
  v9 = v6;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = "operator()";
  v8[3] = 0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v9, v8);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushDecoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A590;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushDecoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112A590;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushDecoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::call@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (*v2)
    {
      *a2 = 0;
      return result;
    }

    v3 = 270;
  }

  else
  {
    v3 = 257;
  }

  *a2 = v3;
  return result;
}

unsigned int **WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>>::completionPromise(unsigned int **a1, unint64_t *a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v14[2] = "<completion promise>";
  v14[3] = 0;
  v4 = WTF::fastMalloc("<completion promise>", 0x28);
  v15 = WTF::NativePromiseProducer<void,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(v4, 0, v14, v5);
  v6 = *v15;
  if (*v15)
  {
    atomic_fetch_add(v6 + 2, 1u);
  }

  *a1 = v6;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add(v7 + 2, 1u);
    WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::setCompletionPromise(v7, &v15);
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      (*(*v7 + 8))(v7);
    }
  }

  else
  {
    WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::setCompletionPromise(0, &v15);
  }

  v8 = *a2;
  v9 = a2[1];
  a2[1] = 0;
  v14[0] = v9;
  WTF::NativePromise<void,IPC::Error,0u>::maybeSettle(v8, v14, (a2 + 2));
  v10 = v14[0];
  v14[0] = 0;
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10 + 2);
    (*(*v10 + 8))(v10);
  }

  result = v15;
  if (v15)
  {
    v12 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v15);
    return WTF::fastFree(v12, v13);
  }

  return result;
}

uint64_t Messages::LibWebRTCCodecsProxy::SetDecoderFormatDescription::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a2, **(a1 + 8), *(*(a1 + 8) + 8));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  v4 = *(a1 + 18);

  return IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t *WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = WTF::fastMalloc(v40, 0x78);
  *(v4 + 2) = 1;
  *v4 = &unk_1F112A5B8;
  v5 = *(a2 + 1);
  *(v4 + 1) = *a2;
  *(v4 + 2) = v5;
  *(v4 + 48) = 0;
  v6 = (v4 + 6);
  *(v4 + 64) = 0;
  v4[9] = (v4 + 11);
  v4[10] = 1;
  v4[12] = 0;
  v4[13] = 0;
  *(v4 + 56) = 0;
  v7 = WTF::NativePromiseBase::logChannel(v4);
  if (*v7)
  {
    v8 = v7;
    if (v7[16] >= 4u)
    {
      WTF::String::String(&v35, "creating ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v34, v4);
      *buf = v35;
      v33[0] = v34;
      result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v33, &v36);
      if (!v36)
      {
        __break(0xC471u);
        return result;
      }

      v11 = v34;
      v34 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }

      v12 = v35;
      v35 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      v13 = *(v8 + 4);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        WTF::String::utf8();
        v16 = v33[0] ? v33[0] + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v14 = v33[0];
        v33[0] = 0;
        if (v14)
        {
          if (*v14 == 1)
          {
            v14 = WTF::fastFree(v14, v15);
          }

          else
          {
            --*v14;
          }
        }
      }

      if (*v8 && v8[16] >= 4u)
      {
        v17 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v18 = *v17;
          if (v18)
          {
            break;
          }

          v19 = *v17;
          atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 1, memory_order_acquire, memory_order_acquire);
          if (v19 == v18)
          {
            v20 = WTF::Logger::observers(v14);
            v21 = *(v20 + 12);
            if (v21)
            {
              v22 = *v20;
              v23 = *v20 + 8 * v21;
              do
              {
                v24 = *v22;
                *buf = 0;
                WTF::String::String(&buf[8], "creating ");
                v38 = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, v4);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v33, buf, 2uLL);
                (*(*v24 + 16))(v24, v8, 4, v33);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v25);
                for (i = 24; i != -8; i -= 16)
                {
                  v27 = *&buf[i];
                  *&buf[i] = 0;
                  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v27, v15);
                  }
                }

                ++v22;
              }

              while (v22 != v23);
            }

            v28 = 1;
            atomic_compare_exchange_strong_explicit(v17, &v28, 0, memory_order_release, memory_order_relaxed);
            if (v28 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v7 = v36;
      v36 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v7 = WTF::StringImpl::destroy(v7, v15);
      }
    }
  }

  v29 = 0;
  *a1 = v4;
  v30 = *a2;
  *(a1 + 24) = *(a2 + 1);
  *(a1 + 8) = v30;
  atomic_fetch_add(v4 + 2, 1u);
  atomic_compare_exchange_strong_explicit(v4 + 48, &v29, 1u, memory_order_acquire, memory_order_acquire);
  if (v29)
  {
    v7 = MEMORY[0x19EB01E30](v6);
  }

  v31 = WTF::NativePromiseBase::logChannel(v7);
  if (*v31 && v31[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v31, a2, " runSynchronouslyOnTarget ", v4);
  }

  atomic_store(0, v4 + 113);
  v32 = 1;
  atomic_compare_exchange_strong_explicit(v4 + 48, &v32, 0, memory_order_release, memory_order_relaxed);
  if (v32 != 1)
  {
    WTF::Lock::unlockSlow(v6);
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 16))(v4);
  }

  return a1;
}

atomic_uint **WTF::NativePromise<BOOL,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 6);
  atomic_compare_exchange_strong_explicit(result + 48, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 6);
  }

  v4 = *(v1 + 27);
  if (v4)
  {
    v5 = v1[12];
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<BOOL,IPC::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<BOOL,IPC::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

atomic_uint **WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add((v1 + 8), 1u);
    result = WTF::NativePromise<BOOL,IPC::Error,0u>::assertIsDead(v1);
    if (atomic_fetch_add((v1 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v1 + 8));
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t *WTF::NativePromise<BOOL,IPC::Error,0u>::~NativePromise(uint64_t a1)
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

  WTF::NativePromise<BOOL,IPC::Error,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<BOOL,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v26);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, v27);
  v28 = *(a1 + 64);
  if (v28 >= 2 && v28 != 255)
  {
    v29 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<BOOL,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(v4) + 5;
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

atomic_uint **WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::DecodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112A5E0;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::DecodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112A5E0;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::DecodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(a4, 0x10);
  *v6 = &unk_1F112A630;
  v6[1] = v5;
  v9 = v6;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = "operator()";
  v8[3] = 0;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v9, v8);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

WTF::Lock *WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uint **a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 1;
  if (!*a1)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v6 = a1;
  v7 = 0;
  atomic_fetch_add(v3 + 2, 1u);
  a1 = (v3 + 12);
  atomic_compare_exchange_strong_explicit(v3 + 48, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30]();
    a1 = (v3 + 12);
  }

  v8 = *(v3 + 64);
  v9 = 1;
  atomic_compare_exchange_strong_explicit(a1, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    a1 = WTF::Lock::unlockSlow(a1);
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    a1 = (*(*v3 + 16))(v3);
  }

  v10 = *v6;
  if (v8)
  {
    if (v10)
    {
      atomic_fetch_add(v10 + 2, 1u);
      v4 = 0;
    }

LABEL_12:
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v12 = *(result + 16) >= 4u;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = result;
      WTF::Logger::LogSiteIdentifier::toString(&v39, a3);
      WTF::String::String(&v38, " ignored already resolved or rejected ");
      WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v37, v10);
      WTF::makeString<WTF::String,WTF::String,WTF::String>(&v39, &v38, &v37, &v40);
      v15 = v37;
      v37 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }

      v16 = v38;
      v38 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }

      v17 = v39;
      v39 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v14);
      }

      v18 = *(v13 + 4);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        WTF::String::utf8();
        v21 = v36[0] ? v36[0] + 16 : 0;
        *buf = 136446210;
        v42 = v21;
        _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v19 = v36[0];
        v36[0] = 0;
        if (v19)
        {
          if (*v19 == 1)
          {
            v19 = WTF::fastFree(v19, v20);
          }

          else
          {
            --*v19;
          }
        }
      }

      if (*v13 && *(v13 + 16) >= 4u)
      {
        v22 = MEMORY[0x1E696EBC0];
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
            v25 = WTF::Logger::observers(v19);
            v26 = *(v25 + 12);
            if (v26)
            {
              v27 = *v25;
              v28 = *v25 + 8 * v26;
              do
              {
                v29 = *v27;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString((&v42 + 4), a3);
                v43 = 0;
                WTF::String::String(v44, " ignored already resolved or rejected ");
                v44[2] = 0;
                WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v45, v10);
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v36, buf, 3uLL);
                (*(*v29 + 16))(v29, v13, 4, v36);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v30);
                for (i = 40; i != -8; i -= 16)
                {
                  v32 = *&buf[i];
                  *&buf[i] = 0;
                  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v32, v20);
                  }
                }

                ++v27;
              }

              while (v27 != v28);
            }

            v33 = 1;
            atomic_compare_exchange_strong_explicit(v22, &v33, 0, memory_order_release, memory_order_relaxed);
            if (v33 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      result = v40;
      v40 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v20);
      }
    }

    if ((v4 & 1) == 0 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
LABEL_58:
      v34 = *(*v10 + 16);

      return v34(v10);
    }

    return result;
  }

  if (v10)
  {
    atomic_fetch_add(v10 + 2, 1u);
    result = WTF::NativePromise<BOOL,IPC::Error,0u>::settleWithFunction(v10, a2, a3);
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) != 1)
    {
      return result;
    }

    atomic_store(1u, v10 + 2);
    goto LABEL_58;
  }

  return WTF::NativePromise<BOOL,IPC::Error,0u>::settleWithFunction(0, a2, a3);
}

WTF::Lock *WTF::NativePromise<BOOL,IPC::Error,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
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

  v32 = *(a1 + 64);
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
  *(a1 + 64) = 2;
  result = WTF::NativePromise<BOOL,IPC::Error,0u>::dispatchAll(a1, &v37);
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

uint64_t WTF::NativePromise<BOOL,IPC::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v29[0] = &v29[2];
  v29[1] = 1;
  __dst = &v24;
  v23 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 72));
  v4 = *(a1 + 84);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 72), (*(a1 + 72) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 72), v29);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v5);
  *&v6 = 0;
  v7 = *(a1 + 96);
  v19 = v7;
  v8 = *(a1 + 108);
  v20 = *(a1 + 104);
  v21 = v8;
  *v29 = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::Vector<WTF::NativePromiseProducer<BOOL,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v9);
  if (HIDWORD(v23))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v23);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
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
        WTF::NativePromise<BOOL,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<BOOL,IPC::Error,0u>::Storage>(v15, (a1 + 56), &v25);
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
        WTF::NativePromise<BOOL,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<BOOL,IPC::Error,0u>::Storage>(0, (a1 + 56), &v25);
      }

      WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(v29);
      v7 += 40;
    }

    while (v7 != v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<BOOL,IPC::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v17);
}

atomic_uchar *WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 113)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16 = v5;
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
        return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, &v16, (v5 + 24));
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

      if (WTF::NativePromise<void,void,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v16, a2);
        v13 = v16;
        (*(*v16 + 16))(v15, v16);
        (*(*v5 + 24))(v5, a2, v15);
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(&v16, a2);
        (*(*v5 + 24))(v5, a2, &v16);
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
    *v8 = &unk_1F112A608;
    v8[1] = v5;
    v8[2] = a2;
    v16 = v8;
    (*(*v7 + 16))(v7, &v16);
    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A608;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A608;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<BOOL,IPC::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11 = *(a1 + 1);
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
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<void,void,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v11, v8);
      v9 = v11;
      (*(*v11 + 16))(v10, v11);
      (*(*v7 + 24))(v7, v8, v10);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(&v11, v8);
      return (*(*v7 + 24))(v7, v8, &v11);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<BOOL,IPC::Error,0u>::settleAsChainedPromise<WTF::NativePromise<BOOL,IPC::Error,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v22 = v7;
  v23 = 1;
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

  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
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
        goto LABEL_40;
      case 2:
        if (v10 >= 2 && v10 != 255)
        {
          if (v10 == 2)
          {
            v14 = *a2;
            *a2 = 0;
            v15 = *(a1 + 56);
            *(a1 + 56) = v14;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }

            goto LABEL_41;
          }

          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        v19 = *a2;
        *a2 = 0;
        *(a1 + 56) = v19;
        v13 = 2;
        goto LABEL_40;
      case 1:
        if (*(a1 + 64) && v10 != 255)
        {
          if (v10 == 1)
          {
            *(a1 + 56) = *a2;
            goto LABEL_41;
          }

          v17 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }

        *(a1 + 64) = -1;
        *(a1 + 56) = *a2;
        v13 = 1;
LABEL_40:
        *(a1 + 64) = v13;
        goto LABEL_41;
    }

    if (*(a1 + 64))
    {
      if (v10 != 1 && v10 != 255)
      {
        v16 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      *(a1 + 64) = 0;
    }
  }

LABEL_41:
  result = WTF::NativePromise<BOOL,IPC::Error,0u>::dispatchAll(a1, &v22);
  v21 = v23;
  if (v23 == 1)
  {
    result = v22;
    atomic_compare_exchange_strong_explicit(v22, &v21, 0, memory_order_release, memory_order_relaxed);
    if (v21 != 1)
    {

      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::DecodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A630;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::DecodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112A630;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

IPC::Decoder *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::DecodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,IPC::Error>>::call@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = *(a1 + 8);
  if (!result)
  {
    v4 = 1;
    goto LABEL_7;
  }

  v4 = 14;
  if (!*result)
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  result = IPC::Decoder::decode<std::tuple<BOOL>>(result);
  v5 = (result & 0x100) == 0;
  if ((result & 0x100) != 0)
  {
    v4 = result;
  }

  else
  {
    v4 = 14;
  }

LABEL_8:
  *a2 = v4;
  a2[1] = v5;
  return result;
}

atomic_uint **WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromise<void,WTF::String,0u>::reject<WTF::ASCIILiteral,std::enable_if<true,void>>(uint64_t a1, __int128 *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v19 = v7;
  v20 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v8, a3, " rejecting ", a1);
  }

  v17 = *a2;
  std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(&v18, &v17);
  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v12 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 64) == 1)
    {
      v11 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v10);
        }
      }
    }
  }

  v13 = v18;
  v18 = 0;
  *(a1 + 56) = v13;
  *(a1 + 64) = 1;
  *(a1 + 72) = 1;
  WTF::NativePromise<void,WTF::String,0u>::dispatchAll(a1, &v19);
  result = v18;
  v18 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v14);
  }

  v16 = v20;
  if (v20 == 1)
  {
    result = v19;
    atomic_compare_exchange_strong_explicit(v19, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

unsigned int **WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::~ThenCommand(unsigned int **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    a1[1] = 0;
    v8 = v2;
    WTF::NativePromise<BOOL,IPC::Error,0u>::maybeSettle(v3, &v8, (a1 + 2));
    v4 = v8;
    v8 = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4 + 2);
      (*(*v4 + 8))(v4);
    }

    v5 = a1[1];
    a1[1] = 0;
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromise<BOOL,IPC::Error,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
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

  *(a1 + 112) = 1;
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

  if (*(a1 + 64))
  {
    result = WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallbackBase::dispatch(*a2, a1, &v42);
  }

  else
  {
    v35 = *(a1 + 84);
    if (v35 == *(a1 + 80))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((a1 + 72), v35 + 1, a2);
      v35 = *(a1 + 84);
      v36 = v35 + 1;
      v37 = *(a1 + 72);
      v38 = *result;
      *result = 0;
    }

    else
    {
      v36 = v35 + 1;
      v37 = *(a1 + 72);
      v38 = *a2;
      *a2 = 0;
    }

    *(v37 + 8 * v35) = v38;
    *(a1 + 84) = v36;
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

atomic_uint **WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCommand<WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>>::completionPromise(atomic_uint **a1, unint64_t *a2)
{
  v18 = 0uLL;
  *&v19 = "<completion promise>";
  *(&v19 + 1) = 0;
  v4 = WTF::fastMalloc("<completion promise>", 0x28);
  v6 = WTF::fastMalloc(v5, 0x80);
  v7 = WTF::NativePromise<void,WTF::String,0u>::NativePromise(v6, &v18);
  *v4 = v7;
  v8 = v18;
  *(v4 + 3) = v19;
  *(v4 + 1) = v8;
  v9 = (v7 + 8);
  atomic_fetch_add((v7 + 8), 1u);
  WTF::NativePromise<void,WTF::String,0u>::setDispatchMode(v7, 0, &v18);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    (*(*v6 + 16))(v6);
  }

  v20 = v4;
  v10 = *v4;
  if (*v4)
  {
    atomic_fetch_add(v10 + 2, 1u);
  }

  *a1 = v10;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add(v11 + 2, 1u);
    WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>::setCompletionPromise(v11, &v20);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 8))(v11);
    }
  }

  else
  {
    WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>::setCompletionPromise(0, &v20);
  }

  v12 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  *&v18 = v13;
  WTF::NativePromise<BOOL,IPC::Error,0u>::maybeSettle(v12, &v18, (a2 + 2));
  v14 = v18;
  *&v18 = 0;
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  result = v20;
  if (v20)
  {
    v16 = WTF::NativePromiseProducer<void,WTF::String,0u>::~NativePromiseProducer(v20);
    return WTF::fastFree(v16, v17);
  }

  return result;
}

atomic_uint **WTF::NativePromise<BOOL,IPC::Error,0u>::ThenCallback<true,WTF::NativePromise<void,WTF::String,0u>>::setCompletionPromise(uint64_t a1, atomic_uint ***a2)
{
  v4 = 0;
  v5 = (a1 + 57);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v7 = *a2;
  *a2 = 0;
  result = std::unique_ptr<WTF::NativePromiseProducer<void,WTF::String,0u>>::reset[abi:sn200100]((a1 + 64), v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t *WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer(uint64_t a1, WTF::StringImpl *a2)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1)
  {
    atomic_fetch_add(v3 + 2, 1u);
    isSettled = WTF::NativePromise<WTF::String,void,0u>::isSettled(v3);
    v5 = isSettled;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      isSettled = (*(*v3 + 16))(v3);
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((isSettled & 1) == 0)
    {
LABEL_4:
      v6 = *a1;
      if (*a1)
      {
        atomic_fetch_add(v6 + 2, 1u);
      }

      v7 = WTF::NativePromiseBase::logChannel(isSettled);
      if (*v7)
      {
        v8 = v7;
        if (v7[16] >= 4u)
        {
          WTF::String::String(&v35, "Non settled AutoRejectProducer, reject with default value");
          WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v34, v6);
          *buf = v35;
          v33[0] = v34;
          result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v33, &v36);
          if (!v36)
          {
            __break(0xC471u);
            return result;
          }

          v11 = v34;
          v34 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }

          v12 = v35;
          v35 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v10);
          }

          v13 = *(v8 + 4);
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            WTF::String::utf8();
            v16 = v33[0] ? v33[0] + 16 : 0;
            *buf = 136446210;
            *&buf[4] = v16;
            _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            v14 = v33[0];
            v33[0] = 0;
            if (v14)
            {
              if (*v14 == 1)
              {
                v14 = WTF::fastFree(v14, v15);
              }

              else
              {
                --*v14;
              }
            }
          }

          if (*v8 && v8[16] >= 4u)
          {
            v17 = MEMORY[0x1E696EBC0];
            while (1)
            {
              v18 = *v17;
              if (v18)
              {
                break;
              }

              v19 = *v17;
              atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 1, memory_order_acquire, memory_order_acquire);
              if (v19 == v18)
              {
                v20 = WTF::Logger::observers(v14);
                v21 = *(v20 + 12);
                if (v21)
                {
                  v22 = *v20;
                  v23 = *v20 + 8 * v21;
                  do
                  {
                    v24 = *v22;
                    *buf = 0;
                    WTF::String::String(&buf[8], "Non settled AutoRejectProducer, reject with default value");
                    LODWORD(v38) = 0;
                    WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v39, v6);
                    WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v33, buf, 2uLL);
                    (*(*v24 + 16))(v24, v8, 4, v33);
                    WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v25);
                    for (i = 24; i != -8; i -= 16)
                    {
                      v27 = *&buf[i];
                      *&buf[i] = 0;
                      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v27, v15);
                      }
                    }

                    ++v22;
                  }

                  while (v22 != v23);
                }

                v28 = 1;
                atomic_compare_exchange_strong_explicit(v17, &v28, 0, memory_order_release, memory_order_relaxed);
                if (v28 != 1)
                {
                  WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                }

                break;
              }
            }
          }

          v29 = v36;
          v36 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v15);
          }
        }
      }

      if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        (*(*v6 + 16))(v6);
      }

      *buf = 0uLL;
      v38 = "~NativePromiseProducer";
      v39[0] = 0;
      WTF::NativePromiseProducer<void,WTF::String,16u>::reject<WTF::String,std::enable_if<true,void>>(a1, a1 + 40, buf);
    }

    v30 = *a1;
    if (*a1)
    {
      atomic_fetch_add(v30 + 2, 1u);
      WTF::NativePromise<void,WTF::String,0u>::assertIsDead(v30);
      if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30 + 2);
        (*(*v30 + 16))(v30);
      }
    }
  }

  v31 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, a2);
  }

  v32 = *a1;
  *a1 = 0;
  if (v32)
  {
    if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v32 + 2);
      (*(*v32 + 16))(v32, a2);
    }
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromiseProducer<void,WTF::String,16u>::reject<WTF::String,std::enable_if<true,void>>(atomic_uint **a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  isNothing = WTF::NativePromiseProducer<void,WTF::String,16u>::isNothing(*a1);
  v7 = *a1;
  if (isNothing)
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
      result = WTF::NativePromise<void,WTF::String,0u>::reject<WTF::String,std::enable_if<true,void>>(v7, a2, a3);
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) != 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    return WTF::NativePromise<void,WTF::String,0u>::reject<WTF::String,std::enable_if<true,void>>(0, a2, a3);
  }

  else
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
    }

    result = WTF::NativePromiseBase::logChannel(isNothing);
    if (*result)
    {
      v9 = *(result + 16) >= 4u;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,WTF::String,0u>>(result, a3, v7);
    }

    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_16:
      atomic_store(1u, v7 + 2);
      v10 = *(*v7 + 16);

      return v10(v7);
    }
  }

  return result;
}

BOOL WTF::NativePromiseProducer<void,WTF::String,16u>::isNothing(atomic_uint *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (a1 + 2);
  atomic_fetch_add(a1 + 2, 1u);
  v3 = !WTF::NativePromise<WTF::String,void,0u>::isSettled(a1);
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    (*(*a1 + 16))(a1);
  }

  return v3;
}

WTF::StringImpl *WTF::NativePromise<void,WTF::String,0u>::reject<WTF::String,std::enable_if<true,void>>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = 0;
  v6 = (a1 + 48);
  v15 = v6;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v6 = MEMORY[0x19EB01E30]();
  }

  v7 = WTF::NativePromiseBase::logChannel(v6);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>(v7, a3, " rejecting ", a1);
  }

  WTF::String::isolatedCopy();
  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v11 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 64) == 1)
    {
      v10 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }
      }
    }
  }

  *(a1 + 56) = v14;
  *(a1 + 64) = 1;
  *(a1 + 72) = 1;
  WTF::NativePromise<void,WTF::String,0u>::dispatchAll(a1, &v15);
  result = 0;
  v13 = v16;
  if (v16 == 1)
  {
    result = v15;
    atomic_compare_exchange_strong_explicit(v15, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,WTF::String,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, uint64_t a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v30, this);
  WTF::String::String(&v29, " ignored already resolved or rejected ");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v28, a3);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v30, &v29, &v28, &v31);
  v7 = v28;
  v28 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = v29;
  v29 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = v30;
  v30 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = *(a1 + 32);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    WTF::String::utf8();
    v13 = v27[0] ? v27[0] + 16 : 0;
    *buf = 136446210;
    v33 = v13;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v11 = v27[0];
    v27[0] = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        v11 = WTF::fastFree(v11, v12);
      }

      else
      {
        --*v11;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v14 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v15 = *v14;
      if (v15)
      {
        break;
      }

      v16 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v16, v15 | 1, memory_order_acquire, memory_order_acquire);
      if (v16 == v15)
      {
        v17 = WTF::Logger::observers(v11);
        v18 = *(v17 + 12);
        if (v18)
        {
          v19 = *v17;
          v20 = *v17 + 8 * v18;
          do
          {
            v21 = *v19;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v33 + 4), this);
            v34 = 0;
            WTF::String::String(v35, " ignored already resolved or rejected ");
            v35[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(v36, a3);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v27, buf, 3uLL);
            (*(*v21 + 16))(v21, a1, 4, v27);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v22);
            for (i = 40; i != -8; i -= 16)
            {
              v24 = *&buf[i];
              *&buf[i] = 0;
              if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v24, v12);
              }
            }

            ++v19;
          }

          while (v19 != v20);
        }

        v25 = 1;
        atomic_compare_exchange_strong_explicit(v14, &v25, 0, memory_order_release, memory_order_relaxed);
        if (v25 != 1)
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
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

unint64_t WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(WTF *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 80 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF *WTF::Vector<WebKit::LibWebRTCCodecs::Decoder::EncodedFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x3333334)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 80 * a2;
      result = WTF::fastMalloc((5 * a2), (80 * a2));
      *(v2 + 2) = v5 / 0x50;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 0;
        v9 = 80 * v4;
        do
        {
          v10 = v7 + v8;
          v11 = v3 + v8;
          *v10 = *(v3 + v8);
          *(v10 + 2) = 0;
          *(v7 + v8 + 8) = 0;
          WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v7 + v8 + 8, (v3 + v8 + 8));
          *(v10 + 6) = *(v3 + v8 + 24);
          v12 = *(v3 + v8 + 32);
          *(v11 + 4) = 0;
          *(v10 + 4) = v12;
          v13 = *(v3 + v8 + 40);
          *(v10 + 56) = *(v3 + v8 + 56);
          *(v10 + 40) = v13;
          v14 = *(v3 + v8 + 72);
          *(v11 + 9) = 0;
          *(v10 + 9) = v14;
          WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer(v3 + v8 + 32, v15);
          result = *(v3 + v8 + 8);
          if (result)
          {
            *(v11 + 1) = 0;
            *(v11 + 4) = 0;
            result = WTF::fastFree(result, v6);
          }

          v8 += 80;
        }

        while (v9 != v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderAndWaitUntilInitialized(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,WebCore::VideoEncoder::Config const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Encoder *>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A680;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderAndWaitUntilInitialized(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,WebCore::VideoEncoder::Config const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Encoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A680;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderAndWaitUntilInitialized(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,WebCore::VideoEncoder::Config const&,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_0,void,WebKit::LibWebRTCCodecs::Encoder *>::call(uint64_t a1, void *a2)
{
  if (a2)
  {
    {
      v4 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v13 = WebKit::WebProcess::operator new(0x370, a2);
      v4 = WebKit::WebProcess::WebProcess(v13);
      WebKit::WebProcess::singleton(void)::process = v4;
    }

    v5 = WebKit::WebProcess::libWebRTCCodecs(v4, a2);
    v6 = (v5 + 8);
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
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_9:
    WebKit::LibWebRTCCodecs::initializeEncoderInternal(v5, a2, *(a1 + 8), *(a1 + 16), *(a1 + 32) / 0x3E8uLL, ((((*(a1 + 32) >> 2) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4, 0, *(a1 + 40));
    WebKit::LibWebRTCCodecs::setEncodeRates(&v14, v5, a2, *(a1 + 32) / 0x3E8uLL, *(a1 + 40));
    v10 = v14;
    v14 = 0;
    if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
      (*(*v10 + 16))(v10);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v9);
  }

  v11 = *(**(a1 + 56) + 16);

  return v11();
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2CDA0CLL);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderInternal(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_1,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F112A6A8;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100]((a1 + 24), 0);
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), v4);
  }

  return a1;
}

{
  *a1 = &unk_1F112A6A8;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100]((a1 + 24), 0);
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), v4);
  }

  return WTF::fastFree(a1, v4);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderInternal(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_1,void>::call(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit((v4 + 49), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](v4 + 49, a2);
  }

  v5 = *(v4 + 56);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
  v8 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 49), &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow((v4 + 49));
  }

  v9 = 0;
  atomic_compare_exchange_strong_explicit((v4 + 32), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x19EB01E30](v4 + 32);
  }

  v10 = *(a1 + 24);
  v11 = *v10;
  v12 = *(a1 + 48);
  *(a1 + 48) = 0;
  v13 = WTF::fastMalloc(v9, 0x18);
  *v13 = &unk_1F112A748;
  v13[1] = v11;
  v13[2] = v12;
  v40 = v13;
  WebKit::createRemoteEncoder(v10, v5, a1 + 32, &v40);
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v15 = *(a1 + 24);
  while (1)
  {
    v16 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v17 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v17 == v16)
    {
      goto LABEL_19;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_19:
  v18 = *(v15 + 96);
  *(v15 + 96) = v5;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v18, v14);
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 32), &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow((v4 + 32));
  }

  v20 = *(a1 + 24);
  v21 = *(v20 + 36);
  if (v21)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(*(v20 + 24), (*(v20 + 24) + 16 * v21));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v20 + 24, (a1 + 32));
  v23 = **(a1 + 24);
  if (v23 == -1 || !v23)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2CDE94);
  }

  v24 = *(v4 + 40);
  if (!v24)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 40));
    v24 = *(v4 + 40);
  }

  v25 = *(v24 - 8);
  v26 = (v23 + ~(v23 << 32)) ^ ((v23 + ~(v23 << 32)) >> 22);
  v27 = 9 * ((v26 + ~(v26 << 13)) ^ ((v26 + ~(v26 << 13)) >> 8));
  v28 = (v27 ^ (v27 >> 15)) + ~((v27 ^ (v27 >> 15)) << 27);
  v29 = v25 & ((v28 >> 31) ^ v28);
  v30 = (v24 + 16 * v29);
  v31 = *v30;
  if (!*v30)
  {
LABEL_37:
    *v30 = v23;
    v34 = *(a1 + 24);
    *(a1 + 24) = 0;
    std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100](v30 + 1, v34);
    v35 = *(v4 + 40);
    if (v35)
    {
      v36 = *(v35 - 12) + 1;
    }

    else
    {
      v36 = 1;
    }

    *(v35 - 12) = v36;
    v37 = (*(v35 - 16) + v36);
    v38 = *(v35 - 4);
    if (v38 > 0x400)
    {
      if (v38 > 2 * v37)
      {
        goto LABEL_43;
      }
    }

    else if (3 * v38 > 4 * v37)
    {
      goto LABEL_43;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v4 + 40));
    goto LABEL_43;
  }

  v32 = 0;
  v33 = 1;
  while (v31 != v23)
  {
    if (v31 == -1)
    {
      v32 = v30;
    }

    v29 = (v29 + v33) & v25;
    v30 = (v24 + 16 * v29);
    v31 = *v30;
    ++v33;
    if (!*v30)
    {
      if (v32)
      {
        *v32 = 0;
        v32[1] = 0;
        --*(*(v4 + 40) - 16);
        v30 = v32;
      }

      goto LABEL_37;
    }
  }

LABEL_43:

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5, v22);
}

uint64_t WebKit::createRemoteEncoder(uint64_t a1, os_unfair_lock *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  v10 = *(a1 + 137);
  v11 = *(a1 + 139);
  v28 = *(a1 + 138);
  v29 = v10;
  v30 = v11;
  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v27 = WebKit::WebProcess::operator new(0x370, a2);
    v12 = WebKit::WebProcess::WebProcess(v27);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  v13 = *(WebKit::WebProcess::libWebRTCCodecs(v12, a2) + 11);
  v14 = *a4;
  *a4 = 0;
  v16 = WTF::fastMalloc(v15, 0x10);
  *v16 = &unk_1F112A6D0;
  v16[1] = v14;
  while (1)
  {
    v17 = *(v13 + 32);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v18 = *(v13 + 32);
    atomic_compare_exchange_strong_explicit((v13 + 32), &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v17)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v13 + 32));
LABEL_8:
  v19 = WTF::fastMalloc(v17, 0x18);
  *v19 = &unk_1F112A6F8;
  v19[1] = v16;
  v19[2] = v13 + 24;
  v32[0] = v19;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v32[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v21 = IPC::Encoder::operator new(0x238, v20);
    *v21 = 124;
    *(v21 + 68) = 0;
    *(v21 + 70) = 0;
    *(v21 + 69) = 0;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 1) = 0;
    IPC::Encoder::encodeHeader(v21);
    v31 = v21;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v21, *a1);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v21, v8);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, v9);
    IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v21, a3);
    IPC::Encoder::operator<<<BOOL &>(v21, &v28);
    IPC::Encoder::operator<<<BOOL &>(v21, &v29);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v21, v30);
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(a2, &v31, v32, 0, 0);
    v23 = v31;
    v31 = 0;
    if (v23)
    {
      IPC::Encoder::~Encoder(v23, v22);
      bmalloc::api::tzoneFree(v25, v26);
    }

    result = v32[0];
    v32[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112A6D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112A6D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::Decoder::decode<std::tuple<BOOL>>(a3);
  }

  v4 = *(**(a1 + 8) + 16);

  return v4();
}

void *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A6F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v2 + 8));
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A6F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1},void,WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>>::call@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  if (a2)
  {
    while (1)
    {
      a4 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v8 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v8, a4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == a4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
  }

LABEL_6:
  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(a4, 0x20);
  *v11 = &unk_1F112A720;
  v11[1] = a2;
  v11[2] = v9;
  v11[3] = v10;
  v13 = v11;
  (*(*v7 + 16))(v7, &v13);
  result = v13;
  v13 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1}::operator()(WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A720;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 24), 0);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v2);
  }

  return a1;
}

{
  *a1 = &unk_1F112A720;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 24), 0);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v2);
  }

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<Messages::LibWebRTCCodecsProxy::CreateEncoder,WTF::Function<void ()(BOOL)>>(WTF::Function<void ()(BOOL)> &&,WTF::GuaranteedSerialFunctionDispatcher &)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>> &&)#1}::operator()(WTF::GuaranteedSerialFunctionDispatcher &,std::unique_ptr<IPC::Decoder,IPC::Connection*::default_delete<std::unique_ptr>>)::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[1];
  a1[2] = 0;
  (*(*v2 + 16))(v2, v3, v1);
  v4 = *(*v2 + 8);

  return v4(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderInternal(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F112A748;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderInternal(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A748;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::createEncoderInternal(WebCore::VideoCodecType,WTF::String const&,std::map<std::string,std::string> const&,BOOL,BOOL,WebCore::VideoEncoderScalabilityMode,WTF::Function<void ()(WebKit::LibWebRTCCodecs::Encoder *)> &&)::$_1::operator()(void)::{lambda(BOOL)#1},void,BOOL>::call(uint64_t a1, void *a2)
{
  if (a2)
  {
    {
      v3 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v12 = WebKit::WebProcess::operator new(0x370, a2);
      v3 = WebKit::WebProcess::WebProcess(v12);
      WebKit::WebProcess::singleton(void)::process = v3;
    }

    v4 = WebKit::WebProcess::libWebRTCCodecs(v3, a2);
    v5 = (v4 + 8);
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_12:
    v10 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4 + 5, *(a1 + 8));
    (*(**(a1 + 16) + 16))(*(a1 + 16), v10);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4 + 1, v11);
  }

  else
  {
    v8 = *(**(a1 + 16) + 16);

    return v8();
  }
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = (v2 << (6 * *(v1 - 12) >= (2 * v2)));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = v2 - 1;
  result[3] = v2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = v12 + 16 * v19;
          std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100]((v21 + 8), 0);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100](v10 + 1, 0);
        }

        else
        {
          std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100](v10 + 1, 0);
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::releaseEncoder(WebKit::LibWebRTCCodecs::Encoder &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112A770;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::releaseEncoder(WebKit::LibWebRTCCodecs::Encoder &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A770;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::releaseEncoder(WebKit::LibWebRTCCodecs::Encoder &)::$_0,void>::call(uint64_t a1)
{
  v2 = (a1 + 24);
  v1 = *(a1 + 24);
  v3 = *(a1 + 8);
  v5 = (v3 + 40);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_11;
  }

  if (v1 == -1 || !v1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2CED6CLL);
  }

  v6 = *(v4 - 8);
  v7 = (v1 + ~(v1 << 32)) ^ ((v1 + ~(v1 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v4 + 16 * v10);
  if (v11 != v1)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v4 + 16 * v10);
      ++v12;
      if (v11 == v1)
      {
        goto LABEL_10;
      }
    }

    v10 = *(v4 - 4);
  }

LABEL_10:
  if (v10 != *(v4 - 4))
  {
    v24 = (v4 + 16 * v10);
    v25 = v24[1];
    ++v24;
    v13 = v25;
    *v24 = 0;
    *(v4 + 16 * v10) = -1;
    std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>::reset[abi:sn200100](v24, 0);
    v26 = *v5;
    v27 = vadd_s32(*(*v5 - 16), 0xFFFFFFFF00000001);
    *(v26 - 16) = v27;
    v28 = *(v26 - 4);
    if (6 * v27.i32[1] < v28 && v28 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v5, v28 >> 1);
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  v14 = 0;
  atomic_compare_exchange_strong_explicit((v3 + 32), &v14, 1u, memory_order_acquire, memory_order_acquire);
  if (v14)
  {
    MEMORY[0x19EB01E30](v3 + 32);
  }

  v15 = *(v13 + 12);
  if (v15)
  {
    while (1)
    {
      v16 = *v15;
      if ((*v15 & 1) == 0)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        goto LABEL_19;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_19:
    v30 = v2;
    IPC::Connection::send<Messages::LibWebRTCCodecsProxy::ReleaseEncoder>(v15, &v30);
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15, v18);
  }

  else
  {
    v30 = v2;
    result = IPC::Connection::send<Messages::LibWebRTCCodecsProxy::ReleaseEncoder>(0, &v30);
  }

  if (!*v5 || !*(*v5 - 12))
  {
    v20 = *(v3 + 24);
    if (!v20 || !*(v20 - 12))
    {
      atomic_store(0, (v3 + 48));
    }
  }

  v21 = 1;
  atomic_compare_exchange_strong_explicit((v3 + 32), &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 == 1)
  {
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    result = WTF::Lock::unlockSlow((v3 + 32));
    if (!v13)
    {
      return result;
    }
  }

  WebKit::LibWebRTCCodecs::Encoder::~Encoder(v13);

  return bmalloc::api::tzoneFree(v22, v23);
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCCodecsProxy::ReleaseEncoder>(uint64_t *a1, void **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 131;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::initializeEncoder(WebKit::LibWebRTCCodecs::Encoder &,unsigned short,unsigned short,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112A798;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::initializeEncoder(WebKit::LibWebRTCCodecs::Encoder &,unsigned short,unsigned short,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A798;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::initializeEncoder(WebKit::LibWebRTCCodecs::Encoder &,unsigned short,unsigned short,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::LibWebRTCCodecs::Encoder>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::VideoEncoderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((v2 + 40), *(a1 + 24));
  v4 = *(a1 + 32);
  v5 = *(a1 + 34);
  v6 = *(a1 + 36);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = *(a1 + 48);

  return WebKit::LibWebRTCCodecs::initializeEncoderInternal(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t IPC::Connection::sendWithPromisedReply<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(uint64_t **a1, os_unfair_lock *a2, uint64_t a3)
{
  v22 = 0;
  *&v23 = 0;
  *(&v23 + 1) = "sendWithPromisedReply";
  *&v24 = 0;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v19, &v22);
  v6 = v19;
  if (v19)
  {
    atomic_fetch_add(v19 + 2, 1u);
    v7 = v19;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v6;
  v19 = 0;
  v23 = v20;
  v24 = v21;
  v8 = WTF::fastMalloc(v6, 0x30);
  *v8 = &unk_1F112A810;
  v8[1] = v7;
  v22 = 0;
  v9 = v24;
  *(v8 + 1) = v23;
  *(v8 + 2) = v9;
  v18[0] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v18[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(&v22);
    v11 = IPC::Encoder::operator new(0x238, v10);
    *v11 = 126;
    *(v11 + 68) = 0;
    *(v11 + 70) = 0;
    *(v11 + 69) = 0;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    *(v11 + 1) = 0;
    IPC::Encoder::encodeHeader(v11);
    v22 = v11;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, **a3);
    IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::encode(v11, *(a3 + 8));
    IPC::ArgumentCoder<API::Int64,void>::encode(v11, *(a3 + 16));
    IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v11, *(a3 + 24));
    IPC::Encoder::operator<<<BOOL &>(v11, (a3 + 32));
    IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(a2, &v22, v18, 0, 0);
    v13 = v22;
    v22 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v16, v17);
    }

    v14 = v18[0];
    v18[0] = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    return WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(&v19);
  }

  return result;
}

atomic_ullong *WTF::Detail::CallableWrapper<WTF::RefPtr<WTF::NativePromise<void,WTF::String,0u>,WTF::RawPtrTraits<WTF::NativePromise<void,WTF::String,0u>>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WTF::String,0u>>> WebKit::LibWebRTCCodecs::encodeFrameInternal<webrtc::VideoFrame>(WebKit::LibWebRTCCodecs::Encoder &,webrtc::VideoFrame const&,BOOL,WebCore::VideoFrameRotation,WTF::MediaTime,long long,std::optional<unsigned long long>)::{lambda(webrtc::VideoFrame&)#1},void,IPC::Semaphore &>::call(uint64_t a1, IPC::Semaphore *a2)
{
  v4 = *(*(a1 + 8) + 96);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v9[0] = *(a1 + 8);
  v9[1] = a2;
  IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetSharedVideoFrameSemaphore>(v4, v9);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v7);
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetSharedVideoFrameSemaphore>(uint64_t *a1, IPC::Semaphore **a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 137;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v4, a2[1]);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

atomic_ullong *WTF::Detail::CallableWrapper<WTF::RefPtr<WTF::NativePromise<void,WTF::String,0u>,WTF::RawPtrTraits<WTF::NativePromise<void,WTF::String,0u>>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WTF::String,0u>>> WebKit::LibWebRTCCodecs::encodeFrameInternal<webrtc::VideoFrame>(WebKit::LibWebRTCCodecs::Encoder &,webrtc::VideoFrame const&,BOOL,WebCore::VideoFrameRotation,WTF::MediaTime,long long,std::optional<unsigned long long>)::{lambda(WebCore::SharedMemoryHandle &&)#1},void,WebCore::SharedMemoryHandle &>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 96);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v9[0] = *(a1 + 8);
  v9[1] = a2;
  IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetSharedVideoFrameMemory>(v4, v9);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v7);
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetSharedVideoFrameMemory>(uint64_t *a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 136;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v4, a2[1]);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A810;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112A810;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(a4, 0x10);
  *v6 = &unk_1F112A838;
  v6[1] = v5;
  v9 = v6;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = "operator()";
  v8[3] = 0;
  WTF::NativePromiseProducer<BOOL,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v9, v8);
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A838;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112A838;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

IPC::Decoder *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::EncodeFrame,WTF::NativePromise<BOOL,IPC::Error,0u>>(WTF::NativePromise<BOOL,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<BOOL,IPC::Error>>::call@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = *(a1 + 8);
  if (!result)
  {
    v4 = 1;
    goto LABEL_7;
  }

  v4 = 14;
  if (!*result)
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  result = IPC::Decoder::decode<std::tuple<BOOL>>(result);
  v5 = (result & 0x100) == 0;
  if ((result & 0x100) != 0)
  {
    v4 = result;
  }

  else
  {
    v4 = 14;
  }

LABEL_8:
  *a2 = v4;
  a2[1] = v5;
  return result;
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIbN3IPC5ErrorELj0EE11whenSettledIZN6WebKit15LibWebRTCCodecs19encodeFrameInternalIN6webrtc10VideoFrameEEENS_6RefPtrINS2_IvNS_6StringELj0EEENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEERNS8_7EncoderERKT_bN7WebCore18VideoFrameRotationENS_9MediaTimeExNSt3__18optionalIyEEEUlOSM_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESV_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIbS4_EEE_NS_3RefISE_SG_SI_EEJS18_EE4callES18_@<X0>(_BYTE *a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    v2 = "Encoding task did not complete";
    v3 = 31;
  }

  else
  {
    if (*a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = "operator()";
      v8 = 0;
      return WTF::NativePromise<void,WTF::String,0u>::createAndResolve<std::enable_if<true,void>>(a2, &v5, a2);
    }

    v2 = "Encoding task failed";
    v3 = 21;
  }

  *&v9 = v2;
  *(&v9 + 1) = v3;
  v5 = 0;
  v6 = 0;
  v7 = "operator()";
  v8 = 0;
  return WTF::NativePromise<void,WTF::String,0u>::createAndReject<WTF::ASCIILiteral,std::enable_if<true,void>>(&v5, a2, &v9);
}

atomic_ullong *WTF::Detail::CallableWrapper<WTF::RefPtr<WTF::NativePromise<void,WTF::String,0u>,WTF::RawPtrTraits<WTF::NativePromise<void,WTF::String,0u>>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WTF::String,0u>>> WebKit::LibWebRTCCodecs::encodeFrameInternal<WebCore::VideoFrame>(WebKit::LibWebRTCCodecs::Encoder &,WebCore::VideoFrame const&,BOOL,WebCore::VideoFrameRotation,WTF::MediaTime,long long,std::optional<unsigned long long>)::{lambda(WebCore::VideoFrame&)#1},void,IPC::Semaphore &>::call(uint64_t a1, IPC::Semaphore *a2)
{
  v4 = *(*(a1 + 8) + 96);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v9[0] = *(a1 + 8);
  v9[1] = a2;
  IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetSharedVideoFrameSemaphore>(v4, v9);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v7);
}

atomic_ullong *WTF::Detail::CallableWrapper<WTF::RefPtr<WTF::NativePromise<void,WTF::String,0u>,WTF::RawPtrTraits<WTF::NativePromise<void,WTF::String,0u>>,WTF::DefaultRefDerefTraits<WTF::NativePromise<void,WTF::String,0u>>> WebKit::LibWebRTCCodecs::encodeFrameInternal<WebCore::VideoFrame>(WebKit::LibWebRTCCodecs::Encoder &,WebCore::VideoFrame const&,BOOL,WebCore::VideoFrameRotation,WTF::MediaTime,long long,std::optional<unsigned long long>)::{lambda(WebCore::SharedMemoryHandle &&)#1},void,WebCore::SharedMemoryHandle &>::call(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 96);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v9[0] = *(a1 + 8);
  v9[1] = a2;
  IPC::Connection::send<Messages::LibWebRTCCodecsProxy::SetSharedVideoFrameMemory>(v4, v9);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, v7);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIbN3IPC5ErrorELj0EE11whenSettledIZN6WebKit15LibWebRTCCodecs19encodeFrameInternalIN7WebCore10VideoFrameEEENS_6RefPtrINS2_IvNS_6StringELj0EEENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEERNS8_7EncoderERKT_bNSA_18VideoFrameRotationENS_9MediaTimeExNSt3__18optionalIyEEEUlOSM_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESU_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIbS4_EEE_NS_3RefISE_SG_SI_EEJS17_EE4callES17_@<X0>(_BYTE *a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1[1])
  {
    v2 = "Encoding task did not complete";
    v3 = 31;
  }

  else
  {
    if (*a1)
    {
      v5 = 0;
      v6 = 0;
      v7 = "operator()";
      v8 = 0;
      return WTF::NativePromise<void,WTF::String,0u>::createAndResolve<std::enable_if<true,void>>(a2, &v5, a2);
    }

    v2 = "Encoding task failed";
    v3 = 21;
  }

  *&v9 = v2;
  *(&v9 + 1) = v3;
  v5 = 0;
  v6 = 0;
  v7 = "operator()";
  v8 = 0;
  return WTF::NativePromise<void,WTF::String,0u>::createAndReject<WTF::ASCIILiteral,std::enable_if<true,void>>(&v5, a2, &v9);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushEncoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A900;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushEncoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112A900;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushEncoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(a4, 0x10);
  *v6 = &unk_1F112A928;
  v6[1] = v5;
  v9 = v6;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = "operator()";
  v8[3] = 0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v9, v8);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushEncoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A928;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushEncoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112A928;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::FlushEncoder,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::call@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (*v2)
    {
      *a2 = 0;
      return result;
    }

    v3 = 270;
  }

  else
  {
    v3 = 257;
  }

  *a2 = v3;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A950;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F112A950;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(a4, 0x10);
  *v6 = &unk_1F112A978;
  v6[1] = v5;
  v9 = v6;
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = "operator()";
  v8[3] = 0;
  WTF::NativePromiseProducer<void,IPC::Error,0u>::settleWithFunction<std::enable_if<true,void>>((a1 + 8), &v9, v8);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A978;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F112A978;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(WTF::NativePromise<void,IPC::Error,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,IPC::Error>>::call@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2)
  {
    if (*v2)
    {
      *a2 = 0;
      return result;
    }

    v3 = 270;
  }

  else
  {
    v3 = 257;
  }

  *a2 = v3;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::setEncodeRates(WebKit::LibWebRTCCodecs::Encoder &,unsigned int,unsigned int)::$_0,void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F112A9A0;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer((a1 + 48));
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
  }

  return a1;
}

{
  *a1 = &unk_1F112A9A0;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer((a1 + 48));
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), v2);
  }

  return WTF::fastFree(a1, v2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::setEncodeRates(WebKit::LibWebRTCCodecs::Encoder &,unsigned int,unsigned int)::$_0,void>::call(atomic_ullong *result)
{
  if ((*result[3] & 1) == 0)
  {
    v1 = result;
    v2 = 0;
    v3 = result[1];
    v4 = (v3 + 49);
    atomic_compare_exchange_strong_explicit((v3 + 49), &v2, 1u, memory_order_acquire, memory_order_acquire);
    if (v2)
    {
      MEMORY[0x19EB01E30](v3 + 49);
    }

    v5 = *(v3 + 56);
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 1) == 0)
      {
        break;
      }

      v7 = *v5;
      atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_9:
    v24[0] = v1 + 4;
    v24[1] = v1[5];
    IPC::Connection::sendWithPromisedReply<IPC::Connection::NoOpPromiseConverter,Messages::LibWebRTCCodecsProxy::SetEncodeRates,WTF::NativePromise<void,IPC::Error,0u>>(&v25, v5, v24);
    v8 = v25;
    v9 = *(v3 + 88);
    v10 = v1[6];
    v1[6] = 0;
    v11 = *(v1 + 9);
    v22 = *(v1 + 7);
    v23 = v11;
    v21 = 0;
    v30 = v10;
    v31 = *(v1 + 7);
    v32 = *(v1 + 9);
    v13 = WTF::fastMalloc(v12, 0x50);
    while (1)
    {
      v14 = *(v9 + 32);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = *(v9 + 32);
      atomic_compare_exchange_strong_explicit((v9 + 32), &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v15 == v14)
      {
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 32));
LABEL_14:
    v16 = WTF::fastMalloc(v14, 0x30);
    v30 = 0;
    *v16 = &unk_1F112A9C8;
    v16[1] = v10;
    v17 = v32;
    *(v16 + 1) = v31;
    *(v16 + 2) = v17;
    v18 = 1;
    *(v13 + 2) = 1;
    v13[2] = v9 + 24;
    *(v13 + 3) = 0uLL;
    v13[5] = "operator()";
    v13[6] = 0;
    *(v13 + 28) = 0;
    *v13 = &unk_1F1129CC0;
    v13[8] = 0;
    v13[9] = v16;
    atomic_fetch_add(v8 + 2, 1u);
    v26[0] = v8;
    v26[1] = v13;
    v27 = 0uLL;
    v28 = "operator()";
    v29 = 0;
    WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(&v30);
    WTF::NativePromise<void,IPC::Error,0u>::ThenCommand<WTF::NativePromise<void,IPC::Error,0u>::ThenCallback<false,void>>::~ThenCommand(v26);
    WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(&v21);
    v20 = v25;
    v25 = 0;
    if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20 + 2);
      (*(*v20 + 16))(v20);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5, v19);
    atomic_compare_exchange_strong_explicit(v4, &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 != 1)
    {
      return WTF::Lock::unlockSlow(v4);
    }
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN3IPC5ErrorELj0EE11whenSettledIZZN6WebKit15LibWebRTCCodecs14setEncodeRatesERNS8_7EncoderEjjEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESD_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSQ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F112A9C8;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN3IPC5ErrorELj0EE11whenSettledIZZN6WebKit15LibWebRTCCodecs14setEncodeRatesERNS8_7EncoderEjjEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESD_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSQ_EED0Ev(atomic_uint **a1)
{
  *a1 = &unk_1F112A9C8;
  WTF::NativePromiseProducer<void,void,16u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvN3IPC5ErrorELj0EE11whenSettledIZZN6WebKit15LibWebRTCCodecs14setEncodeRatesERNS8_7EncoderEjjEN3__0clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESD_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvS4_EEE_vJSQ_EE4callESQ_(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[2] = "operator()";
  v2[3] = 0;
  return WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>((a1 + 8), v2);
}

void *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::gpuProcessConnectionDidClose(WebKit::GPUProcessConnection &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112A9F0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::gpuProcessConnectionDidClose(WebKit::GPUProcessConnection &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112A9F0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::LibWebRTCCodecs::gpuProcessConnectionDidClose(WebKit::GPUProcessConnection &)::$_0,void>::call(atomic_uint *result, bmalloc::api *a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 1);
  atomic_compare_exchange_strong_explicit((v4 + 49), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    result = MEMORY[0x19EB01E30](v4 + 49, a2);
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v5 - 1);
    v7 = &v5[2 * v6];
    if (*(v5 - 3))
    {
      if (v6)
      {
        v8 = 16 * v6;
        v9 = *(v4 + 24);
        while ((*v9 + 1) <= 1)
        {
          v9 += 2;
          v8 -= 16;
          if (!v8)
          {
            v9 = v7;
            goto LABEL_15;
          }
        }
      }

      else
      {
        v9 = *(v4 + 24);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = v7;
  v7 = &v5[2 * v6];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_16;
  }

LABEL_15:
  v10 = &v5[2 * *(v5 - 1)];
LABEL_16:
  while (v9 != v10)
  {
    v11 = v9[1];
    v12 = *(v2 + 3);
    v13 = *(v4 + 126);
    v14 = *(v4 + 128);
    v15 = WTF::fastMalloc(v5, 0x10);
    *v15 = &unk_1F112AA18;
    v61 = v15;
    WebKit::createRemoteDecoder(v11, v12, v13, v14, &v61);
    if (v61)
    {
      (*(*v61 + 8))(v61);
    }

    v17 = v9[1];
    v18 = *(v2 + 3);
    if (v18)
    {
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
          goto LABEL_24;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
    }

LABEL_24:
    v61 = v18;
    WebKit::LibWebRTCCodecs::setDecoderConnection(v4, v17, &v61, v16);
    result = v61;
    if (v61)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v61, v21);
    }

    do
    {
      v9 += 2;
      if (v9 == v7)
      {
        break;
      }

      v5 = (*v9 + 1);
    }

    while (v5 <= 1);
  }

  v22 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 49), &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    result = WTF::Lock::unlockSlow((v4 + 49));
  }

  v23 = *(v4 + 40);
  if (v23)
  {
    v24 = *(v23 - 4);
    v25 = (v23 + 16 * v24);
    if (*(v23 - 12))
    {
      if (v24)
      {
        v26 = 16 * v24;
        v27 = *(v4 + 40);
        while ((*v27 + 1) <= 1)
        {
          v27 += 2;
          v26 -= 16;
          if (!v26)
          {
            v27 = v25;
            goto LABEL_43;
          }
        }
      }

      else
      {
        v27 = *(v4 + 40);
      }

      goto LABEL_43;
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v27 = v25;
  v25 = (v23 + 16 * v24);
  if (!v23)
  {
    v28 = 0;
    goto LABEL_44;
  }

LABEL_43:
  v28 = (v23 + 16 * *(v23 - 4));
LABEL_44:
  while (v27 != v28)
  {
    v29 = v27[1];
    *(v29 + 129) = 1;
    result = MEMORY[0x19EB16320](*(*(v29 + 104) + 4));
    do
    {
      v27 += 2;
    }

    while (v27 != v25 && (*v27 + 1) <= 1);
  }

  v30 = 0;
  v31 = (v4 + 32);
  atomic_compare_exchange_strong_explicit((v4 + 32), &v30, 1u, memory_order_acquire, memory_order_acquire);
  if (v30)
  {
    result = MEMORY[0x19EB01E30](v4 + 32);
  }

  v32 = *(v4 + 40);
  if (v32)
  {
    v33 = *(v32 - 4);
    v34 = v32 + 16 * v33;
    if (*(v32 - 12))
    {
      if (v33)
      {
        v35 = 16 * v33;
        v36 = *(v4 + 40);
        while ((*v36 + 1) <= 1)
        {
          v36 += 2;
          v35 -= 16;
          if (!v35)
          {
            v36 = v34;
            goto LABEL_63;
          }
        }
      }

      else
      {
        v36 = *(v4 + 40);
      }

      goto LABEL_63;
    }
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  v36 = v34;
  v34 = v32 + 16 * v33;
  if (!v32)
  {
    v37 = 0;
    goto LABEL_64;
  }

LABEL_63:
  v37 = v32 + 16 * *(v32 - 4);
LABEL_64:
  while (v36 != v37)
  {
    v38 = v36[1];
    v39 = *(v2 + 3);
    v40 = WTF::fastMalloc(v32, 0x10);
    *v40 = &unk_1F112AA40;
    v61 = v40;
    WebKit::createRemoteEncoder(v38, v39, v38 + 24, &v61);
    if (v61)
    {
      (*(*v61 + 8))(v61);
    }

    v42 = v36[1];
    if (*(v42 + 60) == 1)
    {
      v43 = *(v2 + 3);
      v44 = *(v42 + 40);
      v45 = *(v42 + 56);
      v61 = v36[1];
      LODWORD(v62) = v44;
      v63 = (v42 + 44);
      v64 = v42 + 48;
      v65 = v42 + 52;
      v66 = v45;
      IPC::Connection::send<Messages::LibWebRTCCodecsProxy::InitializeEncoder>(v43, &v61);
      v42 = v36[1];
    }

    v46 = *(v2 + 3);
    if (v46)
    {
      while (1)
      {
        v47 = *v46;
        if ((*v46 & 1) == 0)
        {
          break;
        }

        v48 = *v46;
        atomic_compare_exchange_strong_explicit(v46, &v48, v47 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v48 == v47)
        {
          goto LABEL_74;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v46);
    }

LABEL_74:
    v49 = *(v42 + 96);
    *(v42 + 96) = v46;
    if (v49)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v49, v41);
    }

    WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter(&v61, v41);
    v50 = v36[1];
    v51 = v61;
    v61 = 0;
    std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100]((v50 + 104), v51);
    v52 = v62;
    v62 = 0;
    v53 = *(v50 + 112);
    *(v50 + 112) = v52;
    if (v53)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v53);
    }

    v54 = *(v50 + 120);
    v55 = v63;
    v63 = 0;
    *(v50 + 120) = v55;
    if (v54)
    {
      std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v50 + 120, v54);
      v56 = v63;
      *(v50 + 128) = v64;
      v32 = BYTE2(v64);
      *(v50 + 130) = BYTE2(v64);
      v63 = 0;
      if (v56)
      {
        std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](&v63, v56);
      }
    }

    else
    {
      *(v50 + 128) = v64;
      v32 = BYTE2(v64);
      *(v50 + 130) = BYTE2(v64);
      v63 = 0;
    }

    result = v62;
    v62 = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    }

    v57 = v61;
    v61 = 0;
    if (v57)
    {
      IPC::Semaphore::destroy(v57);
      WTF::MachSendRight::~MachSendRight(v57);
      result = bmalloc::api::tzoneFree(v58, v59);
    }

    do
    {
      v36 += 2;
      if (v36 == v34)
      {
        break;
      }

      v32 = *v36 + 1;
    }

    while (v32 <= 1);
  }

  v60 = 1;
  atomic_compare_exchange_strong_explicit(v31, &v60, 0, memory_order_release, memory_order_relaxed);
  if (v60 != 1)
  {
    return WTF::Lock::unlockSlow(v31);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<void WTF::NativePromise<void,WTF::String,0u>::chainTo<void,WTF::String,16u>(WTF::NativePromiseProducer<void,WTF::String,16u> &&,WTF::Logger::LogSiteIdentifier const&)::{lambda(void&&)#1},void,std::experimental::fundamentals_v3::expected<void,WTF::String> &&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112AA68;
  WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::NativePromise<void,WTF::String,0u>::chainTo<void,WTF::String,16u>(WTF::NativePromiseProducer<void,WTF::String,16u> &&,WTF::Logger::LogSiteIdentifier const&)::{lambda(void&&)#1},void,std::experimental::fundamentals_v3::expected<void,WTF::String> &&>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F112AA68;
  WTF::NativePromiseProducer<void,WTF::String,16u>::~NativePromiseProducer(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

WTF::Lock *WTF::Detail::CallableWrapper<void WTF::NativePromise<void,WTF::String,0u>::chainTo<void,WTF::String,16u>(WTF::NativePromiseProducer<void,WTF::String,16u> &&,WTF::Logger::LogSiteIdentifier const&)::{lambda(void&&)#1},void,std::experimental::fundamentals_v3::expected<void,WTF::String> &&>::call(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = "operator()";
    v9 = 0;
    return WTF::NativePromiseProducer<void,WTF::String,16u>::reject<WTF::String,std::enable_if<true,void>>((a1 + 8), a2, &v6);
  }

  v6 = 0;
  v7 = 0;
  v8 = "operator()";
  v9 = 0;
  isNothing = WTF::NativePromiseProducer<void,WTF::String,16u>::isNothing(*(a1 + 8));
  v5 = *(a1 + 8);
  if (isNothing)
  {
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
      result = WTF::NativePromise<void,WTF::String,0u>::resolve<std::enable_if<true,void>>(v5, &v6);
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
LABEL_15:
        atomic_store(1u, v5 + 2);
        return (*(*v5 + 16))(v5);
      }
    }

    else
    {
      return WTF::NativePromise<void,WTF::String,0u>::resolve<std::enable_if<true,void>>(0, &v6);
    }
  }

  else
  {
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
    }

    result = WTF::NativePromiseBase::logChannel(isNothing);
    if (*result && *(result + 16) >= 4u)
    {
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,WTF::String,0u>>(result, &v6, v5);
    }

    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      goto LABEL_15;
    }
  }

  return result;
}

atomic_uint ***WTF::NativePromise<void,WTF::String,0u>::ThenCallback<false,void>::~ThenCallback(atomic_uint ***a1)
{
  *a1 = &unk_1F112AA90;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100](a1 + 8, 0);
  *a1 = &unk_1F112AAC0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(v3 + 1);
  }

  return a1;
}

uint64_t WTF::NativePromise<void,WTF::String,0u>::ThenCallback<false,void>::~ThenCallback(atomic_uint ***a1)
{
  *a1 = &unk_1F112AA90;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100](a1 + 8, 0);
  *a1 = &unk_1F112AAC0;
  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,WTF::String,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
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

uint64_t WTF::NativePromise<void,WTF::String,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
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

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          v22 = WTF::fastFree(v22, v23);
        }

        else
        {
          --*v22;
        }
      }
    }

    if (*v9 && v9[16] >= 4u)
    {
      v25 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v26 = *v25;
        if (v26)
        {
          break;
        }

        v27 = *v25;
        atomic_compare_exchange_strong_explicit(v25, &v27, v26 | 1, memory_order_acquire, memory_order_acquire);
        if (v27 == v26)
        {
          v28 = WTF::Logger::observers(v22);
          v29 = *(v28 + 12);
          if (v29)
          {
            v30 = *v28;
            v31 = *v28 + 8 * v29;
            do
            {
              v32 = *v30;
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
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
              for (i = 120; i != -8; i -= 16)
              {
                v35 = *&buf[i];
                *&buf[i] = 0;
                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }

              ++v30;
            }

            while (v30 != v31);
          }

          v36 = 1;
          atomic_compare_exchange_strong_explicit(v25, &v36, 0, memory_order_release, memory_order_relaxed);
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeapProxyProcessor::clearCallbacks(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112AAF0;
  v3 = a1[1];
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeapProxyProcessor::clearCallbacks(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112AAF0;
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::deallocateTable(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeapProxyProcessor::clearCallbacks(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 - 4);
    v3 = v1 + 16 * v2;
    if (*(v1 - 12))
    {
      if (v2)
      {
        v4 = 16 * v2;
        v5 = *(a1 + 8);
        while ((*v5 + 1) <= 1)
        {
          v5 += 16;
          v4 -= 16;
          if (!v4)
          {
            v5 = v3;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v5 = *(a1 + 8);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v5 = v3;
  v3 = v1 + 16 * v2;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v6 = v1 + 16 * *(v1 - 4);
LABEL_14:
  while (v5 != v6)
  {
    cf = 0;
    (*(**(v5 + 8) + 16))(*(v5 + 8), &cf);
    v7 = cf;
    cf = 0;
    if (v7)
    {
      CFRelease(v7);
    }

    do
    {
      v5 += 16;
    }

    while (v5 != v3 && (*v5 + 1) <= 1);
  }
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc(a3, (16 * a2 + 16));
  v10 = v8;
  v11 = v8 + 2;
  if (v3)
  {
    bzero(v8 + 2, 16 * v3);
  }

  *a1 = v11;
  *(v10 + 2) = v3 - 1;
  *(v10 + 3) = v3;
  *v10 = 0;
  *(v10 + 1) = v7;
  if (v6)
  {
    v12 = 0;
    v13 = v6;
    while (1)
    {
      v14 = (v5 + 16 * v12);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = v22;
            v25 = *(v17 + 16 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (v25);
          v26 = (v17 + 16 * v24);
          v27 = v26[1];
          v26[1] = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          *v26 = *v14;
          v28 = v14[1];
          v14[1] = 0;
          v26[1] = v28;
          v16 = v14[1];
          v14[1] = 0;
          if (!v16)
          {
            goto LABEL_21;
          }

LABEL_20:
          (*(*v16 + 8))(v16);
          goto LABEL_21;
        }

        v16 = v14[1];
        v14[1] = 0;
        if (v16)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      if (++v12 == v13)
      {
        goto LABEL_24;
      }
    }
  }

  if (v5)
  {
LABEL_24:

    WTF::fastFree((v5 - 16), v9);
  }
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if (*a1 && (a2 = *(v2 - 1), a2))
  {
    v3 = (a2 << (6 * *(v2 - 3) >= (2 * a2)));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::KeyValuePairKeyExtractor<WTF::Function<void ()(WTF::RetainPtr<__CVBuffer *> &&)>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,void ()(WTF::RetainPtr<__CVBuffer *> &&),WTF::DefaultHash,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<void ()(WTF::RetainPtr<__CVBuffer *> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(a1, v3, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getNativeImage(WebCore::VideoFrame const&)::$_0,void,IPC::Semaphore &>::call(uint64_t a1, void *a2)
{
  v3 = **(a1 + 8);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1679;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v4, a2);
  IPC::Connection::sendMessageImpl(v3, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getNativeImage(WebCore::VideoFrame const&)::$_1,void,WebCore::SharedMemoryHandle &&>::call(uint64_t a1, void *a2)
{
  v3 = **(a1 + 8);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1678;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v4, a2);
  IPC::Connection::sendMessageImpl(v3, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WebKit::SampleBufferDisplayLayer::SampleBufferDisplayLayer(uint64_t a1, atomic_uint *volatile *a2, unint64_t a3)
{
  *a1 = &unk_1F112AE60;
  *(a1 + 8) = 3;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
  v6 = *(a3 + 8);
  atomic_fetch_add(v6, 1u);
  *(a1 + 16) = v6;
  *(a1 + 24) = &unk_1F10EA5E0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_1F112AF00;
  IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *a1 = &unk_1F112AB68;
  *(a1 + 24) = &unk_1F112AC38;
  *(a1 + 40) = &unk_1F112AC80;
  *(a1 + 48) = IdentifierInternal;
  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v25 = WebKit::WebProcess::operator new(0x370, v8);
    v9 = WebKit::WebProcess::WebProcess(v25);
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = WebKit::WebProcess::ensureGPUProcessConnection(v9);
  *(a1 + 56) = v10;
  v12 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::controlBlock(v10 + 3, v11);
  *(a1 + 64) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v12);
  if (!*a2)
  {
    v14 = WTF::fastCompactMalloc(0x10);
    *v14 = 1;
    *(v14 + 8) = a2;
    v15 = *a2;
    *a2 = v14;
    if (v15)
    {
      if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v13);
      }
    }
  }

  v16 = *a2;
  atomic_fetch_add(*a2, 1u);
  *(a1 + 72) = v16;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v26, *(a1 + 64), *(a1 + 56));
  v18 = *(v26[0] + 32);
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
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
LABEL_12:
  *(a1 + 80) = v18;
  v21 = v26[0];
  v26[0] = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v21 + 24), v17);
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter((a1 + 104), v17);
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  v27 = *(a1 + 48);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::SampleBufferDisplayLayer&>(a2 + 3, &v27, a1, v26);
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v26, *(a1 + 64), *(a1 + 56));
  WTF::ThreadSafeWeakHashSet<WebKit::GPUProcessConnection::Client>::add<WebKit::GPUProcessConnection::Client>((v26[0] + 184), (a1 + 40));
  v23 = v26[0];
  v26[0] = 0;
  if (v23)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v23 + 24), v22);
  }

  return a1;
}

uint64_t WebKit::SampleBufferDisplayLayer::initialize(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  v31 = a3;
  v9 = *(a1 + 80);
  v25 = *(a1 + 48);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      LOBYTE(v11) = (*(*v11 + 40))(v11);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v26 = &v25;
  v27[0] = a2;
  v28 = &v31;
  v29 = a4;
  v30[0] = v11;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 32), a1 + 24);
  v12 = *(a1 + 32);
  add = atomic_fetch_add(v12, 1u);
  v14 = *a5;
  *a5 = 0;
  v15 = WTF::fastMalloc(add, 0x18);
  *v15 = &unk_1F112B048;
  v15[1] = v12;
  v15[2] = v14;
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
    *v19 = 1604;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = 0;
    IPC::Encoder::encodeHeader(v19);
    v33 = v19;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, *v26);
    IPC::Encoder::operator<<<BOOL &>(v19, v27);
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v19, v28);
    IPC::Encoder::operator<<<BOOL &>(v19, &v29);
    IPC::Encoder::operator<<<BOOL &>(v19, v30);
    v32[0] = v16;
    v32[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v9, &v33, v32, 0, 0);
    v21 = v32[0];
    v32[0] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    result = v33;
    v33 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v20);
      return bmalloc::api::tzoneFree(v23, v24);
    }
  }

  return result;
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::setLogIdentifier(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  v3 = *(this + 10);
  v4 = *(this + 6);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 1612;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void WebKit::SampleBufferDisplayLayer::~SampleBufferDisplayLayer(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  v3 = *(this + 10);
  v4 = *(this + 6);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 1605;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = 0;
  IPC::Encoder::encodeHeader(v5);
  v39 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, v4);
  IPC::Connection::sendMessageImpl(v3, &v39, 0, 0);
  v7 = v39;
  v39 = 0;
  if (v7)
  {
    IPC::Encoder::~Encoder(v7, v6);
    bmalloc::api::tzoneFree(v21, v22);
  }

  v8 = *(this + 9);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      WebKit::SampleBufferDisplayLayerManager::ref(*(v8 + 8), v6);
      v12 = (v9 + 3);
      v11 = v9[3];
      if (v11)
      {
        v13 = *(this + 6);
        if (v13 == -1 || !v13)
        {
          __break(0xC471u);
          JUMPOUT(0x19E2D1CF8);
        }

        v14 = *(v11 - 2);
        v15 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
        v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
        v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
        v18 = v14 & ((v17 >> 31) ^ v17);
        v19 = v11[2 * v18];
        if (v19 != v13)
        {
          v20 = 1;
          while (v19)
          {
            v18 = (v18 + v20) & v14;
            v19 = v11[2 * v18];
            ++v20;
            if (v19 == v13)
            {
              goto LABEL_14;
            }
          }

          v18 = *(v11 - 1);
        }

LABEL_14:
        if (v18 != *(v11 - 1))
        {
          v23 = &v11[2 * v18];
          v24 = v23[1];
          *v23 = -1;
          v23[1] = 0;
          if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v24);
            WTF::fastFree(v24, v10);
          }

          v25 = *v12;
          v26 = vadd_s32(*(*v12 - 16), 0xFFFFFFFF00000001);
          *(v25 - 16) = v26;
          v27 = *(v25 - 4);
          if (6 * v26.i32[1] < v27 && v27 >= 9)
          {
            WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v9 + 3, v27 >> 1, 0, v27);
          }
        }
      }

      WebKit::SampleBufferDisplayLayerManager::deref(v9);
    }
  }

  if (*(this + 160) == 1)
  {
    v29 = *(this + 19);
    *(this + 19) = 0;
    if (v29)
    {
      WTF::fastFree(v29, v6);
    }

    WTF::MachSendRight::~MachSendRight((this + 144));
  }

  v30 = *(this + 15);
  *(this + 15) = 0;
  if (v30)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 120, v30);
  }

  v31 = *(this + 14);
  *(this + 14) = 0;
  if (v31)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v31);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 13, 0);
  v33 = *(this + 11);
  *(this + 11) = 0;
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(this + 10);
  *(this + 10) = 0;
  if (v34)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v34, v32);
  }

  v35 = *(this + 9);
  *(this + 9) = 0;
  if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v35);
    WTF::fastFree(v35, v32);
  }

  v36 = *(this + 8);
  *(this + 8) = 0;
  if (v36)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v36, v32);
  }

  *(this + 3) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, v32);
  *this = &unk_1F112AE60;
  v38 = *(this + 2);
  *(this + 2) = 0;
  if (v38)
  {
    if (atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v38);
      WTF::fastFree(v38, v37);
    }
  }
}

{
  WebKit::SampleBufferDisplayLayer::~SampleBufferDisplayLayer(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::SampleBufferDisplayLayer::~SampleBufferDisplayLayer(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  WebKit::SampleBufferDisplayLayer::~SampleBufferDisplayLayer((this - 24), a2);
}

{
  WebKit::SampleBufferDisplayLayer::~SampleBufferDisplayLayer((this - 40), a2);
}

{
  WebKit::SampleBufferDisplayLayer::~SampleBufferDisplayLayer((this - 24), a2);

  WTF::fastFree(v2, v3);
}

{
  WebKit::SampleBufferDisplayLayer::~SampleBufferDisplayLayer((this - 40), a2);

  WTF::fastFree(v2, v3);
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::updateDisplayMode(WebKit::SampleBufferDisplayLayer *this, void *a2, char a3)
{
  v3 = *(this + 10);
  v10 = a2;
  v11 = a3;
  v4 = *(this + 6);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 1616;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  IPC::Encoder::operator<<<BOOL &>(v5, &v10);
  IPC::Encoder::operator<<<BOOL &>(v5, &v11);
  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::updateBoundsAndPosition(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  v8 = *(a1 + 80);
  v9 = *(a1 + 48);
  WebCore::FloatRect::FloatRect(v17, &v18);
  v10 = *(a1 + 48);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 55;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v10;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v19 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, v9);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v12, v17);
  IPC::ArgumentCoder<std::optional<WTF::MachSendRightAnnotated>,void>::encode<IPC::Encoder,std::optional<WTF::MachSendRightAnnotated> const&>(v12, a2);
  IPC::Connection::sendMessageImpl(v8, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::flush(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 6);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1608;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::flushAndRemoveImage(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 6);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1609;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::play(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  *(this + 97) = 0;
  v2 = *(this + 10);
  v3 = *(this + 6);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1611;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::pause(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  *(this + 97) = 1;
  v2 = *(this + 10);
  v3 = *(this + 6);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1610;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void WebKit::SampleBufferDisplayLayer::enqueueBlackFrameFrom(WebKit::SampleBufferDisplayLayer *this, const WebCore::VideoFrame *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v10 = v5;
  v11 = BYTE4(v5);
  v12 = 0;
  v13 = *(a2 + 17);
  v14 = v4;
  v15 = 3;
  v7 = *(this + 10);
  v8 = &v9;
  v9 = v6;
  IPC::Connection::send<Messages::RemoteSampleBufferDisplayLayer::EnqueueVideoFrame>(v7, &v8, *(this + 6));
  if (v15 == 2)
  {
    WTF::MachSendRight::~MachSendRight(&v14);
  }
}

void WebKit::SampleBufferDisplayLayer::enqueueVideoFrame(WebKit::SampleBufferDisplayLayer *this, WebCore::VideoFrame *a2)
{
  v2 = *(this + 97);
  if ((v2 & 1) == 0)
  {
    v5 = WTF::fastMalloc(v2, 0x10);
    *v5 = &unk_1F112B070;
    v5[1] = this;
    v10 = v5;
    v7 = WTF::fastMalloc(v6, 0x10);
    *v7 = &unk_1F112B098;
    v7[1] = this;
    v9 = v7;
    WebKit::SharedVideoFrameWriter::write(this + 104, a2, &v10, &v9, v11);
    (*(*v7 + 8))(v7);
    (*(*v5 + 8))(v5);
    if (v13 == 1)
    {
      v8 = *(this + 10);
      v10 = v11;
      IPC::Connection::send<Messages::RemoteSampleBufferDisplayLayer::EnqueueVideoFrame>(v8, &v10, *(this + 6));
      if ((v13 & 1) != 0 && v12[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v12);
      }
    }
  }
}

void WebKit::SharedVideoFrameWriter::write(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  WebKit::SharedVideoFrameWriter::writeBuffer(a1, a2, a3, a4, v10);
  if (v11 == 1)
  {
    *&v7 = *(a2 + 16);
    DWORD2(v7) = *(a2 + 24);
    BYTE12(v7) = BYTE4(*(a2 + 24));
    LOBYTE(v8) = *(a2 + 32);
    HIWORD(v8) = *(a2 + 34);
    mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant(v9, v10);
    *a5 = v7;
    *(a5 + 16) = v8;
    mpark::variant<decltype(nullptr),IPC::ObjectIdentifierReadReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::MachSendRight,WebCore::IntSize>::variant((a5 + 24), v9);
    *(a5 + 48) = 1;
    if (v9[16] == 2)
    {
      WTF::MachSendRight::~MachSendRight(v9);
    }

    if ((v11 & 1) != 0 && v10[16] == 2)
    {
      WTF::MachSendRight::~MachSendRight(v10);
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 48) = 0;
  }
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::clearVideoFrames(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 6);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1606;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WebKit::SampleBufferDisplayLayer::rootLayer(WebKit::SampleBufferDisplayLayer *this, unsigned int a2)
{
  result = *(this + 11);
  if (!result)
  {
    if (*(this + 160) == 1)
    {
      WebKit::LayerHostingContext::createPlatformLayerForHostingContext(&cf, *(this + 34));
      v4 = cf;
      cf = 0;
      v5 = *(this + 11);
      *(this + 11) = v4;
      if (v5)
      {
        CFRelease(v5);
        v6 = cf;
        cf = 0;
        if (v6)
        {
          CFRelease(v6);
        }
      }

      return *(this + 11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::SampleBufferDisplayLayer::setDidFail(uint64_t this, char a2)
{
  *(this + 96) = a2;
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = this;
      (**v3)(v3);
      if (*(v4 + 96) == 1)
      {
        (*(*v3 + 32))(v3);
      }

      v5 = *(*v3 + 8);

      return v5(v3);
    }
  }

  return this;
}

uint64_t WebKit::SampleBufferDisplayLayer::gpuProcessConnectionDidClose(uint64_t a1)
{
  *(a1 + 129) = 1;
  MEMORY[0x19EB16320](*(*(a1 + 104) + 4));

  return WebKit::SampleBufferDisplayLayer::setDidFail(a1, 1);
}

uint64_t non-virtual thunk toWebKit::SampleBufferDisplayLayer::gpuProcessConnectionDidClose(uint64_t a1)
{
  v1 = a1 - 40;
  *(a1 + 89) = 1;
  MEMORY[0x19EB16320](*(*(a1 + 64) + 4));

  return WebKit::SampleBufferDisplayLayer::setDidFail(v1, 1);
}

IPC::Encoder *WebKit::SampleBufferDisplayLayer::setShouldMaintainAspectRatio(WebKit::SampleBufferDisplayLayer *this, void *a2)
{
  v2 = *(this + 10);
  v9 = a2;
  v3 = *(this + 6);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 1615;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL &>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

atomic_ullong *WebKit::SampleBufferDisplayLayerManager::didReceiveLayerMessage(atomic_ullong *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v5 = *(a3 + 7);
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15[5] = v3;
    v15[6] = v4;
    v14 = v5;
    this = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 3, &v14, v15);
    if (v15[0])
    {
      v9 = *(v15[0] + 1);
      if (v9)
      {
        v10 = (v9 - 24);
        while (1)
        {
          v11 = *(v9 - 16);
          if ((v11 & 1) == 0)
          {
            break;
          }

          v12 = *(v9 - 16);
          atomic_compare_exchange_strong_explicit((v9 - 16), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v12 == v11)
          {
            goto LABEL_10;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 - 16));
      }

      else
      {
        v10 = 0;
      }

LABEL_10:
      this = v15[0];
      v15[0] = 0;
      if (this && atomic_fetch_add(this, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this);
        this = WTF::fastFree(this, v8);
        if (!v10)
        {
          return this;
        }
      }

      else if (!v10)
      {
        return this;
      }

      this = WebKit::SampleBufferDisplayLayer::didReceiveMessage(v10, a2, a3);
      if (v9)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v10 + 1, v13);
      }
    }
  }

  return this;
}

uint64_t **WebKit::SampleBufferDisplayLayerManager::createLayer@<X0>(atomic_uint *volatile *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(a3, 0xA8);
  v9 = *(WebKit::SampleBufferDisplayLayer::SampleBufferDisplayLayer(v6, a1, a2) + 48);
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::SampleBufferDisplayLayer&>(a1 + 3, &v9, v6, v8);
  *a3 = v6;
  return result;
}

uint64_t **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::SampleBufferDisplayLayer&>@<X0>(uint64_t **result@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D2AC8);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0, v5);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 2);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = &v9[2 * v14];
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v23 = 0;
        v24 = &v9[2 * *(v9 - 1)];
        goto LABEL_26;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = &v9[2 * v14];
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 4);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 32), a3 + 24);
  v20 = *(a3 + 32);
  atomic_fetch_add(v20, 1u);
  result = v15[1];
  v15[1] = v20;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v19);
  }

  v21 = *v8;
  if (*v8)
  {
    v22 = *(v21 - 3) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 3) = v22;
  v25 = (*(v21 - 4) + v22);
  v26 = *(v21 - 1);
  if (v26 > 0x400)
  {
    if (v26 <= 2 * v25)
    {
LABEL_22:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::FileSystemStorageHandle,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15, v21);
      v15 = result;
      v21 = *v8;
      if (*v8)
      {
        v26 = *(v21 - 1);
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_22;
  }

  v24 = &v21[2 * v26];
  v23 = 1;
LABEL_26:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

atomic_ullong *WebKit::SampleBufferDisplayLayerManager::ref(WebKit::SampleBufferDisplayLayerManager *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v8, v3, *(this + 1));
    v4 = v8;
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  while (1)
  {
    v5 = *(v4 + 24);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(v4 + 24);
    atomic_compare_exchange_strong_explicit((v4 + 24), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      v8 = 0;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), a2);
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 24));
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), a2);
  }

  return result;
}

atomic_ullong *WebKit::SampleBufferDisplayLayerManager::deref(WebKit::SampleBufferDisplayLayerManager *this)
{
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v5, *(this + 2), *(this + 1));
  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v5 + 24), v1);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref((v4 + 24), v3);
  }

  return result;
}

uint64_t WebKit::createRemoteAudioMediaStreamTrackRendererInternalUnitProxy@<X0>(atomic_uint **a1@<X0>, atomic_ullong *a2@<X1>, void *a3@<X8>)
{
  if (WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::operatorNewSlow(0);
  }

  v7 = NonCompact;
  *NonCompact = &unk_1F112AF48;
  NonCompact[1] = 3;
  v8 = NonCompact + 1;
  NonCompact[2] = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *v7 = &unk_1F112ACC8;
  v9 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v7[3] = v9;
  v7[4] = a2;
  v10 = a2[1];
  if (v10)
  {
    v10 = WTF::fastMalloc(v9, 0x20);
    *v10 = 0;
    *(v10 + 8) = xmmword_19E7014F0;
    *(v10 + 24) = a2;
    while (1)
    {
      v36 = a2[1];
      if ((v36 & 1) == 0)
      {
        break;
      }

      *(v10 + 8) = v36 >> 1;
      v37 = v36;
      atomic_compare_exchange_strong_explicit(a2 + 1, &v37, v10, memory_order_release, memory_order_relaxed);
      if (v37 == v36)
      {
        goto LABEL_6;
      }
    }

    WTF::fastFree(v10, v35);
    v10 = a2[1];
  }

LABEL_6:
  v7[5] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v10);
  *(v7 + 88) = 0;
  *(v7 + 168) = 0;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 80) = 0;
  *(v7 + 11) = 0u;
  *(v7 + 12) = 0u;
  *(v7 + 13) = 0u;
  *(v7 + 218) = 0u;
  {
    v12 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v38 = WebKit::WebProcess::operator new(0x370, v11);
    v12 = WebKit::WebProcess::WebProcess(v38);
    WebKit::WebProcess::singleton(void)::process = v12;
  }

  v13 = WebKit::WebProcess::audioMediaStreamTrackRendererInternalUnitManager(v12, v11);
  v15 = v7[2];
  if (v15 == -1 || !v15)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D2EA8);
  }

  v16 = v13;
  v17 = *v13;
  if (!*v13)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v13, 0);
    v17 = *v16;
  }

  v18 = *(v17 - 2);
  v19 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
  v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
  v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
  v22 = v18 & ((v21 >> 31) ^ v21);
  v23 = &v17[3 * v22];
  v24 = *v23;
  if (!*v23)
  {
LABEL_20:
    *v23 = v15;
    v27 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v8, v17);
    v28 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v27);
    v29 = v23[2];
    v23[2] = v28;
    if (v29)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v29, v14);
    }

    v23[1] = v7;
    v30 = *v16;
    if (*v16)
    {
      v31 = *(v30 - 3) + 1;
    }

    else
    {
      v31 = 1;
    }

    *(v30 - 3) = v31;
    v32 = (*(v30 - 4) + v31);
    v33 = *(v30 - 1);
    if (v33 > 0x400)
    {
      if (v33 > 2 * v32)
      {
        goto LABEL_28;
      }
    }

    else if (3 * v33 > 4 * v32)
    {
      goto LABEL_28;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v16, v23);
    goto LABEL_28;
  }

  v25 = 0;
  v26 = 1;
  while (v24 != v15)
  {
    if (v24 == -1)
    {
      v25 = v23;
    }

    v22 = (v22 + v26) & v18;
    v23 = &v17[3 * v22];
    v24 = *v23;
    ++v26;
    if (!*v23)
    {
      if (v25)
      {
        *v25 = 0;
        v25[1] = 0;
        v25[2] = 0;
        v17 = *v16;
        --*(*v16 - 4);
        v23 = v25;
      }

      goto LABEL_20;
    }
  }

LABEL_28:
  result = WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(v7, v14);
  *a3 = v7;
  return result;
}

atomic_uchar *WebKit::AudioMediaStreamTrackRendererInternalUnitManager::reset(atomic_uchar *a1, uint64_t a2)
{
  v8 = a2;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v8, &v6);
  result = v7;
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v5, v7, v6);
    if (v5)
    {
      WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::reset(v5, 0);
      v4 = v5;
      v5 = 0;
      if (v4)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>::deref((v4 + 8), v3);
      }
    }

    result = v7;
    v7 = 0;
    if (result)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v3);
    }
  }

  return result;
}

atomic_uchar *WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::reset(uint64_t a1, char a2)
{
  WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::stopThread(a1);
  *(a1 + 233) = a2;
  result = *(a1 + 40);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v7, result, *(a1 + 32));
    result = v7;
    if (v7)
    {
      result = (*(*v7 + 3))(v7);
      v6 = v7;
      v7 = 0;
      if (v6)
      {
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref(v6 + 1, v4);
      }
    }
  }

  if (*(a1 + 80) == 1)
  {
    return WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::start(a1, v4);
  }

  return result;
}

void *WebKit::AudioMediaStreamTrackRendererInternalUnitManager::restartAllUnits(WebKit::AudioMediaStreamTrackRendererInternalUnitManager *this)
{
  v13 = *this;
  *this = 0;
  v2 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&v13);
  v3 = v1;
  result = v13;
  if (v13)
  {
    v5 = &v13[3 * *(v13 - 1)];
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v2)
  {
    do
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[1];
        v8 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
        if (v8)
        {
          v9 = v8;
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(&v12, v8, v7);
          if (v12)
          {
            WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::reset(v12, 1);
            v11 = v12;
            v12 = 0;
            if (v11)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>::deref((v11 + 8), v10);
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, v10);
        }
      }

      do
      {
        v2 += 3;
      }

      while (v2 != v3 && (*v2 + 1) <= 1);
    }

    while (v2 != v5);
    result = v13;
  }

  if (result)
  {
    return WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(result, v1);
  }

  return result;
}

uint64_t WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy *this, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v20);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::ensureGPUProcessConnection(v3)[4];
  v5 = *(this + 2);
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1, v6);
  v8 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  v10 = WTF::fastMalloc(v9, 0x18);
  *v10 = &unk_1F112B0C0;
  v10[1] = this;
  v10[2] = v8;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v11 = v10;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v14 = IPC::Encoder::operator new(0x238, v13);
    *v14 = 935;
    *(v14 + 68) = 0;
    *(v14 + 70) = 0;
    *(v14 + 69) = 0;
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 1) = 0;
    IPC::Encoder::encodeHeader(v14);
    v22 = v14;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v14, v5);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v14, this + 3);
    v21[0] = v11;
    v21[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v22, v21, 0, 0);
    v16 = v21[0];
    v21[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = v22;
    v22 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v15);
      return bmalloc::api::tzoneFree(v18, v19);
    }
  }

  return result;
}

void WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::~AudioMediaStreamTrackRendererInternalUnitManagerProxy(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy *this, void *a2)
{
  v3 = &qword_1ED643000;
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
LABEL_72:
    v53 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v53);
    WebKit::WebProcess::singleton(void)::process = v4;
    *(v3 + 2024) = 1;
  }

  v5 = WebKit::WebProcess::audioMediaStreamTrackRendererInternalUnitManager(v4, a2);
  v7 = *v5;
  if (*v5)
  {
    v8 = *(this + 2);
    if (v8 == -1 || !v8)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2D3714);
    }

    v9 = v5;
    v10 = *(v7 - 2);
    v11 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
    v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
    v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
    v14 = v10 & ((v13 >> 31) ^ v13);
    v15 = &v7[3 * v14];
    v16 = *v15;
    if (*v15 != v8)
    {
      v17 = 1;
      while (v16)
      {
        v14 = (v14 + v17) & v10;
        v15 = &v7[3 * v14];
        v16 = *v15;
        ++v17;
        if (*v15 == v8)
        {
          goto LABEL_12;
        }
      }

      v15 = &v7[3 * *(v7 - 1)];
    }

LABEL_12:
    if (&v7[3 * *(v7 - 1)] != v15)
    {
      *v15 = -1;
      v18 = v15[2];
      v15[2] = 0;
      if (v18)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v18, v6);
      }

      v19 = *v9;
      v20 = vadd_s32(*(*v9 - 2), 0xFFFFFFFF00000001);
      *(v19 - 2) = v20;
      v21 = *(v19 - 1);
      if (6 * v20.i32[1] < v21 && v21 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v9, v21 >> 1);
      }
    }
  }

  if (*(v3 + 2024) == 1)
  {
    v23 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v54 = WebKit::WebProcess::operator new(0x370, v6);
    v23 = WebKit::WebProcess::WebProcess(v54);
    WebKit::WebProcess::singleton(void)::process = v23;
    *(v3 + 2024) = 1;
  }

  v24 = WebKit::WebProcess::ensureGPUProcessConnection(v23)[4];
  v3 = *(this + 2);
  v26 = IPC::Encoder::operator new(0x238, v25);
  *v26 = 936;
  *(v26 + 68) = 0;
  *(v26 + 70) = 0;
  *(v26 + 69) = 0;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 1) = 0;
  IPC::Encoder::encodeHeader(v26);
  v57 = v26;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v26, v3);
  IPC::Connection::sendMessageImpl(v24, &v57, 0, 0);
  v27 = v57;
  v57 = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, a2);
    bmalloc::api::tzoneFree(v28, v29);
  }

  while (1)
  {
    v34 = *(this + 6);
    if (v34 == *(this + 7))
    {
      break;
    }

    v30 = *(this + 18);
    if (v34 >= v30)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v31 = *(this + 8);
    v32 = *(v31 + 8 * v34);
    *(v31 + 8 * v34) = 0;
    v57 = v32;
    if (v34 == v30 - 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = v34 + 1;
    }

    *(this + 6) = v33;
    v55[0] = 0;
    v56 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>::operator()(&v57, v55);
    if (v56 == 1)
    {
      WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v55);
    }

    if (v57)
    {
      (*(*v57 + 8))(v57);
    }
  }

  v35 = *(this + 28);
  *(this + 28) = 0;
  if (v35)
  {
    WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v35);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 27, 0);
  std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](this + 23, 0);
  std::unique_ptr<WebCore::WebAudioBufferList>::reset[abi:sn200100](this + 22, 0);
  if (*(this + 168) == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription((this + 88));
  }

  v36 = *(this + 7);
  v37 = *(this + 8);
  v3 = *(this + 18);
  v38 = *(this + 6);
  v39 = v36 - v38;
  if (v36 >= v38)
  {
    v46 = v3 - v38;
    if (v3 < v38)
    {
      goto LABEL_71;
    }

    if (v39 == -1)
    {
      v39 = v3 - v38;
      if (!v46)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v46 < v39)
      {
        goto LABEL_71;
      }

      if (!v39)
      {
        goto LABEL_63;
      }
    }

    v47 = 8 * v39;
    v48 = (v37 + 8 * v38);
    do
    {
      v49 = *v48;
      *v48 = 0;
      if (v49)
      {
        (*(*v49 + 8))(v49);
      }

      ++v48;
      v47 -= 8;
    }

    while (v47);
    goto LABEL_63;
  }

  if (v36 > v3)
  {
    goto LABEL_71;
  }

  if (v36)
  {
    v40 = 8 * v36;
    v41 = *(this + 8);
    do
    {
      v42 = *v41;
      *v41 = 0;
      if (v42)
      {
        (*(*v42 + 8))(v42);
      }

      ++v41;
      v40 -= 8;
    }

    while (v40);
    v38 = *(this + 6);
  }

  if (v38 > v3)
  {
    goto LABEL_71;
  }

  if (v38 != v3)
  {
    v43 = (v37 + 8 * v38);
    v44 = 8 * v3 - 8 * v38;
    do
    {
      v45 = *v43;
      *v43 = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      ++v43;
      v44 -= 8;
    }

    while (v44);
  }

LABEL_63:
  v50 = *(this + 8);
  if (v50)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v50, a2);
  }

  v51 = *(this + 5);
  *(this + 5) = 0;
  if (v51)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v51, a2);
  }

  v52 = *(this + 3);
  *(this + 3) = 0;
  if (v52)
  {
    if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v52, a2);
    }
  }
}

{
  WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::~AudioMediaStreamTrackRendererInternalUnitManagerProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = 0;
  LOBYTE(v5) = 0;
  v11 = 0;
  if (*(a2 + 80))
  {
    v5 = MEMORY[0x1E69E2E98] + 16;
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    v9 = *(a2 + 56);
    v10 = *(a2 + 72);
    v6 = *(a2 + 8);
    v11 = 1;
    v12 = MEMORY[0x1E69E2E98] + 16;
    v3 = *(a2 + 24);
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    v13 = *(a2 + 8);
    v14 = v3;
    v18 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v18 = 0;
  }

  (*(*v2 + 16))(v2, &v12);
  if (v18 == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v12);
  }

  if (v11 == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v5);
  }

  return (*(*v2 + 8))(v2);
}

atomic_uint *WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::stopThread(atomic_uint *this)
{
  v1 = *(this + 28);
  if (v1)
  {
    v2 = this;
    atomic_fetch_add(v1, 1u);
    atomic_store(1u, this + 232);
    MEMORY[0x19EB16320](*(*(this + 27) + 4));
    WTF::Thread::waitForCompletion(v1);
    v3 = *(v2 + 28);
    *(v2 + 28) = 0;
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v3);
    }

    return WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v1);
  }

  return this;
}

uint64_t WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::start(uint64_t this, void *a2)
{
  v4 = this;
  if ((*(this + 168) & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(this + 233) == 1)
  {
    *(this + 233) = 0;
    this = WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(this, a2);
LABEL_4:
    *(v4 + 80) = 1;
    return this;
  }

  WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::stopThread(this);
  *(v4 + 80) = 1;
  if ((*(v4 + 168) & 1) == 0)
  {
    goto LABEL_19;
  }

  WebCore::CAAudioStreamDescription::sampleRate((v4 + 88));
  v5 = (v6 + v6);
  *(v4 + 208) = v5;
  if ((*(v4 + 168) & 1) == 0)
  {
    goto LABEL_19;
  }

  WebKit::ProducerSharedCARingBuffer::allocate(v29, (v4 + 88), v5);
  if (v31)
  {
    v7 = v29[0];
    v29[0] = 0;
    v27[0] = v7;
    v3 = v27;
    WTF::MachSendRight::MachSendRight();
    v28 = v30;
    v8 = v27[0];
    v27[0] = 0;
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100]((v4 + 184), v8);
    v2 = &qword_1ED643000;
    {
      goto LABEL_20;
    }

    v9 = WebKit::WebProcess::singleton(void)::process;
    while (1)
    {
      v2 = WebKit::WebProcess::ensureGPUProcessConnection(v9)[4];
      v10 = *(v4 + 16);
      v11 = *(v4 + 216);
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 938;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = 0;
      IPC::Encoder::encodeHeader(v13);
      v33 = v13;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v13, v10);
      IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::encode(v13, (v3 + 1));
      IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v13, v11);
      IPC::Connection::sendMessageImpl(v2, &v33, 0, 0);
      v14 = v33;
      v33 = 0;
      if (v14)
      {
        IPC::Encoder::~Encoder(v14, v5);
        bmalloc::api::tzoneFree(v24, v25);
      }

      if (*(v4 + 168))
      {
        break;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      v26 = WebKit::WebProcess::operator new(0x370, v5);
      v9 = WebKit::WebProcess::WebProcess(v26);
      WebKit::WebProcess::singleton(void)::process = v9;
      *(v2 + 2024) = 1;
    }

    v15 = WebCore::WebAudioBufferList::operator new(0x48, v5);
    WebCore::WebAudioBufferList::WebAudioBufferList();
    std::unique_ptr<WebCore::WebAudioBufferList>::reset[abi:sn200100]((v4 + 176), v15);
    WebCore::WebAudioBufferList::setSampleCount(*(v4 + 176));
    atomic_store(0, (v4 + 232));
    v16 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((v4 + 8), (v4 + 232));
    v17 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v16);
    v19 = WTF::fastMalloc(v18, 0x18);
    *v19 = &unk_1F112B0E8;
    v19[1] = v4;
    v19[2] = v17;
    v32 = v19;
    WTF::Thread::create();
    v20 = v33;
    v33 = 0;
    v21 = *(v4 + 224);
    *(v4 + 224) = v20;
    if (v21)
    {
      WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v21);
      v22 = v33;
      v33 = 0;
      if (v22)
      {
        WTF::ThreadSafeRefCounted<WTF::Thread,(WTF::DestructionThread)0>::deref(v22);
      }
    }

    v23 = v32;
    v32 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    WTF::MachSendRight::~MachSendRight((v3 + 1));
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](v27, 0);
    return std::__optional_destruct_base<WebKit::ProducerSharedCARingBuffer::Pair,false>::~__optional_destruct_base[abi:sn200100](v29);
  }

  else
  {
    this = 202;
    __break(0xC471u);
  }

  return this;
}

IPC::Encoder *WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::stop(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy *this, void *a2)
{
  *(this + 80) = 0;
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v12 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v12);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::ensureGPUProcessConnection(v3)[4];
  v5 = *(this + 2);
  v7 = IPC::Encoder::operator new(0x238, v6);
  *v7 = 939;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v5);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::retrieveFormatDescription(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (*(a1 + 168) != 1 || v5 != v4)
  {
    if (v5)
    {
      if (v4 + 1 != v5)
      {
        goto LABEL_34;
      }

      LODWORD(v7) = *(a1 + 72);
    }

    else
    {
      v7 = *(a1 + 72);
      if (v4)
      {
        if (v4 != v7 - 1)
        {
LABEL_34:
          v24 = *(a1 + 72);
          if (v4 < v24)
          {
            v25 = *(a1 + 64);
            v26 = *a2;
            *a2 = 0;
            *(v25 + 8 * v4) = v26;
            if (v4 == v24 - 1)
            {
              v27 = 0;
            }

            else
            {
              v27 = v4 + 1;
            }

            *(a1 + 56) = v27;
            return;
          }

          goto LABEL_40;
        }
      }

      else if (v7)
      {
        v4 = 0;
        goto LABEL_34;
      }
    }

    v11 = v7;
    v12 = (v7 >> 2) + v7;
    if (v12 >= 0x1FFFFFFF)
    {
LABEL_41:
      __break(0xC471u);
      return;
    }

    v13 = *(a1 + 64);
    if (v12 <= 0xF)
    {
      v12 = 15;
    }

    v14 = v12 + 1;
    v15 = WTF::fastMalloc(v12, (8 * (v12 + 1)));
    *(a1 + 72) = v14;
    *(a1 + 64) = v15;
    v17 = *(a1 + 48);
    v16 = *(a1 + 56);
    v18 = v16 - v17;
    if (v16 >= v17)
    {
      if (v11 >= v17)
      {
        if (v18 == -1)
        {
          v18 = v11 - v17;
        }

        else if (v11 - v17 < v18)
        {
          goto LABEL_40;
        }

        WTF::VectorTypeOperations<WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>>::move(v13 + v17, v18, &v15[v17]);
        if (!v13)
        {
LABEL_33:
          v4 = *(a1 + 56);
          goto LABEL_34;
        }

LABEL_30:
        if (*(a1 + 64) == v13)
        {
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
        }

        WTF::fastFree(v13, v23);
        goto LABEL_33;
      }
    }

    else if (v16 <= v11)
    {
      WTF::VectorTypeOperations<WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>>::move(v13, *(a1 + 56), v15);
      v19 = *(a1 + 48);
      v20 = v11 - v19;
      if (v11 >= v19)
      {
        v21 = *(a1 + 72);
        if (v21 >= v20)
        {
          v22 = v21 - (v11 - v19);
          WTF::VectorTypeOperations<WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>>::move(v13 + v19, v20, (*(a1 + 64) + 8 * v22));
          *(a1 + 48) = v22;
          if (!v13)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = *(a1 + 96);
  v9 = *(a1 + 128);
  v10 = *(a1 + 144);
  v30 = *(a1 + 112);
  v31 = v9;
  v32 = v10;
  v28 = MEMORY[0x1E69E2E98] + 16;
  v33 = *(a1 + 160);
  v29 = v8;
  v34 = 1;
  WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>::operator()(a2, &v28);
  if (v34 == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v28);
  }
}

IPC::Encoder *WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::setLastDeviceUsed(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy *this, const WTF::String *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  v4 = WebKit::WebProcess::ensureGPUProcessConnection(v3)[4];
  v6 = IPC::Encoder::operator new(0x238, v5);
  *v6 = 937;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = 0;
  IPC::Encoder::encodeHeader(v6);
  v12 = v6;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a2);
  IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

WebKit::SharedVideoFrameWriter *WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter(WebKit::SharedVideoFrameWriter *this, void *a2)
{
  v3 = IPC::Semaphore::operator new(8, a2);
  *v3 = 0;
  v3[1] = 0;
  semaphore_create(*MEMORY[0x1E69E9A60], v3 + 1, 0, 0);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = v3;
  *(this + 23) = 0;
  return this;
}

BOOL WebKit::SharedVideoFrameWriter::prepareWriting(uint64_t *a1, WebCore::SharedVideoFrameInfo *this, uint64_t *a3, void *a4)
{
  v8 = WebCore::SharedVideoFrameInfo::isReadWriteSupported(this);
  if ((v8 & 1) == 0)
  {
    v11 = qword_1ED641580;
    result = os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v21 = 0;
    v13 = "SharedVideoFrameWriter::prepareWriting not supported";
    goto LABEL_27;
  }

  if (a1[3])
  {
    if ((*(a1 + 25) & 1) != 0 || (v9 = *a1, WTF::ApproximateTime::now(v8), !IPC::Semaphore::waitFor(v9, v10 + 3.0)))
    {
      v11 = qword_1ED641580;
      result = os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *v21 = 0;
      v13 = "SharedVideoFrameReader::writeBuffer wait failed";
      goto LABEL_27;
    }
  }

  else
  {
    v14 = *a3;
    *(a1 + 24) = 1;
    (*(*v14 + 16))(v14, *a1);
  }

  *(a1 + 26) = 1;
  v15 = WebCore::SharedVideoFrameInfo::storageSize(this);
  v16 = a1[1];
  if (v16 && *(v16 + 8) >= v15)
  {
    return 1;
  }

  WebCore::SharedMemory::allocate(&v23, v15);
  v17 = v23;
  if (v23)
  {
    atomic_fetch_add(v23, 1u);
  }

  v18 = a1[1];
  a1[1] = v17;
  if (v18)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v18);
  }

  if (v23)
  {
    WebCore::SharedMemory::createHandle();
    if (v22 == 1)
    {
      (*(**a4 + 16))(*a4, v21);
      if (v22)
      {
        WTF::MachSendRight::~MachSendRight(v21);
      }

      v19 = v23;
      v23 = 0;
      if (v19)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v19);
      }

      return 1;
    }

    v20 = v23;
    v23 = 0;
    if (v20)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v20);
    }
  }

  v11 = qword_1ED641580;
  result = os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *v21 = 0;
  v13 = "SharedVideoFrameReader::writeBuffer allocation failed";
LABEL_27:
  _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, v13, v21, 2u);
  return 0;
}

void WebKit::SharedVideoFrameWriter::writeBuffer(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  if ((*(*a2 + 32))(a2))
  {
    v10 = *(v7 + 48);
    if (v10)
    {
      v7 = *(v7 + 48);
      if (*(v10 + 88))
      {
LABEL_4:
        atomic_fetch_add((v7 + 72), 1uLL);
        v11 = *(v7 + 80);
        *a5 = *(v7 + 64);
        *(a5 + 8) = v11;
        *(a5 + 16) = 1;
        *(a5 + 24) = 1;
        return;
      }
    }

    else if (*(v7 + 88))
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_13;
  }

  if ((*(*v7 + 40))(v7))
  {
    v7 = *(v7 + 48);
    if (v7)
    {
      (**v7)(v7);
    }

LABEL_13:
    WebKit::SharedVideoFrameWriter::writeBuffer(a1, a3, a4, a5);
    v13 = *(*v7 + 8);

    v13(v7);
    return;
  }

  v12 = (*(*v7 + 56))(v7);

  WebKit::SharedVideoFrameWriter::writeBuffer(a5, v12, a1, a3, a4, 1);
}

uint64_t WebKit::SharedVideoFrameWriter::writeBuffer@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  WebCore::SharedVideoFrameInfo::fromVideoFrameBuffer();
  result = WebKit::SharedVideoFrameWriter::prepareWriting(a1, v10, a3, a4);
  if (result && (result = WebCore::SharedVideoFrameInfo::writeVideoFrameBuffer(), result))
  {
    *a5 = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 1;
  }

  else
  {
    *a5 = 0;
    *(a5 + 24) = 0;
    if (*(a1 + 26) == 1)
    {
      *(a1 + 26) = 0;
      return MEMORY[0x19EB16320](*(*a1 + 4));
    }
  }

  return result;
}

void WebKit::SharedVideoFrameWriter::writeBuffer(uint64_t *__return_ptr a1@<X8>, void *cf@<X1>, uint64_t a3@<X0>, uint64_t *a4@<X2>, void *a5@<X3>, int a6@<W4>)
{
  if (!cf)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    return;
  }

  if (a6)
  {
    v11 = (*MEMORY[0x1E69E2748])(cf);
    if (v11)
    {
      v12 = v11;
      CFRetain(v11);
      MachPort = IOSurfaceCreateMachPort(v12);
      WTF::MachSendRight::adopt(cfa, MachPort);
      WTF::MachSendRight::MachSendRight();
      *(a1 + 16) = 2;
      *(a1 + 24) = 1;
      WTF::MachSendRight::~MachSendRight(cfa);
LABEL_20:
      CFRelease(v12);
      return;
    }
  }

  CFRetain(cf);
  if ((*MEMORY[0x1E69E2750])(cf) == 641234480)
  {
    v16 = (a3 + 16);
    v15 = *(a3 + 16);
    if (!v15)
    {
      v17 = WebCore::PixelBufferConformerCV::operator new(8, v14);
      v15 = WebCore::PixelBufferConformerCV::PixelBufferConformerCV(v17);
      v18 = *v16;
      *v16 = v15;
      if (v18)
      {
        std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](a3 + 16, v18);
        v15 = *v16;
      }
    }

    WebCore::PixelBufferConformerCV::convert(cfa, v15, cf);
    v12 = cfa[0];
    cfa[0] = 0;
    CFRelease(cf);
    v19 = cfa[0];
    cfa[0] = 0;
    if (v19)
    {
      CFRelease(v19);
    }

    if (!v12)
    {
      v20 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        LOWORD(cfa[0]) = 0;
        _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "SharedVideoFrameWriter::writeBuffer cannot convert pixel buffer", cfa, 2u);
      }

      *a1 = 0;
      *(a1 + 24) = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v12 = cf;
  }

  WebCore::SharedVideoFrameInfo::fromCVPixelBuffer(cfa, v12, v14);
  if (WebKit::SharedVideoFrameWriter::prepareWriting(a3, cfa, a4, a5) && (WebCore::SharedVideoFrameInfo::writePixelBuffer() & 1) != 0)
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    goto LABEL_20;
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  CFRelease(v12);
LABEL_22:
  if (*(a3 + 26) == 1)
  {
    *(a3 + 26) = 0;
    MEMORY[0x19EB16320](*(*a3 + 4));
  }
}

void WebKit::SharedVideoFrameWriter::writeBuffer(uint64_t a1@<X0>, webrtc *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = webrtc::videoFrameBufferProvider();
  if (v10)
  {

    WebKit::SharedVideoFrameWriter::writeBuffer(a1, v10, a3, a4, a5);
  }

  else
  {
    v11 = webrtc::copyPixelBufferForFrame();
    if (v11)
    {
      v12 = v11;
      WebKit::SharedVideoFrameWriter::writeBuffer(a5, v11, a1, a3, a4, 1);

      CFRelease(v12);
    }

    else
    {
      webrtc::VideoFrame::video_frame_buffer(&v13, a2);
      WebKit::SharedVideoFrameWriter::writeBuffer(a1, a3, a4, a5);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }
}

double WebKit::SharedVideoFrameReader::SharedVideoFrameReader(WebKit::SharedVideoFrameReader *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  return result;
}

void WebKit::SharedVideoFrameReader::~SharedVideoFrameReader(WebKit::SharedVideoFrameReader *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v4);
  }

  if (*(this + 24) == 1)
  {
    IPC::Semaphore::destroy((this + 16));
    WTF::MachSendRight::~MachSendRight((this + 16));
  }

  WTF::MachSendRight::~MachSendRight((this + 8));
  v6 = *this;
  *this = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
  }
}

void WebKit::SharedVideoFrameReader::readBuffer(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v5 = a1;
  v7 = *(a2 + 16);
  if (v7 == 255)
  {
    v8 = -1;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_80;
      }

      WebCore::IOSurface::createFromSendRight();
      if (v38[0])
      {
        WebCore::createCVPixelBuffer(cf, *(v38[0] + 8), v14);
        if (LOBYTE(cf[1]))
        {
          v15 = 0;
        }

        else
        {
          v15 = cf[0];
        }

        *a4 = v15;
      }

      else
      {
        v27 = qword_1ED641580;
        if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
        {
          LOWORD(cf[0]) = 0;
          _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "SharedVideoFrameReader::readBuffer no surface", cf, 2u);
        }

        *a4 = 0;
      }

      v28 = v38[0];
      v38[0] = 0;
      if (v28)
      {
        WebCore::IOSurface::~IOSurface(v28);
        bmalloc::api::tzoneFree(v29, v30);
      }
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_80;
      }

      v19 = *a2;
      if (*(a1 + 60) != *a2 || *(a1 + 64) != HIDWORD(*a2))
      {
        *(a1 + 60) = v19;
        WebCore::createBlackPixelBuffer(cf, v19);
        v21 = cf[0];
        cf[0] = 0;
        v22 = *(v5 + 72);
        *(v5 + 72) = v21;
        if (v22)
        {
          CFRelease(v22);
          v23 = cf[0];
          cf[0] = 0;
          if (v23)
          {
            CFRelease(v23);
          }
        }

        if (WebCore::ProcessIdentity::operator BOOL() && *(v5 + 12) == 1)
        {
          WebCore::setOwnershipIdentityForCVPixelBuffer();
        }
      }

      v24 = *(v5 + 72);
      *a4 = v24;
      if (v24)
      {
        CFRetain(v24);
      }
    }
  }

  else
  {
    if (!v8)
    {
      if (*(a2 + 16))
      {
        goto LABEL_80;
      }

      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = *(v9 + 8);
        WebCore::SharedVideoFrameInfo::decode();
        if ((v37 & 1) == 0)
        {
          v12 = qword_1ED641580;
          if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v38[0]) = 0;
            v13 = "SharedVideoFrameReader::readBufferFromSharedMemory decoding failed";
            goto LABEL_78;
          }

LABEL_57:
          *a4 = 0;
LABEL_58:
          if (*(v5 + 24) == 1)
          {
            MEMORY[0x19EB16320](*(v5 + 20));
          }

          return;
        }

        a1 = WebCore::SharedVideoFrameInfo::isReadWriteSupported(cf);
        if ((a1 & 1) == 0)
        {
          v12 = qword_1ED641580;
          if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v38[0]) = 0;
            v13 = "SharedVideoFrameReader::readBufferFromSharedMemory not supported";
            goto LABEL_78;
          }

          goto LABEL_57;
        }

        if (v37)
        {
          v11 = *(*(v5 + 32) + 8);
          a1 = WebCore::SharedVideoFrameInfo::storageSize(cf);
          if (v11 < a1)
          {
            v12 = qword_1ED641580;
            if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v38[0]) = 0;
              v13 = "SharedVideoFrameReader::readBufferFromSharedMemory storage size mismatch";
LABEL_78:
              _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, v13, v38, 2u);
              goto LABEL_57;
            }

            goto LABEL_57;
          }

          if ((v37 & 1) != 0 && v10 > 0x27)
          {
            if (*(v5 + 12) == 1 && (!*(v5 + 40) || *(v5 + 48) != LODWORD(cf[0]) || *(v5 + 52) != HIDWORD(cf[0]) || *(v5 + 56) != LODWORD(cf[1])))
            {
              *(v5 + 48) = cf[0];
              *(v5 + 52) = *(cf + 4);
              WebCore::SharedVideoFrameInfo::createCompatibleBufferPool(v38, cf);
              v33 = v38[0];
              v38[0] = 0;
              v34 = *(v5 + 40);
              *(v5 + 40) = v33;
              if (v34)
              {
                CFRelease(v34);
                v35 = v38[0];
                v38[0] = 0;
                if (v35)
                {
                  CFRelease(v35);
                }
              }
            }

            WebCore::SharedVideoFrameInfo::createPixelBufferFromMemory();
            if (*a4 && WebCore::ProcessIdentity::operator BOOL() && *(v5 + 12) == 1)
            {
              WebCore::setOwnershipIdentityForCVPixelBuffer();
            }

            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_80:
        mpark::throw_bad_variant_access(a1);
      }

      v25 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        LOWORD(cf[0]) = 0;
        v26 = "SharedVideoFrameReader::readBufferFromSharedMemory no storage";
LABEL_76:
        _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, v26, cf, 2u);
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    if (v7 != 1)
    {
      goto LABEL_80;
    }

    v16 = *a1;
    if (!*a1)
    {
      v25 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        LOWORD(cf[0]) = 0;
        v26 = "SharedVideoFrameReader::readBuffer no object heap";
        goto LABEL_76;
      }

LABEL_47:
      *a4 = 0;
      return;
    }

    WTF::ApproximateTime::now(a1);
    IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::VideoFrame,WTF::RawPtrTraits<WebCore::VideoFrame>,WTF::DefaultRefDerefTraits<WebCore::VideoFrame>>>::read(v16 + 24, a2, cf, v17 + 0.0);
    if (cf[0])
    {
      v18 = (*(*cf[0] + 56))(cf[0]);
      *a4 = v18;
      if (v18)
      {
        CFRetain(v18);
      }
    }

    else
    {
      v31 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v38[0]) = 0;
        _os_log_error_impl(&dword_19D52D000, v31, OS_LOG_TYPE_ERROR, "SharedVideoFrameReader::readBuffer no sample", v38, 2u);
      }

      *a4 = 0;
    }

    v32 = cf[0];
    cf[0] = 0;
    if (v32 && atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v32 + 2);
      (*(*v32 + 8))(v32);
    }
  }
}